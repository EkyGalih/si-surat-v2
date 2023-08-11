<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Bidang;
use Illuminate\Http\Request;

class BidangController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $bidangs = Bidang::orderBy('nama_bidang', 'ASC')->get();

        return view('Admin.bidang.bidang', compact('bidangs'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        Bidang::create([
            'nama_bidang' => $request->nama_bidang
        ]);

        return redirect()->route('admin-bidang.index')->with(['success' => 'Bidang berhasil ditambahkan!']);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $bidang = Bidang::findOrFail($id);

        $bidang->update([
            'nama_bidang' => $request->nama_bidang
        ]);

        return redirect()->route('admin-bidang.index')->with(['success' => 'Bidang berhasil diubah!']);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $bidang = Bidang::findOrFail($id);
        $bidang->delete();

        return redirect()->route('admin-bidang.index')->with(['success' => 'Bidang berhasil dihapus!']);
    }
}
