<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Surat;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class SuratController extends Controller
{
    public function index()
    {
        try {
            $surat = Surat::where('isi_disposisi', '=', NULL)
            ->get();
            return response()->json($surat, Response::HTTP_OK);
        } catch (\Throwable $e) {
            return response()->json(['error' => $e->getMessage()], Response::HTTP_FORBIDDEN);
        }
    }
}
