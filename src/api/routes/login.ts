import { Router } from "express";

const loginRoutes = Router();

loginRoutes.post("/", (req, res, next) => {
  const { wallet } = req.body;

  res.json({
    wallet: wallet,
  });
});

export { loginRoutes };
