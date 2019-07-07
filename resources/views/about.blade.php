@extends('layouts.app')

@section('content')
    <div class="container-fluid">
        <div class="row p-3"> <!-- Give this div your desired background color -->
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center py-4 shadow">
                        <h1>{{ __('About') }}</h1>
                        <h4>{{__('This blog application is created by me in order to grasp the depth of laraval and learn more practical aspects of laravel. This is also included in my portfolio so that my future clients can see some of my work.') }}</h4><br/>
                        <h4>{{ __('This page can be customized to your liking.') }}</h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection