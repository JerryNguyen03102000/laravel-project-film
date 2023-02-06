@extends('admin.layout.app')

@section('content')
    <div class="row">
        <div class="col-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Thêm thể loại phim</h4>
                    <form class="forms-sample" method="POST" action="{{route('admin.genre.store')}}">
                        @include('alert.alert')
                        @csrf
                        <div class="form-group">
                            <label for="title">Tên thể loại phim</label>
                            <input onkeyup="ChangeToSlug()" type="text" value="{{old('title')}}" id="slug"
                                   class="form-control @error('title') is-invalid @enderror" name="title"
                                   placeholder="Nhập vào dữ liệu ...">
                            @error('title') <span class="text-danger">{{$message}}</span>@enderror
                        </div>
                        <div class="form-group">
                            <label for="slug">Slug</label>
                            <input type="text" value="{{old('slug')}}" id="convert_slug"
                                   class="form-control @error('slug') is-invalid @enderror" name="slug"
                                   placeholder="Nhập vào dữ liệu">
                            @error('slug') <span class="text-danger">{{$message}}</span>@enderror
                        </div>
                        <div class="form-group">
                            <label for="description">Mô tả</label>
                            <textarea name="description" placeholder="Nhập vào dữ liệu ..."
                                      class="form-control @error('description') is-invalid @enderror"
                                      style="resize: none" id="description" rows="4">{{old('description')}}</textarea>
                            @error('description') <span class="text-danger">{{$message}}</span>@enderror
                        </div>
                        <div class="form-group">
                            <label for="status">Trạng thái</label>
                            <select class="form-select" name="status" id="status">
                                <option value="1">Hiển thị</option>
                                <option value="0">Không hiển thị</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-success mr-2">Thêm thể loại</button>

                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
{{--@push('scripts-custom')--}}


{{--@endpush--}}

