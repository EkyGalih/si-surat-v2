<?php

namespace App\Http\Controllers\Agendaris;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class BerandaController extends Controller
{
    public function index()
    {
        return view('Agendaris.beranda.beranda');
    }
}
