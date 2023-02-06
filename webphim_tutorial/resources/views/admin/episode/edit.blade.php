@extends('admin.layout.app')

@section('content')
    <div class="row">
        <div class="col-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Sửa tập phim</h4>
                    <form class="forms-sample" method="POST" action="{{route('admin.episode.update',$episode->id)}}">
                        @include('alert.alert')
                        @csrf
                        @method('PUT')

                        <div class="form-group">
                            <label for="status">Chọn phim</label>
                            <select class="form-select select-movie" name="movie_id" readonly>
                                <option value="">Chọn phim</option>
                                @foreach($movies as $movie)
                                    <option {{$episode->movie_id == $movie->id?'selected': ''}} value="{{$movie->id}}">{{$movie->title}}</option>
                                @endforeach
                            </select>

                        </div>
                        <div class="form-group">
                            <label for="linkphim">Link phim</label>
                            <input type="text" value="{{old('linkphim')??$episode->linkphim}}"
                                   class="form-control @error('linkphim') is-invalid @enderror" name="linkphim"
                                   placeholder="...">
                            @error('linkphim')<span class="text-danger">{{$message}}</span>@enderror
                        </div>
                        <div class="form-group">
                            <label for="episode">Tập phim</label>
                            <input type="text" min="1" value="{{$episode->episode}}"
                                   class="form-control" name="episode"
                                   placeholder="..." readonly>

                        </div>
                        <div class="form-group">
                            <label for="status">Trạng thái</label>
                            <select class="form-select" name="status" id="status">
                                <option {{$episode->status == 1?'selected':''}} value="1">Hiển thị</option>
                                <option {{$episode->status == 0?'selected':''}} value="0">Không hiển thị</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-success mr-2">Sửa tập phim</button>

                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection
@push('script')
    <script type="text/javascript">
        $(document).ready(function () {
            $('.select-movie').change(function () {
                var id = $(this).val();
                let url = "{{route('admin.select-movie')}}"
                $.ajax({
                    url: url,
                    type: 'GET',
                    data: {id: id},
                    success: function (data) {
                        $('#show').html(data);
                    }
                });
            });
        });
    </script>

@endpush



