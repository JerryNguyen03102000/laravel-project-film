@extends('admin.layout.app')
@section('content')
    <div class="row">
        <div class="col-lg-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    @include('alert.alert')
                    <h4 class="card-title">Danh sách danh mục phim</h4>

                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th>
                                    #
                                </th>
                                <th>
                                    Tên danh mục phim
                                </th>
                                <th>
                                   Slug
                                </th>
                                <th>
                                    Mô tả
                                </th>
                                <th>
                                    Trạng thái
                                </th>
                                <th>
                                    Quản lý
                                </th>
                            </tr>
                            </thead>
                            <tbody id="order_position">
                            @if(count($categories)>0)
                                @foreach($categories  as $key => $category)
                                    <tr id="{{$category->id}}" >
                                        <td>
                                           {{$key+1}}
                                        </td>
                                        <td>
                                            {{$category->title}}
                                        </td>
                                        <td>
                                            {{$category->slug}}
                                        </td>
                                        <td>
                                            {{$category->description}}
                                        </td>
                                        <td>
                                            @if($category->status == 1)
                                                <button class="btn-success btn btn-sm"> Hiển thị</button>
                                            @else
                                                <button class="btn-danger btn btn-sm">Không hiển thị</button>

                                            @endif

                                        </td>
                                        <td width="10%">
                                            <form method="post" onsubmit="return confirm('Bạn có muốn xóa không')"
                                                  action="{{route('admin.category.destroy', $category->id)}}">
                                                @csrf
                                                @method('DELETE')

                                                <button type="submit" class="btn btn-danger"> Xóa</button>
                                            </form>
                                            <a  href="{{route('admin.category.edit',$category->id)}}"
                                               class="btn  btn-warning">Sửa</a>

                                        </td>
                                    </tr>
                                @endforeach
                            @else
                                <tr>
                                    <td colspan="6"><p class="text-danger">Danh sách danh mục trống </p></td>
                                </tr>
                            @endif
                            </tbody>
                        </table>
                    </div>
                    {{$categories->links() }}
                </div>
            </div>
        </div>
    </div>

@endsection
{{--@push('scripts-custom')--}}
{{--  --}}
{{--@endpush--}}
