<?php

namespace App\Http\Controllers\Dcms;

use Illuminate\Http\Request;
use App\Http\Controllers\Dcms\DM_BaseController;
use GuzzleHttp\Client;
use App\Model\Api\DistrictData;
use App\Model\Api\ProvinceData;

class ExternalServicesController extends DM_BaseController
{
    protected $model;
    protected $url = 'http://172.27.1.76:8080';

    public function __construct(Client $model, DistrictData $model_1, ProvinceData $model_2)
    {
        $this->model = $model;
        $this->model_1 = $model_1;
        $this->model_2 = $model_2;
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
        $data = json_decode($body);
        $this->model_1::truncate();

        foreach($data as $row) {
            $this->model_1::create([
                'title' => $row->districtEnglishName,
                'data'  => $row->totalCompany
            ]);
        }
        // return $body;
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
        $data = json_decode($body);
        $this->model_2::truncate();

        foreach($data as $row) {
            $this->model_2::create([
                'title' => $row->stateEnglishName,
                'data'  => $row->totalCompany
            ]);
        }
        // return $body;
    }
}
