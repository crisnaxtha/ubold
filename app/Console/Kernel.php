<?php

namespace App\Console;

use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;

class Kernel extends ConsoleKernel
{
    /**
     * The Artisan commands provided by your application.
     *
     * @var array
     */
    protected $commands = [
        'App\Console\Commands\DM_BackupDatabase'
    ];

    /**
     * Define the application's command schedule.
     *
     * @param  \Illuminate\Console\Scheduling\Schedule  $schedule
     * @return void
     */
    protected function schedule(Schedule $schedule)
    {
        $schedule->call('App\Http\Controllers\Dcms\ExternalServicesController@apiDateWise')->everyMinute();
        $schedule->call('App\Http\Controllers\Dcms\ExternalServicesController@apiDistrictWise')->everyMinute();
        $schedule->call('App\Http\Controllers\Dcms\ExternalServicesController@apiProvinceWise')->everyMinute();
        $schedule->command('db:backup --force')->hourly();
    }

    /**
     * Register the commands for the application.
     *
     * @return void
     */
    protected function commands()
    {
        $this->load(__DIR__.'/Commands');

        require base_path('routes/console.php');
    }
}
