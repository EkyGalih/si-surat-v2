<?php

namespace App\Helpers;

use App\Models\User;
use Illuminate\Support\Facades\Auth;

class Helpers
{
    public static function getLevel()
    {
        $level = User::where('id', '=', Auth::user()->id)->first();
        if ($level)
            return $level->level;
    }
}
