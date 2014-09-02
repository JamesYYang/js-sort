util = require("./util")
ss = require("./sorts/selectionSort")
bs = require("./sorts/bubbleSort")
qs = require("./sorts/quickSort")
moment = require("moment")
_ = require('lodash')

array = []

i = 0
while i < 20
  array.push util.randomNumber()
  i++

console.log "Original Array: "
console.dir array
console.log "=========================================================\n"


doSort = (sortName, sortFunction)->
  temp =_.cloneDeep array
  beginTime = moment()
  console.log "Begin #{sortName} sort at: " + beginTime.format("HH:mm:ss.SSS")
  selectionSortArray = sortFunction(temp)
  endTime = moment()
  console.log "End #{sortName} sort at: " + endTime.format("HH:mm:ss.SSS") + ", total ms: " + (endTime - beginTime)
  console.dir selectionSortArray
  console.log "=========================================================\n"

doSort("selection", ss.selectionSort)
doSort("bubble", bs.bubbleSort)
doSort("quick", qs.quickSort)

