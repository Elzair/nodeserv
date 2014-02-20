connect = require('connect')
Mincer  = require('mincer')

environment = new Mincer.Environment()
environment.appendPath('/app/current/app/assets/javascripts')
environment.appendPath('/app/current/app/assets/stylesheets')

app = connect()
app.use('/assets', Mincer.createServer(environment))
app.use((req, res) ->
  # your application here...
  res.end()
)

app.listen(3000, (err) ->
  if (err) 
    console.error("Failed start server: " + (err.message || err.toString()))
    process.exit(128)

  console.info('Listening on localhost:3000')
)
