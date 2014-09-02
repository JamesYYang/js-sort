exports.is = (type, obj)->
  clas = Object.prototype.toString.call(obj).slice(8, -1)
  return obj isnt undefined && obj isnt null && clas is type


exports.randomNumber = ->
  max = 100
  random = Math.floor(Math.random() * max)
  random