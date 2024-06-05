<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Gloudemans\Shoppingcart\Facades\Cart;
use App\address;
use App\products;
use App\orders;
use App\Http\Requests;
use App\khachhang;
use App\Bill;
use App\BillDetail;
use Session;
use App\WC_Order;
use Mail;
use App\Http\Requests\CheckoutRequest;
use App\promotions;
class CheckoutController extends Controller
{
    public function index(){
        //check for user login
        if(Auth::check()){
            $cartItems = Cart::content();
            //echo "checkout";
            return view('page.checkout' , compact(('cartItems')));
        }
        else{
            return redirect('dang-nhap');
        }
    }
     public function postmakm(Request $req)
    {
        $datenow = date('Y-m-d');
        $code = $req->code;
        $kiemtra = promotions::where('code',$code)->first();
        if($code=="")
        {
            $req->session()->flash('thatbai', 'Bạn chưa nhập mã');
                return back();
        }
        else
        {
            if(count($kiemtra)>0)
            {
                if((strtotime($kiemtra->date_begin)>strtotime($datenow)||strtotime($kiemtra->date_begin)==strtotime($datenow))&&(strtotime($kiemtra->date_end)<strtotime($datenow)||strtotime($kiemtra->date_end)==strtotime($datenow)))
                {
                    $req->session()->flash('thatbai', 'Mã khuyến mãi đã hết hạn hoặc chưa đến ngày áp dụng!');
                    return back();
                }
                else
                {
                    if($kiemtra->used==0)
                    {
                        $req->session()->flash('status', 'Áp dụng mã khuyến mãi thành công');
                        $cartItems = Cart::content();
                        return view('page.checkout',['kiemtra'=>$kiemtra,'cartItems'=>$cartItems]);   
                    }
                    else
                    {
                        $req->session()->flash('thatbai', 'Mã khuyến mãi đã được sử dụng!');
                        return back();
                    }
                }
                
            }
            else
            {
                $req->session()->flash('thatbai', 'Mã khuyến mãi sai!');
                return back();
            }
        }
    }
     public function formvalidate(CheckoutRequest $request){
       $cartItems = Cart::content();
       $cart = Session::get('cart');
       if(count($cartItems)>0)
       {
      // dd($cartItems);
              $userid = Auth::user()->id;

            $customer = new khachhang;
            $customer->name = $request->fullname;

            $customer->email = $request->email;
            $customer->address = $request->diachi;
            $customer->phone = $request->sdt;
            
            $customer->user_id = $userid;
           // $address->pincode = $request->pincode;
           // $address->payment_type = $request->pay;
            $customer->save();
            $user = Auth::user();
            
            $bill = new Bill;
            //$bill->id = $userid;
            $bill->date_order = date('Y-m-d H:i:s');
            $bill->id_promo = $request->idpromo;
            $bill->total =$request->tongtien;
            $bill->payments = $request->pay;
            $bill->note = $request->note;
            $bill->status = 1;
            if($request->pay=="COD")
            {
                $bill->payment_status = 1;
            }
            if ($request->pay=="paypal") {
                $bill->payment_status = 2;
            }
            if ($request->pay=="Ngân lượng") {
                $bill->payment_status = 1;
            }
            $customer->bill()->save($bill);
            foreach($cartItems as $cartItem){
            $bill_detail = new BillDetail;
            $bill_detail->order_id   = $bill->id;
            $bill_detail->product_id = $cartItem->id;
            $bill_detail->quantity = $cartItem->qty;
            $bill_detail->unit_price =  $cartItem->price;
            $bill_detail->save();
            Cart::destroy();
            }
            Mail::send('page.maildh',['nguoidung'=>$bill_detail , 'nguoidung'=>$bill], function ($message) use($user)
            {
                $message->from('quoctuanwtfemail1@gmail.com',"Bakers Alley");
                $message->to($user->email,'$user->HoTen');
                $message->subject('Xác nhận tài khoản');
            });
            if ($request->pay=="Ngân lượng")
            {
                return redirect('https://www.nganluong.vn/button_payment.php?receiver=quangnguyenminh2111@gmail.com&product_name='.$bill->id.'&price='.$request ->price.'return_url=tuanthangbakery.hol.es/laravel_5/public&comments=thanh conmg');
            }
            else{
                return redirect('thongbao');
            }
        }
        else
        {
            // $request->session()->flash('thatbai', 'Giỏ hàng trống không thể thanh toán! Vui lòng chọn sản phẩm rồi thành toán');
            // return back();
            return redirect(url('/')."/gio-hang");
        }
    }
        public function activeUser($id){
        $order =  Bill::Find($id);
        if($order){
            $order->status = 1;
            $order->save();
            return redirect()->route('dangki')->with(['thanhcong'=>'Bạn vừa mới đặt hàng thành công']);
        }
    }

    
        //Session::forget('cart');
        //return redirect()->back()->with('thongbao','Đặt hàng thành công');



     

}
