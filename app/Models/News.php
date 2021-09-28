<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

//Sử dụng đối tượng thao tác csdl
use DB;
//Sử dụng đối tượng Request để lấy GET, POST
use Request;

class News extends Model
{
    use HasFactory;
    // Hàm lấy các bản ghi có phân trang
    public function modelRead(){
        $data = DB::table("news")->orderBy("id", "desc")->paginate(10);
        return $data;
    }
    //update
    public function modelGetRecord($id){
        $record = DB::table("news")->where("id", "=", $id)->first();
        return $record;
    }
    //update
    public function modelUpdate($id){
        $name = Request::get("name");
        $category_id = Request::get("category_id");
        $description = Request::get("description");
        $content = Request::get("content");
        $hot = Request::get("hot") ? 1 : 0;
        //update bản ghi
        DB::table("news")->where("id","=",$id)->update(["name"=>$name, "category_id"=>$category_id, "description"=>$description, "content"=>$content, "hot"=>$hot]);
        //nếu có ảnh thì upload ảnh
        //---
        if(Request::hasFile("photo")){
            //->select("photo") chỉ lấy trường dữ liệu có tên là photo
            $oldPhoto = DB::table("news")->where("id","=",$id)->select("photo")->first();
            if(isset($oldPhoto->photo) && file_exists('upload/news/'.$oldPhoto->photo) && $oldPhoto->photo != "")
                unlink('upload/news/'.$oldPhoto->photo);
            //lấy tên file
            $photo = time()."_".Request::file("photo")->getClientOriginalName();
            //thực hiện upload ảnh
            Request::file("photo")->move('upload/news',$photo);
            //update bản ghi
            DB::table("news")->where("id","=",$id)->update(['photo'=>$photo]);
        }
        //---
    }
    //create
    public function modelCreate(){
        $name = Request::get("name");
        $category_id = Request::get("category_id");
        $description = Request::get("description");
        $content = Request::get("content");
        $hot = Request::get("hot") ? 1 : 0;
        $photo = "";
        //nếu có ảnh thì upload ảnh
        if(Request::hasFile("photo")){
            //lấy tên file
            $photo = time()."_".Request::file("photo")->getClientOriginalName();
            //thực hiện upload ảnh
            Request::file("photo")->move('upload/news',$photo);
        }
        //insert bản ghi
        DB::table("news")->insert([["name"=>$name, "category_id"=>$category_id, "description"=>$description, "content"=>$content, "hot"=>$hot]]);
    }
    //delete
    public function modelDelete($id){
        //---
        //->select("photo") chỉ lấy trường dữ liệu có tên là photo
        $oldPhoto = DB::table("news")->where("id","=",$id)->select("photo")->first();
        if(isset($oldPhoto->photo) && file_exists('upload/news/'.$oldPhoto->photo) && $oldPhoto->photo != "")
            unlink('upload/news/'.$oldPhoto->photo);
        //---
        DB::table("news")->where("id","=",$id)->delete();
    }
}
