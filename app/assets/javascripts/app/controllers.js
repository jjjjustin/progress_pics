angular.module('app.controller',[])
    .controller('AppController', function($scope, $http) {
	    console.log('controller initialized');

	    })

    .controller('PhotoCtrl', function($scope, $http) {
	    console.log('controller initialized');

	    $scope.date = new Date();

	    //Pic display settings

	    $scope.showPicOptions = true;
	    $scope.hidePicTaker = true;

	    $scope.takePhotoEnabled = function () {
	    	$scope.showPicOptions = false;
	    	$scope.hidePicTaker = false;
	    };

	    $scope.showIt = false;
	   	$scope.showShutter = true;

	    $scope.showCaption = function() {
	    	$scope.showIt = true;
	    	$scope.showShutter = false;
			
		 };

		 $scope.afterPhoto = false;

		$scope.addAfterPhoto = function () {
			$scope.afterPhoto = true;
			$scope.showIt = false;
		};
	
	    // Called when Accept button is clicked
		// send photo to the server
		// $scope.storePhoto = function(photo) {
		// 	console.log(photo)
		// 	console.log("Accept button clicked")
		// 	$http.post('/users/1/pictures.json', { picture: { photo: photo } } );

		// };

	    });