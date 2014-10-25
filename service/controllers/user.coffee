'use strict'

User = require '../business/user'
Moment = require 'moment'

##
create = (req, res) ->
  data = req.body

  User.create(data).then (data) ->
    res.send data
  , (err) ->
    res.send err

##
update = (req, res) ->
  data = req.body
  User.Update(data._id, data).than (data) ->
    res.send {data: data}
  , (err) ->
    res.send {err: err}

##
remove = (req, res) ->


# Tham khao user - juddy
getById = (req, res) ->
  _user = req.query._user
  user.getById(_user).then (data) ->
    res.send {data: data}
  , (err) ->
    res.send {err: err}

getAll = (req, res) ->
  User.getAll().then (data) ->
    res.send data
  , (err) ->
    res.send err

deleteById = (req, res) ->
  console.log req
  id = req.query.id
  User.deleteById(id).then (data) ->
    res.send 'ok'
  , (err) ->
    res.send err

module.exports = (app) ->
  app.get '/user/create', create
  app.get '/user/update', update    # 25/10/2014
  app.get '/user/remove', remove    # 25/10/2014
  app.get '/user/getById', getById  # 25/10/2014
  app.get '/user/getAll', getAll
<<<<<<< HEAD
=======
  app.get '/user/deleteById', deleteById

>>>>>>> 084167d35349f5307f0e3ec6beef8330b33d427a