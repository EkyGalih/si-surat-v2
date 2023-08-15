<?php

namespace App\Http\Controllers\Agendaris;

use App\Http\Controllers\Controller;
use App\Models\Surat;
use Illuminate\Http\Request;

class SuratKeluarController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $surat = Surat::where('jenis_surat', '=', 'keluar')
            ->orderBy('created_at', 'DESC')
            ->get();
        $last_number = Surat::where('jenis_surat', '=', 'keluar')
            ->select('no_surat')
            ->first();

        return view('Agendaris.surat.surat-keluar.surat-keluar', compact('surat', 'last_number'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
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
     * Give number surat on new surat
     */
    public function nosurat(Request $request, string $id)
    {
        $surat = Surat::findOrFail($id);
        $surat->update(['no_surat' => $request->no_surat]);

        return redirect()->back()->with(['success' => 'Surat berhasil diberikan nomor']);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
