'use strict';

var gulp = require('gulp');
var browserify = require('browserify');
var watchify = require('watchify');
var gutil = require('gulp-util');
var source = require('vinyl-source-stream');
var browserSync = require('browser-sync');
var less = require('gulp-less');

var reload = browserSync.reload;

gulp.task('less', function() {
  return gulp.src('app/styles/*.less')
    .pipe(less())
    .pipe(gulp.dest('dist/css'))
    .pipe(reload({ stream:true }));
});

gulp.task('javascript', function() {
  var bundler = watchify(browserify('./app/app.js', watchify.args));

  function rebundle() {
    return bundler.bundle()
      // log errors if they happen
      .on('error', gutil.log.bind(gutil, 'Browserify Error'))
      .pipe(source('bundle.js'))
      .pipe(gulp.dest('./dist'));
  }

  bundler.on('update', rebundle);
  return rebundle();
});

gulp.task('default', ['javascript']);
gulp.task('serve', ['javascript'], function() {
  browserSync({
    server: {
      baseDir: 'server'
    }
  });

  gulp.watch('less/*.less', ['less']);
});
