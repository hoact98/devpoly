<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Omnipay\Omnipay;

class OmnipayMomoController extends Controller
{
    public function index()
    {
        $endpoint = 'https://test-payment.momo.vn/gw_payment/transactionProcessor';
        $secretKey = 'YB8LswXQzNsvSsnaLvVUIn7DBE8AHhAu';
        $partnerCode = 'MOMOJ10W20210701';
        $accessKey = '0YQLC9Ofd1qq6zwh';
        $requestId = time()."";
        $requestType = "transactionStatus";
        // Mã đơn hàng cần kiểm tra trạng thái
        $orderId ='';
        $gateway = Omnipay::create('MoMo_QRCode');
        $gateway->initialize([
            'accessKey' => '0YQLC9Ofd1qq6zwh',
            'partnerCode' => 'MOMOJ10W20210701',
            'secretKey' => 'YB8LswXQzNsvSsnaLvVUIn7DBE8AHhAu',
        ]);
        $response = $gateway->notification()->send();

        if ($response->isSuccessful()) {
            // TODO: xử lý kết quả và confirm giao dịch với MoMo.
            
            print $response->amount;
            print $response->partnerRefId;
            
            var_dump($response->getData()); // toàn bộ data do MoMo gửi sang.
            
        } else {
        
            print $response->getMessage();
        }
            //before sign HMAC SHA256 signature
        $rawHash = "partnerCode=".$partnerCode."&accessKey=".$accessKey."&requestId=".$requestId."&orderId=".$orderId."&requestType=".$requestType;
        $signature = hash_hmac("sha256", $rawHash, $secretKey);
    }
}
