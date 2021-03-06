@extends('layouts.app')

@section('content')
    <div class="container col-md-8 col-md-offset-2 shadow p-3">
        <div class="well well bs-component">
            <form class="form-horizontal" method="post">
                
                @foreach ($errors->all() as $error)
                    <p class="alert alert-danger">{{ $error }}</p>
                @endforeach
                
                @if (session('status'))
                    <div class="alert alert-success">
                        {{ session('status') }}
                    </div>
                @endif
                
                <input type="hidden" name="_token" value="{!! csrf_token() !!}">
                <fieldset>
                    <legend>{{ __('Create a new category') }}</legend>
                    <div class="form-group">
                        <label for="name" class="col-lg-2 control-label">{{ __('Name') }}</label>
                        <div class="col-lg-10">
                            <input type="text" class="form-control" id="name" name="name">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-10 col-lg-offset-2">
                            <button type="reset" class="btn btn-default">{{ __('Cancel')  }}</button>
                            <button type="submit" class="btn btn-primary">{{ __('Submit') }}</button>
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
    </div>
@endsection