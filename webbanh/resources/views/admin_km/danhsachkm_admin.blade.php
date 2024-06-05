@extends('template_admin.master_admin')
@section('css')
    <link href="https://code.jquery.com/ui/1.10.3/themes/redmond/jquery-ui.css" rel="stylesheet" media="screen">
<style>
    a.morelink {
    text-decoration:none;
    outline: none;
}
.morecontent span {
    display: none;
}
.comment {
    width: 200px;
    margin: 10px;
    padding:10px;
    text-align: center;
}
</style>
@endsection
@section('content')

 <div class="title_main_form_admin">
                    Danh sách khuyến mãi
                </div>
<div class="main_form_admin">
    
    <form method="POST" action="{{route('postxoakhuyenmai')}}" accept-charset="UTF-8" id="form_xoa_san_pham" class="form_xoa_san_pham"><input name="_token" type="hidden" value="{{csrf_token()}}">
        <div class="div_danh_sach_items">
            <table style="width: 100%" class="danh_sach_items">
            
                <tbody>
                    <tr class="row_header">
                        <td>
                            Mã 
                        </td>
                        <td style="width:30%">
                            Tên chương trình 
                        </td>
                        <td>
                            Loại
                        </td>
                        
                        <td>
                            Hình quảng cáo
                        </td>
                        <td>
                            Ngày bắt đầu
                        </td>
                        <td>
                            Ngày kết thúc
                        </td>
                        <td>
                            Mã áp dụng
                        </td>
                        <td>
                            Trị giá
                        </td>
                        <td>
                            Trạng thái
                        </td>
                        <td>
                            Chọn
                        </td>
                    </tr>

                    @foreach ($dskm as $km)
                    <tr class="item_admin">
                        <td class="cell_center">
                            {{$km->id}}
                        </td>
                        <td class="cell_center">
                            <a href="{{url('/')}}/admin/cap-nhat-khuyen-mai/{{$km->id}}">{{$km->promo_title}}
                        </td>
                        <td class="cell_center">
                            {{$km->promo_type->name}}
                        </td>
                        
                        <td class="cell_center">
                            <img src="{{url('/')}}/source/images/promotions/{{$km->image}}">
                        </td>
                        <td style="width: 8%" class="cell_center">
                        {{date("d-m-y",strtotime($km->date_begin))}}
                        </td>
                        <td style="width: 8%" class="cell_center">
                        {{date("d-m-y",strtotime($km->date_end))}}
                        </td>
                        <td style="width:10%" class="cell_center">
                        {{$km->code}}
                        </td>
                        <td class="cell_center">
                        @if($km->id_type_promo==1)
                        {{number_format($km->promo_value,0,",",".")}}đ
                       
                        @endif
                         @if($km->id_type_promo==2)
                        {{$km->promo_value}}%
                        @endif
                        </td>
                        <td class="cell_center">
                        @if($km->status==1)
                        Đang áp dụng
                        @else
                        Ngừng áp dụng
                        @endif
                        </td>
                        <td class="cell_center">
                            <input name="thao_tac[]" type="checkbox" value="{{$km->id}}">
                        </td>
                    </tr>
                   @endforeach
                </tbody>
            </table>
        </div>
    </form>
    <div class="phan_trang_admin">
        {{$dskm->render()}}
    </div>
    <div class="ds_button_admin">
        <div class="btn_xoa" onclick="kiem_tra_xoa()">Xóa các danh sách đã chọn</div>
        <a href="{{route('themkhuyenmai')}}">
            <div class="btn_them">Thêm khuyến mãi</div>
        </a>
        <div class="clear"> </div>
    </div>
</div>

@endsection
@section('script')
 <script>
        function kiem_tra_xoa()
        {
            //alert();
            if($("input:checkbox:checked").length)
            {
                kq = confirm("Bạn chắc chắn muốn xóa danh sách đã được chọn?");
                if(kq)
                {
                    document.getElementById('form_xoa_san_pham').submit();
                }
            }
            else
            {
                alert("Bạn vui lòng chọn sản phẩm muốn xóa");
            }
        }
    </script>
    <script src="{{url('/')}}/admin/vendors/bootstrap-wysihtml5/lib/js/wysihtml5-0.3.0.js"></script>
    <script src="{{url('/')}}/admin/vendors/bootstrap-wysihtml5/src/bootstrap-wysihtml5.js"></script>

    
    {{-- <script src="{{url('/')}}/admin/js/custom.js"></script> --}}
     <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
    <script type="text/javascript" src="{{url('/')}}/admin/js/jquery.shorten.1.0.js"></script>
    <script type="text/javascript">
   $(".comment").shorten({
    "showChars" : 200,
    "moreText"  : "Xem thêm",
    "lessText"  : "Rút gọn",
});
</script>
@endsection