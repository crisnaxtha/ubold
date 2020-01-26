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
                        dm_hpostform(URL::route($_base_route.'.update', ['id'=>$row->id]), 'PUT');
                        dm_hdropdownType('type','Type', $data['type'], $row->type );
                        // dm_hinput('text','name', "Title", $row->title );
                        // dm_hckeditor('description', "Description", $row->description);
                        dm_hinputUpdate('file', 'image', 'Banner Image', '', '');

                        // dm_textareaUpdate('link', "Youtube Link( Embed)", $row->link );
                        // dm_hcheckbox('checkbox','status', "Status", $row->status);
                        // dm_hcheckbox('checkbox','featured', "Featured", $row->featured);
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
        CKEDITOR.replace('link', options);
    </script>
@endsection
