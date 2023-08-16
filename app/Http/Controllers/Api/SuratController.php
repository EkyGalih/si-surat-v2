<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Surat;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class SuratController extends Controller
{
    public function show($id)
    {
        try {
            $surat = Surat::where('isi_disposisi', '=', NULL)
                ->where('id', '=', $id)
                ->select('tgl_surat', 'no_surat', 'perihal', 'tgl_terima', 'isi_disposisi')
                ->first();
            $response = [
                $surat
            ];
            return response()->json($response, Response::HTTP_OK);
        } catch (\Throwable $e) {
            return response()->json(['error' => $e->getMessage()], Response::HTTP_FORBIDDEN);
        }
    }
}
