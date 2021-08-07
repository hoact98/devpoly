<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class OmnipayMomoController extends Controller
{
    public function index()
    {
        $endpoint = 'https://test-payment.momo.vn/gw_payment/transactionProcessor';
        $secretKey = 'YB8LswXQzNsvSsnaLvVUIn7DBE8AHhAu';
        $partnerCode = 'MOMOJ10W20210701';
        $accessKey = '0YQLC9Ofd1qq6zwh';
        $requestId = time()."";
        
    }
}
