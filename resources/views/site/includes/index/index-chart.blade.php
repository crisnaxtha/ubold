<div class="chart_sec row">
    <div class="col-lg-12 c_top">
        <div class="card-header d-flex align-items-center" style="position: relative;">
           <h5><i class="fa fa-search">&nbsp;</i>{{__('Company Related Data in Graphical Format')}}</h5>
        </div>
        <div class="card-body">
           <form method="post" action="?">
              <div class="row">
                <div class="col-md-6 pull-right">
                    <select name="account" class="form-control" id="province_id" name="province_id">
                        <option value="1">{{__('Province 1')}}</option>
                        <option value="2">{{__('Province 2')}}</option>
                        <option value="3">{{__('Bagmati Province')}}</option>
                        <option value="4">{{__('Gandaki Province')}}</option>
                        <option value="5">{{__('Province 5')}}</option>
                        <option value="6">{{__('Karnali Province')}}</option>
                        <option value="7">{{__('Sudurpaschim Province')}}</option>
                    </select>
                </div>
                <div class="col-md-5 pad-left-0">
                    <div class="input-group">
                       <div class="input-group-prepend">
                          <span class="input-group-text">From</span>
                       </div>
                       <input type="date" aria-label="fromdate" class="form-control">
                       <div class="input-group-prepend">
                          <span class="input-group-text">To</span>
                       </div>
                       <input type="date" aria-label="todate" class="form-control">
                    </div>
                 </div>
                 <div class="col-md-1 pad-left-0">
                    <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
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
                        <h5>{{__('District')}}</h5>
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
                <h5>{{__("Province")}}</h5>
            </div>
            <div class="card-body">
                <canvas id="province-chart"></canvas>
            </div>
        </div>
    </div>

    <div class="clearfix"></div>
</div>
<div class="clearfix"></div>
