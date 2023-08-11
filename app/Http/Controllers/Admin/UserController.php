<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Pegawai;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $users = User::orderBy('created_at', 'DESC')->get();

        return view('Admin.pengguna.pengguna', compact('users'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $pegawai = Pegawai::get();

        return view('Admin.pengguna.components.add', compact('pegawai'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        User::create([
            'nama_lengkap' => $request->nama_lengkap,
            'level' => $request->level,
            'pegawai_id' => $request->pegawai_id,
            'username' => $request->username,
            'password' => Hash::make($request->password),
            'foto' => $request->foto
        ]);
        return redirect()->route('admin-user.index')->with(['success' => 'Pengguna berhasil dibuat!']);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $user = User::findOrfail($id);

        return view('Admin.pengguna.components.detail', compact('user'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $user = User::findOrFail($id);
        $pegawai = Pegawai::get();

        return view('Admin.pengguna.components.edit', compact('user', 'pegawai'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $user = User::findOrFail($id);
        $user->update([
            'nama_lengkap' => $request->nama_lengkap,
            'level' => $request->level,
            'pegawai_id' => $request->pegawai_id,
            'username' => $request->username,
            'foto' => $request->foto
        ]);
        return redirect()->route('admin-user.index')->with(['success' => 'Pengguna berhasil diperbaharui!']);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $user = User::findOrFail($id);
        $user->delete();

        return redirect()->route('admin-user.index')->with(['success' => 'Pengguna berhasil dihapus!']);
    }
}
