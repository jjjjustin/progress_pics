angular.module('app.controller',[])
    .controller('AppController', function($scope, $http) {
	    console.log('controller initialized');

	    // Called when Accept button is clicked
		// send photo to the server
		$scope.storePhoto = function(photo) {
			console.log(photo)
			console.log("Accept button clicked")
			$http.post('/users/1/pictures.json', { picture: { photo: photo } } );

		};

	    })

    .controller('PhotoCtrl', function($scope, $http) {
	    console.log('controller initialized');

	    // Called when Accept button is clicked
		// send photo to the server
		$scope.storePhoto = function(photo) {
			console.log(photo)
			console.log("Accept button clicked")
			$http.post('/users/1/pictures.json', { picture: { photo: photo } } );

		};

	    });