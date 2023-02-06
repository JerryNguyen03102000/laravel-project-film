@extends('admin.layout.app')

@section('content')
    <div class="row">
        <div class="col-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Sửa quốc gia</h4>
                    <form class="forms-sample" method="POST" action="{{route('admin.country.update',$country->id)}}">
                        @method('PUT')
                        @include('alert.alert')
                        @csrf
                        <div class="form-group">
                            <label for="title">Tên quốc gia</label>
                            <input type="text"  id="slug"
                                   class="form-control @error('title') is-invalid @enderror" name="title"
                                   onkeyup="ChangeToSlug()" placeholder="Nhập vào dữ liệu ..." value="{{old('title')??$country->title}}">
                            @error('title') <span class="text-danger">{{$message}}</span>@enderror
                        </div>
                        <div class="form-group">
                            <label for="slug">Slug</label>
                            <input type="text"  id="convert_slug"
                                   class="form-control @error('slug') is-invalid @enderror" name="slug"
                                   placeholder="Nhập vào dữ liệu ..." value="{{old('slug')??$country->slug}}">
                            @error('slug') <span class="text-danger">{{$message}}</span>@enderror
                        </div>

                        <div class="form-group">
                            <label for="description">Mô tả</label>
                            <textarea name="description" placeholder="Nhập vào dữ liệu ..."
                                      class="form-control @error('description') is-invalid @enderror"
                                      style="resize: none" id="description" rows="4">{{old('description')??$country->description}}</textarea>
                            @error('description') <span class="text-danger">{{$message}}</span>@enderror
                        </div>

                        <div class="form-group">
                            <label for="status">Trạng thái</label>
                            <select class="form-select" name="status" id="status">
                                <option {{$country->status == 1?'selected':''}} value="1">Hiển thị</option>
                                <option {{$country->status == 0?'selected':''}} value="0">Không hiển thị</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-success mr-2">Sửa quốc gia</button>

                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection

