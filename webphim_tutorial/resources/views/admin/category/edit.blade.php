@extends('admin.layout.app')

@section('content')
    <div class="row">
        <div class="col-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Sửa danh mục phim</h4>
                    <form class="forms-sample" method="POST" action="{{route('admin.category.update',$category->id)}}">
                        @method('PUT')
                        @include('alert.alert')
                        @csrf
                        <div class="form-group">
                            <label for="title">Tên danh mục phim</label>
                            <input type="text"  id="slug"
                                   class="form-control @error('title') is-invalid @enderror" name="title"
                                onkeyup="ChangeToSlug()" placeholder="Nhập vào dữ liệu ..." value="{{old('title')??$category->title}}">
                            @error('title') <span class="text-danger">{{$message}}</span>@enderror
                        </div>
                        <div class="form-group">
                            <label for="slug">Slug</label>
                            <input type="text"  id="convert_slug"
                                   class="form-control @error('slug') is-invalid @enderror" name="slug"
                                   placeholder="Nhập vào dữ liệu ..." value="{{old('slug')??$category->slug}}">
                            @error('slug') <span class="text-danger">{{$message}}</span>@enderror
                        </div>

                        <div class="form-group">
                            <label for="description">Mô tả</label>
                            <textarea name="description" placeholder="Nhập vào dữ liệu ..."
                                      class="form-control @error('description') is-invalid @enderror"
                                      style="resize: none" id="description" rows="4">{{old('description')??$category->description}}</textarea>
                            @error('description') <span class="text-danger">{{$message}}</span>@enderror
                        </div>


                        <div class="form-group">
                            <label for="status">Trạng thái</label>
                            <select class="form-select" name="status" id="status">
                                <option {{$category->status == 1?'selected':''}} value="1">Hiển thị</option>
                                <option {{$category->status == 0?'selected':''}} value="0">Không hiển thị</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-success mr-2">Sửa danh mục</button>

                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection

