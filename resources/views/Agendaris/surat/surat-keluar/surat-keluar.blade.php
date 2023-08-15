@extends('Agendaris.index')
@section('title', 'Surat Keluar')
@section('content')
    <div class="right_col" role="main">
        <div class="x_panel">
            <div class="x_title">
                <h2><i class="fa fa-envelope"><sup style="font-size: 12px;"><i class="fa fa-sign-out"></i></sup> Daftar Surat
                        Keluar</i></h2>
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
                <div class="table-responsive">
                    <table class="table table-hover table-bordered table-striped">
                        <thead>
                            <tr>
                                <td>#</td>
                                <td>No Surat</td>
                                <td>Pemohon</td>
                                <td>Tanggal Surat</td>
                                <td>Perihal</td>
                                <td>File Surat</td>
                                <td>Lampiran</td>
                                <td>Tools</td>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($surat as $surat)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>
                                        @if ($surat->no_surat == null)
                                            <button type="button" class="btn btn-secondary btn-sm"
                                                data-bs-tooltip="tooltip" data-placement="top" title="Berikan Nomor Surat"
                                                data-toggle="modal" data-target="#NoSurat{{ $loop->iteration }}">
                                                <i class="fa fa-pencil"></i> No Surat
                                            </button>
                                            @include('Agendaris.surat.surat-keluar.addons.no_surat')
                                        @else
                                            {{ $surat->no_surat }}
                                        @endif
                                    </td>
                                    <td>{{ $surat->asal_surat }}</td>
                                    <td>{{ Helpers::CustomDate($surat->tgl_surat) }}</td>
                                    <td>{{ $surat->perihal }}</td>
                                    <td>
                                        <button type="button" class="btn btn-info btn-sm" data-bs-tooltip="tooltip"
                                            data-placement="top" data-toggle="modal"
                                            data-target="#ModalSurat{{ $loop->iteration }}" title="File Surat">
                                            <i class="fa fa-eye"></i> Lihat
                                        </button>
                                        @include('Agendaris.surat.surat-keluar.addons.view_surat')
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-info btn-sm" data-bs-tooltip="tooltip"
                                            data-placement="top" data-toggle="modal"
                                            data-target="#ModalLampiran{{ $loop->iteration }}" title="Lampiran Surat">
                                            <i class="fa fa-eye"></i> Lihat
                                        </button>
                                        @include('Agendaris.surat.surat-keluar.addons.view_lampiran')
                                    </td>
                                    <td>
                                        {{-- <a href="{{ route('agendaris-surat-keluar.edit', $surat->id) }}" class="btn btn-warning btn-sm" data-bs-tooltip="tooltip"
                                            data-placement="top" title="Ubah Surat Keluar">
                                            <i class="fa fa-envelope"><sup style="font-size: 12px"><i
                                                        class="fa fa-edit"></i></sup></i></a> --}}
                                        <button type="button" class="btn btn-danger btn-sm" data-bs-tooltip="tooltip"
                                            data-placement="top" title="Hapus Surat Keluar" onclick="deleteData('{{ route('agendaris-surat-keluar.destroy', $surat->id) }}')">
                                            <i class="fa fa-envelope"><sup style="font-size: 12px;"><i class="fa fa-times"></i></sup></i>
                                        </button>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
