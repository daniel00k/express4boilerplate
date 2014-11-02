express          =  require 'express'
coffee           =  require 'coffee-script'
fs               =  require 'fs'
logger           =  require "morgan"
app              =  express()
app.set('port', process.env.PORT or 3003)

# set up handlebars view engine 
handlebars = require("express3-handlebars").create(defaultLayout: "main")
app.engine "handlebars", handlebars.engine
app.set "view engine", "handlebars"

app.use logger('combined')
# Serve static files
app.use express.static(__dirname + '/public')

# Serve test files written in coffee----not using it for now
# app.use '/test', (request, response, next) ->
#   coffeeFile = __dirname + '/test' + request.path
#   file       = fs.readFile coffeeFile, "utf-8", (err, data) ->
#     return next() if err?
#     response
#       .contentType('text/javascript')
#       .send coffee.compile data

app.get '/', (req, res)-> 
	res.render('pages/home')

dynamic = ['asdf', 'qwer', 'acaca']

app.get '/about', (req, res)-> 
	dynamicSample = dynamic[Math.floor(Math.random()*dynamic.length)]
	res.render('pages/about', { fortune: dynamicSample})

# 404
app.use (req, res) ->
  res.status 404
  res.render "statusPages/404"
  return

# 500
app.use (err, req, res, next) ->
  console.error(err.stack)
  res.status 500
  res.render "statusPages/500"
  return

# listen
app.listen app.get("port"), ->
  console.log "Express started on http://localhost:" + app.get("port")
  return
