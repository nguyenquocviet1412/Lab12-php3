<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <a href="{{route('page.home')}}">Trang chủ</a>
<div class="container my-5">
    <div class="row">
        <div class="card-group">

            <div class="col-md-5">
                <div class="card">
                    <img src="{{$book->thumbnail}}" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">{{$book->name}}</h5>
                        <p class="card-text">
                            Tác giả: {{$book->author}}<br>
                            NXB: {{$book->publisher}}<br>
                            Giá:{{$book->price}} $<br>
                            Số lượng:{{$book->quantity}}
                        </p>
                    </div>
                    <div class="card-footer">
                        <small class="text-body-secondary">{{$book->publication}}</small>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
