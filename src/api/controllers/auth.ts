import { RequestHandler } from "express";
import jwt from 'jsonwebtoken'

export const authorization: RequestHandler = async (req, res, next) => {
  const token = req.cookies.access_token;
  if(!token) {
    return res.sendStatus(403);
  }
  try {
    const secret: any = process.env.JWT_SECRET_KEY;
    const data = jwt.verify(token, secret);
    console.log(data)
    return next();
  } catch (error) {
    next(error);
  }
}

export const login: RequestHandler = async (req, res, next) => {
  const { wallet } = req.body;

  const secret: any = process.env.JWT_SECRET_KEY
  
  const token = jwt.sign({
    wallet: wallet
  }, secret, { expiresIn: '1h' });


  res.cookie("access_token", token, {
    httpOnly: true,
    secure: process.env.NODE_ENV === 'production'
  })
  .status(200)
  .json({ token: token });
}

export const logout: RequestHandler = async(req, res, next) => {
  res.clearCookie("access_token")
  .status(200)
  .json({ message: "Successfully logged out 😏 🍀" })
}