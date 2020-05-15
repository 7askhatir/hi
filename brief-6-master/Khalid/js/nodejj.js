var express = require('express')
let app =express()
var path = require('path')

app.use('/static',express.static('public'))
app.get('/',function(req,res){
    res.sendFile(path.join(__dirname,'index.html'))
    
});
app.listen(8112)