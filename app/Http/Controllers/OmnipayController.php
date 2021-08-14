<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Str;
use App\Models\Order;
use App\Models\Upgrade;
use Carbon\Carbon;
// use PHPViet\Laravel\Omnipay\Facades\VNPay\Gateway as VNPay;
use PHPViet\Laravel\Omnipay\Facades\MoMo\AllInOneGateway as MoMoAIO;
class OmnipayController extends Controller
{
    public function __construct()
    {
        if (Cookie::get('token') != null) {
            $this->middleware(['header_api','auth:api']);
        }
    }
    //Tạo yêu cầu thanh toán
    public function purchase($upgrade_id)
    {

        $latestOrder = Order::orderBy('created_at','DESC')->first();
        $order_id = $latestOrder->id??1;
        $upgrade = Upgrade::find($upgrade_id);
        $period = $upgrade->period??0;
        $order = new Order([
            'order_nr' => strtoupper(date('dmy').$order_id. Str::random(5)),
            'upgrade_id'=>$upgrade_id,
            'user_id'=>Auth::id(),
            'amount' => $upgrade->price,
            'status'=>'Chờ thanh toán',
            'expiration'=> Carbon::now()->addMonths($period),
        ]);
        $order->save();
        $response = MoMoAIO::purchase([
            'amount' => $upgrade->price,
            'returnUrl' => 'https://devpoly.dev/api/order/complete-purchase', //redirect từ MoMo về web
            'notifyUrl' => 'https://devpoly.dev/api/order/notification', //redirect từ MoMo về web
            'orderId' => $order->order_nr,
            'orderInfo'=> 'Thanh toán hoá đơn '.$order->order_nr,
            'requestId' => time(). Str::random(4),
        ])->send();
        // dd($response);
        if ($response->isRedirect()) {
            $redirectUrl = $response->getRedirectUrl();
            // return redirect($redirectUrl);
            // TODO: chuyển khách sang trang MoMo để thanh toán
            return response()->json(['status'=>'success','message'=>'Succsess get order','data'=>$redirectUrl],200);
        }
    }
    public function completePurchase()
    {
        $response = MoMoAIO::completePurchase()->send();

        if ($response->isSuccessful()) {
            // TODO: xử lý kết quả và hiển thị.
            dd($response->getData());
            // print $response->orderId;
            return redirect('order/'.$response->orderId);
            
            // var_dump($response->getData()); // toàn bộ data do MoMo gửi sang.
        } else {
            dd($response->getMessage());
            return redirect('order/'.$response->orderId);
        }
        
    }
    public function notification()
    {
        $response = MoMoAIO::notification()->send();

        if ($response->isSuccessful()) {
            // TODO: xử lý kết quả và hiển thị.
            print $response->amount;
            print $response->orderId;
            
            var_dump($response->getData()); // toàn bộ data do MoMo gửi sang.
            return redirect('order/'.$response->orderId);
            
        } else {
        
            print $response->getMessage();
            return redirect('order/'.$response->orderId);
        }

    }
    //Kiểm tra trạng thái giao dịch
    public function queryTransaction()
    {
        $response = MoMoAIO::queryTransaction([
            'orderId' => '123333',
            'requestId' => time(). Str::random(4),
        ])->send();

        if ($response->isSuccessful()) {
            // TODO: xử lý kết quả và hiển thị.
            print $response->amount;
            print $response->orderId;
            
            var_dump($response->getData()); // toàn bộ data do MoMo gửi về.
            
        } else {
        
            print $response->getMessage();
        }
    }
    //Yêu cầu hoàn tiền
    public function refund()
    {
        $response = MoMoAIO::refund([
            'orderId' => '123',
            'requestId' => time(). Str::random(4),
            'transId' => 321, //Mã giao dịch của MoMo
            'amount' => 50000,
        ])->send();
        
        if ($response->isSuccessful()) {
            // TODO: xử lý kết quả và hiển thị.
            print $response->amount;
            print $response->orderId;
            
            var_dump($response->getData()); // toàn bộ data do MoMo gửi về.
            
        } else {
        
            print $response->getMessage();
        }
    }
    //Kiểm tra trạng thái hoàn tiền
    public function queryRefund()
    {
        $response = MoMoAIO::queryRefund([
            'orderId' => '123',
            'requestId' => time(). Str::random(4),
       ])->send();
       
       if ($response->isSuccessful()) {
           // TODO: xử lý kết quả và hiển thị.
           print $response->amount;
           print $response->orderId;
           
           var_dump($response->getData()); // toàn bộ data do MoMo gửi về.
           
       } else {
       
           print $response->getMessage();
       }
       
    }
}
