@extends('site.layouts.app')

@section('content')
<div class="mid_part inner_page">
    @include('site.includes.banner-image')


    <div class="breadcrumb-col">
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="index.html"><i class="fa fa-home"></i></a></li>
                <li class="">FAQ</li>
            </ol>
        </div>
        <!-- <div class="btm_style"><svg viewBox="0 0 1440 120" width="100%" height="100%" fill="#fff"><path d="M1440,21.2101911 L1440,120 L0,120 L0,21.2101911 C120,35.0700637 240,42 360,42 C480,42 600,35.0700637 720,21.2101911 C808.32779,12.416393 874.573633,6.87702029 918.737528,4.59207306 C972.491685,1.8109458 1026.24584,0.420382166 1080,0.420382166 C1200,0.420382166 1320,7.35031847 1440,21.2101911 Z"></path></svg></div> -->
    </div>

    <section class="dtl_sec">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <div class="card">
                        <div class="card-header">
                            <div class="row">
                                <div class="col-lg-12 col-md-12">
                                    <h4>&nbsp; <i class="fa fa-question-circle">&nbsp;</i> FAQ</h4>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>

                        <div class="faq_sec">

                            <div>
                                <ul>
                                    @foreach($data['rows'] as $row)
                                    <li @if($loop->iteration == 1) class="minus" @endif>
                                        <h4 class="ttl"><a href="">{{ $row->title }}</a></h4>
                                        <div class="hide_faq" @if($loop->iteration == 1) style="display: block;" @endif>
                                            {!! $row->description !!}
                                        </div>
                                    </li>
                                    @endforeach
                                </ul>
                            </div>

                            {{-- <div class="tab-pane" id="tab2">
                                <ul>
                                    <li>
                                        <h4 class="ttl"><a href="">can i cancel my The NGO?</a></h4>
                                        <div class="hide_faq">
                                            <p>No. All The NGOs are final.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <h4 class="ttl"><a href="">How can I know the The NGO I have won?</a></h4>
                                        <div class="hide_faq">
                                            <p>The NGO that you win are shown in the “won” section under “My Account”</p>
                                        </div>
                                    </li>
                                    <li>
                                        <h4 class="ttl"><a href="">What are your working hours?</a></h4>
                                        <div class="hide_faq">
                                            <p>From Saturday to Thursday 10 am to 7 pm</p>
                                        </div>
                                    </li>
                                    <li>
                                        <h4 class="ttl"><a href="">.Can I The NGO from the same account on The NGO and plates as well?</a></h4>
                                        <div class="hide_faq">
                                            <p>Yes, participation in Abu Dhabi Distinguished Plate The NGO may require a separate security deposit.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <h4 class="ttl"><a href="">Car I pay the security deposit by credit card?</a></h4>
                                        <div class="hide_faq">
                                            <p>Yes.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <h4 class="ttl"><a href="">can other nationalities participate?</a></h4>
                                        <div class="hide_faq">
                                            <p>Yes.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <h4 class="ttl"><a href="">Can I cancel my The NGO?</a></h4>
                                        <div class="hide_faq">
                                            <p>No. All The NGOs are final.</p>
                                        </div>
                                    </li>

                                    <li>
                                        <h4 class="ttl"><a href="">Is there a fee to participate?</a></h4>
                                        <div class="hide_faq">
                                            <p>No. Participate is free of cost. However, you will be required to make a security deposit.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <h4 class="ttl"><a href="">Is The NGO time going to be extended?</a></h4>
                                        <div class="hide_faq">
                                            <p>The The NGO time is extended only in case any The NGO took place at the last minutes of the The NGO time to allow other The NGOders to submit their offers</p>
                                        </div>
                                    </li>
                                    <li>
                                        <h4 class="ttl"><a href="">How do I participate in the The NGO?</a></h4>
                                        <div class="hide_faq">
                                            <p>Participation is easy and outlined below:</p>
                                            <ol>
                                                <li>Register on this website. </li>
                                                <li>Provide a security deposit (we accept credit card, bank transfer & bank deposit)</li>
                                                <li>Find your vehicle you like to The NGO on. </li>
                                                <li>Place your The NGOs and follow the The NGO </li>
                                                <li>Make payment and collect your vehicle or have it exported.</li>
                                            </ol>
                                        </div>
                                    </li>
                                    <li>
                                        <h4 class="ttl"><a href="">How do I get my Online Security Deposit back?</a></h4>
                                        <div class="hide_faq">
                                            <p>Your online deposit is refunded automatically at the end of the The NGO. If you have not received your online deposit within 21 days, please contact your credit card issuing bank. When you make a security deposit, our system just blocks the necessary amount from your credit card. Very rarely, the card issuing bank does not release the block until and unless the customer asks about it or raises a dispute.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <h4 class="ttl"><a href="">I did not receive my activation code?</a></h4>
                                        <div class="hide_faq">
                                            <p>Just send an email to cs@emiratesThe NGO.com and please mention your username and mobile number you used for your account.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <h4 class="ttl"><a href="">I forgot my username or password?</a></h4>
                                        <div class="hide_faq">
                                            <p>Just go to this page: <a href="#">The NGO The NGO The NGO The NGO The NGO</a> And enter your username or mobile number. You will receive and email & SMS with your new password. Please remember to change your password after logging in.</p>
                                        </div>
                                    </li>

                                </ul>
                            </div>

                            <div class="tab-pane" id="tab3">
                                <ul>
                                    <li>
                                        <h4 class="ttl"><a href="">How do I get my Online Security Deposit back?</a></h4>
                                        <div class="hide_faq">
                                            <p>Your online deposit is refunded automatically at the end of the The NGO. If you have not received your online deposit within 21 days, please contact your credit card issuing bank. When you make a security deposit, our system just blocks the necessary amount from your credit card. Very rarely, the card issuing bank does not release the block until and unless the customer asks about it or raises a dispute.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <h4 class="ttl"><a href="">I did not receive my activation code?</a></h4>
                                        <div class="hide_faq">
                                            <p>Just send an email to cs@emiratesThe NGO.com and please mention your username and mobile number you used for your account.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <h4 class="ttl"><a href="">I forgot my username or password?</a></h4>
                                        <div class="hide_faq">
                                            <p>Just go to this page: <a href="#">The NGO The NGO The NGO The NGO The NGO</a> And enter your username or mobile number. You will receive and email & SMS with your new password. Please remember to change your password after logging in.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <h4 class="ttl"><a href="">Is there a fee to participate?</a></h4>
                                        <div class="hide_faq">
                                            <p>No. Participate is free of cost. However, you will be required to make a security deposit.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <h4 class="ttl"><a href="">Is The NGO time going to be extended?</a></h4>
                                        <div class="hide_faq">
                                            <p>The The NGO time is extended only in case any The NGO took place at the last minutes of the The NGO time to allow other The NGOders to submit their offers</p>
                                        </div>
                                    </li>
                                    <li>
                                        <h4 class="ttl"><a href="">How do I participate in the The NGO?</a></h4>
                                        <div class="hide_faq">
                                            <p>Participation is easy and outlined below:</p>
                                            <ol>
                                                <li>Register on this website. </li>
                                                <li>Provide a security deposit (we accept credit card, bank transfer & bank deposit)</li>
                                                <li>Find your vehicle you like to The NGO on. </li>
                                                <li>Place your The NGOs and follow the The NGO </li>
                                                <li>Make payment and collect your vehicle or have it exported.</li>
                                            </ol>
                                        </div>
                                    </li>

                                    <li>
                                        <h4 class="ttl"><a href="">can i cancel my The NGO?</a></h4>
                                        <div class="hide_faq">
                                            <p>No. All The NGOs are final.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <h4 class="ttl"><a href="">How can I know the The NGO I have won?</a></h4>
                                        <div class="hide_faq">
                                            <p>The NGO that you win are shown in the “won” section under “My Account”</p>
                                        </div>
                                    </li>
                                    <li>
                                        <h4 class="ttl"><a href="">What are your working hours?</a></h4>
                                        <div class="hide_faq">
                                            <p>From Saturday to Thursday 10 am to 7 pm</p>
                                        </div>
                                    </li>
                                    <li>
                                        <h4 class="ttl"><a href="">.Can I The NGO from the same account on The NGO and plates as well?</a></h4>
                                        <div class="hide_faq">
                                            <p>Yes, participation in Abu Dhabi Distinguished Plate The NGO may require a separate security deposit.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <h4 class="ttl"><a href="">Car I pay the security deposit by credit card?</a></h4>
                                        <div class="hide_faq">
                                            <p>Yes.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <h4 class="ttl"><a href="">can other nationalities participate?</a></h4>
                                        <div class="hide_faq">
                                            <p>Yes.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <h4 class="ttl"><a href="">Can I cancel my The NGO?</a></h4>
                                        <div class="hide_faq">
                                            <p>No. All The NGOs are final.</p>
                                        </div>
                                    </li>

                                </ul>
                            </div> --}}
                        </div>

                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </section>

    <div class="clearfix"></div>
</div>

@endsection

@section('js')
<script type="text/javascript">
    $('.ttl').click(function () {
        if ($(this).next().is(":hidden")) {
            $(this).parent().parent().children().removeClass('minus');

            //$('.hide_faq').hide();
            $('.hide_faq').slideUp("slow");

            $(this).parent().addClass("minus");
            $(this).next().slideToggle('slow');
        } else {
            $(this).next().slideToggle('slow', function () {
                $(this).parent().toggleClass('minus');
            });
        }
        return false;
    });
    </script>

@endsection
