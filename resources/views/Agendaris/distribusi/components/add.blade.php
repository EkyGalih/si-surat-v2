@extends('Agendaris.index')
@section('titles', 'Distribusi Surat')
@section('additional-css')
    <link rel="stylesheet" href="{{ asset('vendors/select2/css/select2.min.css') }}">
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
                                    <option value="{{ $surat->id }}">{{ $surat->perihal }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="item input-group">
                            <label for="surat" class="control-label col-lg-3 col-md-3 col-xs-12">Tanggal Surat</label>
                            <div class="col-md-9 col-lg-9 col-xs-12">
                                <input type="text" id="tgl_surat" class="form-control" readonly>
                            </div>
                        </div>
                        <div class="item input-group">
                            <label for="surat" class="control-label col-lg-3 col-md-3 col-xs-12">Tanggal Surat</label>
                            <div class="col-md-9 col-lg-9 col-xs-12">
                                <input type="text" id="tgl_surat" class="form-control" readonly>
                            </div>
                        </div>
                        <div class="item input-group">
                            <label for="surat" class="control-label col-lg-3 col-md-3 col-xs-12">Tanggal Surat</label>
                            <div class="col-md-9 col-lg-9 col-xs-12">
                                <input type="text" id="tgl_surat" class="form-control" readonly>
                            </div>
                        </div>
                        <div class="item input-group">
                            <label for="surat" class="control-label col-lg-3 col-md-3 col-xs-12">Tanggal Surat</label>
                            <div class="col-md-9 col-lg-9 col-xs-12">
                                <input type="text" id="tgl_surat" class="form-control" readonly>
                            </div>
                        </div>
                        <div class="item input-group">
                            <label for="surat" class="control-label col-lg-3 col-md-3 col-xs-12">Tanggal Surat</label>
                            <div class="col-md-9 col-lg-9 col-xs-12">
                                <input type="text" id="tgl_surat" class="form-control" readonly>
                            </div>
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
    </script>
@endsection
