angular.module "konsentoWebapp"
  .controller "ProposalCommentsCtrl", ($scope, $mdDialog) ->
    $scope.hide = ->
      $mdDialog.hide()

    $scope.cancel = ->
      $mdDialog.cancel()

    $scope.answer = (answer) ->
      $mdDialog.hide (answer)

    #-----------------------------------------------------------------------
    $scope.comments = [
        {id: 1, content: "Nice", user: {username: "guilherme_dias"}}
        {id: 2, content: "I liked it.", user: {username: "felipe_costa"}},
        {id: 3, content: "Awsome", user: {username: "fabio_souza"}},
    ]

    #- $scope.newComment = {}
    $scope.newComment = {id: 4, user: {username:"guiiruiz"}}
    $scope.addComment = () ->
      $scope.comments.push($scope.newComment)
      $scope.newComment = {id: 4, user: {username:"guiiruiz"}}
      return

  .directive 'ksProposalComments', ->
    restrict: 'E'
    templateUrl: 'app/thread/ks-proposal-comments.html'
