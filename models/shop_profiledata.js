const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const shopProfilesschema = Schema(
    {
        shopname:{
            type:String,
            required:true,
        },
        // add1:
        // {
        //     type:String,
        //     required:true,
        // },
        // add2:
        // {
        //     type:String,
        //     required:true,
        // },
        // add3:
        // {
        //     type:String,
        //     required:true,
        // },
        // add4:
        // {
        //     type:String,
        //     required:true,
        // },
        // email:
        // {
        //     type:String,
        //     required:true,
        // },
        contact_number:
        {
            type:Number,
            required:true,
        }
    },{timestamp:true,collection:'shopProfiles'},
);

const ShopProfiles = mongoose.model('shopProfiles',shopProfilesschema);
module.exports = ShopProfiles;