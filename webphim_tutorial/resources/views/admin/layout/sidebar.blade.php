<nav class="sidebar sidebar-offcanvas" id="sidebar">
    <ul class="nav">
        <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#category" aria-expanded="false"
               aria-controls="form-elements">
                <i class="fa-solid fa-bars menu-icon"></i>
                <span class="menu-title">Danh mục phim</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="category">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"><a class="nav-link" href="{{route('admin.category.index')}}">Danh sách danh mục </a>
                    <li class="nav-item"><a class="nav-link" href="{{route('admin.category.create')}}">Thêm danh mục </a>
                    </li>
                </ul>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#genre" aria-expanded="false" aria-controls="ui-basic">
                <i class="icon-columns menu-icon"></i>
                <span class="menu-title">Thể loại</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="genre">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"><a class="nav-link" href="{{route('admin.genre.index')}}">Danh sách thể loại</a></li>
                    <li class="nav-item"><a class="nav-link" href="{{route('admin.genre.create')}}">Thêm thể loại </a></li>

                </ul>
            </div>
        </li>

        <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#country" aria-expanded="false" aria-controls="charts">
                <i class="fa-solid fa-globe menu-icon"></i>
                <span class="menu-title">Quốc gia</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="country">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"><a class="nav-link" href="{{route('admin.country.index')}}">Danh sách quốc gia</a></li>
                    <li class="nav-item"><a class="nav-link" href="{{route('admin.country.create')}}">Thêm quốc gia</a></li>
                </ul>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#movie" aria-expanded="false" aria-controls="tables">
                <i class="fa-solid fa-computer  menu-icon"></i>
                <span class="menu-title">Phim</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="movie">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"><a class="nav-link" href="{{route('admin.movie.index')}}">Danh sách phim</a></li>
                    <li class="nav-item"><a class="nav-link" href="{{route('admin.movie.create')}}">Thêm phim</a></li>
                </ul>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#episode" aria-expanded="false" aria-controls="icons">
                <i class="fa-solid fa-film menu-icon"></i>
                <span class="menu-title">Tập phim</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="episode">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"><a class="nav-link" href="{{route('admin.episode.index')}}">Danh sách tập phim</a></li>
                    <li class="nav-item"><a class="nav-link" href="{{route('admin.episode.create')}}">Thêm tập phim</a></li>
                </ul>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="{{route('admin.logout')}}">
                <i class="fa-solid fa-right-from-bracket menu-icon"></i>
                <span class="menu-title">Đăng xuất</span>
            </a>
        </li>
    </ul>
</nav>
{{----}}
