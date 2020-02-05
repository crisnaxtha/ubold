@extends('site.layouts.app')

@section('content')
<div class="mid_part inner_page contact_page">

    @include('site.includes.banner-image')


    <div class="breadcrumb-col">
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="index.html"><i class="fa fa-home"></i></a></li>
                <li class="">Queries</li>
            </ol>
        </div>
        <!-- <div class="btm_style"><svg viewBox="0 0 1440 120" width="100%" height="100%" fill="#fff"><path d="M1440,21.2101911 L1440,120 L0,120 L0,21.2101911 C120,35.0700637 240,42 360,42 C480,42 600,35.0700637 720,21.2101911 C808.32779,12.416393 874.573633,6.87702029 918.737528,4.59207306 C972.491685,1.8109458 1026.24584,0.420382166 1080,0.420382166 C1200,0.420382166 1320,7.35031847 1440,21.2101911 Z"></path></svg></div> -->
    </div>

    <section class="contact_us_inner">

        <div class="container select-width">
            <h4>सुझाब तथा पर्तिक्रिय</h4>
            @include('site.includes.message-success')

            <form method="post" action="{{ route('site.complain') }}">
                @csrf
                <div class="row">
                    <div class="col-md-12 col-sm-12 form-group">
                        <label>नाम:</label>
                        <input autofocus type="text" name="name" class="form-control" required="required" />
                    </div>
                    <div class="col-md-6 col-sm-6 form-group">
                        <label>इ_मेल:</label>
                        <input type="email" name="email" class="form-control" required="required" />
                    </div>
                    <div class="col-md-6 col-sm-6 form-group">
                        <label>फोन नम्बर:</label>
                        <input type="text" name="phone" class="form-control" required="required" />
                    </div>
                    <div class="col-md-12 col-sm-12 form-group">
                        <label>ठेगाना:</label>
                        <input type="text" name="address" class="form-control" required="required" />
                    </div>
                    {{-- <div class="col-md-12 col-sm-12 form-group">
                        <label>सेलेक्ट सुब्जेच्त </label>
                        <br>
                        <input type="checkbox" name="subject" id="maths">
                        <label for="maths"> अर्थ मन्त्रालय</label>
                        <input type="checkbox" name="subject" id="science">
                        <label for="sceince">लोक सेवा आयोग</label>
                        <input type="checkbox" name="subject" id="english">
                        <label for="english">राहदानी विभाग</label>
                    </div> --}}
                    {{-- <div class="col-md-12 col-sm-12 form-group">
                        सेलेक्ट गेंदर
                        <br>
                        <input type="radio" name="gender" id="male">
                        <label for="male">महिला</label>
                        <br>
                        <input type="radio" name="gender" id="female">
                        <label for="female">पुरुष </label>

                    </div> --}}

                    <div class="col-md-12 col-sm-12 form-group">
                        <label>टिप्पणी गर्नुहोस्:</label>
                        <textarea class="form-control" rows="5" placeholder="Write your comments here..." name="message"></textarea>
                    </div>

                    {{-- <div class="col-md-12 col-sm-12 form-group">
                        <label for="fileselect">Upload:</label>
                        <input type="file" name="upload" id="fileselect">

                    </div> --}}

                    <div class="clearfix"></div>
                </div>
                <button type="submit" name="button" class="btn btn-info">Send &nbsp; <i class="fa fa-paper-plane-o"></i></button>
            </form>
            <hr>
        </div>

        <div class="clearfix"></div>

    </section>

    <div class="clearfix"></div>
</div>
@if(isset($data['complain']))
<section class="contact_us_inner1">
    <div class="container select-width">
        <h4>Question and Answer</h4>
        <div class="all">
            <div class="question">
                <div class="row">
                    @foreach($data['complain'] as $row)
                    <div class="col-md-12">
                        <p><b><i class="fa fa-question-circle-o" aria-hidden="true"></i>&nbsp;&nbsp;{{ $row->comment }}</b></p>
                        <div class="answer">
                            {!! $row->reply !!}
                        </div>
                    </div>
                    @endforeach
                    {{ $data['complain']->links() }}
                </div>
            </div>
        </div>
    </div>
</section>
@endif
<br>

@endsection

@section('js')

@endsection
