const gulp = require("gulp");
const sass = require("gulp-sass");
const postcss = require("gulp-postcss");
const nano = require("cssnano");
const prefixer = require("autoprefixer");

//include our image min library
const imagemin = require("gulp-imagemin");
const imageminMozjpeg = require("imagemin-mozjpeg");
//define some common tasks for Gulp to run

//like compile and minify SASS files:
function compile(done) {
  gulp
    .src("./sass/**/*.scss")
    .pipe(sass())
    .on("error", sass.logError)
    .pipe(postcss([prefixer(), nano()]))
    .pipe(gulp.dest("./css"));
  done();
}

//minify every image
function squashImages(done) {
  gulp
    .src("./public/images/**")
    .pipe(imagemin([imageminMozjpeg()], { verbose: true }))
    .pipe(gulp.dest("./public/minified_images"));
  done();
}

exports.compile = compile;
exports.squash = squashImages;
