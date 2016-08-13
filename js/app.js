
angular.module('myapp', ['ui.router','myapp.controllers', 'myapp.services'])

.config(function($stateProvider, $urlRouterProvider) {

  $stateProvider
    .state('tab', {
    url: '/tab',
    templateUrl: 'templates/tabs.html'
  })

  .state('tab.hello', {
    url: '/hello',
    templateUrl: 'templates/tab-hello.html',
    controller: 'helloCtrl' 
  })

  .state('tab.new', {
    url: '/new',
    templateUrl: 'templates/tab-new.html',
    controller: 'newCtrl' 
  })

  .state('tab.box', {
    url: '/box',
    templateUrl: 'templates/tab-box.html',
    controller: 'boxCtrl' 
  })
  $urlRouterProvider.otherwise('/tab/hello');

});