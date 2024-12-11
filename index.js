const express = require('express')
const app = express()

const PORT = process.env.PORT || 8080
app.get('/', (req, res) => {
    return res.json({msg: "Hey! I am Node.JS in container"})
})


app.listen(PORT, () => console.log(`Server started on port: ${PORT}`))


