<div class="modal fade" id="ModalSurat{{ $loop->iteration }}" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">

            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <img style="max-height: 80%; max-width: 100%;"
                    src="{{ asset($surat->FileSurat->path_file . $surat->FileSurat->file) }}">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary btn-md" data-dismiss="modal"><i class="fa fa-times"></i>
                    Close</button>
            </div>

        </div>
    </div>
</div>
