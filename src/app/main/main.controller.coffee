angular.module "konsentoWebapp"
  .controller "MainCtrl", ($scope) ->
    $scope.tabs = [
      { title: 'Populares', content: "Tabs will become paginated if there isn't enough room for them."},
      { title: 'Subindo', content: "You can swipe left and right on a mobile device to change tabs."},
      { title: 'Controverso', content: "You can bind the selected tab via the selected attribute on the md-tabs element."}
    ]

    $scope.groups = [
      { id: 1, title: 'Brasil', desc: "Discussões sobre assuntos federais brasileiros" }
      { id: 2, title: 'EUA', desc: "Discussions about american federal subjects" }
    ]

    $scope.subgroups = [
      { title: 'São Paulo', desc: "Discussões sobre assuntos estaduais paulistas" }
      { title: 'Rio de Janeiro', desc: "Discussões sobre assuntos estaduais cariocas" }
      { title: 'Minas Gerais', desc: "Discussões sobre assuntos estaduais mineiros" }
    ]

  .directive 'ksGroupsList', ->
    restrict: 'E'
    templateUrl: 'app/main/ks-groups-list.html'
