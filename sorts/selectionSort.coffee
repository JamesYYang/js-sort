util = require("../util")

exports.selectionSort = (array) ->
  if util.is "Array", array
    len = array.length
    temp = undefined
    i = 0

    while i < len - 1
      min = array[i]
      j = i + 1

      while j < len
        if array[j] < min
          temp = min
          min = array[j]
          array[j] = temp
        j++
      array[i] = min
      i++
    array
  else
    throw new Error "Only array can sort!"