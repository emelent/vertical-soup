<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$app->get('/', function () use ($app) {
    return response()->json(['data' => "Looks like you're well ReSted"]);
});

$app->group(
  ['prefix' => 'api/'],
  function() use ($app){
    $app->group(
      [
        'prefix'  =>  'interests/',
      ], 
      function() use ($app){
        /*interests routes*/
          $app->get('/', 'InterestsController@showAll');
          $app->delete('/{id}', 'InterestsController@destroy');
          $app->post('/', 'InterestsController@store');
    });

    $app->group(
      [
        'prefix'  =>  'searches/',
      ], 
      function() use ($app){
        /*interests routes*/
          $app->get('/', 'SearchController@showAll');
          $app->delete('/{id}', 'SearchController@destroy');
          $app->post('/', 'SearchController@store'); 
    });


    $app->group(
      [
        'prefix'  =>  'clear/',
      ], 
      function() use ($app){
        /*interests routes*/
          $app->delete('/interests', 'InterestsController@destroyAll');
          $app->delete('/searches', 'SearchesController@destroyAll');
    });    
  }
);
