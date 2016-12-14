var app = angular.module('toDoApp', []);
app
  .controller('ToDoController', ['$scope', function ($scope) {
	  $scope.doneTask = function (index) {
		  $scope.tasks[index].done = true;
		}
		$scope.unDoneTask = function (index) {
		  $scope.tasks[index].done = false;
  }
}])