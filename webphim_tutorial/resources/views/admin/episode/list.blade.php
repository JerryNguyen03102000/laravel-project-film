@extends('admin.layout.app')
@section('content')
    <div class="row ">
        <div class="col-lg-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    @include('alert.alert')
                    <h4 class="card-title">Danh sách tập phim</h4>

                    <div class="table">

                        <table class="table table-striped px-1">
                            <thead>
                            <tr>
                                <th WIDTH="2%">
                                    #
                                </th>
                                <th>
                                    Tên phim
                                </th>
                                <th>
                                    Hình ảnh
                                </th>
                                <th>
                                    Tập phim
                                </th>
                                <th>
                                    Link phim
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
                            @if(count($list_episode)>0)
                                @foreach($list_episode  as $key => $episode)
                                    <tr>
                                        <td>
                                            {{$key+1}}
                                        </td>
                                        <td>
                                            {{$episode->movie->title}}
                                        </td>
                                        <td>
                                            <img style="border-radius: 0;width:120px;height: 180px"
                                                 src="{{asset('/uploads/movie/'.$episode->movie->image)}}" alt="img_error">

                                        </td>
                                        <td>
                                           Tập: {{$episode->episode}}
                                        </td>
                                        <td width="40%">
                                            {!! $episode->linkphim !!}
                                        </td>
                                        <td>
                                            @if($episode->status == 1)
                                                <button class="btn-success btn btn-sm"> Hiển thị</button>
                                            @else
                                                <button class="btn-danger btn btn-sm">Không hiển thị</button>

                                            @endif

                                        </td>
                                        <td width="10%">
                                            <form method="post" onsubmit="return confirm('Bạn có muốn xóa không')"
                                                  action="{{route('admin.episode.destroy', $episode->id)}}">
                                                @csrf
                                                @method('DELETE')

                                                <button type="submit" class="btn btn-danger"> Xóa</button>
                                            </form>
                                            <a href="{{route('admin.episode.edit',$episode->id)}}"
                                               class="btn  btn-warning">Sửa</a>

                                        </td>
                                    </tr>
                                @endforeach
                            @else
                                <tr>
                                    <td colspan="6"><p class="text-danger">Danh sách tập phim trống </p></td>
                                </tr>
                            @endif
                            </tbody>

                        </table>
                    </div>
                                        {{ $list_episode->links() }}
                </div>
            </div>
        </div>
    </div>
@endsection
