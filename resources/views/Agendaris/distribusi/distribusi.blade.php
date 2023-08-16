@extends('Agendaris.index')
@section('title', 'Distribusi Surat')
@section('content')
    <div class="right_col" role="main">
        <div class="x_panel">
            <div class="x_title">
                <h2>
                    <i class="fa fa-envelope">
                        <sup style="font-size: 12px;"><i class="fa fa-share-alt-square"></i></sup>
                    </i> Distribusi Surat
                </h2>
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
                    <a href="{{ route('agendaris-distribusi.create') }}" class="btn btn-secondary btn-sm"
                        style="float: right;">
                        <i class="fa fa-share-alt-square"></i> Distribusi Surat
                    </a>
                    <table class="table table-hover table-boredered table-striped">
                        <thead>
                            <tr>
                                <td>#</td>
                                <td>Asal Surat</td>
                                <td>Perihal</td>
                                <td>Tools</td>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($distribusi as $dist)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $dist->Surat->asal_surat }}</td>
                                    <td>{{ $dist->Surat->perihal }}</td>
                                    <td>
                                        <a href="{{ route('agendaris-distribusi.edit', $dist->surat_id) }}"
                                            class="btn btn-warning btn-sm" data-bs-tooltip="tooltip" data-placement="top"
                                            title="Ubah Distribusi Surat">
                                            <i class="fa fa-edit"></i>
                                        </a>
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
