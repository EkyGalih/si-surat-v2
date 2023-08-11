<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Bidang extends Model
{
    use HasFactory;
    protected $table = 'bidang';
    public $incrementing = false;
    protected $guarded = ['created_at', 'updated_at'];

    public function Pegawai()
    {
        return $this->hasOne(User::class);
    }
}
