@extends('Agendaris.index')
@section('titles', 'Distribusi Surat')
@section('additional-css')
    <link rel="stylesheet" href="{{ asset('vendors/select2/css/select2.min.css') }}">
    <style>
        .chk {
            display: inline-block;
            position: relative;
            width: 50px;
            height: 25px;
        }

        .chk::before {
            content: "";
            display: inline-block;
            position: relative;
            width: 50px;
            height: 25px;
            background: #fff;
            border: 1px solid #ddd;
            border-radius: 30px;
            -moz-border-radius: 30px;
        }

        .chk::after {
            content: "";
            display: inline-block;
            position: absolute;
            width: 21px;
            height: 21px;
            border-radius: 25px;
            -moz-border-radius: 25px;
            background: #eee;
            left: 3px;
            top: 3px;
            transition: 0.3s;
            -moz-transition: 0.3s;
            -webkit-transition: 0.3s;
            -khtml-transition: 0.3s;
        }

        .chk:checked::after {
            left: 27px;
            background: #33aa55;
        }
    </style>
@endsection
@section('content')
    <div class="right_col" role="main">
        <div class="x_panel">
            <div class="x_title">
                <h2>
                    <i class="fa fa-share-alt-square"></i> Distribusikan Surat
                </h2>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <form action="{{ route('agendaris-distribusi.store') }}" method="post">
                    @csrf
                    <div class="col-lg-6">
                        <div class="item input-group">
                            <label for="surat" class="control-label col-lg-3 col-md-3 col-xs-12">Surat</label>
                            <div class="col-md-9 col-lg-9 col-xs-12">
                                <select name="surat_id" id="surat_id" class="form-control">
                                    <option value="">Cari Surat</option>
                                    @foreach ($surat as $surat)
                                        <option value="{{ $surat->id }}"
                                            {{ $surat->id == $dist[0]->surat_id ? 'selected' : '' }}>{{ $surat->perihal }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="item input-group">
                            <label for="surat" class="control-label col-lg-3 col-md-3 col-xs-12">Tanggal Surat</label>
                            <div class="col-md-9 col-lg-9 col-xs-12">
                                <input type="text" id="tgl_surat" value="{{ $dist[0]->Surat->tgl_surat ?? '-' }}"
                                    class="form-control" readonly>
                            </div>
                        </div>
                        <div class="item input-group">
                            <label for="surat" class="control-label col-lg-3 col-md-3 col-xs-12">Nomor Surat</label>
                            <div class="col-md-9 col-lg-9 col-xs-12">
                                <input type="text" id="no_surat" class="form-control"
                                    value="{{ $dist[0]->Surat->no_surat ?? '-' }}" readonly>
                            </div>
                        </div>
                        <div class="item input-group">
                            <label for="surat" class="control-label col-lg-3 col-md-3 col-xs-12">Perihal</label>
                            <div class="col-md-9 col-lg-9 col-xs-12">
                                <textarea id="perihal" class="form-control" readonly>{{ $dist[0]->Surat->perihal ?? '-' }}</textarea>
                            </div>
                        </div>
                        <div class="item input-group">
                            <label for="surat" class="control-label col-lg-3 col-md-3 col-xs-12">Tanggal Diterima</label>
                            <div class="col-md-9 col-lg-9 col-xs-12">
                                <input type="text" id="tgl_terima" class="form-control"
                                    value="{{ $dist[0]->Surat->tgl_terima ?? '-' }}" readonly>
                            </div>
                        </div>
                        <div class="item input-group">
                            <label for="surat" class="control-label col-lg-3 col-md-3 col-xs-12">Isi Disposisi</label>
                            <div class="col-md-9 col-lg-9 col-xs-12">
                                <p id="isi_disposisi">{{ $dist[0]->Surat->isi_disposisi ?? '-' }}</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="bidang_id"><span
                                    class="required"></span>
                            </label>
                            <div class="col-md-10 col-sm-10 col-xs-10">
                                <table style="border-collapse: collapse;">
                                    <tbody>
                                        @foreach ($bidang as $bid)
                                            <tr>
                                                <td style="border: 1px solid; padding: 2px 8px;">{{ $loop->iteration }}
                                                </td>
                                                <td style="border: 1px solid; padding: 2px 8px;">{{ $bid->nama_bidang }}
                                                </td>
                                                <td style="border: 1px solid; padding: 2px 8px;">
                                                    @foreach($dist as $key => $bid_id)
                                                    <input type="checkbox" name="bidang_id[]" class="chk"
                                                        value="{{ $bid->id }}" {{ $bid->id == $bid_id->bidang_id ? 'checked' : '' }}>
                                                    @endforeach
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12 col-sm-12 col-xs-12 col-md-offset-3">
                            <div class="ln_solid"></div>
                            <a href="{{ route('agendaris-distribusi.index') }}" class="btn btn-danger"><i
                                    class="fa fa-remove"></i> Batal</a>
                            <button type="submit" class="btn btn-info"><i class="fa fa-share-alt"></i> Distribusi</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
@section('additional-js')
    <script src="{{ asset('vendors/select2/js/select2.full.js') }}"></script>
    <script>
        $(document).ready(function() {
            $("#surat_id").select2({
                placeholder: "Cari Surat",
                allowClear: true
            });
        });

        $('#surat_id').on('change', function() {
            var id = $('#surat_id').val();

            $.ajax({
                type: 'get',
                async: true,
                url: '{{ url('api/surat') }}/' + id,
                success: function(data) {
                    $('#tgl_surat').val(data[0].tgl_surat ?? '-');
                    $('#no_surat').val(data[0].no_surat);
                    $('#perihal').val(data[0].perihal);
                    $('#tgl_terima').val(data[0].tgl_terima ?? '-');
                    $('#isi_disposisi').text(data[0].isi_disposisi ?? '-');
                },
                error: function(error) {
                    console.log(error);
                }
            });
        })
    </script>
@endsection
