 var express = require("express");
var mysql = require('mysql');
var connectionFrom = require('./dbConn');
var bodyParser = require('body-parser');
var app = express();
 var async  = require('async');
 var _ =require('underscore');

 var multer = require('multer');

 app.use(express.static(__dirname + "/public"));
app.use(bodyParser.urlencoded({extended : true}));
app.use(bodyParser.json());

var dir='muki';
//doctor


 app.post("/bookProperty",function(req,res){
     bag={};
     bag.userId = req.body.userId;
     bag.propertyId=req.body.propertyId;
     console.log(bag , "bag");
     async.series([
         _fetchTheInfoOFUserId.bind(null, bag),
         _deleteFromReserveProperty.bind(null, bag),
         _deleteFromUploadProperty.bind(null,bag),
         _insertIntoBooking.bind(null,bag)
     ],function (err) {
         if(err){
             throw  "some where mistake"
         }else{
             bag.status = "successfull";
             res.end(JSON.stringify(bag));
         }
     })
 })

 function _fetchTheInfoOFUserId(bag,next){
     console.log(bag.propertyId ,"bag.propertyId" );
     connectionFrom.connVar.query( 'select * from uploadproperty where propertyId = '+connectionFrom.connVar.escape(bag.propertyId),
         function (err, rows, fields) {
             if(!err)
             {
                 console.log(rows);
                 bag.sellerId = rows[0].userId;
                 return next();
             }else {
                 console.log("error while executing query");
             }
         })
 }

 function _insertIntoBooking(bag,next) {


     response = {
         buyerId: bag.userId,
         sellerId: bag.sellerId,

     };
     connectionFrom.connVar.query('INSERT INTO booking SET ?', response, function (err, result) {
         if (!err) {
             /*res.send(' Welcome to our website .......');*/
             console.log(' Credentials added to database');
             result.status = "success"
             return next();
         }
         else {
             result.status = "unsuccess"
             res.end(JSON.stringify(result));
             connectionFrom.connVar.end();
             console.log('Error while performing Query.');
         }
     });
 }


 function _deleteFromReserveProperty(bag,next){
     console.log(bag.userId ,"bag.userId" );
     connectionFrom.connVar.query( 'delete from reservedproperty  where user_id='+connectionFrom.connVar.escape(bag.userId) +
         ' AND property_id=' + connectionFrom.connVar.escape(bag.propertyId),
         function (err, rows, fields) {
             if(!err)
             {
                 console.log(rows);
                 console.log("successfully Deleted")
                 //res.end(JSON.stringify(rows));
                 return next();
             }else {
                 console.log("error while executing query");
             }
         })
 }
 function _deleteFromUploadProperty(bag,next){
     connectionFrom.connVar.query( 'delete from uploadproperty where ' +
         'propertyId=' + connectionFrom.connVar.escape(bag.propertyId),
         function (err, rows, fields) {
             if(!err)
             {
                 console.log(rows);
                 console.log("successfully Deleted")
                 //res.end(JSON.stringify(rows));
                 return next();
             }else {
                 console.log("error while executing query");
             }
         })
 }


 app.post('/registration', function (req, res) {
     response = {
         name:req.body.name,
         user_id:req.body.userId,
         user_pass:req.body.pass,
         address:req.body.address,
         email:req.body.email,
         contact_no:req.body.mobileNo
     };
     connectionFrom.connVar.query('INSERT INTO registration SET ?', response, function(err,result){
         if (!err){
             /*res.send(' Welcome to our website .......');*/
             console.log(' Credentials added to database');
             result.userId=req.body.userId;
             result.status="success"
             res.end(JSON.stringify(result));
         }
         else{
             result.status="unsuccess"
             res.end(JSON.stringify(result));
             connectionFrom.connVar.end();
             console.log('Error while performing Query.');
         }
     });
 })


 app.post('/reservedproperty', function (req, res) {

     bag={};
     bag.userId = req.body.userId;
     bag.propertyId=req.body.property_id;
     async.series([
         _insertIntoReserveProperty.bind(null, bag),
         _changeTheStatusOfProperty.bind(null,bag)
     ],function (err) {
         if(err){
             throw  "some where mistake"
         }else{
             bag.status = "successfull";
             res.end(JSON.stringify(bag));
         }
     })
 })
 function _insertIntoReserveProperty(bag,next){
     inputValues = {
         user_id:bag.userId ,
         property_id:bag.propertyId
     };
     connectionFrom.connVar.query('INSERT INTO reservedproperty SET ?', inputValues, function(err,result){
         if (!err){
             /*res.send(' Welcome to our website .......');*/
             console.log(' Credentials added to database');
             data = {"satatus" : "success"}
             return next();
         }
         else{

             data = {"satatus" : "unsuccess"}

             connectionFrom.connVar.end();
             console.log('Error while performing Query.');
         }
     });
 }
 function _changeTheStatusOfProperty(bag,next){
     newValue = {
         flag : "1"
     };
     condition = {propertyId: bag.propertyId};


     console.log(bag.propertyId ,"bag.propertyId");
     connectionFrom.connVar.query('UPDATE  uploadproperty SET ? where ?',
         [newValue,condition] ,function(err,result){
             if (!err){
                 console.log('updated success')
                 data = { "status" : "changed" };
                 return next();
             }
             else{

                 data = { "status" : "unchanged" };
                 console.log("i am inside of wrong ");
                 connectionFrom.connVar.end();
                 console.log('Error while performing Query in update.');
             }
         });
 }



 app.post('/cancelProperty', function (req, res) {

     bag={};
     bag.userId = req.body.userId;
     bag.propertyId=req.body.property_id;
     async.series([
         _deleteFromReserveProperty1.bind(null,bag),
         _changeTheStatusOfProperty1.bind(null,bag)
     ],function (err) {
         if(err){
             throw  "some where mistake"
         }else{
             bag.status = "successfull";
             res.end(JSON.stringify(bag));
         }
     })
 })
 function _deleteFromReserveProperty1(bag,next){
     inputValues = {
         user_id:bag.userId ,
         property_id:bag.propertyId
     };
     console.log(inputValues);
     connectionFrom.connVar.query( 'delete from reservedproperty  where user_id='+connectionFrom.connVar.escape(bag.userId) +
         ' AND property_id=' + connectionFrom.connVar.escape(bag.propertyId),
         function (err, rows, fields) {
             if(!err)
             {
                 console.log(rows);
                 console.log("successfully Deleted")
                 //res.end(JSON.stringify(rows));
                 return next();
             }else {
                 console.log("error while executing query");
             }
         })


 }
 function _changeTheStatusOfProperty1(bag,next){
     newValue = {
         flag : "0"
     };
     condition = {propertyId: bag.propertyId};

     console.log(bag.propertyId ,"bag.propertyId");
     connectionFrom.connVar.query('UPDATE  uploadproperty SET ? where ?',
         [newValue,condition] ,function(err,result){
             if (!err){
                 console.log('updated success')
                 data = { "status" : "changed" };
                 return next();
             }
             else{

                 data = { "status" : "unchanged" };
                 console.log("i am inside of wrong ");
                 connectionFrom.connVar.end();
                 console.log('Error while performing Query in update.');
             }
         });
 }


 app.post("/buyerreservedproperty" , function (req, res) {
     var id=req.body.userId;
     console.log(id ,"id");
     connectionFrom.connVar.query('select * from  uploadproperty where propertyId = (select property_id from reservedproperty  where user_id =' +
         connectionFrom.connVar.escape(id) + ' ) ',
         function (err, rows, fields) {
             if(!err)
             {
                 console.log(rows);
                 res.end(JSON.stringify(rows));

             }else {
                 console.log("error while executing query");
             }

         })

 })

 app.post("/sellerViewProperty" , function (req, res) {
     var id=req.body.userId;
     console.log(id ,"id");
     connectionFrom.connVar.query('select * from  uploadproperty where  userId  = ' + connectionFrom.connVar.escape(id)    ,
         function (err, rows, fields) {
             if(!err)
             {
                 console.log(rows);
                 res.end(JSON.stringify(rows));

             }else {
                 console.log("error while executing query");
             }

         })

 })


 app.post("/viewProfile" , function (req, res) {
     var id=req.body.userId;
     var tableName = req.body.tableName;
     console.log(id ,"id");
     console.log(tableName ,"tableName");

     connectionFrom.connVar.query('select * from '+tableName +'  where  user_id  = ' + connectionFrom.connVar.escape(id)    ,
         function (err, rows, fields) {
             if(!err)
             {
                 console.log(rows);
                 res.end(JSON.stringify(rows));

             }else {
                 console.log("error while executing query");
             }

         })

 })

 app.post('/updateProfile', function (req, res) {
     response = {
         name:req.body.name,
         user_pass:req.body.pass,
         address:req.body.address,
         email:req.body.email,
         contact_no:req.body.mobileNo
     };
     connectionFrom.connVar.query('INSERT INTO registration SET ?', response, function(err,result){
         if (!err){
             /*res.send(' Welcome to our website .......');*/
             console.log(' Credentials added to database');
             result.userId=req.body.userId;
             result.status="success"
             res.end(JSON.stringify(result));
         }
         else{
             result.status="unsuccess"
             res.end(JSON.stringify(result));
             connectionFrom.connVar.end();
             console.log('Error while performing Query.');
         }
     });
 })
 app.post('/adminUpdateProfile', function (req, res) {
     response = {
         name:req.body.name,
         user_pass:req.body.pass,
         address:req.body.address,
         email:req.body.email,
         contact_no:req.body.mobileNo
     };
     connectionFrom.connVar.query('INSERT INTO admin SET ?', response, function(err,result){
         if (!err){
             /*res.send(' Welcome to our website .......');*/
             console.log(' Credentials added to database');
             result.userId=req.body.userId;
             result.status="success"
             res.end(JSON.stringify(result));
         }
         else{
             result.status="unsuccess"
             res.end(JSON.stringify(result));
             connectionFrom.connVar.end();
             console.log('Error while performing Query.');
         }
     });
 })
 
 app.post('/editprofile', function (req, res) {
     response = {
         name:req.body.name,
         user_pass:req.body.user_pass,
         address:req.body.address,
         email:req.body.email,
         contact_no:req.body.contact_no
     };
     condition = {user_id:req.body.user_id};
     var tableName = req.body.tableName;

     console.log(response)
     console.log(condition)
     console.log(tableName)

     connectionFrom.connVar.query('UPDATE '+ tableName + '  SET ? where ?',
         [response,condition] ,function(err,result){
             if (!err){
                 console.log('updated success')
                  data = { "status" : "changed" };
                 res.end(JSON.stringify(data));
             }
             else{

                 data = { "status" : "unchanged" };
                 res.end(JSON.stringify(data));
                 connectionFrom.connVar.end();
                 console.log('Error while performing Query in update.');
             }
         });



 });


 app.post("/loginVerify",function(req,res){
                userId= req.body.userId,
                password=req.body.password ,
                tableName = req.body.type;

                        /* in where clause if u want to use and clause then it sholud be AND only other wise it wonot work*/
        connectionFrom.connVar.query('SELECT * from '+ tableName  +' where user_id = ' + connectionFrom.connVar.escape(userId)
            + ' AND user_pass = ' + connectionFrom.connVar.escape(password) ,
                function(err, rows, fields) {
                if (!err){
                    if(rows.length >0)
                    {
                        rows[0].authentication="success";
                        res.end(JSON.stringify(rows[0]));
                        console.log("i am insdide")
                    }else
                    {
                        var data = {"authentication":"fail"}; rows[0] = data ;
                        res.end(JSON.stringify(rows[0]));
                    }


                    for (var i = 0; i < rows.length; i++) {
                        console.log(rows[i].sid);
                    };
                }
                else{
                    connectionFrom.connVar.end();
                    console.log('Error while performing Query.');
                }
            });
    });

 app.post('/uploadProperty', function (req, res) {
     inputvalues = {
         location:req.body.location,
         type:req.body.type,
         feature:req.body.features,
         price:req.body.cost,
         flag:0,
         userId:req.body.userId
     };
     connectionFrom.connVar.query('INSERT INTO uploadproperty SET ?', inputvalues, function(err,result){
         if (!err){
             data ={ "status" : "success"}
             console.log(' Credentials added to database');
             res.end(JSON.stringify(data));
         }
         else{

             data ={ "status" : "unsuccess"}
             res.end(JSON.stringify(data));
             connectionFrom.connVar.end();
             console.log('Error while performing Query.');
         }
     });
 })
 
 app.post('/serachPropery', function (req, res) {

     console.log(req.body.location)
     connectionFrom.connVar.query(
         'select * from uploadproperty where location  LIKE '+ connectionFrom.connVar.escape('%'+req.body.location+'%')
        +' AND type LIKE ' +connectionFrom.connVar.escape('%'+req.body.type+'%')
         +' AND  feature LIKE ' + connectionFrom.connVar.escape('%'+req.body.features+'%')
         +' AND price BETWEEN ' + req.body.minPrice +' AND ' + req.body.maxPrice
         +' AND flag = 0 AND approval = 1'
        ,  function(err,rows,fields){
         if (!err){

             console.log(rows);
             res.end(JSON.stringify(rows));
         }
         else{
             data ={ "status" : "unsuccess"}
             res.end(JSON.stringify(data));
             console.log('Error while performing Query.');
             connectionFrom.connVar.end();

         }
     });
 })

