<?php

namespace App\Http\Controllers;

use App\Models\Comments;
use Illuminate\Http\Request;

class CommentsController extends Controller
{
    public $model;
    //hàm tạo
    public function __construct(){
        //gán biến $model trở thành một biến object của class News
        //khi đó từ biến $model này có thể gọi các hàm trong class News
        $this->model = new Comments();
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function read(Request $request){
        //Lấy dữ liệu từ hàm modelRead của class News
        $data = $this->model->modelRead();
    }

    public function createPost(Request $request, $id){
        $this->model->modelCreate();
        return redirect(url('news/detail/'.$id));
    }

    public function editComment(Request $request, $news_id, $id){
        $this->model->modelEdit($id);
        return redirect(url('news/detail/'.$news_id));
    }

    public function deleteComment(Request $request, $news_id, $id){
        $this->model->modelDelete($id);
        return redirect(url('news/detail/'.$news_id));
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request)
    {
        return 'vl';
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
