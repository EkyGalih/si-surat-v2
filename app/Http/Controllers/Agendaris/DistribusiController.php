<?php

namespace App\Http\Controllers\Agendaris;

use App\Http\Controllers\Controller;
use App\Models\Distribusi;
use App\Models\Surat;
use Illuminate\Http\Request;

class DistribusiController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $distribusi = Distribusi::get();
        return view('Agendaris.distribusi.distribusi', compact('distribusi'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $surat = Surat::where('isi_disposisi', '=', NULL)->get();
        return view('Agendaris.distribusi.components.add', compact('surat'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
