'use strict'

# Cross-origin resource sharing
allowCors = (request, response, next) ->
  response.set 'Access-Control-Allow-Origin' , request.headers.origin
  response.set 'Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE'
  response.set 'Access-Control-Allow-Headers', 'Content-Type'
  response.set 'Access-Control-Allow-Credentials', true

  if request.method is 'OPTIONS'
    response.send(200)
  else
    next()


module.exports = (app) ->
  app.all '*', allowCors

  require('./user')(app)

