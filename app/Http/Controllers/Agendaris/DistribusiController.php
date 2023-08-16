<?php

namespace App\Http\Controllers\Agendaris;

use App\Http\Controllers\Controller;
use App\Models\Bidang;
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
        $distribusi = Distribusi::groupBy('surat_id')->get();

        return view('Agendaris.distribusi.distribusi', compact('distribusi'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $bidang = Bidang::get();
        $surat = Surat::where('isi_disposisi', '=', NULL)->get();
        return view('Agendaris.distribusi.components.add', compact('surat', 'bidang'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $count = count($request->bidang_id);
        for ($i = 0; $i < $count; $i++) {
            Distribusi::create([
                'bidang_id' => $request->bidang_id[$i],
                'surat_id' => $request->surat_id
            ]);
        }

        return redirect()->route('agendaris-distribusi.index')->with(['success' => 'Surat berhasil di distribusikan!']);
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
        $bidang = Bidang::get();
        $surat = Surat::where('isi_disposisi', '=', NULL)->get();
        $dist = Distribusi::where('surat_id', '=', $id)->get();
        return view('Agendaris.distribusi.components.edit', compact('surat', 'bidang', 'dist'));
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
