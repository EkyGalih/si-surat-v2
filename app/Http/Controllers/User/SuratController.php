<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\FileSurat;
use App\Models\Surat;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Webpatser\Uuid\Uuid;

class SuratController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $surats = Surat::where('bidang_id', '=', Auth::user()->Pegawai->Bidang->id)
            ->orderBy('created_at', 'asc')
            ->get();

        return view('User.surat.surat', compact('surats'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('User.surat.components.add');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // dd($lampiran);
        $surat      = $request->file('file');
        $lampiran   = $request->file('lampiran');
        $ext        = array('png', 'jpg', 'jpeg', 'PNG', 'JPG', 'JPEG');
        $filename   = 'out-' . Auth::user()->Pegawai->Bidang->nama_bidang . '-' . md5($surat->getClientOriginalName()) . '.' . $surat->getClientOriginalExtension();
        $path       = 'upload/file_surat/keluar/';
        $id         = (string)Uuid::generate(4);

        if (in_array($surat->getClientOriginalExtension(), $ext)) {
            if ($surat->getSize() <= 5000000) {
                $surat->move($path, $filename);
                $request->file = $filename;
            } else {
                return redirect()->back()->with(['error' => 'Ukuran surat melebihi 5MB!']);
            }
        } else {
            return redirect()->back()->with(['error' => 'Extensi surat tidak sesuai!']);
        }

        if ($lampiran != null) {
            if (in_array($lampiran->getClientOriginalExtension(), $ext)) {
                if ($lampiran->getSize() <= 5000000) {
                    $lampiran->move($path . 'lampiran', 'lamp-' . $filename);
                    $request->lampiran = 'lampiran/' . 'lamp-' . $filename;
                } else {
                    return redirect()->back()->with(['error' => 'Ukuran lampiran melebihi 5MB!']);
                }
            } else {
                return redirect()->back()->with(['error' => 'Extensi lampiran tidak sesuai!']);
            }
        }

        Surat::create([
            'id'            => $id,
            'jenis_surat'   => 'keluar',
            'kategori'      => $request->kategori_surat,
            'asal_surat'    => Auth::user()->Pegawai->Bidang->nama_bidang,
            'tgl_surat'     => $request->tgl_surat,
            'perihal'       => $request->perihal,
            'status_surat'  => 'proggress',
            'bidang_id'     => Auth::user()->Pegawai->Bidang->id
        ]);

        FileSurat::create([
            'surat_id'      => $id,
            'path_file'     => $path,
            'file'          => $request->file,
            'path_lampiran' => $request->lampiran == NULL ? '' : $path,
            'lampiran'      => $request->lampiran
        ]);

        return redirect()->route('user-surat.index')->with(['success' => 'Permohonan No Surat berhasi dikirim!']);
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
        $surat = Surat::findOrFail($id);

        return view('User.surat.components.edit', compact('surat'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {

        $surats     = Surat::findOrFail($id);
        $filesurats = FileSurat::where('surat_id', '=', $id)->first();
        $surat      = $request->file('file');
        $lampiran   = $request->file('lampiran');
        // dd($lampiran);
        $ext        = array('png', 'jpg', 'jpeg', 'PNG', 'JPG', 'JPEG');
        $path       = 'upload/file_surat/keluar/';

        if ($surat != null) {
            $filename   = 'out-' . Auth::user()->Pegawai->Bidang->nama_bidang . '-' . md5($surat->getClientOriginalName()) . '.' . $surat->getClientOriginalExtension();
            if (in_array($surat->getClientOriginalExtension(), $ext)) {
                if ($surat->getSize() <= 5000000) {
                    unlink($surats->FileSurat->path_file.$surats->FileSurat->file);
                    $surat->move($path, $filename);
                    $request->file = $filename;
                } else {
                    return redirect()->back()->with(['error' => 'Ukuran surat melebihi 5MB!']);
                }
            } else {
                return redirect()->back()->with(['error' => 'Extensi surat tidak sesuai!']);
            }
        }

        if ($lampiran != null) {
            $filename   = 'out-' . Auth::user()->Pegawai->Bidang->nama_bidang . '-' . md5($lampiran->getClientOriginalName()) . '.' . $lampiran->getClientOriginalExtension();
            if ($lampiran != null) {
                if (in_array($lampiran->getClientOriginalExtension(), $ext)) {
                    if ($lampiran->getSize() <= 5000000) {
                        unlink($surats->FileSurat->path_lampiran. $surats->FileSurat->lampiran);
                        $lampiran->move($path . 'lampiran/', 'lamp-' . $filename);
                        $request->lampiran = 'lamp-' . $filename;
                    } else {
                        return redirect()->back()->with(['error' => 'Ukuran lampiran melebihi 5MB!']);
                    }
                } else {
                    return redirect()->back()->with(['error' => 'Extensi lampiran tidak sesuai!']);
                }
            }
        }

        $surats->update([
            'kategori'      => $request->kategori_surat,
            'tgl_surat'     => $request->tgl_surat,
            'perihal'       => $request->perihal,
        ]);

        if ($surat != NULL) {
            $filesurats->update([
                'surat_id'      => $id,
                'file'          => $request->file ?? $surats->FileSurat->file,
                'path_file'     => $path,
            ]);
        }

        if ($lampiran != NULL) {
            $filesurats->update([
                'surat_id'      => $id,
                'lampiran'      => $request->lampiran,
                'path_lampiran' => $path . 'lampiran/'
            ]);
        }

        return redirect()->route('user-surat.index')->with(['success' => 'Permohonan No Surat berhasi dikirim!']);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $surat = Surat::findOrFail($id);
        unlink($surat->FileSurat->path_file . $surat->FileSurat->file);
        if ($surat->FileSurat->lampiran != NULL) {
            unlink($surat->FileSurat->path_lampiran . $surat->FileSurat->lampiran);
        }
        $surat->delete();

        return redirect()->back()->with(['success' => 'surat berhasil dihapus!']);
    }
}
