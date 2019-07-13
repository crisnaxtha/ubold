@extends('dcms.layouts.app')

@section('content')
@include('dcms.includes.breadcrumb')
<div class="row">
    <div class="col-lg-12 col-md-12 col-xs-12">
        <section class="card">
            <div class="card-body">
                    @include('dcms.includes.buttons.button-back')
                    @include('dcms.includes.flash_message_error')
                <div class=" form">
                        <?php
                        dm_hpostform(URL::route($_base_route.'.update', [$data['slider']->id]), 'PUT');
                        dm_hinputUpdate('file', 'image', 'Slider Image(*)', '', '');
                        dm_hinputUpdate('text','name', "Slider Name(*)", $data['slider']->name);
                        ?>
                        @foreach($data['lang'] as $lang)
                          <?php
                          if(isset($data['slider_name'][$loop->index]->name)){
                              $slider_name = $data['slider_name'][$loop->index]->name;
                          }else {
                              $slider_name = null;
                          }

                            dm_hidden('rows['.$loop->index.'][lang_id]', $lang->id);
                            dm_hinputUpdate('text','rows['.$loop->index.'][lang_name]', "Slider Name (<strong>$lang->name</strong>)(*)",$slider_name);

                         ?>
                        @endforeach
                        <?php
                        if(isset($data['slider']->image)){
                            dm_thumbImage($data['slider']->image);
                        }
                        dm_hsubmit('Submit', URL::route($_base_route.'.index'), 'Cancel');
                        dm_closeform();
                        ?>
                </div>
            </div>
        </section>
    </div>
</div>

@endsection

@section('js')
@include('dcms.includes.flash-message')


@endsection
