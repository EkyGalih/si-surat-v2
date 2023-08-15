<div class="modal fade" id="NoSurat{{ $loop->iteration }}" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title"><i class="fa fa-qrcode"></i> Penomoran Surat</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="{{ route('agendaris-surat-keluar.nosurat', $surat->id) }}" method="post">
                    @csrf
                    @method('PUT')
                    <div class="item form-group">
                        <label for="no_surat" class="control-label col-lg-3 col-md-3 col-xs-12">No Surat</label>
                        <div class="col-md-9 col-lg-9">
                            <input type="text" name="no_surat" class="form-control" value="900/___/{{ Helpers::NameMonth(date('m')) }}/BPKAD/2023">
                        </div>
                    </div>
                    <p>Nomor Surat Terakhir : {{ $last_number->no_surat ?? '-' }}</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger btn-md" data-dismiss="modal"><i class="fa fa-times"></i>
                    batal</button>
                    <button type="submit" class="btn btn-success btn-md">
                        <i class="fa fa-save"></i> Simpan
                    </button>
            </div>

        </div>
    </div>
</div>