app.get('/adminData', function (req, res) {
     connectionFrom.connVar.query(
         'select * from uploadproperty where approval = 0 '
         ,  function(err,rows,fields){
             if (!err){

                 console.log(rows);
                 if(rows.length  == 0){
                     console.log('i am dihsldfkjgsdhf')
                     data = {"status" : "nodata"}
                     res.end(JSON.stringify(data));
                 }else{
                     res.end(JSON.stringify(rows));
                 }

             }
             else{
                 data ={ "status" : "unsuccess"}
                 res.end(JSON.stringify(data));
                 console.log('Error while performing Query.');
                 connectionFrom.connVar.end();

             }
         });


 })



 app.post('/adminApproval', function (req, res) {

     newValue = {
         approval : 1
     };
     console.log( req.body.propertyId ,"req.body.propertyId");
     condition = {propertyId: req.body.propertyId};

     connectionFrom.connVar.query('UPDATE  uploadproperty SET ? where ?',
         [newValue,condition] ,function(err,result){
             if (!err){
                 console.log('updated success')
                 data = { "status" : "changed" };
                 res.end(JSON.stringify(data));
             }
             else{

                 data = { "status" : "unchanged" };
                 console.log("i am inside of wrong ");
                 connectionFrom.connVar.end();
                 console.log('Error while performing Query in update.');
             }
         });
 })

     app.delete('/deleteProperty/:propertyId' ,function (req, res) {
     var id= req.params.propertyId;

     console.log(id , "id")
     connectionFrom.connVar.query( 'delete from uploadproperty where propertyId='+connectionFrom.connVar.escape(id),
         function (err, rows, fields) {
             if(!err)
             {
                 data = {"status" :"success"}
                 console.log("successfully Deleted")
                 res.end(JSON.stringify(data));
             }else {
                 console.log("error while executing query");
             }

         })


 });




 /*select * from  uploadproperty where propertyId = (select property_id from reservedproperty  where user_id ='p452' )*/

 var storage = multer.diskStorage({ //multers disk storage settings
     destination: function (req, file, cb) {
         cb(null, './uploads/');
     },
     filename: function (req, file, cb) {
         var datetimestamp = Date.now();
         cb(null, file.fieldname + '-' + datetimestamp + '.' + file.originalname.split('.')[file.originalname.split('.').length -1]);
     }
 });

 var upload = multer({ //multer settings
     storage: storage
 }).array('photo', 5);

