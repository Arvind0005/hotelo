const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const userschema =Schema(
    {
        username:
        {
            type:String
        },
        password:
        {
            type:String,
        },
    },{timestamp:true,collection:'Users'}
);
const Users = mongoose.model('Users',userschema);
module.exports = Users;