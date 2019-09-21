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

/**
 * /Clear Cache facade value:
 */
Route::get('/clear-cache', function() {
    $exitCode = Artisan::call('cache:clear');
    return '<h1>Cache facade value cleared</h1>';
});

/**
 * /Reoptimized class loader:
 */
Route::get('/optimize', function() {
    $exitCode = Artisan::call('optimize');
    return '<h1>Reoptimized class loader</h1>';
});

/**
 * /Route cache:
 */
Route::get('/route-cache', function() {
    $exitCode = Artisan::call('route:cache');
    return '<h1>Routes cached</h1>';
});

/**
 *
 * /Clear Route cache:
 */
Route::get('/route-clear', function() {
    $exitCode = Artisan::call('route:clear');
    return '<h1>Route cache cleared</h1>';
});

/**
 *
 * /Clear View cache:
 */
Route::get('/view-clear', function() {
    $exitCode = Artisan::call('view:clear');
    return '<h1>View cache cleared</h1>';
});

/**
 * / Config cache:
 */
Route::get('/config-cache', function() {
    $exitCode = Artisan::call('config:cache');
    return '<h1>Config cleared</h1>';
});

/**
 * /Clear Config cache:
 */
Route::get('/config-clear', function() {
    $exitCode = Artisan::call('config:clear');
    return '<h1>Clear Config cleared</h1>';
});

/**
 * Run Schedule:
 */
Route::get('/schedule-run', function() {
    $exitCode = Artisan::call('schedule:run');
    return '<h1>Schedule is Ran</h1>';
});


/**
 * DB: Backup:
 */
Route::get('/db-backup', function() {
    $exitCode = Artisan::call('db:backup');
    return '<h1>Schedule is Ran</h1>';
});

/**
 * Authentication route
 */

$this->get('dcms/login', 'Auth\LoginController@showLoginForm')->name('dcms.login');
$this->post('login', 'Auth\LoginController@login')->name('login');
$this->get('logout', 'Auth\LoginController@logout')->name('logout');

/**
 *
 * Registration Routes...
 * */
// $this->get('register', 'Auth\RegisterController@showRegistrationForm');
$this->post('register', 'Auth\RegisterController@register')->name('register');

/**
 * / Password Reset Routes...
 */
$this->get('password/reset', 'Auth\ForgotPasswordController@showLinkRequestForm');
$this->post('password/email', 'Auth\ForgotPasswordController@sendResetLinkEmail');
$this->get('password/reset/{token}', 'Auth\ResetPasswordController@showResetForm');
$this->post('password/reset', 'Auth\ResetPasswordController@reset');


/**
 * 404 redirect routes
 */
$this->get('login', function() { return view('dcms.404');});
$this->get('register', function() { return view('dcms.404');});
/**
 *
 * Admin Panel route (Dashboard)
 */

