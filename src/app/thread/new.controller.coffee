angular.module "konsentoWebapp"
  .controller "NewThreadCtrl", ($scope, $mdDialog) ->

    $scope.userGroup = ''
    $scope.userSubgroup = ''

    $scope.groups = ['Brasil']
    $scope.subgroups = ['São Paulo', 'Minas Gerais', 'Rio de Janeiros']

    console.log($scope.states)
