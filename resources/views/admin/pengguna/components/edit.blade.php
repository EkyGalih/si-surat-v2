@extends('admin.index')
@section('title', 'Ubah Pengguna')
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
                <h2><i class="fa fa-user"><sup style="font-size: 12px;" class="fa fa-edit"></sup></i> Ubah Pengguna<small></i></small></h2>
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
                <form action="{{ route('admin-user.update', $user->id) }}" method="post" enctype="multipart/form-data"
                    class="form-horizontal form-label-left" novalidate>
                    @csrf
                    @method('PUT')
                    <div class="col-lg-12 pull-left">
                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="pegawai">Pegawai<span
                                    class="required">*</span>
                            </label>
                            <div class="col-md-9 col-sm-9 col-xs-12">
                                <input type="hidden" name="nama_lengkap" id="nama_pegawai">
                                <select name="pegawai_id" id="pegawai" class="select2_single form-control">
                                    <option value="">Pilih..</option>
                                    @foreach ($pegawai as $peg)
                                        <option value="{{ $peg->id }}" {{ $user->pegawai_id == $peg->id ? 'selected' : '' }}>{{ $peg->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="username">Username<span
                                    class="required">*</span>
                            </label>
                            <div class="col-md-9 col-sm-9 col-xs-12">
                                <input type="text" id="username" name="username" required="required" value="{{ $user->username }}"
                                    class="form-control">
                                <p></p>
                            </div>
                        </div>
                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="divisi">Divisi<span
                                    class="required">*</span>
                            </label>
                            <div class="col-md-9 col-sm 9 col-xs 12">
                                <input type="text" id="bidang" name="bidang_id" class="form-control" value="{{ $user->Pegawai->Bidang->nama_bidang }}">
                            </div>
                        </div>
                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="level">Level User<span
                                    class="required">*</span>
                            </label>
                            <div class="col-md-9 col-sm 9 col-xs 12">
                                <select id="level" name="level" class="form-control level">
                                    <option value="">Pilih</option>
                                    <option value="admin" {{ $user->level == 'admin' ? 'selected' : '' }}>Administrator</option>
                                    <option value="pimpinan" {{ $user->level == 'pimpinan' ? 'selected' : '' }}>Pimpinan</option>
                                    <option value="agendaris" {{ $user->level == 'agendaris' ? 'selected' : '' }}>Agendaris</option>
                                    <option value="user" {{ $user->level == 'user' ? 'selected' : '' }}>User</option>
                                </select>
                                <input type="hidden" name="foto" id="foto" value="{{ $user->foto }}">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-9 col-md-offset-3"></div>
                        <div class="col-md-3 col-md-offset-3">
                            <a href="{{ route('admin-user.index') }}" class="btn btn-secondary">
                                <i class="fa fa-times"></i> Batal
                            </a>
                            <button id="send" type="submit" class="btn btn-info">
                                <i class="fa fa-save fa-fw"></i> Simpan
                            </button>
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
                        $('#username').val(data[0].nip ?? 12345678);
                        $('#password').val(data[0].nip ?? 12345678);
                        $('#nama_pegawai').val(data[0].name);
                        $('#bidang').val(data[0].nama_bidang);
                        $('#foto').val('/images/pegawai/'+data[0].foto);
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