Route::group(['prefix' => 'dashboard', 'as'=> 'dcms.', 'namespace'=>'Dcms', 'middleware'=>['auth', 'status', ]], function(){
    /**
     * Swap Language
     */
    Route::get('/swap/language/{lang_id}',        ['as'=>'swap_language', 'uses'=>'HomeController@swapLanguage']);
    /**'
     * Dashboard route
     */
    Route::get('', ['as'=>'dashboard', 'uses'=>'HomeController@index']);
    /**
     * Page Routes
     */
    Route::group(['prefix'=>'page', 'as'=>'page.'], function(){
        Route::get('',                                      ['as'=>'index',              'uses'=>'PostsController@indexPage']);
        Route::get('create',                                ['as'=>'create',              'uses'=>'PostsController@createPage']);
        Route::post('',                                     ['as'=>'store',              'uses'=>'PostsController@storePage']);
        Route::get('{page}/edit',                           ['as'=>'edit',              'uses'=>'PostsController@editPage']);
        Route::put('{page}',                                ['as'=>'update',              'uses'=>'PostsController@updatePage']);
        Route::delete('{page}',                             ['as'=>'destroy',              'uses'=>'PostsController@destroy'])->middleware( 'role:admin');
        Route::delete('file/{page}',                        ['as'=>'destroyFile',              'uses'=>'PostsController@destroyFile']);
        /**Soft Delete Url */
        Route::get('delete_item',                            ['as'=>'deleted_item',              'uses'=>'PostsController@deletedPage']);
        Route::put('restore/{post}',                         ['as'=>'restore',              'uses'=>'PostsController@restore']);
        Route::delete('permanent_delete/{post}',             ['as'=>'delete',              'uses'=>'PostsController@permanentDelete']);

    });
    /**
     * post routes
     */
    Route::group(['prefix'=>'post', 'as'=>'post.'], function(){
        Route::get('',                                      ['as'=>'index',              'uses'=>'PostsController@indexPost']);
        Route::get('create',                                ['as'=>'create',              'uses'=>'PostsController@createPost']);
        Route::post('',                                     ['as'=>'store',              'uses'=>'PostsController@storePost']);
        Route::get('{post}/edit',                           ['as'=>'edit',              'uses'=>'PostsController@editPost']);
        Route::put('{post}',                                ['as'=>'update',              'uses'=>'PostsController@updatePost']);
        Route::delete('{post}',                             ['as'=>'destroy',              'uses'=>'PostsController@destroy'])->middleware( 'role:admin');
        Route::delete('file/{post}',                        ['as'=>'destroyFile',              'uses'=>'PostsController@destroyFile']);
        /**Soft Delete Url */
        Route::get('delete_item',                            ['as'=>'deleted_item',              'uses'=>'PostsController@deletedPost']);
        Route::put('restore/{post}',                         ['as'=>'restore',              'uses'=>'PostsController@restore']);
        Route::delete('permanent_delete/{post}',             ['as'=>'delete',              'uses'=>'PostsController@permanentDelete']);
    });
    /**
     * Category Route
     */
    Route::group(['prefix' => 'category', 'as'=>'category.'], function () {
        Route::get('',                                      ['as'=>'index',              'uses'=>'CategoriesController@index']);
        Route::get('create',                                ['as'=>'create',              'uses'=>'CategoriesController@create']);
        Route::post('',                                     ['as'=>'store',              'uses'=>'CategoriesController@store']);
        Route::get('{category}/edit',                       ['as'=>'edit',              'uses'=>'CategoriesController@edit']);
        Route::put('{category}',                            ['as'=>'update',              'uses'=>'CategoriesController@update']);
        Route::delete('{category}',                         ['as'=>'destroy',              'uses'=>'CategoriesController@destroy'])->middleware('role:admin');
        /** Category Nestable Order */
         Route::post('order',                                ['as'=>'order',              'uses'=>'CategoriesController@storeOrder']);
    });
    /**
     * slider Routes
     */
    Route::group(['prefix' => 'slider', 'as'=>'slider.'], function () {
        Route::get('',                                      ['as'=>'index',              'uses'=>'SlidersController@index']);
        Route::get('create',                                ['as'=>'create',              'uses'=>'SlidersController@create']);
        Route::post('',                                     ['as'=>'store',              'uses'=>'SlidersController@store']);
        Route::get('{slider}/edit',                         ['as'=>'edit',              'uses'=>'SlidersController@edit']);
        Route::put('{slider}',                              ['as'=>'update',              'uses'=>'SlidersController@update']);
        Route::delete('{slider}',                           ['as'=>'destroy',              'uses'=>'SlidersController@destroy'])->middleware('role:admin');
    });
    /**
     * User Profile Routes
     */
    Route::group(['prefix' => 'user_profile', 'as'=>'user_profile.'], function () {
        Route::get('',                                      ['as'=>'index',              'uses'=>'UsersProfileController@index']);
        Route::get('create',                                ['as'=>'create',              'uses'=>'UsersProfileController@create']);
        Route::post('',                                     ['as'=>'store',              'uses'=>'UsersProfileController@store']);
        Route::get('show',                                  ['as'=>'show',              'uses'=>'UsersProfileController@show']);
        Route::get('edit',                                  ['as'=>'edit',              'uses'=>'UsersProfileController@edit']);
        Route::put('',                                      ['as'=>'update',              'uses'=>'UsersProfileController@update']);
        Route::delete('',                                   ['as'=>'destroy',              'uses'=>'UsersProfileController@destroy']);
        Route::post('',                                     ['as'=>'password.change',        'uses'=>'UsersProfileController@changePassword']);
    });

    /**
     * User Messages
     *
     */
    Route::group(['prefix' => 'message', 'as'=>'message.'], function () {
        Route::get('',                                      ['as'=>'index',              'uses'=>'ContactsController@index']);
        Route::get('create',                                ['as'=>'create',              'uses'=>'ContactsController@create']);
        Route::post('',                                     ['as'=>'store',              'uses'=>'ContactsController@store']);
        Route::get('{message}/show',                        ['as'=>'show',              'uses'=>'ContactsController@show']);
        Route::get('{message}/edit',                        ['as'=>'edit',              'uses'=>'ContactsController@edit']);
        Route::put('{message}',                             ['as'=>'update',              'uses'=>'ContactsController@update']);
        Route::delete('{message}',                          ['as'=>'destroy',              'uses'=>'ContactsController@destroy']);
    });
    /**
     * File
     *
     */
    Route::group(['prefix' => 'file', 'as'=>'file.'], function () {
        Route::get('',                                      ['as'=>'index',              'uses'=>'FilesController@index']);
        Route::get('create',                                ['as'=>'create',              'uses'=>'FilesController@create']);
        Route::post('',                                     ['as'=>'store',              'uses'=>'FilesController@store']);
        Route::get('{file}/show',                        ['as'=>'show',              'uses'=>'FilesController@show']);
        Route::get('{file}/edit',                        ['as'=>'edit',              'uses'=>'FilesController@edit']);
        Route::put('{file}',                             ['as'=>'update',              'uses'=>'FilesController@update']);
        Route::delete('{file}',                          ['as'=>'destroy',              'uses'=>'FilesController@destroy']);
    });
    /**
     * Link
     *
     */
    Route::group(['prefix' => 'link', 'as'=>'link.'], function () {
        Route::get('',                                      ['as'=>'index',              'uses'=>'LinksController@index']);
        Route::get('create',                                ['as'=>'create',              'uses'=>'LinksController@create']);
        Route::post('',                                     ['as'=>'store',              'uses'=>'LinksController@store']);
        Route::get('{link}/show',                        ['as'=>'show',              'uses'=>'LinksController@show']);
        Route::get('{link}/edit',                         ['as'=>'edit',              'uses'=>'LinksController@edit']);
        Route::put('{link}',                             ['as'=>'update',              'uses'=>'LinksController@update']);
        Route::delete('{link}',                          ['as'=>'destroy',              'uses'=>'LinksController@destroy']);
    });

    /**
     * Link
     *
     */
    Route::group(['prefix' => 'popup', 'as'=>'popup.'], function () {
        Route::get('',                                      ['as'=>'index',              'uses'=>'PopupController@index']);
        Route::get('create',                                ['as'=>'create',              'uses'=>'PopupController@create']);
        Route::post('',                                     ['as'=>'store',              'uses'=>'PopupController@store']);
        Route::get('{popup}/show',                          ['as'=>'show',              'uses'=>'PopupController@show']);
        Route::get('{popup}/edit',                          ['as'=>'edit',              'uses'=>'PopupController@edit']);
        Route::put('{popup}',                               ['as'=>'update',              'uses'=>'PopupController@update']);
        Route::delete('{popup}',                            ['as'=>'destroy',              'uses'=>'PopupController@destroy']);
    });

    /** Album Category */
    Route::group(['prefix' => 'album_category', 'as'=>'album_category.'], function () {
        Route::get('',                                      ['as'=>'index',              'uses'=>'AlbumCategoriesController@index']);
        Route::get('create',                                ['as'=>'create',              'uses'=>'AlbumCategoriesController@create']);
        Route::post('',                                     ['as'=>'store',              'uses'=>'AlbumCategoriesController@store']);
        Route::get('{album_category}/edit',                 ['as'=>'edit',              'uses'=>'AlbumCategoriesController@edit']);
        Route::put('{album_category}',                      ['as'=>'update',              'uses'=>'AlbumCategoriesController@update']);
        Route::delete('{album_category}',                   ['as'=>'destroy',              'uses'=>'AlbumCategoriesController@destroy'])->middleware('role:admin');
        /** Category Nestable Order */
         Route::post('order',                                ['as'=>'order',              'uses'=>'AlbumCategoriesController@storeOrder']);
    });
    /**
     * Album
     *
     */
    Route::group(['prefix' => 'album', 'as'=>'album.'], function () {
        Route::get('',                                    ['as'=>'index',              'uses'=>'AlbumController@index']);
        Route::get('create',                              ['as'=>'create',              'uses'=>'AlbumController@create']);
        Route::post('',                                   ['as'=>'store',              'uses'=>'AlbumController@store']);
        Route::get('{album}/show',                        ['as'=>'show',              'uses'=>'AlbumController@show']);
        Route::get('{album}/edit',                        ['as'=>'edit',              'uses'=>'AlbumController@edit']);
        Route::put('{album}',                             ['as'=>'update',              'uses'=>'AlbumController@update']);
        Route::delete('{album}',                          ['as'=>'destroy',              'uses'=>'AlbumController@destroy']);
        Route::get('{album}/photo/add',                   ['as'=>'addPhoto',              'uses'=>'GalleryController@create']);
        Route::post('{album}/photo/store',                 ['as'=>'storePhoto',              'uses'=>'GalleryController@store']);
    });
    /**
     * Gallery
     *
     */
    Route::group(['prefix' => 'gallery', 'as'=>'gallery.'], function () {
        Route::get('',                                      ['as'=>'index',              'uses'=>'GalleryController@index']);
        // Route::get('create',                                ['as'=>'create',              'uses'=>'GalleryController@create']);
        // Route::post('',                                     ['as'=>'store',              'uses'=>'GalleryController@store']);
        // Route::get('{gallery}/show',                        ['as'=>'show',              'uses'=>'GalleryController@show']);
        Route::get('{gallery}/edit',                         ['as'=>'edit',              'uses'=>'GalleryController@edit']);
        Route::put('{gallery}',                             ['as'=>'update',              'uses'=>'GalleryController@update']);
        Route::delete('{gallery}',                          ['as'=>'destroy',              'uses'=>'GalleryController@destroy']);
    });
    /**
     *
     * Menu Routes
     */
    Route::group(['prefix' => 'menu', 'as'=>'menu.', 'middleware'=>'role:admin'], function () {
        Route::get('',                                      ['as'=>'index',              'uses'=>'MenusController@index']);
        Route::get('create',                                ['as'=>'create',              'uses'=>'MenusController@create']);
        Route::post('',                                     ['as'=>'store',              'uses'=>'MenusController@store']);
        Route::get('{menu}/edit',                           ['as'=>'edit',              'uses'=>'MenusController@edit']);
        Route::put('{menu}',                                ['as'=>'update',              'uses'=>'MenusController@update']);
        Route::delete('{menu}',                             ['as'=>'destroy',              'uses'=>'MenusController@destroy']);
        /** Menu Nestable Order */
        Route::post('order',                                ['as'=>'order',              'uses'=>'MenusController@storeOrder']);
    });

    /**
     *
     * Branch Office Routes
     */
    Route::group(['prefix' => 'branch', 'as'=>'branch.', 'middleware'=>'role:admin'], function () {
        Route::get('',                                      ['as'=>'index',              'uses'=>'BranchesController@index']);
        Route::get('create',                                ['as'=>'create',              'uses'=>'BranchesController@create']);
        Route::post('',                                     ['as'=>'store',              'uses'=>'BranchesController@store']);
        Route::get('{branch}/edit',                         ['as'=>'edit',              'uses'=>'BranchesController@edit']);
        Route::put('{branch}',                              ['as'=>'update',              'uses'=>'BranchesController@update']);
        Route::delete('{branch}',                           ['as'=>'destroy',              'uses'=>'BranchesController@destroy']);
        /** Category Nestable Order */
        Route::post('order',                                ['as'=>'order',              'uses'=>'BranchesController@storeOrder']);
    });
    /**
     *
     * Staff Office Routes
     */
    Route::group(['prefix' => 'staff', 'as'=>'staff.', 'middleware'=>'role:admin'], function () {
        Route::get('',                                      ['as'=>'index',              'uses'=>'StaffController@index']);
        Route::get('create',                                ['as'=>'create',              'uses'=>'StaffController@create']);
        Route::post('',                                     ['as'=>'store',              'uses'=>'StaffController@store']);
        Route::get('{staff}/edit',                         ['as'=>'edit',              'uses'=>'StaffController@edit']);
        Route::put('{staff}',                              ['as'=>'update',              'uses'=>'StaffController@update']);
        Route::delete('{staff}',                           ['as'=>'destroy',              'uses'=>'StaffController@destroy']);
        Route::get('get_sort_list',                        ['as'=>'get_sort',              'uses'=>'StaffController@getSortList']);
        Route::get('get_staffs/{staff}',                   ['as'=>'get_staff',              'uses'=>'StaffController@getStaffs']);
        Route::post('order',                                 ['as'=>'order',              'uses'=>'StaffController@storeOrder']);
    });
     /**
     * Setting Routes
     */
    Route::group(['as'=>'setting.', 'middleware'=>'role:admin'], function(){
        Route::group(['prefix'=>'about', 'as'=>'about.'], function(){
            Route::get('',                      ['as' =>'index',     'uses'=>'SettingsController@getAboutDetails']);
            Route::post('{about}',              ['as' =>'store',     'uses'=>'SettingsController@updateAboutDetails']);
        });
        Route::group(['prefix'=>'contact', 'as'=>'contact.'], function(){
            Route::get('',                      ['as' =>'index',    'uses'=>'SettingsController@getContactDetails']);
            Route::post('{contact}',            ['as' =>'store',    'uses'=>'SettingsController@updateContactDetails']);
        });
        Route::group(['prefix'=>'social', 'as'=>'social.'], function(){
            Route::get('',                      ['as' =>'index',     'uses'=>'SettingsController@getSocialProfiles']);
            Route::post('{social}',             ['as' =>'store',     'uses'=>'SettingsController@updateSocialProfiles']);
        });
        Route::group(['prefix'=>'setting'], function(){
            Route::get('',                      ['as' =>'index',     'uses'=>'SettingsController@getGeneralSetting']);
            Route::post('{setting}',            ['as' =>'store',     'uses'=>'SettingsController@updateGeneralSetting']);
        });
        Route::group(['prefix'=>'title', 'as'=>'title.'], function(){
            Route::get('',                      ['as' =>'index',     'uses'=>'CommonController@getTitleSetting']);
            Route::put('{title}',              ['as' =>'store',     'uses'=>'CommonController@updateTitleSetting']);
        });
        Route::group(['prefix'=>'footer', 'as'=>'footer.'], function(){
            Route::get('',                      ['as' =>'index',     'uses'=>'CommonController@getFooterSetting']);
            Route::put('{footer}',             ['as' =>'store',     'uses'=>'CommonController@updateFooterSetting']);
        });
    });
    /**
     * Language route
     */
    Route::group(['prefix'=>'language', 'as'=>'language.', 'middleware'=>'role:super-admin'], function(){
        Route::get('',                                     ['as'=>'index',              'uses'=>'LanguageController@index']);
        Route::get('create',                               ['as'=>'create',             'uses'=>'LanguageController@create']);
        Route::post('',                                    ['as'=>'store',              'uses'=>'LanguageController@store']);
        Route::get('{language}/edit',                      ['as'=>'edit',               'uses'=>'LanguageController@edit']);
        Route::put('{language}',                           ['as'=>'update',             'uses'=>'LanguageController@update']);
        Route::delete('{language}',                        ['as'=>'destroy',            'uses'=>'LanguageController@destroy']);
        /**Soft Delete Url */
        Route::get('delete_item',                            ['as'=>'deleted_item',      'uses'=>'LanguageController@deletedLanguage']);
        Route::put('restore/{language}',                         ['as'=>'restore',           'uses'=>'LanguageController@restore']);
        Route::delete('permanent_delete/{language}',             ['as'=>'delete',             'uses'=>'LanguageController@permanentDelete']);
    });
    /**
     * User Routes
     */
    Route::group(['prefix' => 'user', 'as'=>'user.', 'middleware'=>'role:super-admin'], function () {
        Route::get('',                                      ['as'=>'index',              'uses'=>'UsersController@index']);
        Route::get('create',                                ['as'=>'create',              'uses'=>'UsersController@create']);
        Route::post('',                                     ['as'=>'store',              'uses'=>'UsersController@store']);
        Route::get('{user}/edit',                           ['as'=>'edit',              'uses'=>'UsersController@edit']);
        Route::get('{user}',                                ['as'=>'update',              'uses'=>'UsersController@update']);
        Route::delete('{user}',                             ['as'=>'destroy',              'uses'=>'UsersController@destroy']);
    });
    /**
     * User Tracking Routes
     */
    Route::group(['prefix' => 'tracker', 'as'=>'tracker.', 'middleware'=>'role:super-admin'], function () {
        Route::get('',                                      ['as'=>'index',              'uses'=>'TrackersController@index']);
        Route::get('create',                                ['as'=>'create',              'uses'=>'TrackersController@create']);
        Route::post('',                                     ['as'=>'store',              'uses'=>'TrackersController@store']);
        Route::get('{tracker}/edit',                        ['as'=>'edit',              'uses'=>'TrackersController@edit']);
        Route::put('{tracker}',                             ['as'=>'update',              'uses'=>'TrackersController@update']);
        Route::delete('{tracker}',                          ['as'=>'destroy',              'uses'=>'TrackersController@destroy']);
        Route::get('delete_all',                            ['as'=>'truncate',              'uses'=>'TrackersController@deleteAll']);
    });
    /**
     * DB backup Routes
     */
    Route::group(['prefix' => 'database', 'as'=>'database.', 'middleware'=>'role:super-admin'], function () {
        Route::get('',                                      ['as'=>'index',              'uses'=>'DatabasesBackupController@index']);
        Route::get('download',                              ['as'=>'download',           'uses'=>'DatabasesBackupController@databaseDownload']);
        Route::get('backup',                                ['as'=>'backup',             'uses'=>'DatabasesBackupController@databaseBackup']);
    });
    /** Video  */
    Route::resource('blog',                     'BlogsController')->middleware('role:super-admin');

    /**
     * User Routes
     */
    Route::group(['prefix' => 'service', 'as'=>'service.', 'middleware'=>'role:super-admin'], function () {
        Route::get('',                                      ['as'=>'index',              'uses'=>'ServicesController@index']);
        Route::get('create',                                ['as'=>'create',              'uses'=>'ServicesController@create']);
        Route::post('',                                     ['as'=>'store',              'uses'=>'ServicesController@store']);
        Route::get('{service}/edit',                           ['as'=>'edit',              'uses'=>'ServicesController@edit']);
        Route::put('{service}',                                ['as'=>'update',              'uses'=>'ServicesController@update']);
        Route::delete('{service}',                             ['as'=>'destroy',              'uses'=>'ServicesController@destroy']);
    });

    /**
     * Process Routes
     */
    Route::group(['prefix' => 'process', 'as'=>'process.', 'middleware'=>'role:super-admin'], function () {
        Route::get('',                                      ['as'=>'index',              'uses'=>'ProcessController@index']);
        Route::get('create',                                ['as'=>'create',              'uses'=>'ProcessController@create']);
        Route::post('',                                     ['as'=>'store',              'uses'=>'ProcessController@store']);
        Route::get('{process}/edit',                           ['as'=>'edit',              'uses'=>'ProcessController@edit']);
        Route::put('{process}',                                ['as'=>'update',              'uses'=>'ProcessController@update']);
        Route::delete('{process}',                             ['as'=>'destroy',              'uses'=>'ProcessController@destroy']);
         /** Process Nestable Order */
         Route::post('order',                                ['as'=>'order',              'uses'=>'ProcessController@storeOrder']);
    });

});

