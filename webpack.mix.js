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
'resources/assets/js/jquery.min.js',
'resources/assets/bootstrap/js/bootstrap.min.js',
],'public/js/index.js')
.styles([
'resources/assets/bootstrap/css/bootstrap.min.css',
'resources/assets/css/styles.css'
],'public/css/index.css');
