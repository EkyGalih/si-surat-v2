<?php

namespace App\Http\Controllers\Admin\Api;

use App\Http\Controllers\Controller;
use App\Models\Pegawai;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class UserController extends Controller
{
    // public function index()
    // {
    //     try {
    //         $pegawai =  $pegawai = Pegawai::join('bidang', 'pegawai.bidang_id', '=', 'bidang.id')
    //         ->select('pegawai.nip', 'bidang.nama_bidang')
    //         // ->where('pegawai.id', '=', $id)
    //         ->get();
    //         return response()->json($pegawai, Response::HTTP_OK);
    //     } catch (\Throwable $e) {
    //         return response()->json(['error' => 'No result'], Response::HTTP_FORBIDDEN);
    //     }
    // }

    public function show($id)
    {
        try {
            $pegawai = Pegawai::join('bidang', 'pegawai.bidang_id', '=', 'bidang.id')
                    ->select('pegawai.nip', 'bidang.nama_bidang', 'pegawai.foto')
                    ->where('pegawai.id', '=', $id)
                    ->first();
            $response = [
                $pegawai
            ];
            return response()->json($response, Response::HTTP_OK);
        } catch (\Throwable $e) {
            return response()->json(['error' => 'No result'], Response::HTTP_FORBIDDEN);
        }
    }
}
