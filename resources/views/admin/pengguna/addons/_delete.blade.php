<div class="modal fade" id="HapusUser{{ $loop->iteration }}" tabindex="-1" aria-labelledby="HapusUserLabel"
    aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="HapusUserLabel"><i class="fa fa-user"><sup style="font-size: 12px"><i class="fa fa-times"></i></sup></i> Hapus Pengguna</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>Apakah anda yakin ingin menghapus pengguna <strong>{{ $user->Pegawai->name }}</strong> dari bidang
                    <strong>{{ $user->Pegawai->Bidang->nama_bidang }}</strong>?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal"><i class="fa fa-times"></i> Tidak</button>
                <a href="{{ route('admin-user.destroy', $user->id) }}" class="btn btn-warning btn-sm"><i class="fa fa-check"></i> Ya</a>
            </div>
        </div>
    </div>
</div>
