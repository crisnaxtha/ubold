<?php

namespace App\Http\Controllers\Dcms;

use Illuminate\Http\Request;
use App\Http\Controllers\Dcms\DM_BaseController;
use GuzzleHttp\Client;
use App\Model\Api\DistrictData;
use App\Model\Api\ProvinceData;
use App\Model\Api\DateData;
use Illuminate\Support\Str;


class ExternalServicesController extends DM_BaseController
{
    protected $url = 'http://172.27.1.76:8080';
    protected $panel = 'API Data';
    protected $base_route = 'dcms.api';
    protected $view_path ='dcms.api';

    public function __construct(Client $model, DistrictData $model_1, ProvinceData $model_2, DateData $model_3)
    {
        $this->model = $model;
        $this->model_1 = $model_1;
        $this->model_2 = $model_2;
        $this->model_3 = $model_3;
    }

    public function index() {
        return view(parent::loadView($this->view_path.'.index'));
    }
    public function apiAuthentication() {
        $client = $this->model;
        $response = $client->request('POST', $this->url.'/cro-search-engine/ocr/v1/authenticate', ['json' => ['userName'=>'OCRWEB', 'password'=>'0CR@W3B']]);
        $statusCode = $response->getStatusCode();
        $body = $response->getBody()->getContents();
        return $body;

    }

    public function apiDate($from_date, $to_date) {
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

    public function apiDateWise(){
        $one_day_ago = date("Y-m-d", strtotime("-1 day"));
        $one_week_ago = date("Y-m-d", strtotime("-1 week"));
        $one_month_ago = date("Y-m-d", strtotime("-1 month"));
        $one_year_ago = date("Y-m-d", strtotime("-1 year"));
        $two_year_ago = date("Y-m-d", strtotime("-2 year"));

        $one_day_ago_data = $this->apiDate($one_day_ago, date('Y-m-d'));
        $one_week_ago_data = $this->apiDate($one_week_ago, date('Y-m-d'));
        $one_month_ago_data = $this->apiDate($one_month_ago, date('Y-m-d'));
        $one_year_ago_data = $this->apiDate($one_year_ago, date('Y-m-d'));
        $two_year_ago_data = $this->apiDate($two_year_ago, date('Y-m-d'));
        if(isset($one_day_ago) && isset($one_week_ago_data) && isset($one_month_ago_data) && isset($one_year_ago_data) && isset($two_year_ago_data)) {
            $this->model_3::truncate();

            $data['one_day_ago'] = json_decode($one_day_ago_data);
            foreach($data['one_day_ago'] as $row) {
                $this->model_3::create([
                    'title' => $row->companyType,
                    'slug' => Str::slug($row->companyType),
                    'data'  => $row->totalCompany,
                    'flag' => "one_day",
                ]);
            }

            $data['one_week_ago_data'] = json_decode($one_week_ago_data);
            foreach($data['one_week_ago_data'] as $row) {
                $this->model_3::create([
                    'title' => $row->companyType,
                    'slug' => Str::slug($row->companyType),
                    'data'  => $row->totalCompany,
                    'flag' => "one_week",
                ]);
            }

            $data['one_month_ago_data'] = json_decode($one_month_ago_data);
            foreach($data['one_month_ago_data'] as $row) {
                $this->model_3::create([
                    'title' => $row->companyType,
                    'slug' => Str::slug($row->companyType),
                    'data'  => $row->totalCompany,
                    'flag' => "one_month",
                ]);
            }

            $data['one_year_ago_data'] = json_decode($one_year_ago_data);
            foreach($data['one_year_ago_data'] as $row) {
                $this->model_3::create([
                    'title' => $row->companyType,
                    'slug' => Str::slug($row->companyType),
                    'data'  => $row->totalCompany,
                    'flag' => "one_year",
                ]);
            }

            $data['two_year_ago_data'] = json_decode($two_year_ago_data);
            foreach($data['two_year_ago_data'] as $row) {
                $this->model_3::create([
                    'title' => $row->companyType,
                    'slug' => Str::slug($row->companyType),
                    'data'  => $row->totalCompany,
                    'flag' => "two_year",
                ]);
            }
            session()->flash('alert-success', $this->panel.' Updated Successfully!!');

        }
        else {
            session()->flash('alert-danger', $this->panel.' can not be done');
        }
        return redirect()->route($this->base_route.'.index');

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
        // return $body;
        if(isset($body)){
            $data = json_decode($body);
            $this->model_1::truncate();
            foreach($data as $row) {
                $this->model_1::create([
                    'title' => $row->districtEnglishName,
                    'slug' => Str::slug($row->districtEnglishName),
                    'data'  => $row->totalCompany
                ]);
            }
        session()->flash('alert-success', $this->panel.' Updated Successfully!!');

        }
        else {
            session()->flash('alert-danger', $this->panel.' can not be done');
        }
        return redirect()->route($this->base_route.'.index');
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
        // return $body;
        if(isset($body)){
        $data = json_decode($body);
        $this->model_2::truncate();
            foreach($data as $row) {
                $this->model_2::create([
                    'title' => $row->stateEnglishName,
                    'slug' => Str::slug($row->stateEnglishName),
                    'data'  => $row->totalCompany
                ]);
            }
        session()->flash('alert-success', $this->panel.' Updated Successfully!!');
        } else {
            session()->flash('alert-danger', $this->panel.' can not be done');
        }
        return view(parent::loadView($this->view_path.'.index'));
    }
}
