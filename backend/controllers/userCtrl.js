import Users from "../models/userModel.js"
// import axios from "axios"
import jwt from "jsonwebtoken"
import twilio from "twilio"

let userData = {}
// let otp = 0
let flag = false
const verifyServiceSid = "VAed53f9fa2882cf04c065e0dcfe8f09be";
const client = twilio("AC6f6d01e2e9deba4406724a003760c3e7", "9fe7e69e75c59d232169e06f7751dab8");

// resend otp
// otp expire

const userCtrl = {
    register: (req, res) => {
        try{
            const {phno} = req.body;
            
            // const user = await Users.findOne({phno})
            // if(user){
                //     return res.status(400).json({msg: "Ph no already exists"})
            // }
            
            userData = req.body;

            sendotp(phno)
            .then(() => res.json({ success: true, message: 'OTP sent successfully'}))
            .catch(error => console.log(error));
        } catch (error){
            res.status(500).json({msg: error.message});
        }
    },
    verifyotp: (req, res) => {
        try{
            const otp = req.body;
            const sid = "VE3e63553ad2d915d2d75b5632b8eac17a";
            
            verifyOtp(phno, otp)
                .then(verificationCheck => {
                    if (verificationCheck.status === 'approved') {
                        console.log('OTP verified successfully');
                        res.json({ success: true, message: "OTP verification successful"});
                    } else {
                        console.log('OTP verification failed');
                    }
                })
                
            //     if(!flag){
            //         const {fname, lname, address, state, city, phno, saletype, role, prodtype} = userData;
                    
            //         const newUser = new Users({
            //             fname, lname, address, state, city, phno, saletype, role, prodtype
            //         })
            //         await newUser.save()
            //     }
            //     flag = false
                
            //     const accesstoken = createAccessToken({id: newUser._id})
            //     const refreshtoken = createRefreshToken({id: newUser._id})
                
            //     res.cookie('refreshtoken', refreshtoken, {
            //         httpOnly: true,
            //         path: '/user/refresh_token'
            //     })
            //     res.json({accesstoken})
            // }else{
            //     res.status(400).json({ success: false, message: "Invalid OTP"});
            // }
        }catch(error){
            res.status(500).json({msg: error.message})
        }
    },
    refreshtoken: async(req, res) => {
        try {
            const rf_token = req.cookies.refreshtoken;
            
            if(!rf_token){
                return res.status(400).json({msg: "Please login or register"})
            }
            jwt.verify(rf_token, process.env.refresh_code, (err, user) => {
                if(err){
                    return res.status(400).json({msg: "Please login or register"})
                }
                const accesstoken = createAccessToken({id: user.id})
                res.json({user, accesstoken})
            })
            
        } catch (error) {
            return res.status(500).json({msg: error.message})
        }
    },
    login: async(req, res) => {
        try{
            const phno = req.body;
            
            const user = await Users.findOne({phno})
            if(!user){
                return res.status(400).json({msg: "User does not exist"})
            }
            flag = true;
            sendotp(phno);
        }catch (error){
            res.status(500).json({msg: error.message});
        }
    },
    logout: async(req, res) => {
        try {
            res.clearCookie('refreshtoken', {path: '/user/refresh_token'})
            return res.json({msg: "Logged out"});
        } catch (error) {
            res.status(500).json({msg: error.message});
        }
    },
}

const createAccessToken = (payload) => {
    return jwt.sign(payload, process.env.SECRET_CODE, {expiresIn: '1d'})
}
const createRefreshToken = (payload) => {
    return jwt.sign(payload, process.env.REFRESH_CODE, {expiresIn: '7d'})
}

function sendotp(phno) {
    return client.verify.v2.services(verifyServiceSid)
        .verifications
        .create({ to: phno, channel: 'sms'});
}
function verifyOtp(phno, otp){
    return client.verify.v2.services(verifyServiceSid)
        .verificationChecks
        .create({ code: otp, to: phno});
}

export default userCtrl;