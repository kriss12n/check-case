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
'resources/assets/js/Animated-Type-Heading.js',
'resources/assets/js/Contact-Form-v2-Modal-Full-with-Google-Map.js'
],'public/js/index.js')
.styles([
'resources/assets/bootstrap/css/bootstrap.min.css',
'resources/assets/css/3-Columns-Info-Icons.css',
'resources/assets/css/Animated-Type-Heading.css',
'resources/assets/css/Contact-Form-v2-Modal--Full-with-Google-Map.css',
'resources/assets/css/Corporate-Footer-Clean.css',
'resources/assets/css/dh-navbar-centered-brand.css',
'resources/assets/css/Jumbotron-Effect.css',
'resources/assets/css/styles.css'
],'public/css/index.css');
