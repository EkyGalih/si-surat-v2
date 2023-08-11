<div class="modal fade" id="TambahBidang" tabindex="-1" aria-labelledby="TambahBidangLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="TambahBidangLabel"><i class="fa fa-building"><sup style="font-size: 12px"><i
                                class="fa fa-plus"></i></sup></i> Tambah Bidang</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="{{ route('admin-bidang.store') }}" method="POST">
                    @csrf
                    <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nama_bidang">Nama Bidang<span
                                class="required">*</span>
                        </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="text" id="nama_bidang" name="nama_bidang" required="required"
                                class="form-control" autofocus>
                        </div>
                    </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal"><i class="fa fa-times"></i>
                    Batal</button>
                <button type="submit" class="btn btn-success btn-sm"><i class="fa fa-save"></i> Simpan</button>
                </form>
            </div>
        </div>
    </div>
</div>
