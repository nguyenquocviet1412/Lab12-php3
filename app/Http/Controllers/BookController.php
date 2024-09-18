<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BookController extends Controller
{
    public function home(){
        //Hiển thị 8 sản phẩm giá cao nhất
        $booksDesc = DB::table('books')
            ->orderByDesc(column:'price')
            ->limit(8)
            ->get();

        //Hiển thị 8 sản phẩm giá thấp nhất
        $booksAsc = DB::table('books')
            ->orderBy('price', 'asc')
            ->limit(8)
            ->get();

        //Lấy danh mục
        $categories = DB::table('categories')
            ->get();

        return view('home', compact('booksDesc', 'booksAsc', 'categories'));
    }

    //Hiển thị danh sách bài viết theo danh mục
    public function list($id){
        $books = DB::table('books')
            ->where('category_id',$id)
            ->get();

            return view('list-book',compact('books'));
    }

    //Hiển thị chi tiết book
    public function detail($id){
        $book = DB::table('books')
            ->where('id',$id)
            ->first();

            return view('detail-book',compact('book'));
    }

}
