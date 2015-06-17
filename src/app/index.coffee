angular.module 'konsentoWebapp', ['ngAnimate', 'ngCookies', 'ngTouch', 'ngSanitize', 'restangular', 'ui.router', 'ngMaterial']
  .config ($stateProvider, $urlRouterProvider, $mdIconProvider, $mdThemingProvider) ->
    $stateProvider
      .state "home",
        url: "/",
        templateUrl: "app/main/main.html",
        controller: "MainCtrl"

    $stateProvider
      .state "group",
        url: "/group/:groupId",
        templateUrl: "app/group/group.html",
        controller: "GroupCtrl"

    $stateProvider
      .state "sign-up",
        url: "/sign-up",
        templateUrl: "app/user/sign-up.html",
        controller: "UserCtrl"

    $stateProvider
      .state "sign-in",
        url: "/sign-in",
        templateUrl: "app/user/sign-in.html",
        controller: "UserCtrl"

    $stateProvider
      .state "account",
        url: "/account",
        templateUrl: "app/user/account.html",
        controller: "UserCtrl"

    $stateProvider
      .state "thread",
        url: "/thread/:threadId",
        templateUrl: "app/thread/thread.html",
        controller: "ThreadCtrl"


    $urlRouterProvider.otherwise '/'

    $mdThemingProvider.theme('blue')
      .primaryPalette('blue')

    $mdIconProvider
      .icon('close', 'bower_components/material-design-icons/content/svg/design/ic_clear_48px.svg')
      .icon('search', 'bower_components/material-design-icons/action/svg/design/ic_search_48px.svg')
      .icon('message', 'bower_components/material-design-icons/communication/svg/design/ic_message_48px.svg')
      .icon('agree', 'bower_components/material-design-icons/action/svg/design/ic_thumb_up_48px.svg')
      .icon('disagree', 'bower_components/material-design-icons/action/svg/design/ic_thumb_down_48px.svg')
      .icon('reply', 'bower_components/material-design-icons/content/svg/design/ic_reply_48px.svg')
      .icon('perm_identity', 'bower_components/material-design-icons/action/svg/design/ic_account_circle_48px.svg')
      .icon('chevron-right', 'bower_components/material-design-icons/navigation/svg/design/ic_chevron_right_48px.svg')

  .directive 'ksToolbar', ->
    {
      restrict: 'E',
      templateUrl: 'app/components/ks-toolbar/ks-toolbar.html',
      controller: 'KsToolbarCtrl'
    }
