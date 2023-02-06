@extends('admin.layout.app')
@section('content')
    <div class="row">
        <div class="col-lg-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    @include('alert.alert')
                    <h4 class="card-title">Danh sách quốc gia</h4>

                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th>
                                    #
                                </th>
                                <th>
                                    Tên quốc gia
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
                            <tbody>
                            @if(count($countries)>0)
                                @foreach($countries  as $key => $country)
                                    <tr>
                                        <td>
                                            {{$key+=1}}
                                        </td>
                                        <td>
                                            {{$country->title}}
                                        </td>
                                        <td>
                                            {{$country->slug}}
                                        </td>
                                        <td>
                                            {{$country->description}}
                                        </td>
                                        <td>
                                            @if($country->status == 1)
                                                <button class="btn-success btn btn-sm"> Hiển thị</button>
                                            @else
                                                <button class="btn-danger btn btn-sm">Không hiển thị</button>

                                            @endif

                                        </td>
                                        <td width="10%">
                                            <form method="post" onsubmit="return confirm('Bạn có muốn xóa không')"
                                                  action="{{route('admin.country.destroy', $country->id)}}">
                                                @csrf
                                                @method('DELETE')

                                                <button type="submit" class="btn btn-danger"> Xóa</button>
                                            </form>
                                            <a href="{{route('admin.country.edit',$country->id)}}"
                                               class="btn  btn-warning">Sửa</a>

                                        </td>
                                    </tr>
                                @endforeach
                            @else
                                <tr>
                                    <td colspan="6"><p class="text-danger">Danh sách quốc gia trống </p></td>
                                </tr>
                            @endif
                            </tbody>
                        </table>
                    </div>
                    {{ $countries->links() }}
                </div>
            </div>
        </div>
    </div>
@endsection
