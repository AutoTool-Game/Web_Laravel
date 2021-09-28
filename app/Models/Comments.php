<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

//Sử dụng đối tượng thao tác csdl
use DB;
//Sử dụng đối tượng Request để lấy GET, POST
use Request;

class Comments extends Model
{
    use HasFactory;
    
    public function modelRead(){
        $record = DB::table("news")->where("id", "=", $id)->first();
        $data = DB::table("comments")->where("news_id", "=", $record)->paginate(10);
        return $data;
    }

    public function modelGetRecord($id){
        $record = DB::table("news")->where("id", "=", $id)->first();
        return $record;
    }

    public function modelCreate(){
        $news_id = Request::get('news_id');
        $customer_name = Request::get('customer_name');
        $description = Request::get('description');
        DB::table("comments")->insert([["customer_name"=>$customer_name, "news_id"=>$news_id, "description"=>$description]]);
    }

    public function modelEdit($id){
        $news_id = Request::get('news_id');
        $description = Request::get('description');
        DB::table("comments")->where("id","=",$id)->update(["description"=>$description]);
    }

    public function modelDelete($id){
        DB::table("comments")->where("id","=",$id)->delete();
    }
}
