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

            <form method="post" action="?">
                <div class="row">
                    <div class="col-md-6 col-sm-6 form-group">
                        <label>नाम:</label>
                        <input type="text" name="text" class="form-control" required="required" />
                    </div>
                    <div class="col-md-6 col-sm-6 form-group">
                        <label>थर:</label>
                        <input type="text" name="text" class="form-control" required="required" />
                    </div>
                    <div class="col-md-6 col-sm-6 form-group">
                        <label>इ_मेल:</label>
                        <input type="email" name="text" class="form-control" required="required" />
                    </div>
                    <div class="col-md-6 col-sm-6 form-group">
                        <label>फोन नम्बर:</label>
                        <input type="number" name="text" class="form-control" required="required" />
                    </div>
                    <div class="col-md-12 col-sm-12 form-group">
                        <label>ठेगाना:</label>
                        <input type="text" name="text" class="form-control" required="required" />
                    </div>
                    <div class="col-md-12 col-sm-12 form-group">
                        <label>सेलेक्ट सुब्जेच्त </label>
                        <br>
                        <input type="checkbox" name="subject" id="maths">
                        <label for="maths"> अर्थ मन्त्रालय</label>
                        <input type="checkbox" name="subject" id="science">
                        <label for="sceince">लोक सेवा आयोग</label>
                        <input type="checkbox" name="subject" id="english">
                        <label for="english">राहदानी विभाग</label>
                    </div>
                    <div class="col-md-12 col-sm-12 form-group">
                        सेलेक्ट गेंदर
                        <br>
                        <input type="radio" name="gender" id="male">
                        <label for="male">महिला</label>
                        <br>
                        <input type="radio" name="gender" id="female">
                        <label for="female">पुरुष </label>

                    </div>

                    <div class="col-md-12 col-sm-12 form-group">
                        <label>टिप्पणी गर्नुहोस्:</label>
                        <textarea class="form-control" rows="5" placeholder="Write your comments here..."></textarea>
                    </div>

                    <div class="col-md-12 col-sm-12 form-group">
                        <label for="fileselect">Upload:</label>
                        <input type="file" name="upload" id="fileselect">

                    </div>

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

