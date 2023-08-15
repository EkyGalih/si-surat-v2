<?php

namespace App\Helpers;

use App\Models\Pegawai;
use App\Models\Surat;
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

    public static function CustomDate($param)
    {
        if ($param == NULL) {
            return "-";
        } else {
            $date    = explode("-", $param);


            if ($date[1] == '01') {
                $date = $date[2] . ' Januari' . ", " . $date[0];
            } elseif ($date[1] == '02') {
                $date = $date[2] . ' Februari' . ", " . $date[0];
            } elseif ($date[1] == '03') {
                $date = $date[2] . ' Maret' . ", " . $date[0];
            } elseif ($date[1] == '04') {
                $date = $date[2] . ' April' . ", " . $date[0];
            } elseif ($date[1] == '05') {
                $date = $date[2] . ' Mei' . ", " . $date[0];
            } elseif ($date[1] == '06') {
                $date = $date[2] . ' Juni' . ", " . $date[0];
            } elseif ($date[1] == '07') {
                $date = $date[2] . ' Juli' . ", " . $date[0];
            } elseif ($date[1] == '08') {
                $date = $date[2] . ' Agustus' . ", " . $date[0];
            } elseif ($date[1] == '09') {
                $date = $date[2] . ' September' . ", " . $date[0];
            } elseif ($date[1] == '10') {
                $date = $date[2] . ' Oktober' . ", " . $date[0];
            } elseif ($date[1] == '11') {
                $date = $date[2] . ' November' . ", " . $date[0];
            } elseif ($date[1] == '12') {
                $date = $date[2] . ' Desember' . ", " . $date[0];
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

    public static function NameMonth($param)
    {

        switch ($param) {
            case '01':
                $month = 'I';
                break;
            case '02':
                $month = 'II';
                break;
            case '03':
                $month = 'III';
                break;
            case '04':
                $month = 'IV';
                break;
            case '05':
                $month = 'V';
                break;
            case '06':
                $month = 'VI';
                break;
            case '07':
                $month = 'VII';
                break;
            case '08':
                $month = 'VIII';
                break;
            case '09':
                $month = 'IX';
                break;
            case '10':
                $month = 'X';
                break;
            case '11':
                $month = 'XI';
                break;
            case '11':
                $month = 'XII';
                break;
            default:
                $month = '';
        }

        return $month;
    }
}
