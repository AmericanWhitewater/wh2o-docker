const app = require('express')()
const port = process.env.PORT || 5000

app.get('/', (req, res) => {
  res.send('wh2o-gages').status(200)
})

app.get('/ping', (req, res) => {
  res.send({message: 'pong'})
})

app.listen(port, () => {
  console.log(`wh2o-gages listening on http://localhost:${port}`)
})