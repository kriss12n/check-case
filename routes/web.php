<?php
use Illuminate\Support\Facades\Input;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();


    Route::get('/respuesta/{id}',array('as'=>'respuestas','uses' =>'Voyager\RespuestasController@devolver'));//crear una ruta que no exista en el bread y crear un metodo nuevo en el controller
    Route::get('/chat/{id}',array('as'=>'chat','uses' =>'Voyager\RespuestasController@chat'));
    Route::post('/respuesta/enviar/{id}', ['uses' => 'Voyager\RespuestasController@enviar', 'as' => 'enviar.respuesta']);

});





//para el index
Route::get('/','IndexController@index');
Route::get('/sobre-nosotros','AboutController@index');
Route::get('/contactos','ContactController@index');
Route::get('/nuestros-servicios','ServicesController@index');
Route::get('/nuestro-equipo','TeamController@index');
