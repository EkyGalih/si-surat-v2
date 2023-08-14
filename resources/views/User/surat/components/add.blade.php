@extends('User.index')
@section('title', 'Pengajuan Surat')
@section('additional-css')
    <style>
        #userImage {
            display: none;
        }

        #lampiranImage {
            display: none;
        }
    </style>
@endsection
@section('content')
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>Form Pengajuan Nomor Surat</h2>
                    <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
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
                        <li><a class="close-link"><i class="fa fa-close"></i></a>
                        </li>
                    </ul>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <form action="{{ route('user-surat.store') }}" method="post" enctype="multipart/form-data"
                        onsubmit="return validateForm()">
                        @csrf
                        <div class="col-lg-8">
                            <div class="item form-group">
                                <label class="control-label col-md-2" for="perihal">Perihal<span class="required">*</span>
                                </label>
                                <div class="col-md-10 col-sm-10 col-xs-12">
                                    <textarea id="perihal" name="perihal" required="required" class="form-control"></textarea>
                                </div>
                            </div>
                            <div class="item form-group">
                                <label for="kategori_surat" class="control-label col-md-2">Kategori Surat</label>
                                <div class="col-md-10 col-sm-10 col-xs-12">
                                    <select name="kategori_surat" class="form-control">
                                        <option value="">Kategori</option>
                                        <option value="biasa">Umum</option>
                                        <option value="sppd">SPPD</option>
                                        <option value="undangan">Undangan</option>
                                    </select>
                                </div>
                            </div>
                            <div class="item form-group">
                                <label for="tgl_surat" class="control-label col-md-2">Tanggal Surat</label>
                                <div class="col-md-10 col-sm-10 col-xs-12">
                                    <input type="date" name="tgl_surat" class="form-control">
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-2" for="file">File Surat<span
                                        class="required">*</span>
                                </label>
                                <div class="col-md-4 col-sm-4 col-xs-12">
                                    <label for="userImage">
                                        <a class="btn btn-primary btn-sm" rel="nofollow" style="color: #FFFFFF;"><span class="fa fa-upload"></span> Upload File Surat</a>
                                    </label>
                                    <input type="file" id="userImage" accept="image/*" name="file" required="required" class="form-control" onchange="loadFile(event)">
                                </div>
                                <div class="col-md-8 col-sm-8 col-xs-12">
                                    <label style="margin-left: -12%; padding: 5px;" id="textImage">Tidak ada surat dipilih</label>
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-2" for="file">Lampiran</label>
                                <div class="col-md-4 col-sm-4 col-xs-12">
                                    <label for="lampiranImage">
                                        <a class="btn btn-dark btn-sm" rel="nofollow" style="color: #FFFFFF;"><span class="fa fa-upload"></span> Upload Lampiran</a>
                                    </label>
                                    <input type="file" id="lampiranImage" accept="image/*" name="lampiran" class="form-control" onchange="loadLampiran(event)">
                                </div>
                                <div class="col-md-8 col-sm-8 col-xs-12">
                                    <label style="margin-left: -12%; padding: 5px;" id="textLampiran">Tidak ada lampiran dipilih</label>
                                </div>
                            </div>
                            <div class="ln_solid"></div>
                            <div class="form-group">
                                <div class="col-md-6 col-md-offset-3">
                                    <a href="{{ route('user-surat.index') }}" class="btn btn-secondary"><i
                                            class="fa fa-times"></i> Batal</a>
                                    <button id="send" type="submit" class="btn btn-info"><i class="fa fa-send"></i>
                                        Kirim</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <img src="{{ asset('images/paper.jpeg') }}" alt="surat" id="surat"
                                style="max-width: 100%; height: 30%;">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('additional-js')
    <script>
        // preview image
        var loadFile = function(event) {
            var output = document.getElementById('surat');
            output.src = URL.createObjectURL(event.target.files[0]);
            $('#textImage').text(event.target.files[0].name);
            output.onload = function() {
                URL.revokeObjectURL(output.src) // free memory
            }
        };

        var loadLampiran = function(event) {
            $('#textLampiran').text(event.target.files[0].name);
        };
    </script>
@endsection
