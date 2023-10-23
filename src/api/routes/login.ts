import { Router } from "express";
import jwt from 'jsonwebtoken'

import * as controller from '../controllers'

const authRoutes = Router();

const { authorization, login, logout } = controller

authRoutes.get('/login', authorization, (req, res, next) => {
  res.json({
    data: req.cookies
  })
})

authRoutes.post("/login", authorization, login);

authRoutes.get('/logout', authorization, logout);

export { authRoutes };
