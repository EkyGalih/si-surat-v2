<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
    <div class="menu_section @yield('beranda')">
      <h3>General</h3>
      <ul class="nav side-menu">
        <li>
            <a href="{{ route('admin-beranda') }}">
                <i class="fa fa-home"></i> Beranda
            </a>
        </li>
        <li>
            <a href="{{ route('admin-user.index') }}">
                <i class="fa fa-users"></i> Pengguna
            </a>
        </li>
        <li>
            <a href="{{ route('admin-bidang.index') }}">
                <i class="fa fa-building"></i> Bidang
            </a>
        </li>
        <li>
            <a href="#">
                <i class="fa fa-whatsapp"></i> Whatsapp
            </a>
        </li>
      </ul>
    </div>
    <div class="menu_section">
      <h3>Extra Menu</h3>
      <ul class="nav side-menu">
        <li>
            <a>
                <i class="fa fa-wrench"></i> Fitur <span class="fa fa-chevron-down"></span>
            </a>
          <ul class="nav child_menu">
            <li>
                <a href="#">Bantuan</a>
            </li>
          </ul>
        </li>
      </ul>
    </div>

  </div>
