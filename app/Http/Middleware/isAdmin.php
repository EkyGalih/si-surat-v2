<?php

namespace App\Http\Middleware;

use App\Helpers\Helpers;
use Closure;
use Illuminate\Support\Facades\Auth;

class isAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle($request, Closure $next)
    {
        if (Auth::check())
        {
            if (Helpers::getLevel() == 'admin') {
                return $next($request);
            }
        }
        return redirect()->route('404');
    }
}
