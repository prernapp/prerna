var express = require("express");
var fs = require('fs');


var bodyParser = require('body-parser');
var app = express();

 app.use(express.static(__dirname + "/public"));
app.use(bodyParser.urlencoded({extended : true}));
app.use(bodyParser.json());

var dir='muki';
//doctor



 app.post('/classify', function (req, res) {
    
    console.log("api called")
     /*
     console.log("x: "+req.body.x)
     console.log("y: "+req.body.y)
     console.log("z: "+req.body.z)
*/
     st=req.body.x+","+req.body.y+","+req.body.z+",\n";   
     console.log(st)
     fs.appendFile('data.txt', st, function (err) {
          if (err) throw err;
          console.log('Saved!');
        });
     
 })



 var server = app.listen(3005, function () {
    var host = server.address().address
    var port = server.address().port
    console.log("host " + host)
    console.log("Example app listening at http://%s:%s", host, port)
})