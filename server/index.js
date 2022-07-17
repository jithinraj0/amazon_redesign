console.log("Hello World!!");

const express = require('express');

const PORT = 3000;

const app = express();

app.listen(PORT, "0.0.0.0", () => {
    console.log(`connected at ${PORT} hiii.`);
})

//API operations

app.get("/hello-world", (req, res) => {
    res.send("hello world");
})

