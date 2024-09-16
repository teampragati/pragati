import express from "express";
import mongoose from "mongoose";
import userrouter from './routes/useRouter.js';
import dotenv from 'dotenv'
import cookieParser from "cookie-parser";

const app = express();
app.use(express.json());
app.use(cookieParser());
dotenv.config();
const port = process.env.PORT || 5000;

app.get('/', (req, res) => {
    res.json({msg: "hello"});
})

app.use('/user', userrouter);

app.listen(port, () => {
    console.log("server is running at ", port);
})

const url = process.env.MONGODB_URL;

// mongoose.connect(url, {}).then(() => {
//     console.log("Connected")
// }).catch(err => {
//     console.log(err)
// })