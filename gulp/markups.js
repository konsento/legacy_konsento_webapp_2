'use strict';

var gulp = require('gulp');
var browserSync = require('browser-sync');

var $ = require('gulp-load-plugins')();

module.exports = function(options) {
  gulp.task('markups', function() {
    function renameToHtml(path) {
      path.extname = '.html';
    }

    return gulp.src(options.src + '/app/**/*.haml')
      .pipe($.consolidate('haml')).on('error', options.errorHandler('Haml'))
      .pipe($.rename(renameToHtml))
      .pipe(gulp.dest(options.tmp + '/serve/app/'))
      .pipe(browserSync.reload({ stream: true }));
  });
};
