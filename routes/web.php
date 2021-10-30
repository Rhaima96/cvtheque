<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes(['verify'=>true]);

Route::get('/home', 'HomeController@index')->name('home');
//Route module Experience
Route::get('/getdata/{id}', 'CvController@getData');
Route::post('/addexperience', 'CvController@addExperience');
Route::put('/updateexperience', 'CvController@updateExperience' );
Route::delete('/deleteexperience/{id}', 'CvController@deleteExperience' );
//Route module Formation
Route::post('/addformation', 'CvController@addFormation');
Route::put('/updateformation', 'CvController@updateFormation' );
Route::delete('/deleteformation/{id}', 'CvController@deleteFormation' );
//Route module Competence
Route::post('/addcompetence', 'CvController@addCompetence');
Route::put('/updatecompetence', 'CvController@updateCompetence' );
Route::delete('/deletecompetence/{id}', 'CvController@deleteCompetence' );
//Route module Projet
Route::post('/addprojet', 'CvController@addProjet');
Route::put('/updateprojet', 'CvController@updateProjet' );
Route::delete('/deleteprojet/{id}', 'CvController@deleteProjet' );
Auth::routes();


Route::resource('cvs', 'CvController');
