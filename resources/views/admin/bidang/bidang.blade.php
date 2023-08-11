@extends('admin.index')
@section('title', 'Bidang')
@section('content')
    <div class="right_col" role="main">
        <div class="x_panel">
            <div class="x_title">
                <h2><i class="fa fa-building"></i> Bidang<small></i></small></h2>
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
            <button style="float: right;" class="btn btn-secondary btn-sm" data-toggle="modal"
                data-target="#TambahBidang"><i class="fa fa-building"><sup style="font-size: 12px;"><i
                            class="fa fa-plus"></i></sup></i> Tambah
                Bidang</button>
            @include('Admin.bidang.addons._add')
            <div class="table-responsive">
                <table class="table table-striped table-bordered">
                    <thead>
                        <tr role="row">
                            <th>No</th>
                            <th>Nama Bidang</th>
                            <th>Jumlah Pegawai</th>
                            <th>Tools</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($bidangs as $bidang)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ strtoupper($bidang->nama_bidang) }}</td>
                                <td>
                                    {{ Helpers::PegawaiCount($bidang->id) }} Orang
                                </td>
                                <td>
                                    <button data-bs-tooltip="tooltip" data-bs-placement="top" title="Ubah Bidang"
                                        data-toggle="modal" data-target="#UbahBidang{{ $loop->iteration }}"
                                        class="btn btn-warning btn-sm">
                                        <i class="fa fa-building"><sup style="font-size: 12px;"><i
                                                    class="fa fa-edit"></i></sup></i>
                                    </button>
                                    @include('Admin.bidang.addons._ubah')
                                    <button class="btn btn-danger btn-sm" data-toggle="modal"
                                        data-target="#HapusBidang{{ $loop->iteration }}" data-bs-tooltip="tooltip" data-bs-placement="top" title="Hapus Bidang"><i class="fa fa-building"><sup
                                                style="font-size: 12px;"><i class="fa fa-times"></i></sup></i></button>
                                                @include('Admin.bidang.addons._delete')
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
