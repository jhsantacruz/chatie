var APP = angular.module('chatie', [
  'ui.router',
  'templates',
  'restangular'
]);

APP.config(['$stateProvider', '$urlRouterProvider', '$locationProvider', 'RestangularProvider',
    function($stateProvider, $urlRouterProvider, $locationProvider, RestangularProvider) {
  RestangularProvider.setBaseUrl("/api");
  RestangularProvider.setDefaultRequestParams({format: "json"});

  $urlRouterProvider.otherwise('/home');
  
  $stateProvider
     
    // HOME STATES AND NESTED VIEWS ========================================
    .state('home', {
        url: '/home',
        templateUrl: 'partial-home.html'
    })
    
    // nested list with custom controller
    .state('home.list', {
        url: '/list',
        templateUrl: 'partial-home-list.html',
        controller: function($scope) {
            $scope.dogs = ['Bernese', 'Husky', 'Goldendoodle'];
        }
    })
    
    // nested list with just some random string data
    .state('home.paragraph', {
        url: '/paragraph',
        template: 'I could sure use a drink right now.'
    });
}]);
