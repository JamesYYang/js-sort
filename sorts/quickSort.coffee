util = require("../util")

exports.quickSort = (array) ->
  if util.is "Array", array
    quickSortCore(array)
  else
    throw new Error "Only array can sort!"


quickSortCore = (array) ->
  return array if array.length <= 1

  middleIndex = Math.floor(array.length / 2)
  middle = array.splice(middleIndex, 1)[0]
  left = []
  right = []
  i = 0
  while i < array.length
    if array[i] < middle
      left.push(array[i])
    else
      right.push(array[i])

    i++

  return quickSortCore(left).concat([middle], quickSortCore(right))


