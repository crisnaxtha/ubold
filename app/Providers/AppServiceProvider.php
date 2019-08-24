<?php

namespace App\Providers;
use Illuminate\Support\Facades\Schema;
use DB;
use View;
use Illuminate\Http\Request;
use Session;

use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot(Request $request)
    {
        Schema::defaultStringLength(191);
        // comment all these while migrating new database
        $all_view['lang'] = DB::table('languages')->where('deleted_at', '=', null)->where('status', '=', 1)->get();
        $all_view['setting'] = DB::table('settings')->first();
        $all_view['locale'] = $request->segment(1);
        $all_view['view_count'] = DB::table('trackers')->sum('hits');
        $all_view['contact_count'] = DB::table('contacts')->count();
        $all_view['file_count'] = DB::table('files')->count();
        $all_view['photo_count'] = DB::table('galleries')->count();
        View::share(compact('all_view'));
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
