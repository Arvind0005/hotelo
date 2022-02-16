const express= require('express');
const app = express();
const mongoose = require('mongoose');
const bodyParser = require('body-parser');
const cors = require('cors');
const cloudinary  =require('cloudinary').v2;
const ShopProfiles =require('./models/model.shop_profiledata');
const Users = require('./models/model.user');
const Dishes = require('./models/model.dishes');

const dburi = "mongodb+srv://Arvind:password05@cluster0.rayzm.mongodb.net/hotello?retryWrites=true&w=majority";
app.use(bodyParser.urlencoded({extended: false}));
app.use(bodyParser.json());
// app.configure(function(){
//     app.use(express.bodyParser());
//   });

app.listen(3000,function()
{
    console.log("listening");
});

app.get("/",function(req,res)
{
    console.log("a request");
    //console.log(req.body);
    console.log("hii");
    res.send("hello");
});

app.get("/adddata",function(req,res)
{
    console.log("");
    res.send("hii hw r u");
});
app.post("/addshop",function(req,res)
{
    mongoose.connect(dburi,{useNewUrlParser:true,useUnifiedTopology:true},function(err,db)
    {
        if(!err)
        {
            console.log("connected to db");
        }
            app.use(cors());
            const shopprofiles =  ShopProfiles({
                shopname:req.body.shopname,
                contact_number: req.body.mobile,
                add1:req.body.add1,
                add2:req.body.add2,
                add3:req.body.add3,
                add4:req.body.add4,
                email:req.body.email,
            })
            shopprofiles.save().catch(function(err)
            {
             
            }).then(function(result)
            {
                res.send(result+"Document sucessfully uploaded to Database!\n");
            });
            console.log("data sucessfully added to db"); 
    });
},

app.post("/adddish",function(req,res)
{
    app.use(cors());
    console.log(req.body.dish);
   // res.send("hii");
    mongoose.connect(dburi,{useNewUrlParser:true,useUnifiedTopology:true},function(err,db)
    {
        if(!err)
        {
            console.log("we're connected");
        }
        app.use(cors());
        // await Dishes.findOneAndUpdate(
        //     {
        //         userdateid:"Arvindundefined"
        //     }
        // )
        const dish = Dishes(
            {
                userdateid: req.body.userdateid,
                $push:
                {
                    dishes:req.body.dish,
                    sales:req.body.sales,
                }
            }
        );
        dish.save().catch(function(err)
        {
            console.log(err);
        }).then(
            function(result)
            {
                res.send(result);
            },
            console.log("doc added"),
        );
    })
}),
app.get("/user",function(req,res)
{
    mongoose.connect(dburi,{useNewUrlParser:true,useUnifiedTopology:true},function(err,db)
    {
        if(!err)
        {
            console.log("connected to db");
        }
            app.use(cors());
            const user =  Users({
                username:"Arvind S",
                password:"Password",
            })
            user.save().catch(function(err)
            {
             
            }).then(function(result)
            {
                res.send(result+"Document sucessfully uploaded to Database!\n");
            });
            console.log("data sucessfully added to db"); 
    });
})
);
