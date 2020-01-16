<?php

namespace App\Http\Controllers\Site;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use GuzzleHttp\Client;

class ExternalServicesController extends Controller
{
    protected $model;
    protected $url = 'http://172.27.1.76:8080';

    public function __construct(Client $model)
    {
        $this->model = $model;
    }
    public function apiAuthentication() {
        $client = $this->model;
        $response = $client->request('POST', $this->url.'/cro-search-engine/ocr/v1/authenticate', ['json' => ['userName'=>'OCRWEB', 'password'=>'0CR@W3B']]);
        $statusCode = $response->getStatusCode();
        $body = $response->getBody()->getContents();
        return $body;

    }

    public function apiDateWise($from_date, $to_date){
        $token_response = $this->apiAuthentication();
        $response = json_decode($token_response);
        $client = $this->model;
        $district_response = $client->request('GET', $this->url.'/cro-search-engine/ocr/v1/companies/total-company-till-date?fromDate='.$from_date.'&toDate='.$to_date, [
            'headers' => [
                'Authorization' => "Bearer $response->token"
            ]
        ]);
        $statusCode = $district_response->getStatusCode();
        $body = $district_response->getBody()->getContents();
        return $body;
    }

    public function apiDistrictWise() {
        $token_response = $this->apiAuthentication();
        $response = json_decode($token_response);
        $client = $this->model;
        $district_response = $client->request('GET', $this->url.'/cro-search-engine/ocr/v1/companies/total-company-district-wise', [
            'headers' => [
                'Authorization' => "Bearer $response->token"
            ]
        ]);
        $statusCode = $district_response->getStatusCode();
        $body = $district_response->getBody()->getContents();
        return $body;
    }

    public function apiProvinceWise() {
        $token_response = $this->apiAuthentication();
        $response = json_decode($token_response);
        $client = $this->model;
        $province_response = $client->request('GET', $this->url.'/cro-search-engine/ocr/v1/companies/total-company-state-wise', [
            'headers' => [
                'Authorization' => "Bearer $response->token"
            ]
        ]);
        $statusCode = $province_response->getStatusCode();
        $body = $province_response->getBody()->getContents();
        return $body;
    }
}
