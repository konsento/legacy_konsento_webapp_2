angular.module "konsentoWebapp"
  .controller "ThreadCtrl", ($scope, $mdDialog) ->
    proposalSample = [{id: 21, text: "Lorem "},{id: 22, text: "Lorem "},{id: 23, text: "Lorem "}]
    $scope.consensus = [
      { id: 1, text: "A", proposals: {hot: proposalSample, popular: proposalSample, recents: proposalSample}},
      { id: 2, text: "B", proposals: {hot: proposalSample, popular: proposalSample, recents: proposalSample}},
      { id: 3, text: "C", proposals: {hot: proposalSample, popular: proposalSample, recents: proposalSample}}
    ]

    $scope.selectedConsensusId = 1
    $scope.selectedConsensus = $scope.consensus[0]

    $scope.consensusClickEvent = (proposal) ->
      $scope.selectedConsensusId = proposal.id
      $scope.selectedConsensus = proposal
      return
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


    #-----------------------------------------------------------------------
    $scope.showProposalCommentsDialog = (ev) ->
      $mdDialog.show(
        controller: "ProposalCommentsCtrl"
        templateUrl: 'app/thread/proposal-comments.html'
        parent: angular.element(document.body)
        targetEvent: ev
      )
      return

    #-----------------------------------------------------------------------
    $scope.onProposalUpVote = (proposal) ->
      alert(proposal.id)
      return

    $scope.onProposalDownVote = (proposal) ->
      alert(0)
      return

    #-----------------------------------------------------------------------
  .directive 'ksProposals', ->
    restrict: 'E'
    templateUrl: 'app/thread/ks-proposals.html'
  .directive 'ksConsensus', ->
    restrict: 'E'
    templateUrl: 'app/thread/ks-consensus.html'
  .directive 'ksThreadComments', ->
    restrict: 'E'
    templateUrl: 'app/thread/ks-thread-comments.html'
