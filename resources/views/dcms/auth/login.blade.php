@extends('dcms.layouts.auth')

@section('content')

<form class="" action="{{ route('login') }}" method="POST">
    {{ csrf_field() }}

        <div class="form-group mb-3 {{ $errors->has('email') ? 'has-error' : ''}}">
            <input type="email" class="form-control" name="email"  placeholder="Email" autofocus>
            @if( $errors->has('email'))
                <span class="help-block">{{ $errors->first('email') }}</span>
            @endif
        </div>
        <div class="form-group mb-3 {{ $errors->has('password') ? 'has-error' : ''}}">
            <input type="password" class="form-control" name="password" placeholder="Password">
            @if( $errors->has('password'))
                <span class="help-block">{{ $errors->first('password') }}</span>
            @endif
        </div>
        <div class="form-group mb-3">
            <label class="checkbox">
                <input type="checkbox" name="remember" value="remember-me" {{ old('remember') }}>&nbsp;{{ __('Remember Me') }}
                <span class="pull-right">
                    <a href="#">{{ __('I forget my password') }}</a>
                </span>
            </label>
        </div>
        <button class="btn btn-primary btn-block" type="submit">{{ __('Sign In') }}</button>
  </form>
@endsection

@section('js')
@include('dcms.includes.flash-message')

@endsection
