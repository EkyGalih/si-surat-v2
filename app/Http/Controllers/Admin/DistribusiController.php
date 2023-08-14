<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Distribusi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DistribusiController extends Controller
{
    public function index()
    {
        $distribusi = Distribusi::where('bidang_id', '=', Auth::user()->Pegawai->Bidang->id)
            ->get();

        return view('User.distribusi.distribusi', compact('distribusi'));
    }
}
