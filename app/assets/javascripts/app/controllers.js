angular.module('app.controller',[])
    .controller('AppController', function($scope, $http) {

    console.log('controller initialized');

    // Called when Accept button is clicked
	// send photo to the server
	$scope.storePhoto = function(photo) {
		console.log("Accept button clicked")
		$http.post('http://tiny-pizza-server.herokuapp.com/collections/progress-pics', {data: photo} );

	};

    });