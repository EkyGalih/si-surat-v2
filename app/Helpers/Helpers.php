<?php

namespace App\Helpers;

use App\Models\Pegawai;
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

    public static function GetDate($param)
    {
        if ($param == NULL) {
            return "-";
        } else {
            $explode    = explode(" ", $param);
            $date       = explode("-", $explode[0]);

            if ($date[1] == '01') {
                $date = 'Jan ' . $date[2] . ", " . $date[0];
            } elseif ($date[1] == '02') {
                $date = 'Feb ' . $date[2] . ", " . $date[0];
            } elseif ($date[1] == '03') {
                $date = 'Mar ' . $date[2] . ", " . $date[0];
            } elseif ($date[1] == '04') {
                $date = 'Apr ' . $date[2] . ", " . $date[0];
            } elseif ($date[1] == '05') {
                $date = 'Mei ' . $date[2] . ", " . $date[0];
            } elseif ($date[1] == '06') {
                $date = 'Jun ' . $date[2] . ", " . $date[0];
            } elseif ($date[1] == '07') {
                $date = 'Jul ' . $date[2] . ", " . $date[0];
            } elseif ($date[1] == '08') {
                $date = 'Aug ' . $date[2] . ", " . $date[0];
            } elseif ($date[1] == '09') {
                $date = 'Sep ' . $date[2] . ", " . $date[0];
            } elseif ($date[1] == '10') {
                $date = 'Oct ' . $date[2] . ", " . $date[0];
            } elseif ($date[1] == '11') {
                $date = 'Nov ' . $date[2] . ", " . $date[0];
            } elseif ($date[1] == '12') {
                $date = 'Dec ' . $date[2] . ", " . $date[0];
            }
            return $date;
        }
    }

    public static function GetTime($param)
    {
        if ($param == NULL) {
            return "-";
        } else {
            $explode    = explode(" ", $param);
            $times      = explode(":", $explode[1]);
            $time       = implode(":", $times);

            return date("g:i A", strtotime($time));
        }
    }

    // count pegawai
    public static function PegawaiCount($param)
    {
        $pegawai = Pegawai::where('bidang_id', '=', $param)->count();
        return $pegawai;
    }
}
