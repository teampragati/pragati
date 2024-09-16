import express from "express";
import userCtrl from '../controllers/userCtrl.js';

const router = express.Router();

router.post('/register', userCtrl.register)
router.post('/refresh_token', userCtrl.refreshtoken)
router.post('/verifyotp', userCtrl.verifyotp)
router.post('/login', userCtrl.login)
router.get('/logout', userCtrl.logout)

export default router;