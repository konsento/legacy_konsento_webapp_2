angular.module "konsentoWebapp"
  .controller "KsToolbarCtrl", ($scope, $state) ->
    $scope.breadcrumbs = []
    switch $state.current.name
      when 'home'
        $scope.breadcrumbs.push
          title: 'Global'
          url: '/'
      when 'group'
        $scope.breadcrumbs.push
          title: 'Global'
          url: '/'
      when 'thread'
        $scope.breadcrumbs.push
          title: 'Global'
          url: '/'
        $scope.breadcrumbs.push
          title: 'Grupo'
          url: '/group'
        $scope.breadcrumbs.push
          title: 'Tópico'
          url: '/thread'
      when 'new-thread'
        $scope.breadcrumbs.push
          title: 'Criar novo tópico'
          url: '/thread'
