import mongoose from "mongoose";

const userSchema = new mongoose.Schema({
    fname:{
        type: String,
        required: true,
    },
    lname:{
        type: String,
        required: true,
    },
    address:{
        type: String,
        required: true,
    },
    state:{
        type: String,
        required: true,
    },
    city:{
        type: String,
        required: true,
    },
    phno:{
        type: Number,
        required: true,
    },
    saletype:{
        type: Boolean,
        required: true,
    },
    role:{
        type: String,
        required: true,
    },
    prodtype:{
        type: Array,
        required: true,
    }
})

export default mongoose.model('Users', userSchema);