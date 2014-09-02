util = require("../util")

exports.bubbleSort = (array) ->
  if util.is "Array", array
    len = array.length
    temp = undefined
    i = 0

    while i < len - 1
      j = len - 1

      while j >= i
        if array[j] < array[j - 1]
          temp = array[j]
          array[j] = array[j - 1]
          array[j - 1] = temp
        j--
      i++
    array
  else
    throw new Error "Only array can sort!"