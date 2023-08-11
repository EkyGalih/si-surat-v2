<div class="modal fade" id="HapusBidang{{ $loop->iteration }}" tabindex="-1" aria-labelledby="HapusBidangLabel"
    aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="HapusBidangLabel"><i class="fa fa-building"><sup style="font-size: 12px"><i
                                class="fa fa-times"></i></sup></i> Hapus Bidang</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>Apakah anda yakin ingin menghapus bidang <strong>{{ $bidang->nama_bidang }}</strong>?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal"><i class="fa fa-times"></i>
                    Tidak</button>
                <a href="{{ route('admin-bidang.destroy', $bidang->id) }}" class="btn btn-success btn-sm"><i class="fa fa-check"></i> Ya</a>
            </div>
        </div>
    </div>
</div>
