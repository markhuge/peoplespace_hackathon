var celebrityApp = angular.module('celebrityApp', []);

celebrityApp.controller ("CelebrityHalflifeController", function($scope, $http) {
	$scope.test = "Testing";
	$http.get("/api/celebrities").success(function(data) {
		$scope.celebs = data;
	})

	$scope.currentPage = 0;
    $scope.pageSize = 5;
    //$scope.data = [];
    $scope.numberOfPages=function(){
        return Math.ceil($scope.celebs.length/$scope.pageSize);
    }
});


celebrityApp.filter('startFrom', function() {
    return function(input, start) {
        start = +start; //parse to int
        return input.slice(start);
    }
});


celebrityApp.filter('largeImage', function(image){
  return image.replace("_normal","bigger");
});