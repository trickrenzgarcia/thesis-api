import { RequestHandler } from "express";

interface Contract {
  address: string;
  owner: string;
}

export const getNft: RequestHandler<Contract> = (req, res, next) => {
  const { address, owner } = req.params;
  try {
  } catch (error) {
    next(error);
  }
};
