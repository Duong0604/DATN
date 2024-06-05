@extends('template_admin.master_admin')
@section('css')
    <link href="https://code.jquery.com/ui/1.10.3/themes/redmond/jquery-ui.css" rel="stylesheet" media="screen">
@endsection
@section('content')
            {{-- <label>Tên sản phẩm</label></br>
            	
            <script src="{{url('/')}}/admin/vendors/ckeditor/ckeditor.js"></script>
            <textarea row="3" id="summary" name="txtIntro"></textarea>
            <script type="text/javascript">CKEDITOR.replace("summary")</script>  --}}
             <div class="title_main_form_admin">
                   Cập nhật khuyến mãi
                </div>
            <div class="main_form_admin">
                <div class="div_form_thong_tin">
                @if(Session::has('status'))
                        <p class="alert alert-warning">{{ Session::get('status') }}</p>
                    @endif
                    <ul class="validation_error">
                        @foreach($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                    
                     <script language="javascript" src="{{url('/')}}/admin/vendors/ckeditor/ckeditor.js" type="text/javascript"></script>
                    <form method="POST" action="{{route('postcapnhatkhuyenmai')}}" accept-charset="UTF-8" id="form_them_san_pham_moi" class="form_them_san_pham_moi" enctype="multipart/form-data">
                    <input type="hidden" name="_token" value="{{csrf_token()}}">
                        <table class="form_cap_nhat">
                            <tbody><tr>
                                <td>
                                    Tên chương trình(*):
                                </td>
                                <td>
                                    <input required="required" placeholder="Tên chương trình khuyến mãi" name="title" value="{{$dskm->promo_title}}" type="text">
                                    {!! Form::hidden('ma', $dskm->id) !!}
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Loại khuyến mãi(*):
                                </td>
                                <td>
                                {!! Form::select('ma_loai',$dsloaikm,$dskm->id_type_promo) !!}
                                </td>
                            </tr>
                            <tr>
                            
                                <td>
                                    Hình đại diện bài viết(*)
                                </td>
                                <td>
                                    <div>
                                      @if($dskm->image)
                                            <img style="width: 300px; border:inset 3px pink" alt="{{$dskm->promo_title}}" src="{{url('/')}}/source/images/promotions/{{$dskm->image}}" />
                                        @endif
                                    </div>
                                    <div>
                                        <input accept=".png,.jpg,.gif" name="hinh" type="file">
                                         {!! Form::hidden('hinh',$dskm->image) !!}
                                    
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Nội dung(*):
                                </td>
                                <td>
                                    {!! Form::textarea('noidung', $dskm->content,
                                        array('id'=>'noidung', 'placeholder'=>'Nội dung','required')) !!}
                                     <script type="text/javascript">CKEDITOR.replace( 'noidung', { customConfig: '{{url('/')}}/admin/vendors/ckeditor/baiviet_config.js' } ); </script>
                                </td>
                            </tr>
                             
                            <tr>
                                <td>
                                   <p id="dv">Giá trị khuyến mãi(*): </p>
                                </td>
                                <td>
                                    <input style="width:60%" required="required" placeholder="Số % hoặc giá trị tiền khuyến mãi" value="{{$dskm->promo_value}}" name="value_promo" type="text">
                                    {{-- <input id="andv" required="required" placeholder="cái/hộp..." value="{{old('don_vi_tinh')}}" name="don_vi_tinh" type="text"> --}}
                                </td>
                            </tr>
                             <tr>
                                <td>
                                   <p id="dv">Mã áp dụng: </p>
                                </td>
                                <td>
                                    <input style="width:60%" disabled required="required" value="{{$dskm->code}}" name="code" type="text">
                                    {{-- <input id="andv" required="required" placeholder="cái/hộp..." value="{{old('don_vi_tinh')}}" name="don_vi_tinh" type="text"> --}}
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Ngày bắt đầu(*):
                                 </td>
                                <td>
                                        <input required="required" value="{{$dskm->date_begin}}" type="date" name="begindate" min="2017-01-01">
                                        
                                </td>
                            <tr>
                                <td>
                                    <p id="dongia">Ngày kết thúc(*):</p>
                                </td>
                                <td>
                                     <input required="required" value="{{$dskm->date_end}}" type="date" name="enddate" min="2017-01-01">
                                </td>
                            </tr>
                           <tr>
                                <td>
                                    <p>Trạng thái(*):</p>
                                </td>
                                <td>
                                    <select style="width:30%" name="trangthai">
                                    @if($dskm->status==1)
                                        <option value="1" selected>Đang áp dụng </option>
                                         <option value="0">Ngừng áp dụng</option>
                                    @else
                                    <option value="1">Đang áp dụng </option>
                                         <option value="0" selected>Ngừng áp dụng</option>
                                    @endif
                                    </select>
                                </td>
                            </tr>
                            </tbody></table>
                           
                        <p style="padding-left:90px;font-size:15px; color:grey">(*)Bắt buộc nhập</p>
                        <div class="ds_button_admin">
                            <div class="btn_xoa" onclick="window.location='{{url('/')}}/admin/danh-sach-khuyen-mai';">Quay lại</div>
                            <input class="btn_them" type="submit" value="Lưu">
                            <div class="clear"> </div>
                        </div>
                    </form>
                </div>

            </div>
          </div>
   
@endsection
@section('script')

    <script src="{{url('/')}}/admin/vendors/bootstrap-wysihtml5/lib/js/wysihtml5-0.3.0.js"></script>
    <script src="{{url('/')}}/admin/vendors/bootstrap-wysihtml5/src/bootstrap-wysihtml5.js"></script>

    <script src="{{url('/')}}/admin/vendors/ckeditor/ckeditor.js"></script>
    <script src="{{url('/')}}/admin/vendors/ckfinder/ckfinder.js"></script>
   
    <script src="{{url('/')}}/admin/vendors/ckeditor/adapters/jquery.js"></script>

    <script type="text/javascript" src="{{url('/')}}/admin/vendors/tinymce/js/tinymce/tinymce.min.js"></script>

    {{-- <script src="{{url('/')}}/admin/js/custom.js"></script> --}}
    <script src="{{url('/')}}/admin/js/editors.js"></script>
<script>
function show() {
	   document.getElementById("them_size").style.display= "block";
       document.getElementById("dongia").style.display = "none";
       document.getElementById("ipdongia").type = "hidden";
       //document.getElementById("dv").style.display = "none";
       //document.getElementById("andv").type = "hidden";
       //document.getElementById("giakm").style.display = "none";
      //document.getElementById("angia").type = "hidden";
       document.getElementById("size").type = "text";
       document.getElementById("gia").type = "text";
	}
</script>
@endsection