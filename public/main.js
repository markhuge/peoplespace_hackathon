var celebrityApp = angular.module('celebrityApp', []);

celebrityApp.controller ("CelebrityHalflifeController", function($scope, $http) {
	$scope.test = "Testing";
	$http.get("/api/celebrities").success(function(data) {
		$scope.celebs = data;
	})
});
