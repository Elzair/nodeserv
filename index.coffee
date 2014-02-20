connect = require('connect')
http = require('http')

app = connect().use(require('connect-assets')(src: '/app/current/shared/assets', buildDir: '/app/current/shared/assets')).use((req, res) ->
    res.end('Hello from Connect!\n')
  )

http.createServer(app).listen(3000)
