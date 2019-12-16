@extends('dcms.layouts.app')

@section('content')
@include('dcms.includes.breadcrumb')

<div class="row">
        <div class="col-lg-12 col-md-12 col-xs-12">
            <section class="card">
                <div class="card-body">
                        @include('dcms.includes.flash_message_error')
                    <div class=" form">
                        <?php
                        dm_hpostform(URL::route($_base_route.'.store'), 'POST');
                        dm_hdropdownType('type','Type', $data['type'] );
                        // dm_hckeditor('description', "Description");
                        dm_hinput('file', 'image', 'Banner Image', '', '');
                        // dm_textarea('link', "Youtube Link( Embed)" );
                        // dm_hcheckbox('checkbox','status', "Status");
                        // dm_hcheckbox('checkbox','featured', "Featured");
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


<script>
        CKEDITOR.replace('description', options);
    </script>
@endsection
