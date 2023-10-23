import { Router } from "express";

const nftRoutes = Router();

nftRoutes.get("/:address", (req, res) => {
  const { address } = req.params;
  res.redirect(`/collection/${address}`);
});

nftRoutes.get("/:address/:owner", (req, res) => {
  const { address, owner } = req.params;
  res.json({
    address: address,
    owner: owner,
  });
});

export { nftRoutes };
