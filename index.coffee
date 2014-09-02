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


temp =_.cloneDeep array
beginTime = moment()
console.log "Begin selection sort at: " + beginTime.format("HH:mm:ss.SSS")
selectionSortArray = ss.selectionSort(temp)
endTime = moment()
console.log "End selections sort at: " + endTime.format("HH:mm:ss.SSS") + ", total ms: " + (endTime - beginTime)
console.dir selectionSortArray
console.log "=========================================================\n"


temp =_.cloneDeep array
beginTime = moment()
console.log "Begin bubble sort at: " + beginTime.format("HH:mm:ss.SSS")
bubbleSortArray = bs.bubbleSort(temp)
endTime = moment()
console.log "End bubble sort at: " + endTime.format("HH:mm:ss.SSS") + ", total ms: " + (endTime - beginTime)
console.dir bubbleSortArray
console.log "=========================================================\n"

temp =_.cloneDeep array
beginTime = moment()
console.log "Begin quick sort at: " + beginTime.format("HH:mm:ss.SSS")
quickSortArray = qs.quickSort(temp)
endTime = moment()
console.log "End quick sort at: " + endTime.format("HH:mm:ss.SSS") + ", total ms: " + (endTime - beginTime)
console.dir quickSortArray
console.log "=========================================================\n"