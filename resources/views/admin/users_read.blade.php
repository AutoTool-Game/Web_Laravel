<!-- load file layout.blade.php vào đây -->
@extends("admin.layout")
@section("do-du-lieu")
<div class="col-md-12">
    <div style="margin-bottom:5px;">
        <a href="{{ url('admin/users/create') }}" class="btn btn-primary">Add user</a>
    </div>
    <div class="panel panel-primary">
        <div class="panel-heading p-2 bg-info border border-info rounded-top text-light">List User</div>
        <div class="panel-body bg-light border border-info rounded-bottom p-3">
            <table class="table table-bordered table-hover">
                <tr>
                    <th>Fullname</th>
                    <th>Email</th>
                    <th style="width:100px;"></th>
                </tr>
                @foreach($data as $rows)
                <tr>
                    <td>{{ $rows->name }}</td>
                    <td>{{ $rows->email }}</td>
                    <td style="text-align:center;">
                        <a style="font-size: 14px; text-decoration: none;" href="{{ url('admin/users/update/'.$rows->id) }}">Edit</a>&nbsp;
                        <a style="font-size: 14px; text-decoration: none;" href="{{ url('admin/users/delete/'.$rows->id) }}" onclick="return window.confirm('Are you sure?');">Delete</a>
                    </td>
                </tr>
                @endforeach
            </table>
            <style type="text/css">
                .pagination{padding:0px; margin:0px;}
                .hidden{display: none;}
            </style>
            <!-- hàm render sử dụng để phân trang -->
            {{ $data->render() }}
        </div>
    </div>
</div>
@endsection