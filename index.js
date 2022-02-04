const express= require('express');
const app = express();
const mongoose = require('mongoose');
const bodyParser = require('body-parser');
const cors = require('cors');
const cloudinary  =require('cloudinary').v2;
const ShopProfiles =require('./models/shop_profiledata');

const dburi = "mongodb+srv://Arvind:password05@cluster0.rayzm.mongodb.net/hotello?retryWrites=true&w=majority";
mongoose.connect(dburi,{useNewUrlParser:true,useUnifiedTopology:true}).catch((err)=>
{
    console.log(err);
}).then(
    function()
    {
        console.log("connected to database");
        app.use(cors());
    
        app.listen(3000,'localhost',function(err)
        {
            if(err)
            {
                console.log(err);
            }
            else{
                console.log("server is listening");
            }
        })
    }
);
app.get("/",function(req,res)
{
    console.log("a request");
    //console.log(req.body);
    console.log("hii");
    res.send("hello");
});

app.get("/hello",function(req,res)
{
    console.log("a get request");
    res.send("hii hw r u");
});
app.use(bodyParser.urlencoded({extended: false}));
app.use(bodyParser.json());
app.get("/addshop",function(req,res)
{
    const shopprofiles =  ShopProfiles({
        shopname:'shopname',
        contact_number:123456789
    })
    // const shopProfiles = ShopProfiles(
    //     {
    //         
    //     });
    shopprofiles.save().catch(function(err)
    {
        console.log(err);
    }).then(function(result)
    {
        res.send(result+"\n\nDocument sucessfully uploaded to Database!\n");
    });
});
