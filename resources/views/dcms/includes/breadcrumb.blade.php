 <!-- start page title -->
 <div class="row">
    <div class="col-12">
        <div class="page-title-box">
            <div class="page-title-right">
                <ol class="breadcrumb m-0">
                    <li><a href="{{ URL::route('dcms.dashboard') }}"><i class="fa fa-home">&nbsp;</i></a> </li>
@php $link = "" @endphp
@for($i = 1; $i <= count(Request::segments()); $i++)
@if($i < count(Request::segments()) & $i > 0)
@php $link .= "/" . Request::segment($i); @endphp
                        <li class="breadcrumb-item"><a href="<?= $link ?>">{{ ucwords(str_replace('-',' ',Request::segment($i)))}}</a></li>
@else
                        <li class="breadcrumb-item">{{ucwords(str_replace('-',' ',Request::segment($i)))}}</li>
@endif
@endfor
                </ol>
            </div>
            <h4 class="page-title">{{ $_panel }}</h4>
        </div>
    </div>
</div>
<!-- end page title -->
