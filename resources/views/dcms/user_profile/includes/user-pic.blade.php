
<div class="col-lg-4 col-xl-4">
    <div class="card-box text-center">
            @if(Auth::user()->avatar)
        <img src="{{ asset(Auth::user()->avatar) }}" class="rounded-circle avatar-lg img-thumbnail" alt="profile-image">
            @else
            <img src="{{ asset('assets/dcms/img/lochan.png') }}" class="rounded-circle avatar-lg img-thumbnail" alt="profile-image">
            @endif
        <h4 class="mb-0">{{ Auth::user()->name }}</h4>
        <p class="text-muted">{{ Auth::user()->email }}</p>
{{--
        <button type="button" class="btn btn-success btn-xs waves-effect mb-2 waves-light">Follow</button>
        <button type="button" class="btn btn-danger btn-xs waves-effect mb-2 waves-light">Message</button> --}}

        <div class="text-left mt-3">
            <h4 class="font-13 text-uppercase">About Me :</h4>
            <p class="text-muted font-13 mb-3">
                    {{ Auth::user()->name }}'s Profile
            </p>
            <p class="text-muted mb-2 font-13"><strong>Full Name :</strong> <span class="ml-2">{{ Auth::user()->name }}</span></p>

            <p class="text-muted mb-2 font-13"><strong>Mobile :</strong><span class="ml-2">{{ Auth::user()->Phone }}</span></p>

            <p class="text-muted mb-2 font-13"><strong>Role :</strong> <span class="ml-2 ">@if(Auth::user()->role_super) {{ "SUPER" }} @elseif(isset(Auth::user()->role_id)) {{ Auth::user()->Role->name }} @else {{ "No Role Assign"}}  @endif</span></p>

        </div>

    </div> <!-- end card-box -->
</div> <!-- end col-->
