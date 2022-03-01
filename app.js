const express = require('express')
const os = require('os')
const app = express()
const port = 8080

app.get('/', (req, res) => {
    res.send(`You've hit ${os.hostname()} \n`)
})

app.listen(port, () => {
    console.log(`Express app listening on port ${port}`)
})