angular.module "konsentoWebapp"
  .controller "ThreadCtrl", ($scope) ->
    propSample = [{id: 21, text: "Lorem "},{id: 22, text: "Lorem "},{id: 23, text: "Lorem "}]
    $scope.consensus = [
      { id: 1, text: "A", proposals: {hot: propSample, popular: propSample, recents: propSample}},
      { id: 2, text: "B", proposals: {hot: propSample, popular: propSample, recents: propSample}},
      { id: 3, text: "C", proposals: {hot: propSample, popular: propSample, recents: propSample}}
    ]

    $scope.selectedConsensusId = 1
    $scope.selectedConsensus = $scope.consensus[0]

    $scope.consensusClickEvent = (proposal) ->
      $scope.selectedConsensusId = proposal.id
      $scope.selectedConsensus = proposal
      return
    #-----------------------------------------------------------------------
    $scope.comments = [
        {id: 1, content: "A", user: {username: "guilherme_dias"}}
        {id: 2, content: "B", user: {username: "felipe_costa"}},
        {id: 3, content: "C", user: {username: "fabio_souza"}},
    ]

    $scope.newComment = {id: 4, user: {username:"guiiruiz"}}
    $scope.addComment = () ->
      $scope.comments.push($scope.newComment)
      $scope.newComment = {id: 4, user: {username:"guiiruiz"}}
      return


  .directive 'ksProposals', ->
    restrict: 'E'
    templateUrl: 'app/thread/ks-proposals.html'
  .directive 'ksConsensus', ->
    restrict: 'E'
    templateUrl: 'app/thread/ks-consensus.html'
  .directive 'ksThreadComments', ->
    restrict: 'E'
    templateUrl: 'app/thread/ks-thread-comments.html'
