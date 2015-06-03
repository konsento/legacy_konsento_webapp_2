angular.module "konsentoWebapp"
  .controller "ThreadCtrl", ($scope) ->
    true
  .directive 'ksProposal', ->
    restrict: 'E'
    templateUrl: 'app/thread/ks-proposal.html'
  .directive 'ksThreadComment', ->
    restrict: 'E'
    templateUrl: 'app/thread/ks-thread-comment.html'
