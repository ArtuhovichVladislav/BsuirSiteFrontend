'use strict'

angular.module 'bsuir-ecm'
  .controller 'NewsCtrl', ($scope, $http) ->
     $scope.curPage = 0;
     $scope.pageSize = 3;

     $scope.numberOfPages = () ->
       Math.ceil($scope.news.length / $scope.pageSize)

     $scope.range = (n) ->
       new Array(n)

     $scope.news = []
     $http.get('../../news.json').success (data) ->
       $scope.news = data



angular.module 'bsuir-ecm'
  .filter 'pagination', ->
    (input, start) ->
      start = +start
      input.slice(start)


# 'use strict'
#
# angular.module 'bsuir-ecm'
#   .controller 'NewsCtrl', ($scope) ->
#      $scope.curPage = 0;
#      $scope.pageSize = 3;
#
#      $scope.numberOfPages = () ->
#        Math.ceil($scope.news.length / $scope.pageSize)
#
#      $scope.range = (n) ->
#        new Array(n)
#
#      $scope.news = [
#       {
#         "id": 0,
#         "title": "Спасая нашу историю",
#         "content": "Компания Яндекс обновила мобильное приложение Яндекс.Навигатор. Помимо традиционных исправлений ошибок новая версия принесла функцию сохранения истории маршрутов и избранного в облаке, а также нативную поддержку технологии 3D touch в смартфонах iPhone 6s и iPhone 6s…",
#         "createdAt": "22.02.2016",
#         "img":"../../images/news/image1.jpg"
#       },
#       {
#         "id": 1,
#         "title": "Спасая нашу историю",
#         "content":"Представители канадской фирмы по компьютерной безопасности заподозрили российского разработчика приложений в создании сложной схемы мошенничества в интернете. Схема реализовывалась через принадлежащий Twitter рекламный сервис. Новосибирский разработчик мобильных приложений Academ Media отрицает обвинения в многомиллионном мошенничестве…",
#         "createdAt": "22.02.2016",
#         "img":"../../images/news/image2.jpg"
#       },
#       {
#         "id": 2,
#         "title": "Спасая нашу историю",
#         "content": "Бюро по патентам и товарным знакам Гонконга закрепило за корпорацией Apple права на использование в ноутбуках нового интерфейсного разъема USB-C. Заявка на патент под номером 1501914 была подана в начале сентябре 2015 года, однако утверждена…",
#         "createdAt": "22.02.2016",
#         "img":"../../images/news/image3.jpg"
#       },
#       {
#         "id": 3,
#         "title": "Спасая нашу историю",
#         "content": "Идея об объединении и ликвидации «Сколково», которая обсуждалась в конце января на совещании экспертного совета при правительстве РФ, была отвергнута, сообщает Kommersant со ссылкой на собственные источники. В правительстве полагают, что в фонд «вложено слишком…",
#         "createdAt": "22.02.2016",
#         "img":"../../images/news/image4.jpg"
#       },
#       {
#         "id": 4,
#         "title": "Спасая нашу историю",
#         "content": "Google продолжает работу над оптимизацией своих программных продуктов и сервисов. В последнем обновлении мессенджера Hangouts пользователи обратили внимание на улучшение качества связи. Речь идет о более качественных звуке и видеопотоке. Теперь приложение для связи между…",
#         "createdAt": "22.02.2016",
#         "img":"../../images/news/image5.jpg"
#       },
#       {
#         "id": 5,
#         "title": "Спасая нашу историю",
#         "content": "Google продолжает работу над оптимизацией своих программных продуктов и сервисов. В последнем обновлении мессенджера Hangouts пользователи обратили внимание на улучшение качества связи. Речь идет о более качественных звуке и видеопотоке. Теперь приложение для связи между…",
#         "createdAt": "22.02.2016",
#         "img":"../../images/news/image6.jpg"
#       },
#       {
#         "id": 6,
#         "title": "Спасая нашу историю",
#         "content": "Google продолжает работу над оптимизацией своих программных продуктов и сервисов. В последнем обновлении мессенджера Hangouts пользователи обратили внимание на улучшение качества связи. Речь идет о более качественных звуке и видеопотоке. Теперь приложение для связи между…",
#         "createdAt": "22.02.2016",
#         "img":"../../images/news/image7.jpg"
#       },
#       {
#         "id": 7,
#         "title": "Спасая нашу историю",
#         "content": "Google продолжает работу над оптимизацией своих программных продуктов и сервисов. В последнем обновлении мессенджера Hangouts пользователи обратили внимание на улучшение качества связи. Речь идет о более качественных звуке и видеопотоке. Теперь приложение для связи между…",
#         "createdAt": "22.02.2016",
#         "img":"../../images/news/image8.jpg"
#       }
#     ]
#
# angular.module 'bsuir-ecm'
#   .filter 'pagination', ->
#     (input, start) ->
#       start = +start
#       input.slice(start)