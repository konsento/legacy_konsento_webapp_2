angular.module "konsentoWebapp"
  .controller "ThreadCtrl", ($scope) ->
    $scope.proposalSelectedIndex = 1

    $scope.proposals = [
      { id: 1, texto: "A" }
      { id: 2, texto: "B" }
      { id: 3, texto: "c" }
    ]
    console.log $scope.proposals
    $scope.proposalClickEvent = (i) ->
      console.log i.currentTarget.attribute("role")
      #$scope.proposalSelectedIndex = i
      return

  .directive 'ksProposal', ->
    restrict: 'E'
    templateUrl: 'app/thread/ks-proposal.html'
  .directive 'ksThreadComment', ->
    restrict: 'E'
    templateUrl: 'app/thread/ks-thread-comment.html'
