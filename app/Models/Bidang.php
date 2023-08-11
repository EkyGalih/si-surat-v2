<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Webpatser\Uuid\Uuid;

class Bidang extends Model
{
    use HasFactory;
    protected $table = 'bidang';
    public $incrementing = false;
    protected $guarded = ['created_at', 'updated_at'];

    public static function boot()
    {
        parent::boot();

        static::creating(function ($model) {
            $model->id = (string)Uuid::generate(4);
        });
    }

    public function Pegawai()
    {
        return $this->hasOne(User::class);
    }
}
