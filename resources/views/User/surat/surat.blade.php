@extends('User.index')
@section('title', 'Surat')
@section('content')
    <div class="x_panel">
        <div class="x_title">
            <h2><i class="fa fa-envelope"><sup style="font-size: 12px"><i class="fa fa-list"></i></sup></i> Daftar
                Surat<small>{{ Auth::user()->Pegawai->Bidang->nama_bidang }}</small></h2>
            <ul class="nav navbar-right panel_toolbox">
                <li><a href="#"><i class="fa fa-chevron-up"></i></a>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i
                            class="fa fa-wrench"></i></a>
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
                        <th>Lampiran</th>
                        <th>Tools</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($surats as $surat)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $surat->asal_surat }}</td>
                            <td>{{ Helpers::getDate($surat->created_at) . ' ' . Helpers::getTime($surat->created_at) }}</td>
                            <td>{{ $surat->perihal }}</td>
                            <td>{{ $surat->no_surat ?? 'Belum diberikan' }}</td>
                            <td>
                                @if ($surat->no_surat == null)
                                    <a class="badge badge-light" data-bs-tooltip="tooltip" data-placement="top"
                                        title="Dikirim Ke Agendaris">
                                        <i class="fa fa-send"></i> Dikirim ke agendaris
                                    </a>
                                @else
                                    @if ($surat->status_surat == 'proggress')
                                        <a class="badge badge-warning" data-bs-tooltip="tooltip" data-placement="top"
                                            title="sedang dalam proses pemberian no surat">
                                            <i class="fa fa-clock-o"></i> diproses agendaris
                                        </a>
                                    @elseif ($surat->status_surat == 'unread')
                                        <a class="badge badge-secondary" data-bs-tooltip="tooltip" data-placement="top"
                                            title="Dikirim ke pimpinan untuk peninjauan" style="color: #d6cfcf;">
                                            <i class="fa fa-send"></i> Dikirim ke pimpinan
                                        </a>
                                    @elseif ($surat->status_surat == 'read')
                                        <a class="badge badge-info" data-bs-tooltip="tooltip" data-placement="top"
                                            title="dibaca oleh pimpinan" style="color: #dbd6d6;">
                                            <i class="fa fa-eye"></i> Dibaca Pimpinan
                                        </a>
                                    @elseif ($surat->status_surat == 'done')
                                        <a class="badge badge-success" data-bs-tooltip="tooltip" data-placement="top"
                                            title="selesai" style="color: #dbd6d6;">
                                            <i class="fa fa-check"></i> Selesai
                                        </a>
                                    @endif
                                @endif
                            </td>
                            <td>
                                <button type="button" class="btn btn-info btn-sm" data-toggle="modal"
                                    data-target="#ModalSurat{{ $loop->iteration }}" title="Lihat Surat">
                                    <i class="fa fa-eye"></i> Lihat
                                </button>
                                @include('User.surat.addons.view_surat')
                            </td>
                            <td>
                                <button type="button" class="btn btn-info btn-sm" data-toggle="modal"
                                    data-target="#ModalLampiran{{ $loop->iteration }}" title="Lihat Surat"
                                    {{ $surat->FileSurat->lampiran == null ? 'disabled' : '' }}>
                                    <i class="fa fa-{{ $surat->FileSurat->lampiran == null ? 'eye-slash' : 'eye' }}"></i>
                                    Lihat
                                </button>
                                @if ($surat->FileSurat->lampiran != null)
                                    @include('User.surat.addons.view_lampiran')
                                @endif
                            </td>
                            <td>
                                @if ($surat->status_surat == 'done')
                                    <a href="{{ route('user-surat.edit', $surat->id) }}" type="button"
                                        class="btn btn-warning btn-sm" data-bs-tooltip="tooltip" data-placement="top"
                                        title="Ubah data surat">
                                        <i class="fa fa-envelope"><sup style="font-size: 12px;"><i
                                                    class="fa fa-edit"></i></sup></i>
                                    </a>
                                @endif
                                <button onclick="deleteData('{{ route('user-surat.destroy', $surat->id) }}')"
                                    type="button" class="btn btn-danger btn-sm" data-bs-tooltip="tooltip"
                                    data-placement="top" title="Hapus surat">
                                    <i class="fa fa-envelope"><sup style="font-size: 12px;"><i
                                                class="fa fa-times"></i></sup></i>
                                </button>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
@endsection
