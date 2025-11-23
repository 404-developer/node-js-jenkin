const http = require('http')
const express = require('express')
const cors = require('cors')

const app = express();

app.use(cors())


app.get('/',(req,res)=>{
    res.send("Hello world!")
})


http.createServer(app).listen(3000)