/*
 var storage = multer.diskStorage({

     destination: function (request, file, callback) {
         callback(null, './'+dir);
     },
     filename: function (request, file, callback) {
         initial= initial+1;
         console.log(file , "file nabiuhaihiuhiuh", initial);
         callback(null, 'lllll'+'.'+'png')
     }
 });*/

 /** API path that will upload the files */
 app.post('/upload', function(req, res) {
     console.log('i got a request');
     upload(req,res,function(err){
         if(err){
             res.json({error_code:1,err_desc:err});
             return;
         }
         res.json({error_code:0,err_desc:null});
     });
 });

 /*var upload = multer({storage: storage}).array('photo', 5);

 app.get('/uploadMultiple', function(resuest, response) {
     response.sendFile(__dirname + '/upload.html');
     console.log('yuygyugyuguyg')
 });

 var initial=0;*/
/*
 app.post('/upload', function(request, response) {

     upload(request, response, function(err) {
         if(err) {

             console.log(err);
             console.log('Error Occured');
             return;
         }
       // request.files is an object where fieldname is the key and value is the array of files
         console.log(request.files);
         response.end('Your Files Uploaded');
         console.log('Photo Uploaded');
     })
 });
*/







 var server = app.listen(3005, function () {
    var host = server.address().address
    var port = server.address().port
    console.log("Example app listening at http://%s:%s", host, port)
})