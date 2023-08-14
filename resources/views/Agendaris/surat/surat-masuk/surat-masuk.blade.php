@extends('Agendaris.index')
@section('title', 'Surat Masuk')
@section('content')
<div class="right_col" role="main">
    <div class="x_panel">
        <div class="x_title">
            <h2><i class="fa fa-envelope"><sup style="font-size: 12px;"><i class="fa fa-sign-in"></i></sup> Daftar Surat Masuk</i></h2>
            <ul class="nav navbar-right panel_toolbox">
                <li><a href="#"><i class="fa fa-chevron-up"></i></a>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
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
            <div class="table-responsive">
                <table class="table table-hover table-bordered table-striped">
                    <thead>
                        <tr>
                            <td>#</td>
                            <td>No Surat</td>
                            <td>Tanggal Terima</td>
                            <td>Asal Surat</td>
                            <td>Perihal</td>
                            <td>Diteruskan</td>
                            <td>Tgl Disposisi</td>
                            <td>Disposisi</td>
                            <td>Status Disposisi</td>
                            <td>Surat</td>
                            <td>Tools</td>
                        </tr>
                    </thead>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection
