var express = require('express');
var app = express();

app.get('/', function(req, res){
    res.semd('hello world');
});

app.listen(3000);