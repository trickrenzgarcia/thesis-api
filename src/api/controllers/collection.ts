import { RequestHandler } from "express";
import { PrismaClient } from "@prisma/client";
import { useThirdweb } from "./thirdweb";

interface Contract {
  address: string;
}

const prisma = new PrismaClient();

export const getCollection: RequestHandler<Contract, unknown> = async (
  req,
  res,
  next
) => {
  const { address } = req.params;
  try {
    const metadata = await prisma.contract_metadata.findFirst({
      where: {
        address: address,
      },
    });

    if (!metadata) {
      res.status(404);
      const error = new Error("🔍 - Not Found");
      next(error);
    }
    res.json(metadata);
  } catch (error) {
    next(error);
  }
};

export const createCollection: RequestHandler<Contract, unknown> = async (
  req,
  res,
  next
) => {
  const { address } = req.params;
  try {
    const thirdwebContract = await useThirdweb.getContract(address);
    const metadata = await thirdwebContract.metadata.get();

    const dbContract = await prisma.contract_metadata.findFirst({
      where: {
        address: address,
      },
    });

    if (!dbContract) {
      const contract = await prisma.contract_metadata.create({
        data: {
          name: metadata.name,
          description: metadata.description,
          image: metadata.image,
          social_urls: JSON.stringify(metadata.social_urls),
          seller_fee_basis_points: metadata.seller_fee_basis_points,
          fee_recipient: metadata.fee_recipient,
          symbol: metadata.symbol,
          address: address,
        },
      });
      res.json(contract);
    }

    res.json(dbContract);
  } catch (error) {
    next(error);
  }
};