<section class="contact_us_inner1">

    <div class="container select-width">
        <h4>जबाब अनि उतर</h4>
        <div class="all">
            <div class="question">
                <div class="row">
                    <div class="col-md-8">

                        <p><b><i class="fa fa-question-circle-o" aria-hidden="true"></i>&nbsp;&nbsp;काठमाण्डौ उपत्यकामा सार्वजनिक विदा सम्बन्धी सूचना?</b></p>
                        <div class="answer">
                            <p class="para">काठमाण्डौ उपत्यकामा दिन प्रतिदिन बढ्दै गएको जनसंख्या तथा सवारी चाप, सिमित साघुरा सडकहरू सवारी नियम तथा ट्राफिक संकेत सम्बन्धी सडक प्रयोगकर्ताहरुमा रहेको ज्ञानको कमी र ज्ञान भएकाहरुबाट समेत ट्राफिक नियमको उलंघन गर्ने प्रवृतिका कारण काठमाण्डौ उपत्यकाको ट्राफिक व्यवस्थापन गर्ने कार्य जटिल एंव चुनौतिपुर्ण बन्दै गएको छ । काठमाण्डौ उपत्यकाको शहरी विकासको अनुपातमा सडक बिस्तार र सडक पूर्वाधारहरु निर्माण हुन नसक्नु, विविध कारणबाट यातायात क्षेत्र सरकारको प्राथमिकतामा पर्न नसक्नु, यातायात क्षेत्रमा रुट, सेण्डिकेट लगायत कुराहरुमा निश्चित समूहहरुको मात्र पहुंच हुनु, अवैज्ञानिक प्रतिस्पर्धा, सार्वजनिक सवारी साधन संचालकहरुमा रहेको सेवाग्राही भन्दा नाफामुखी सन्चालन पद्धति प्रक्रियागत त्रुटिपूर्ण सवारी चालक अनुमति पत्र वितरण प्रणाली आदि विधमान रहेकाले सरकारले यातायात क्षेत्रको विकासलाई उच्च प्राथमिकता प्रदान गरी समयमै आवश्यक अल्पकालिन तथा दिर्घकालिन कार्य योजना तयार गरी पहल कदमहरु चालिनु अति आवश्यक भएको छ ।</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="side-section">
                            <div class="icon1">
                                <i class="fa fa-picture-o"></i>&nbsp;&nbsp;&nbsp;
                                <i class="fa fa-download"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="all">
            <div class="question">
                <div class="row">
                    <div class="col-md-8">

                        <p><b><i class="fa fa-question-circle-o" aria-hidden="true"></i>&nbsp;&nbsp;काठमाण्डौ उपत्यकामा सार्वजनिक विदा सम्बन्धी सूचना?</b></p>
                        <div class="answer">
                            <p class="para">काठमाण्डौ उपत्यकामा दिन प्रतिदिन बढ्दै गएको जनसंख्या तथा सवारी चाप, सिमित साघुरा सडकहरू सवारी नियम तथा ट्राफिक संकेत सम्बन्धी सडक प्रयोगकर्ताहरुमा रहेको ज्ञानको कमी र ज्ञान भएकाहरुबाट समेत ट्राफिक नियमको उलंघन गर्ने प्रवृतिका कारण काठमाण्डौ उपत्यकाको ट्राफिक व्यवस्थापन गर्ने कार्य जटिल एंव चुनौतिपुर्ण बन्दै गएको छ । काठमाण्डौ उपत्यकाको शहरी विकासको अनुपातमा सडक बिस्तार र सडक पूर्वाधारहरु निर्माण हुन नसक्नु, विविध कारणबाट यातायात क्षेत्र सरकारको प्राथमिकतामा पर्न नसक्नु, यातायात क्षेत्रमा रुट, सेण्डिकेट लगायत कुराहरुमा निश्चित समूहहरुको मात्र पहुंच हुनु, अवैज्ञानिक प्रतिस्पर्धा, सार्वजनिक सवारी साधन संचालकहरुमा रहेको सेवाग्राही भन्दा नाफामुखी सन्चालन पद्धति प्रक्रियागत त्रुटिपूर्ण सवारी चालक अनुमति पत्र वितरण प्रणाली आदि विधमान रहेकाले सरकारले यातायात क्षेत्रको विकासलाई उच्च प्राथमिकता प्रदान गरी समयमै आवश्यक अल्पकालिन तथा दिर्घकालिन कार्य योजना तयार गरी पहल कदमहरु चालिनु अति आवश्यक भएको छ ।</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="side-section">
                            <div class="icon1">
                                <i class="fa fa-picture-o"></i>&nbsp;&nbsp;&nbsp;
                                <i class="fa fa-download"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="all">
            <div class="question">
                <div class="row">
                    <div class="col-md-8">

                        <p><b><i class="fa fa-question-circle-o" aria-hidden="true"></i>&nbsp;&nbsp;काठमाण्डौ उपत्यकामा सार्वजनिक विदा सम्बन्धी सूचना?</b></p>
                        <div class="answer">
                            <p class="para">काठमाण्डौ उपत्यकामा दिन प्रतिदिन बढ्दै गएको जनसंख्या तथा सवारी चाप, सिमित साघुरा सडकहरू सवारी नियम तथा ट्राफिक संकेत सम्बन्धी सडक प्रयोगकर्ताहरुमा रहेको ज्ञानको कमी र ज्ञान भएकाहरुबाट समेत ट्राफिक नियमको उलंघन गर्ने प्रवृतिका कारण काठमाण्डौ उपत्यकाको ट्राफिक व्यवस्थापन गर्ने कार्य जटिल एंव चुनौतिपुर्ण बन्दै गएको छ । काठमाण्डौ उपत्यकाको शहरी विकासको अनुपातमा सडक बिस्तार र सडक पूर्वाधारहरु निर्माण हुन नसक्नु, विविध कारणबाट यातायात क्षेत्र सरकारको प्राथमिकतामा पर्न नसक्नु, यातायात क्षेत्रमा रुट, सेण्डिकेट लगायत कुराहरुमा निश्चित समूहहरुको मात्र पहुंच हुनु, अवैज्ञानिक प्रतिस्पर्धा, सार्वजनिक सवारी साधन संचालकहरुमा रहेको सेवाग्राही भन्दा नाफामुखी सन्चालन पद्धति प्रक्रियागत त्रुटिपूर्ण सवारी चालक अनुमति पत्र वितरण प्रणाली आदि विधमान रहेकाले सरकारले यातायात क्षेत्रको विकासलाई उच्च प्राथमिकता प्रदान गरी समयमै आवश्यक अल्पकालिन तथा दिर्घकालिन कार्य योजना तयार गरी पहल कदमहरु चालिनु अति आवश्यक भएको छ ।</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="side-section">
                            <div class="icon1">
                                <i class="fa fa-picture-o"></i>&nbsp;&nbsp;&nbsp;
                                <i class="fa fa-download"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
<br>

@endsection

@section('js')

@endsection
