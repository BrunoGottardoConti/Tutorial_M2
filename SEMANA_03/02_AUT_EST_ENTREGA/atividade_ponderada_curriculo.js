var express = require("express");
var app = express();
var port = process.env.PORT || 3004;
var bodyParser = require('body-parser');
var sqlite3 = require('sqlite3').verbose();
var DBPATH = './Bruno_Curriculo.db';
var db = new sqlite3.Database(DBPATH);

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

app.get("/todas_as_informacoes", function(req,res){
    res.header("Access-Control-Allow-Origin", "*");''
    db.all(`SELECT * FROM Bruno_curriculo_profissional`, [], (err, rows)=>
    {
        if(err)
        {
            res.send(err);
        }
        res.send(rows);
    });
});

app.listen(port, () =>
{
    console.log(`Servidor rodando na porta ${port}`);
})