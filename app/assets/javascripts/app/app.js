angular.module('app', ['app.controller', 'camera', 'ui.router']);

.config(function($stateProvider, $urlRouterProvider) {
	$stateProvider
	.state('upload', {
		url: '/',
		templateUrl: 'templates/upload.html',
		controller: 'PhotoCtrl'
	})

	$urlRouterProvider.otherwise("/");
});
