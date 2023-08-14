@extends('User.index')
@section('title', 'Distribusi Surat')
@section('content')
<div class="x_panel">
    <div class="x_title">
        <h2><i class="fa fa-envelope"><sup style="font-size: 12px"><i class="fa fa-share-alt"></i></sup> Distribusi Surat</i></h2>
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
            <table class="table table-striped table-hover table-bordered">
                <thead>
                    <tr>
                        <td>#</td>
                        <td>Tujuan</td>
                        <td>Asal Surat</td>
                        <td>Perihal</td>
                        <td>Status</td>
                        <td>Tools</td>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($distribusi as $dis)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection
