<div class="chart_sec row">
    <div class="col-lg-12 c_top">
        <div class="card-header d-flex align-items-center">
           <h5><i class="fa fa-search">&nbsp;</i>{{__('Company Related Data in Graphical Format')}}</h5>
        </div>
        <div class="card-body">
            <form method="post" action="">
                @csrf
                <div class="row">
                    <div class="col-md-6 pull-right">
                        <select name="account" class="form-control" id="province_id" name="province_id">
                            <option value="one_week">{{__('One week ago')}}</option>
                            <option value="one_month">{{__('One month ago')}}</option>
                            <option value="one_year">{{__('One year ago')}}</option>
                            <option value="two_year">{{__('Two year ago')}}</option>
                        </select>
                    </div>
                    <div class="col-md-5 pad-left-0">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text">From</span>
                            </div>
                            <input type="date" aria-label="fromdate" name="from" class="form-control" required>
                            <div class="input-group-prepend">
                                <span class="input-group-text">To</span>
                            </div>
                            <input type="date" aria-label="todate" name="to" class="form-control" required>
                        </div>
                    </div>
                    <div class="col-md-1 pad-left-0">
                        <button type="button" id="submit_province" class="btn btn-primary"><i class="fa fa-search"></i></button>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </form>
        </div>
    </div>
    <div class="col-lg-6 pad-right-0">
        <div class="card line-chart-example">
            <div class="card-header d-flex align-items-center">
                <div class="row" style="width:100%">
                    <div class="col-md-6">
                        <h5>{{__("Company's type based on type")}}</h5>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <canvas id="district-chart"></canvas>
            </div>
        </div>
    </div>
    <div class="col-lg-6 pad-left-0">
        <div class="card bar-chart-example">
            <div class="card-header d-flex align-items-center">
                <h5>{{__("Company's number based on province")}}</h5>
            </div>
            <div class="card-body">
                <canvas id="province-chart"></canvas>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
</div>
<div class="clearfix"></div>
