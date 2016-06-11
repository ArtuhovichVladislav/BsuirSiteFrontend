#pagination = (() ->
#  'use strict'
#  set: ((scope, list) ->
#    scope.listLength = list.length
#    scope.curPage = 0
#    scope.pageSize = 3
#
#    scope.numberOfPages = () ->
#      Math.ceil($scope.listLength / $scope.pageSize)
#
#    scope.range = (n) ->
#      new Array(n)
#  ()),
#())

'use strict'
set = (scope, list) ->
  scope.listLength = list.length
  scope.curPage = 0
  scope.pageSize = 3

  scope.numberOfPages = () ->
    Math.ceil($scope.listLength / $scope.pageSize)

  scope.range = (n) ->
    new Array(n)

angular.module 'bsuir-ecm'
.filter 'pagination', ->
  (input, start) ->
    start = +start
    input.slice(start)