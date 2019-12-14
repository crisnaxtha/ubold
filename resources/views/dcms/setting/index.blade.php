@extends('dcms.layouts.app')

@section('content')
@include('dcms.includes.breadcrumb')

<div class="row">
        <div class="col-lg-12 col-md-12 col-xs-12">
            <section class="card">
                <div class="card-body">
                        @include('dcms.setting.includes.button-nav')
                        @include('dcms.includes.flash_message_error')
                    <div class=" form">
                        <?php
                        dm_hpostform(URL::route($_base_route.'.store', ['id'=>$row->id]), 'POST');
                        dm_hinputUpdate('text','name', "Site Name", $row->site_name);
                        dm_hinputUpdate('text','slogan', "Site Slogan", $row->site_slogan);
                        dm_hinputUpdate('text','title', "Site Title", $row->site_title);
                        dm_hckeditorUpdate('description', "Site Description", $row->site_description);
                        dm_htextareaUpdate('meta', "Enter Meta Keyword", $row->meta_keyword);
                        dm_hinputUpdate('file', 'logo', 'Logo', '', '');
                        dm_hdropdownLang('language', 'Default Language', $all_view['lang'], $row->language,  App\Model\Dcms\Eloquent\DM_Post::getLanguageName($row->language));
                        dm_hsubmit('Submit', URL::route($_base_route.'.index'), 'Cancel');
                        dm_closeform();
                        ?>


                    </div>
                </div>
            </section>
        </div>
    </div>
    <?php


    ?>

@endsection

@section('js')

    <!--script for this page-->
    {{-- <script src="{{ asset('assets/dcms/js/form-component.js') }}"></script> --}}
    <script>
        CKEDITOR.replace('description', options);
    </script>

@endsection
