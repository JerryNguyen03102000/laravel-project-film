@extends('admin.layout.app')

@section('content')
    <div class="row">
        <div class="col-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Thêm phim</h4>
                    <form class="forms-sample" method="POST" action="{{route('admin.movie.store')}}"
                          enctype="multipart/form-data">
                        @include('alert.alert')
                        @csrf
                        <div class="form-group">
                            <label for="title">Tên phim</label>
                            <input onkeyup="ChangeToSlug()" type="text" value="{{old('title')}}" id="slug"
                                   class="form-control @error('title') is-invalid @enderror" name="title"
                                   placeholder="Nhập vào dữ liệu ...">
                            @error('title') <span class="text-danger">{{$message}}</span>@enderror
                        </div>
                        <div class="form-group">
                            <label for="title">Tên tiếng anh</label>
                            <input type="text" value="{{old('name_eng')}}"
                                   class="form-control" name="name_eng"
                                   placeholder="Nhập vào dữ liệu ...">
                        </div>
                        <div class="form-group">
                            <label for="title">Số tập</label>
                            <input type="number" min="1" value="{{old('sotap')??1}}"
                                   class="form-control" name="sotap">
                        </div>
                        <div class="form-group">
                            <label for="title">Thời lượng</label>
                            <input type="text" value="{{old('thoiluong')}}"
                                   class="form-control" name="thoiluong"
                                   placeholder="Nhập vào dữ liệu ...">

                        </div>

                        <div class="form-group">
                            <label for="Trailer">Trailer</label>
                            <input type="text" value="{{old('trailer')}}"
                                   class="form-control" name="trailer"
                                   placeholder="Nhập vào dữ liệu ...">
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
                            <label for="image">Hình ảnh</label>
                            <input type="file" name="image"
                                   class="form-control-file @error('image') is-invalid @enderror">

                            @error('image') <span class="text-danger">{{$message}}</span>@enderror
                        </div>
                        <div class="form-group">
                            <label for="status">Trạng thái</label>
                            <select class="form-select" name="status" id="status">
                                <option value="1">Hiển thị</option>
                                <option value="0">Không hiển thị</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="thuocphim">Thuộc thể loại phim </label>
                            <select class="form-select" name="thuocphim" id="thuocphim">
                                <option value="phimle">Phim lẻ</option>
                                <option value="phimbo">Phim bộ</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="status">Phim hot</label>
                            <select class="form-select" name="phim_hot" id="phim_hot">
                                <option value="1">Có</option>
                                <option value="0">Không</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="resolution">Định dạng</label>
                            <select class="form-select" name="resolution" id="resolution">
                                <option value="0">HD</option>
                                <option value="1">SD</option>
                                <option value="2">HDcam</option>
                                <option value="3">Cam</option>
                                <option value="4">FullHD</option>
                                <option value="5">Trailer</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="subtitle">Phụ đề</label>
                            <select class="form-select" name="subtitle" id="subtitle">
                                <option value="0">Vietsub</option>
                                <option value="1">Thuyết minh</option>

                            </select>
                        </div>
                        <div class="form-group">
                            <label for="category_id">Danh mục</label>
                            <select class="form-select" name="category_id" id="category_id">
                                @foreach($category as $value)
                                    <option value="{{$value->id}}">{{$value->title}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="genre_id">Thể loại</label><br>
                            @foreach($genre as $value)
                                <input
                                    @if(old('genre_id'))
                                        @foreach(old('genre_id') as $old)
                                            @if($old == $value->id)
                                                checked
                                    @endif
                                    @endforeach
                                    @endif type="checkbox" name="genre_id[]" value="{{$value->id}}">
                                <label>  {{$value->title}}</label>
                            @endforeach


                        </div>
                        <div class="form-group">
                            <label for="country_id">Quốc gia</label>
                            <select class="form-select" name="country_id" id="country_id">
                                @foreach($country as $value)
                                    <option value="{{$value->id}}">{{$value->title}}</option>
                                @endforeach
                            </select>
                        </div>

                        <button type="submit" class="btn btn-success mr-2">Thêm phim</button>

                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection


