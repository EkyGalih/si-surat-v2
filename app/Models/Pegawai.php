<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pegawai extends Model
{
    use HasFactory;

    public $incrementing = false;
    protected $table = 'pegawai';
    protected $guarded = ['created_at', 'updated_at'];

    public function Pangkat()
    {
        return $this->belongsTo(Pangkat::class);
    }

    public function Golongan()
    {
        return $this->belongsTo(Golongan::class);
    }
}
