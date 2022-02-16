const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const disheschema = Schema(
    {
        userdateid:
        {
            type:String,
            require:true,
        } ,  
        dish:
        {
            type:[String],
            require:true,
        },
        sales:
        {
            type:[String],
            require:true,
        }
    },{timestamp:true,collection:'Dishes'},
);
const Dishes = mongoose.model('Dishes',disheschema);
module.exports=Dishes;