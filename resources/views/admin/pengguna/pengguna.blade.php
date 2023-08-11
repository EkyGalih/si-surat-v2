@extends('admin.index')
@section('title', 'Pengguna')
@section('additional-css')
    <link rel="stylesheet" href="{{ asset('vendors/simple-datatables/style.css') }}">
@endsection
@section('content')
    <div class="right_col" role="main">
        <div class="x_panel">
            <div class="x_title">
                <h2><i class="fa fa-group"></i> Daftar Pengguna<small></i></small></h2>
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
            <a href="{{ route('admin-user.create') }}" class="btn btn-secondary btn-sm" style="float: right;"><i
                    class="fa fa-user-plus"></i> Tambah Pengguna</a>
            <div class="table-responsive">
                <table class="table table-striped table-bordered dataTable no-footer dtr-inline" id="table-pengguna"
                    role="grid" aria-describedby="datatable-buttons_info">
                    <thead>
                        <tr role="row">
                            <th class="bSorted" tabindex="0" aria-controls="datatable-responsive" aria-sort="ascending"
                                aria-label="Name: activate to sort column descending">No</th>
                            <th class="sorting" tabindex="0" aria-controls="datatable-responsive"
                                aria-label="Position: activate to sort column ascending">Nama Pengguna</th>
                            <th class="sorting" tabindex="0" aria-controls="datatable-responsive"
                                aria-label="Position: activate to sort column ascending">Username</th>
                            <th class="sorting" tabindex="0" aria-controls="datatable-responsive"
                                aria-label="Office: activate to sort column ascending">Bidang</th>
                            <th class="sorting" tabindex="0" aria-controls="datatable-responsive"
                                aria-label="Start date: activate to sort column ascending">Jenis User</th>
                            <th class="sorting" tabindex="0" aria-controls="datatable-responsive"
                                aria-label="Age: activate to sort column ascending">Bergabung pada</th>
                            <th class="sorting" tabindex="0" aria-controls="datatable-responsive"
                                aria-label="Start date: activate to sort column ascending">Tools</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($users as $user)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $user->Pegawai->name ?? '-' }}</td>
                                <td>{{ $user->username }}</td>
                                <td>{{ $user->Pegawai->Bidang->nama_bidang }}</td>
                                <td>{{ $user->level }}</td>
                                <td>{{ Helpers::getDate($user->created_at) . ' ' . Helpers::getTime($user->created_at) }}
                                </td>
                                <td style="text-align: center;">
                                    <a href="{{ route('admin-user.edit', $user->id) }}" class="btn btn-warning btn-sm"
                                        data-bs-tooltip="tooltip" data-placement="top" title="Ubah data user">
                                        <i class="fa fa-edit"></i>
                                    </a>
                                    <a href="{{ url('reset_pass/' . $user->id) }}" class="btn btn-info btn-sm"
                                        data-bs-tooltip="tooltip" data-placement="top" title="Reset password">
                                        <i class="fa fa-lock fa-fw"></i>
                                    </a>
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn btn-danger btn-sm" data-toggle="modal"
                                        data-target="#HapusUser{{ $loop->iteration }}">
                                        <i class="fa fa-user"><sup style="font-size: 12px"><i class="fa fa-times"></i></sup></i>
                                    </button>

                                    <!-- Modal -->
                                    @include('Admin.pengguna.addons._delete')
                                </td>
                            </tr>
                            <div class="modal fade" id="KonfHapus{{ $loop->iteration }}" role="dialog"
                                style="display: none;">
                                <div class="modal-dialog" style="margin-top: 260.5px;">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4 align="center">
                                                <font color="D43F3A"><label class="fa fa-trash"></label></font> Anda
                                                Yakin?
                                            </h4>
                                        </div>
                                        <div class="modal-body">
                                            <center>
                                                <form action="{{ url('user/' . $user->id) }}" method="post">
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
@section('additional-js')
    <script src="{{ asset('vendors/simple-datatables/simple-datatables.js') }}"></script>
    <script>
        $(document).ready(function() {
            $('#table-pengguna').DataTable();
        });
    </script>
@endsection
