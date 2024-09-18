<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>
    <div class="container">


        <h1>TRANG HOME</h1>
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav">
                        <a class="nav-link active" aria-current="page" href="{{ route('page.home') }}">Home</a>
                        <!-- danh sách category -->
                        @foreach ($categories as $cate)
                            <a class="nav-link" href="{{ route('page.list', $cate->id) }}">{{ $cate->name }}</a>
                        @endforeach
                    </div>
                </div>
            </div>
        </nav>

        <!--Hiển thị dữ liệu-->
        <div class="row">
            <h3>Danh sách 8 sản phẩm giá cao nhất</h3>
            @foreach ($booksDesc as $book)
                <div class="col-md-3">
                    <a href="{{ route('page.detail', $book->id) }}">
                        <h3>{{ $book->name }}</h3>
                    </a>
                    <p>{{ $book->price }} $</p>

                </div>
            @endforeach
        </div>

        <!--Hiển thị dữ liệu-->
        <div class="row">
            <h3>Danh sách 8 sản phẩm giá Thấp nhất</h3>
            @foreach ($booksAsc as $book)
                <div class="col-md-3">
                    <a href="{{ route('page.detail', $book->id) }}">
                        <h3>{{ $book->name }}</h3>
                    </a>
                    <p>{{ $book->price }} $</p>

                </div>
            @endforeach
        </div>
    </div>
</body>

</html>
