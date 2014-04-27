var celebrityApp = angular.module('celebrityApp', []);

celebrityApp.controller ("CelebrityHalflifeController", function($scope, $http) {
	$scope.test = "Testing";
	$http.get("pathhere").success(function(data) {
		$scope.celebs = data;
	})
});

//
//
// phonecatApp.controller('PhoneListCtrl', function($scope, $http) {
//   $http.get('phones/phones.json').success(function(data) {
//     $scope.phones = data;
//   });
//
//   $scope.orderProp = 'age';
// });