/**
 * site route
 */

Route::group([ 'as'=>'site.', 'namespace'=>'Site'], function(){
    /**
     * Route for home page
     */
    Route::get('/',                             ['as' =>'index',            'uses' => 'SiteController@index']);
    /**
     * Route To show Post
     */
    Route::get('/post/{post}',                  ['as' => 'post.show',       'uses'=>'SiteController@showPost']);
    /**
     * Route For Page Show
     */
    Route::get('/page/{page}',                  ['as' => 'page.show',       'uses'=>'SiteController@showPage']);
    /**
     * Route For all Category Based Pages
     */
    Route::get('/category/{category}',          ['as' => 'category.show',   'uses' =>'SiteController@showCategoryPost']);
    /**
     * Route to download Files
     */
    Route::get('/download/{download}',          ['as' => 'file.download',   'uses'=>'SiteController@downloadFile']);
    /**
     * Route for contact Page
     */
    Route::get('/contact',                      ['as' => 'contact',         'uses' => 'SiteController@showContact']);
    /**
     * Route for contact Page
     */
    Route::post('/message',                      ['as' => 'message',        'uses' => 'SiteController@storeMessage']);
    /**
     * Staff
     */
    Route::get('/staff',                         ['as' => 'staff',          'uses' => 'SiteController@showStaff']);
    /**
     * Post archive
     */
    Route::get('/post',                         ['as' => 'post',            'uses' => 'SiteController@showAllPost']);
    /**
     * Page archive
     */
    Route::get('/page',                         ['as' => 'page',            'uses' => 'SiteController@showAllPage']);
    /**
     * Category archive
     */
    Route::get('/category',                      ['as' => 'category',       'uses' => 'SiteController@showAllCategory']);
    /**
     * Album
     */
    Route::get('/album',                          ['as' => 'album',         'uses' => 'SiteController@showAlbum']);
    /**
     * Album Show
     */
    Route::get('/album/{album}/show',             ['as'=>'album.show',      'uses'=>'SiteController@showPhotos']);

    /**Search */

    Route::post('/search',                         ['as'=>'search',         'uses' => 'SiteController@search']);
    /**
     * Swap Language
     */
    Route::get('/swap/language/{lang_id}',        ['as'=>'swap_language',   'uses'=>'SiteController@swapLanguage']);

    /**
     * Process
     */
    Route::get('/process',                          ['as'=>'process',      'uses'=>'SiteController@showProcess']);

});




