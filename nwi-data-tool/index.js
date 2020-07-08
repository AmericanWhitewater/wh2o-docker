const app = require('express')()
const port = process.env.PORT || 4000

app.get('/', (req, res) => {
  res.send('nwi-data-tool').status(200)
})

app.get('/ping', (req, res) => {
  res.send({message: 'pong'})
})

app.listen(port, () => {
  console.log(`nwi-data-tool listening on http://localhost:${port}`)
})