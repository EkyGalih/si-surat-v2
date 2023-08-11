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
        <div class="x_panel">
            <div class="x_title">
                <h2><i class="fa fa-user-plus"></i> Tambah Pengguna<small></i></small></h2>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a href="#"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                            aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Settings 1</a>
                            </li>
                            <li><a href="#">Settings 2</a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#"><i class="fa fa-close"></i></a>
                    </li>
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <form action="{{ route('admin-user.store') }}" method="post" enctype="multipart/form-data"
                    class="form-horizontal form-label-left" novalidate>
                    @csrf
                    <div class="col-lg-6 pull-left">
                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="pegawai">Pegawai<span
                                    class="required">*</span>
                            </label>
                            <div class="col-md-9 col-sm-9 col-xs-12">
                                <select name="nama_lengkap" id="pegawai" class="select2_single form-control">
                                    <option value="">Pilih..</option>
                                    @foreach ($pegawai as $peg)
                                        <option value="{{ $peg->id }}">{{ $peg->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="username">Username<span
                                    class="required">*</span>
                            </label>
                            <div class="col-md-9 col-sm-9 col-xs-12">
                                <input type="text" id="username" name="username" required="required"
                                    class="form-control">
                                <p></p>
                            </div>
                        </div>
                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="password">Password<span
                                    class="required">*</span>
                            </label>
                            <div class="col-md-9 col-sm-9 col-xs-12">
                                <input type="password" id="password" name="password" required="required"
                                    class="form-control">
                            </div>
                        </div>
                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="divisi">Divisi<span
                                    class="required">*</span>
                            </label>
                            <div class="col-md-9 col-sm 9 col-xs 12">
                                <input type="text" id="bidang" name="bidang_id" class="form-control">
                            </div>
                        </div>
                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="level">Level User<span
                                    class="required">*</span>
                            </label>
                            <div class="col-md-9 col-sm 9 col-xs 12">
                                <select id="level" name="level" class="form-control level">
                                    <option value="">Pilih</option>
                                    <option value="admin">Administrator</option>
                                    <option value="pimpinan">Pimpinan</option>
                                    <option value="agendaris">Agendaris</option>
                                    <option value="user">User</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 pull-right">
                        <img src="{{ asset('images/user.png') }}" alt="Profile" id="profile"
                            style="max-width: 40%; height: 220px;">
                        {{-- <img src="" alt="Profile" id="profile" style="max-width: 40%; height: 120px;"> --}}
                        <div class="pt-2">
                            <p class="image_upload">
                                <label for="userImage">
                                    <a class="btn btn-primary btn-sm" style="color: #ffffff;" rel="nofollow"><span
                                            class='fa fa-upload'></span> Upload Foto</a>
                                </label>
                                <input type="file" name="foto" id="userImage" accept="image/*"
                                    onchange="loadFile(event)">
                            </p>
                        </div>
                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-3">
                                <button type="submit" class="btn btn-default">
                                    Cancel
                                </button>
                                <button id="send" type="submit" class="btn btn-info">
                                    <i class="fa fa-plus fa-fw"></i> Tambah
                                </button>
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
            $(".select2_single").select2({
                placeholder: "Cari Pegawai",
                allowClear: true
            });
            $(".level").select2({
                placeholder: "Level Pengguna",
                allowClear: true
            });

            $('#pegawai').on('change', function() {
                var id = $('#pegawai').val();

                $.ajax({
                    type: "get",
                    async: true,
                    url: '{{ url('api/user') }}/' + id,
                    // dataType: "json",
                    success: function(data) {
                        $('#username').val(data[0].nip);
                        $('#password').val(data[0].nip);
                        $('#bidang').val(data[0].nama_bidang);
                        console.log('images/pegawai/' + data[0].foto);
                    },
                    error: function(error) {
                        console.log(error);
                    }
                });
            });

        });

        // preview image
        var loadFile = function(event) {
            var output = document.getElementById('profile');
            output.src = URL.createObjectURL(event.target.files[0]);
            console.log(output.src);
            output.onload = function() {
                URL.revokeObjectURL(output.src) // free memory
            }
        };
    </script>
@endsection
