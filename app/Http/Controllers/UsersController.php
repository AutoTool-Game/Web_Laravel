<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
//trong controller muốn sử dụng đối tượng nào thì phải khai báo ở đây
//đối tượng thao tác csdl
use Illuminate\Support\Facades\DB;
//đối tượng mã hóa password
use Illuminate\Support\Facades\Hash;
//thực hiện QueryBuilder: sử dụng đối tượng DB

class UsersController extends Controller
{
    //read
    public function read(Request $request){
        //đối tượng Request sử dụng để lấy giá trị theo kiểu POST, GET
        //paginate(4) -> phần 4 bản ghi trên một trang
        $data = DB::table("users")->orderBy("id", "desc")->paginate(4);
        return view("admin.users_read",["data"=>$data]);
    }
    //update - GET
    public function update(Request $request, $id){
        //tạo action để đưa vao thuộc tính action của thẻ form
        $action = url('admin/users/update/$id');
        //lấy một bản ghi
        //first() -> lấy một bản ghi
        $record = DB::table("users")->where("id",$id)->first();
        return view('admin.users_create_update',['record'=>$record]);
    }
    //update - POST
    public function updatePost(Request $request, $id){
        $name = $request->get('name');
        $password = $request->get("password");
        //update name
        DB::table("users")-> where("id",$id)->update(['name'=>$name]);
        //nếu password không rỗng thì update password
        if($password != ""){
            //mã hóa password
            $password = Hash::make($password);
            DB::table("users")-> where("id",$id)->update(['password'=>$password]);
        }
        //di chuyển đến url khác
        return redirect(url('admin/users'));
    }
    //create - GET
    public function create(Request $request){
        //tao action de dua vao thuoc tinh action cua the form
        $action = url('admin/users/create');
        return view('admin.users_create_update');
    }
    //create - POST
    public function createPost(Request $request){
        $name = $request->get("name");
        $email = $request->get("email");
        $password = $request->get("password");
        //ma hoa password
        $password = Hash::make($password);
        //insert name
        DB::table("users")->insert(['name'=>$name,'email'=>$email,'password'=>$password]);
        //di chuyen den mot url khac
        return redirect(url('admin/users'));
    }
    //delete
    public function delete(Request $request, $id){
        //lay mot ban ghi
        //first() -> lay mot ban ghi
        DB::table("users")->where("id",$id)->delete();
        //di chuyen den mot url khac
        return redirect(url('admin/users'));
    }
}
