@extends('admin.layout.app')
@section('content')
    <div class="row ">
        <div class="col-lg-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    @include('alert.alert')
                    <h4 class="card-title">Danh sách phim</h4>

                    <div class="table" style="overflow: scroll">
                        <form method="get" action="{{route('admin.search.movie')}}">
                            <input type="text" class="form-control col-md-4 mb-3" placeholder="Tìm kiếm phim ..."
                                   id="search" name="search">
                        </form>
                        <table class="table table-striped px-1" id="tablephim" style="width: 1850px">
                            <thead>
                            <tr>
                                <th WIDTH="2%">
                                    #
                                </th>
                                <th>
                                    Tên phim
                                </th>
                                <th>
                                   Slug
                                </th>

                                <th>
                                    Thời lượng phim
                                </th>
                                <th>
                                    Hình ảnh
                                </th>

                                <th>
                                    Danh mục
                                </th>
                                <th>
                                    Thể loại
                                </th>
                                <th>
                                    Quốc gia
                                </th>
                                <th>
                                   Số tập
                                </th>
                                <th>
                                    Phim Hot
                                </th>
                                <th>
                                  Thuộc phim
                                </th>
                                <th>
                                    Định dạng
                                </th>
                                <th>
                                    Phụ đề
                                </th>
                                <th>
                                    Trạng thái
                                </th>

                                <th>
                                    Năm phim
                                </th>


                                <th>
                                    Quản lý
                                </th>
                            </tr>
                            </thead>

                            <tbody id="showdata">
                            @if(count($movies)>0)
                                @foreach($movies  as $key => $movie)
                                    <tr>
                                        <td>
                                            {{$key+=1}}
                                        </td>
                                        <td WIDTH="15%">
                                            {{$movie->title}}
                                        </td>

                                        <td>
                                            {{$movie->slug}}
                                        </td>
                                        <td>
                                            {{$movie->thoiluong}}
                                        </td>
                                        <td width="20%">
                                            <img style="border-radius: 0;width:120px;height: 170px"
                                                 src="{{asset('/uploads/movie/'.$movie->image)}}" alt="img_error">
                                        </td>
                                        <td>
                                            {{$movie->category->title}}
                                        </td>

                                        <td>
                                            @foreach($movie->movie_genre as $genre)
                                            <span class="badge badge-dark"> {{$genre->title}}</span>{!!'<br>'!!}
                                            @endforeach
                                        </td>

                                        <td>
                                            {{$movie->country->title}}
                                        </td>
                                        <td>
                                            {{$movie->sotap}}
                                        </td>
                                        <td>
                                            @if($movie->phim_hot == 1)
                                                <button class="btn-success btn btn-sm"> Có</button>
                                            @else
                                                <button class="btn-danger btn btn-sm">Không</button>

                                            @endif

                                        </td>
                                        <td>
                                            @if($movie->thuocphim == 'phimle')
                                                <button class="btn-success btn btn-sm"> Phim lẻ</button>
                                            @else
                                                <button class="btn-success btn btn-sm">Phim bộ</button>

                                            @endif

                                        </td>
                                        <td>
                                            @if($movie->resolution == 0)
                                                <button class="btn-success btn btn-sm"> HD</button>
                                            @elseif($movie->resolution == 1)
                                                <button class="btn-success btn btn-sm">SD</button>
                                            @elseif($movie->resolution == 2)
                                                <button class="btn-success btn btn-sm">HDcam</button>
                                            @elseif($movie->resolution == 3)
                                                <button class="btn-success btn btn-sm">Cam</button>
                                            @elseif($movie->resolution == 4)
                                                <button class="btn-success btn btn-sm">FullHD</button>
                                            @else
                                                <button class="btn-success btn btn-sm">Trailer</button>
                                            @endif

                                        </td>
                                        <td>
                                            @if($movie->subtitle == 0)
                                                <button class="btn-success btn btn-sm"> Vietsub</button>
                                            @else
                                                <button class="btn-success btn btn-sm">Thuyết minh</button>
                                            @endif

                                        </td>
                                        <td width="10%">
                                            @if($movie->status == 1)
                                                <button class="btn-success btn btn-sm"> Hiển thị</button>
                                            @else
                                                <button class="btn-danger btn btn-sm">Không hiển thị</button>

                                            @endif

                                        </td>

                                        <td>
                                            <select class="select-year" id="{{$movie->id}}" name="year">
                                                @for($i = 2000;$i<=2022;$i++)
                                                    <option
                                                        {{$movie->year == $i ?'selected':''}} value="{{$i}}">{{$i}}</option>
                                                @endfor
                                            </select>
                                        </td>


                                        <td width="10%">

                                            <a href="{{route('admin.movie.edit',$movie->id)}}"
                                               class="btn  btn-warning">Sửa</a>
                                            <form method="post" onsubmit="return confirm('Bạn có muốn xóa không')"
                                                  action="{{route('admin.movie.destroy', $movie->id)}}">
                                                @csrf
                                                @method('DELETE')
                                                <button type="submit" class="btn btn-danger"> Xóa</button>
                                            </form>

                                        </td>

                                    </tr>
                                @endforeach
                            @else
                                <tr>
                                    <td colspan="15"><p class="text-danger">Danh sách quốc gia trống </p></td>
                                </tr>
                            @endif
                            </tbody>
                            <tbody id="content" style="display: none" class="searchdata">

                            </tbody>
                        </table>
                    </div>
                    {{ $movies->links() }}
                </div>
            </div>
        </div>
    </div>
@endsection
@push('script')
    <script type="text/javascript">
        $(document).ready(function () {
            $('#search').keyup(function () {
                var keyword = $(this).val();
                let url = '{{route('admin.search.movie')}}';

                if (keyword) {
                    $('#showdata').hide();
                    $('#content').show();
                } else {
                    $('#showdata').show();
                    $('#content').hide();
                }
                $.ajax({
                    url: url,
                    type: "GET",
                    data: {'search': keyword},
                    success: function (data) {
                        $('#content').html(data);
                        // alert(data);
                    }

                });
            });
        });

        function msg() {
            return confirm('Bạn có muốn xóa không');
        }
    </script>
    <script>
        $(document).ready(function () {
            $('.select-year').change(function () {
                // lấy giá trị năm chọn
                var year = $(this).find(':selected').val();
                var id_film = $(this).attr('id');

                $.ajax({
                    url: "{{url('/admin/update_year')}}",
                    method: 'GET',
                    data: {year: year, id_film: id_film},
                    success: function (data) {
                        alert('Thay đổi năm phim thành công');
                    }
                });
                // alert(id_film);

            });
        });
    </script>

@endpush
