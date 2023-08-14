<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\RouteServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Route;

class RouteServiceProvider extends ServiceProvider
{
    /**
     * The path to your application's "home" route.
     *
     * Typically, users are redirected here after authentication.
     *
     * @var string
     */
    public const HOME = '/home';
    protected $namespace = 'App\Http\Controllers';

    /**
     * Define your route model bindings, pattern filters, and other route configuration.
     */
    public function boot()
    {
        parent::boot();
    }

    public function map()
    {
        $this->mapApiRoutes();
        $this->mapWebRoutes();

        // routes admin
        $this->AdminUser();
        $this->AdminBidang();

        // routes user
        $this->UserSurat();
        $this->UserDistribusi();

        // route agendaris
        $this->AgendarisSuratMasuk();
    }

    // admin map
    public function AdminUser()
    {
        Route::middleware('web')
            ->namespace($this->namespace)
            ->group(base_path('routes/admin/pengguna.php'));
    }

    public function AdminBidang()
    {
        Route::middleware('web')
            ->namespace($this->namespace)
            ->group(base_path('routes/admin/bidang.php'));
    }

    // user map
    public function UserSurat()
    {
        Route::middleware('web')
            ->namespace($this->namespace)
            ->group(base_path('routes/user/surat.php'));
    }

    public function UserDistribusi()
    {
        Route::middleware('web')
            ->namespace($this->namespace)
            ->group(base_path('routes/user/distribusi.php'));
    }

    // agendaris map
    public function AgendarisSuratMasuk()
    {
        Route::middleware('web')
            ->namespace($this->namespace)
            ->group(base_path('routes/agendaris/surat.php'));
    }


    public function mapWebRoutes()
    {
        Route::middleware('web')
            ->namespace($this->namespace)
            ->group(base_path('routes/web.php'));
    }

    public function mapApiRoutes()
    {
        Route::middleware('api')
            ->middleware('api')
            // ->namespace($this->namespace)
            ->group(base_path('routes/api.php'));
    }
}
