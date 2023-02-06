@extends('admin.layout.app')

@section('content')
    <div class="row">
        <div class="col-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Thêm tập phim</h4>
                    <form class="forms-sample" method="POST" action="{{route('admin.episode.store')}}">
                        @include('alert.alert')
                        @csrf

                        <div class="form-group">
                            <label for="status">Chọn phim</label>
                            <select class="form-select select-movie @error('movie_id') is-invalid @enderror" name="movie_id">
                                <option value="">Chọn phim</option>
                                @foreach($movies as $movie)
                                    <option value="{{$movie->id}}">{{$movie->title}}</option>
                                @endforeach
                            </select>
                            @error('movie_id')<span class="text-danger">{{$message}}</span>@enderror
                        </div>
                        <div class="form-group">
                            <label for="linkphim">Link phim</label>
                            <input type="text" value="{{old('linkphim')}}"
                                   class="form-control @error('linkphim') is-invalid @enderror" name="linkphim"
                                   placeholder="...">
                            @error('linkphim')<span class="text-danger">{{$message}}</span>@enderror
                        </div>
                        <div class="form-group">
                            <label for="episode">Tập phim</label>
                            <select class="form-select @error('episode') is-invalid @enderror" name="episode" id="show">
                                <option value="">-- Chọn tập phim --</option>

                            </select>
                            @error('episode')<span class="text-danger">{{$message}}</span>@enderror
                        </div>
                        <div class="form-group">
                            <label for="status">Trạng thái</label>
                            <select class="form-select" name="status" id="status">
                                <option  value="1">Hiển thị</option>
                                <option  value="0">Không hiển thị</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-success mr-2">Thêm tập phim</button>

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



