@extends('dcms.layouts.app')
@section('css')

@endsection

@section('content')
<!-- page start-->
<div class="row">
    <div class="col-sm-12">
       <section class="panel">
          <header class="panel-heading">
               @include('dcms.includes.buttons.button-back')
               {{ $_panel }}
          </header>
          <div class="panel-body">
             <div class="adv-table">
                <table  class="display table table-bordered table-striped" id="dynamic-table">
                   <tbody>
                        <tr class="gradeX">
                                <td>Name:</td>
                                <td>{{ $row->name }}</td>
                        </tr>
                        <tr class="gradeX">
                                <td>Email:</td>
                                <td>{{ $row->email }}</td>
                        </tr>
                        <tr class="gradeX">
                                <td>Phone:</td>
                                <td>{{ $row->phone }}</td>
                        </tr>
                        <tr class="gradeX">
                                <td>Comment:</td>
                                <td>{{ $row->comment }}</td>
                        </tr>
                        <tr class="gradeX">
                            <td>Reply:</td>
                            <td>{!! $row->reply !!}</td>
                        </tr>
                        <tr>
                            <td>Status:</td>
                            <td>{{ dm_flag($row->status) }}
                        </tr>
                   </tbody>
                </table>
             </div>
          </div>
       </section>
    </div>
</div>
@endsection

@section('js')


@endsection
