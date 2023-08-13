@extends('User.index')
@section('title', 'Surat')
@section('content')
    <div class="right_col" role="main">
        <div class="x_panel">
            <div class="x_title">
                <h2><i class="fa fa-envelope"></i> Daftar
                    Surat<small>{{ Auth::user()->Pegawai->Bidang->nama_bidang }}</small></h2>
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
            <div class="table-responsive">
                <a style="float: right" href="{{ route('user-surat.create') }}" class="btn btn-secondary btn-sm submit"><i
                        class="fa fa-envelope"><sup style="font-size: 12px;"><i class="fa fa-plus"></i></sup></i> Buat Surat</a>
                <table class="table table-hover table-bordered ">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Pemohon</th>
                            <th>Tanggal Pengajuan</th>
                            <th>Perihal</th>
                            <th>No Surat</th>
                            <th>Status Permohonan</th>
                            <th>File Surat</th>
                            <th class="sorting" tabindex="0" aria-controls="datatable-responsive"
                                aria-label="Start date: activate to sort column ascending">#Ubah</th>
                            <th class="sorting" tabindex="0" aria-controls="datatable-responsive"
                                aria-label="Start date: activate to sort column ascending">#Hapus</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($surats as $surat)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $surat->staff_bagian }}</td>
                                <td>{{ $surat->created_at }}</td>
                                <td>{{ $surat->perihal }}</td>
                                @if (Auth::user()->divisi != 'Agendaris' && $surat->status == 'unread')
                                    <td>
                                        <a target="_blank" href="{{ $surat->file }}" type="button"
                                            class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="left"
                                            title="Download No.Surat">
                                            <i class="fa fa-download"></i>
                                        </a>
                                    </td>
                                @elseif(Auth::user()->divisi != 'Agendaris' && $surat->status == 'read')
                                    <td>
                                        <a target="_blank" href="{{ $surat->file }}" type="button"
                                            class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="left"
                                            title="Download No.Surat">
                                            <i class="fa fa-download"></i>
                                        </a>
                                    </td>
                                @elseif(Auth::user()->divisi != 'Agendaris' && $surat->status == 'proggress')
                                    <td>
                                        <a type="button" class="btn btn-default btn-sm" data-toggle="tooltip"
                                            data-placement="left" title="Download No.Surat" disabled>
                                            <i class="fa fa-download"></i>
                                        </a>
                                    </td>
                                @endif
                                <td>
                                    @if ($surat->status == 'proggress' && Auth::user()->divisi != 'Agendaris')
                                        <a class="label label-warning" data-toggle="tooltip" data-placement="left"
                                            title="sedang dalam proses">
                                            <i class="fa fa-clock-o"></i> Processing
                                        </a>
                                    @elseif($surat->status == 'read' && Auth::user()->divisi != 'Agendaris')
                                        <a class="label label-success" data-toggle="tooltip" data-placement="left"
                                            title="Done">
                                            <i class="fa fa-check"></i> Done
                                        </a>
                                    @endif
                                    @if ($surat->status == 'unread' && Auth::user()->divisi != 'Agendaris')
                                        <a href="{{ url('switch_filesk/' . $surat->id) }}" data-toggle="tooltip"
                                            data-placement="left" title="Proses" type="button"
                                            class="btn btn-default btn-xs">
                                            <i class="fa fa-eye"></i> Read
                                        </a>
                                    @elseif($surat->status == 'proggress' && Auth::user()->divisi == 'Agendaris')
                                        <a class="label label-warning" data-toggle="tooltip" data-placement="left"
                                            title="proses">
                                            <i class="fa fa-clock-o"></i> Proses
                                        </a>
                                    @elseif($surat->status == 'unread' && Auth::user()->divisi == 'Agendaris')
                                        <a class="label label-default" data-toggle="tooltip" data-placement="left"
                                            title="Terkirim ke {{ $surat->staff_bagian }}">
                                            <i class="fa fa-send"></i> Delivered
                                        </a>
                                    @elseif($surat->status == 'read' && Auth::user()->divisi == 'Agendaris')
                                        <a class="label label-success" data-toggle="tooltip" data-placement="left"
                                            title="Done">
                                            <i class="fa fa-check"></i> Done
                                        </a>
                                    @endif
                                </td>
                                @if (Auth::user()->divisi == 'Agendaris' && $surat->status == 'proggress')
                                    <td>
                                        <a href="#" type="button" class="btn btn-default btn-sm" data-toggle="modal"
                                            data-target="#ModalSurat{{ $no }}" title="Lihat Surat">
                                            <i class="fa fa-eye"></i>
                                        </a>
                                    </td>
                                @elseif(Auth::user()->divisi == 'Agendaris' && $surat->status == 'unread')
                                    <td>
                                        <a href="#" type="button" class="btn btn-default btn-sm" data-toggle="modal"
                                            data-target="#ModalProg{{ $no }}" title="Download File Surat">
                                            <i class="fa fa-download"></i>
                                        </a>
                                    </td>
                                @elseif(Auth::user()->divisi == 'Agendaris' && $surat->status == 'read')
                                    <td>
                                        <button type="button" class="btn btn-default btn-sm" data-toggle="modal"
                                            data-target="#ModalSurat{{ $no }}" title="Lihat Surat" disabled>
                                            <i class="fa fa-eye"></i>
                                        </button>
                                    </td>
                                @endif
                                @if (Auth::user()->divisi != 'Agendaris' && $surat->status == 'proggress')
                                    <td>
                                        <a href="{{ url('filesk/' . $surat->id . '/edit') }}" type="button"
                                            class="btn btn-warning btn-sm" data-toggle="tooltip" data-placement="left"
                                            title="Ubah data surat">
                                            <i class="fa fa-edit"></i>
                                        </a>
                                    </td>
                                @elseif(Auth::user()->divisi != 'Agendaris' && $surat->status == 'unread')
                                    <td>
                                        <a href="{{ url('filesk/' . $surat->id . '/edit') }}" type="button"
                                            class="btn btn-warning btn-sm" data-toggle="tooltip" data-placement="left"
                                            title="Ubah data surat">
                                            <i class="fa fa-edit"></i>
                                        </a>
                                    </td>
                                @elseif(Auth::user()->divisi != 'Agendaris' && $surat->status == 'read')
                                    <td>
                                        <a class="btn btn-warning btn-sm" data-toggle="tooltip" data-placement="left"
                                            title="Data sudah tidak bisa diubah" disabled>
                                            <i class="fa fa-edit"></i>
                                        </a>
                                    </td>
                                @endif
                                @if (Auth::user()->divisi != 'Agendaris')
                                    <td>
                                        <button type="button" class="btn btn-danger btn-sm" data-toggle="modal"
                                            data-target="#KonfHapus">
                                            <i class="fa fa-trash-o"></i>
                                        </button>
                                    </td>
                                @endif
                            </tr>
                            <div class="modal fade" id="ModalSurat{{ $no }}" tabindex="-1" role="dialog"
                                aria-hidden="true">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">

                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal"><span
                                                    aria-hidden="true">×</span>
                                            </button>
                                            <h4 class="modal-title" id="myModalLabel">From : {{ $surat->staff_bagian }}
                                            </h4>
                                        </div>
                                        <div class="modal-body">
                                            <img height="100%" width="100%" src="{{ $surat->file }}">
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default"
                                                data-dismiss="modal">Close</button>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="modal fade" id="KonfHapus" role="dialog" style="display: none;">
                                <div class="modal-dialog" style="margin-top: 260.5px;">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4>
                                                <font color="D43F3A"><label class="fa fa-trash"></label></font> Anda
                                                Yakin?
                                            </h4>
                                        </div>
                                        <div class="modal-body">
                                            <center>
                                                <form action="{{ url('filesk/' . $surat->id) }}" method="post">
                                                    {{ csrf_field() }}
                                                    <input type="hidden" name="_method" value="DELETE">
                                                    <button type="submit" class="btn btn-success">
                                                        Ya
                                                    </button>
                                                    <button type="button" class="btn btn-danger" data-dismiss="modal">
                                                        Tidak
                                                    </button>
                                                </form>
                                            </center>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
