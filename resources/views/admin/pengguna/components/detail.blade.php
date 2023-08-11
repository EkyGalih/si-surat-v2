@extends('admin.index')
@section('title', 'Tambah Pengguna')
@section('additional-css')
    <link rel="stylesheet" href="{{ asset('vendors/select2/css/select2.min.css') }}">
    <style>
        .image_upload>input {
            display: none;
        }
    </style>
@endsection
@section('content')
    <div class="right_col" role="main">
        <div class="page-title">
            <div class="title_left">
                <h3>Data Pengguna</h3>
            </div>

            <div class="title_right">
                <div class="col-md-2 col-sm-2  form-group pull-right top_search">
                    <div class="input-group">
                        <a href="{{ route('admin-user.index') }}" class="btn btn-secondary"><i
                                class="fa fa-backward"></i> Kembali</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="x_panel">
            <div class="x_content">
                <div class="row">
                    <div class="col-md-12 col-sm-12 ">
                        <div class="x_panel">
                            <div class="col-md-7 col-sm-7 ">
                                <div class="product-image">
                                    <img src="{{ asset($user->foto) }}" alt="{{ $user->Pegawai->name }}" />
                                </div>
                            </div>

                            <div class="col-md-5 col-sm-5 " style="border:0px solid #e5e5e5;">

                                <h3 class="prod_title">{{ $user->Pegawai->name }}</h3>

                                <p>{{ ucfirst($user->Pegawai->nama_jabatan) . ' BPKAD pada BIDANG ' . $user->Pegawai->Bidang->nama_bidang . ', jabatan ' . $user->Pegawai->jabatan }}
                                </p>
                                <br />

                                <div class="">
                                    <div class="product_price">
                                        <h1 class="price">{{ $user->Pegawai->Pangkat->nama_pangkat ?? strtoupper($user->level) }}</h1>
                                        <span class="price-tax">{{ $user->Pegawai->Golongan->nama_golongan ?? 'Non Asn' }}</span>
                                        <br>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
@endsection
@section('additional-js')
    <script src="{{ asset('vendors/select2/js/select2.full.js') }}"></script>
    <script></script>
@endsection
