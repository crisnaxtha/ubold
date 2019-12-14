<?php

namespace App\Exceptions;

use Exception;
use Illuminate\Support\Facades\Log;

class DM_NotFoundException extends Exception
{
    /**
     * Report or log an exception.
     *
     * @return void
     */
    public function report()
    {
        Log::debug('ID or Unique_ID  not found');
    }
}
