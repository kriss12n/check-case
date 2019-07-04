const mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

mix.js('resources/js/app.js', 'public/js')
    .sass('resources/sass/app.scss', 'public/css');

mix.scripts([
'resources/assets/js/jquery.1.11.1.js',
'resources/assets/js/bootstrap.min.js',
'resources/assets/app.js',
'resources/assets/classie.js',
'resources/assets/html5shiv.min.js',
'resources/assets/ie.js',
'resources/assets/jquery.counterup.min.js',
'resources/assets/jquery-easing.min.js',
'resources/assets/jquery.flexslider.js',
'resources/assets/jquery.mixitup.min.js',
'resources/assets/jquery.perttyPhoto.js',
'resources/assets/main.js',
'resources/assets/owl.carousel.min.js',
'resources/assets/respond.min.js',
'resources/assets/sidebarEffects.js',
'resources/assets/smoothscroll.js',
'resources/assets/tweetie.js',
'resources/assets/waypoints.min.js',


],'public/js/index.js')
.styles([
'resources/assets/css/bootstrap.min.css',
'resources/assets/css/elements.css',
'resources/assets/css/common.css',
'resources/assets/css/flexslider.css',
'resources/assets/css/font-awesome.css',
'resources/assets/css/ie.css',
'resources/assets/css/offcanvas.css',
'resources/assets/css/owl.carousel.css',
'resources/assets/css/owl.theme.css',
'resources/assets/css/prettyPhoto.css',
'resources/assets/css/responsive.css',
'resources/assets/css/settings.css',
'resources/assets/css/template.css',
'resources/assets/css/temrr.css',
'resources/assets/css/themes.css'

],'public/css/index.css');
