@extends('layouts.app')

@section('content')
<style>
    .posts-btn{background: black; text-decoration: none; transition: all 0.2s ease;}
    .posts-btn:hover{background: white; text-decoration: none; color: black; transition: all 0.2s ease; font-size: 230%;}
</style>

<div class="p-3 text-white" style="height: 500px; background: url('images/bg.jpg') no-repeat center fixed; background-size: cover">
    <div class="text-center py-4">
        @if (session('status'))
            <div class="alert alert-success">
                {{ session('status') }}
            </div>
        @endif
        <h1 class="text-center">{{ __('Welcome') }}</h1><br/>
        <p style="margin-top: 200px">Read the latest posts from your favourite creators.</p>
        <a class="posts-btn h2 p-2" href="{{ url('/blog') }}">Get Started!</a>
    </div>
</div>
@endsection