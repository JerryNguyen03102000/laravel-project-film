@extends('admin.layout.app')
@section('title', 'Dashboard')
@section('content')

        <div class="row">
            <div class="col-md-6 mb-4 stretch-card transparent">
                <div class="card card-tale">
                    <div class="card-body">
                        <p class="mb-4">Danh mục phim</p>
                        <p class="fs-30 mb-2">{{$countCate}}</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 mb-4 stretch-card transparent">
                <div class="card card-dark-blue">
                    <div class="card-body">
                        <p class="mb-4">Quốc gia</p>
                        <p class="fs-30 mb-2">{{$countCountry}}</p>

                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-4 mb-lg-0 stretch-card transparent">
                <div class="card card-light-blue">
                    <div class="card-body">
                        <p class="mb-4">Thể loại</p>
                        <p class="fs-30 mb-2">{{$countGenre}}</p>

                    </div>
                </div>
            </div>
            <div class="col-md-6 stretch-card transparent">
                <div class="card card-light-danger">
                    <div class="card-body">
                        <p class="mb-4">Số phim</p>
                        <p class="fs-30 mb-2">{{$countMovie}}</p>

                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
