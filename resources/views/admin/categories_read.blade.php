<!-- load file layout.blade.php vao day -->
@extends("admin.layout")
@section("do-du-lieu")
<div class="col-md-12">
    <div style="margin-bottom:5px;">
        <a href="{{ url('admin/categories/create') }}" class="btn btn-primary">Add category</a>
    </div>
    <div class="panel panel-primary">
        <div class="panel-heading p-2 bg-info border border-info rounded-top text-light">List Category</div>
        <div class="panel-body bg-light border border-info rounded-bottom p-3">
            <table class="table table-bordered table-hover">
                <tr>
                    <th>Name</th>
                    <th style="width:100px;"></th>
                </tr>
                @foreach($data as $rows)
                <tr>
                    <td>{{ $rows->name }}</td>
                    <td style="text-align:center;">
                        <a style="font-size: 14px; text-decoration: none;" href="{{ url('admin/categories/update/'.$rows->id) }}">Edit</a>&nbsp;
                        <a style="font-size: 14px; text-decoration: none;" href="{{ url('admin/categories/delete/'.$rows->id) }}" onclick="return window.confirm('Are you sure?');">Delete</a>
                    </td>
                </tr>
                @endforeach
            </table>
            <style type="text/css">
                .pagination{padding:0px; margin:0px;}
                .hidden{display: none;}
            </style>
            <!-- ham render su dung de phan trang -->
            {{ $data->render() }}
        </div>
    </div>
</div>
@endsection