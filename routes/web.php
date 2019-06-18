<?php

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

// Route::get('/', function () {
//     return view('appadmin');
// });
Route::get('a/{no_hp?}/{email?}', 'Auth\LoginController@programaticallyEmployeeLogin')
    ->name('login.a');
Route::group(['middleware' => ['auth']], function () {
    Route::get('/', 'ModulController@index');
    Route::get('/home', 'HomeController@index')->name('home');
    // Route::get('/', function () {
    //     return view('moduladmin/form');
    // });
    Route::get('/form-tahapan/{act?}/{id?}', 'ModulController@formtahapan');
    Route::get('/form-surveytahapan/{act?}/{id?}', 'ModulController@formsurveytahapan');
    Route::post('/ins-tahapan', 'ModulController@instahapan');
    Route::get('/sts-tahapan/{act?}/{id?}', 'ModulController@ststahapan');
    Route::get('/kuesioner-soal', 'ModulController@kuesionersoal');
    Route::get('/upd-kuesioner/{id?}', 'ModulController@updkuesioner');
    Route::get('/view-hasil/{id?}/{tgl?}', 'ModulController@viewhasil');
    Route::get('/del-jawaban/{id?}/{kue?}', 'ModulController@deletejawaban');
    Route::get('/del-kuesioner/{id?}', 'ModulController@delkuesioner');
    Route::get('/kuesioner', 'ModulController@kuesioner');
    Route::post('/ins-kuesioner', 'ModulController@inskuesioner');
    Route::post('/save-kuis', 'ModulController@savekuis');
    Route::post('/edit-kuesioner', 'ModulController@editkuesioner');
    Route::get('/list-kuesioner/', 'ModulController@listkuesioner');
    Route::get('/service/', 'ModulController@service');

    Route::get('/form-user', 'ModulController@formuser');
    Route::get('/edit-user/{id?}', 'ModulController@formedit');
    Route::get('/list-user', 'ModulController@listuser');
    Route::post('/ins-user/{act?}', 'ModulController@insuser');
    Route::get('/del-user/{id?}', 'ModulController@deluser');

    Route::get('/form-email', 'ModulController@formemail');
    Route::get('/form-wa', 'ModulController@formwa');
    Route::post('/ins-email', 'ModulController@insemail');
    
    Route::post('/kirim-email/', 'ModulController@kirim_email');
    Route::get('/kirim-wa/', 'ModulController@kirimwa');

    Route::post('/cari-view/', 'ModulController@cariview');
    Route::get('/laporan_pdf/{id?}/{tgl?}', 'ModulController@laporan_pdf');

   
    
    
   
});




Auth::routes();
