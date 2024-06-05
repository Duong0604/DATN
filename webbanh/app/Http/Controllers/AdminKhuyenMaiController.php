<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\promo_type;
use App\promotions;
use App\Http\Requests;
use App\Http\Requests\ThemKhuyenmaiRequest;
class AdminKhuyenMaiController extends Controller
{
    //quản lí khuyến mãi
    public function getCapnhatkm_admin($id)
    {
        $dsloaikm = promo_type::all();
        $dsloaikm = $this->chuyen_mang_doi_tuong_sang_mang_key($dsloaikm);
        $dskm = promotions::find($id);
        return view('admin_km.capnhatkm_admin',['dskm'=>$dskm,'dsloaikm'=>$dsloaikm]);
    }
    public function postCapnhatkm_admin(Request $reqcapnhat)
    {
          if($reqcapnhat->file('hinh'))
        {
            if($reqcapnhat->file('hinh')->isValid())
            {
                $reqcapnhat->file('hinh')->move("source/images/promotions",$reqcapnhat->file('hinh')->getClientOriginalName());
                $hinh = $reqcapnhat->file('hinh')->getClientOriginalName();
                //print_r($request->file('hinh_san_pham')->getClientOriginalName());exit;
            }
        }
        else
        {
            $hinh = $reqcapnhat->input('hinh');
        }
        DB::table('promotions')
            ->where('id', $reqcapnhat->input('ma'))
            ->update(
                [
                     'id_type_promo' => $reqcapnhat->input('ma_loai'),
                     'promo_value' => $reqcapnhat->input('value_promo'),
                     'promo_title' =>$reqcapnhat->input('title'),
                     'content'=> $reqcapnhat->input('noidung'),
                     'image' => $hinh,
                     'date_begin' =>$reqcapnhat->input('begindate') ,
                     'date_end' => $reqcapnhat->input('enddate'),
                     'status' =>$reqcapnhat->input('trangthai'),
                ]
            );
        return redirect()->route('danhsachkhuyenmai');
    }
    public function postXoakm_admin(Request $request)
    {
        $ds_xoa = $request->input('thao_tac');
        $khuyenmai = DB::table('promotions')->whereIn('id',$ds_xoa)->update(['status'=>0]);
        return redirect("/admin/danh-sach-khuyen-mai");
    }
    public function getthemkhuyenmai_admin()
    {

        $dsloaikm = promo_type::all();
        return view('admin_km.themkm_admin',['dsloaikm'=>$dsloaikm]);
    }
    public function danhsachkhuyenmai_admin()
    {
        $dskm = promotions::with('promo_type')->orderBy('id','desc')->paginate(10);
        return view('admin_km.danhsachkm_admin',['dskm'=>$dskm]);
    }
    public function postthemkhuyenmai_admin(ThemKhuyenmaiRequest $req)
    {
         if($req->file('hinh'))
        {
            if($req->file('hinh')->isValid())
            {
                $req->file('hinh')->move("source/images/promotions",$req->file('hinh')->getClientOriginalName());
                $hinh = $req->file('hinh')->getClientOriginalName();
                //print_r($request->file('hinh_san_pham')->getClientOriginalName());exit;
            }
        }
        else
        {
           $req->session()->flash('status', 'Bạn phải chọn hình quảng cáo cho chương trình khuyến mãi');
            return redirect('admin/them-khuyen-mai-moi');
        }
        $code = $this->taomakhuyenmai(5);
        $datebg = $req->begindate;
        $dateend = $req->enddate;
        $datenow = date('Y-m-d');
        $kiemtracode = promotions::where('code','=',$code)->first();
        print_r($kiemtracode);
        if($req->ma_loai==2)
        {
            if($req->value_promo>90 || $req->value_promo <1)
            {
                $req->session()->flash('status', 'Giá trị phần trăm khuyến mãi tối đa là 90% và tối thiểu là 1%');
                return redirect('admin/them-khuyen-mai-moi');
            }
        }
        else
        {
            if($req->value_promo>1000000 || $req->value_promo <10000)
            {
                $req->session()->flash('status', 'Giá trị tiền khuyến mãi tối đa là 1.000.000 đ và tối thiểu là 10.000 đ');
                return redirect('admin/them-khuyen-mai-moi');
            }
        }
        if(count($kiemtracode)<1)
        {
            if(strtotime($datebg) > strtotime($datenow) || strtotime($datenow) == strtotime($datebg))
            {
                if(strtotime($dateend) > strtotime($datenow))
                {
                    if(strtotime($dateend) > strtotime($datebg))
                    {
                        $promo = new promotions;
                        $promo->id_type_promo = $req->ma_loai;
                        $promo->promo_value = $req->value_promo;
                        $promo->promo_title = $req->title;
                        $promo->content = $req->noidung;
                        $promo->image = $hinh;
                        $promo->date_begin = $req->begindate;
                        $promo->date_end = $req->enddate;
                        $promo->code = $code;
                        $promo->status = 1;
                        $promo->save();
                        return redirect('admin/danh-sach-khuyen-mai');
                    }
                    else
                    {
                        $req->session()->flash('status', 'Ngày kết thúc khuyến mãi không được nhỏ hơn ngày bắt đầu');
                        return redirect('admin/them-khuyen-mai-moi');
                    }   
                }
                else{
                    $req->session()->flash('status', 'Ngày kết thúc khuyến mãi không được nhỏ hơn ngày hiện tại');
                    return redirect('admin/them-khuyen-mai-moi');
                }
            }
            else
            {
                $req->session()->flash('status', 'Ngày bắt đầu khuyến mãi không được nhỏ hơn ngày hiện tại');
                return redirect('admin/them-khuyen-mai-moi');
            }
        }
        else
        {
             $req->session()->flash('status', 'Mã khuyến mãi phát sinh bị trùng lặp bạn vui lòng nhập lại khuyến mãi');
            return redirect('admin/them-khuyen-mai-moi');
        }
        //  return redirect('/admin/them-khyen-mai-moi');
    }
    public function postmakm_admin(Request $reqkm)
    {
        $xacnhan = promotions::where('code','=',$reqkm->code);
        return back();
    }
    //hỗ trợ
    public function chuyen_mang_doi_tuong_sang_mang_key($mang_doi_tuong)
    {
        $mang_key = array();
        foreach($mang_doi_tuong as $doi_tuong)
        {
            $mang_key[$doi_tuong->id] = $doi_tuong->name;
        }
         return $mang_key;
    } 
    public function taomakhuyenmai($length)
    {
        $chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        $size = strlen( $chars );
        $str = substr( str_shuffle( $chars ), 0, $length );
        for( $i = 0; $i < $length; $i++ ) {
        $str .= $chars[ rand( 0, $size - 1 ) ];
        }
        return $str;
    }
}
