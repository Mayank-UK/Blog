@extends('layouts.app')

@section('content')
    <div class="container">
        
        @if (session('status'))
            <div class="alert alert-success">
                {{ session('status') }}
            </div>
        @endif
        
        @if ($posts->isEmpty())
            <p> There is no post.</p>
        @else
            @foreach ($posts as $post)
                <div class="panel panel-default p-3 shadow my-4 ">
                    <h2 class="panel-heading"><a style="text-decoration: none" href="{!! action('BlogController@show', $post->slug) !!}">{!! $post->title !!}</a></h2>
                    <div class="panel-body">
                        {!! mb_substr($post->content,0,500) !!}
                    </div>
                </div>
            @endforeach
        @endif
    </div>
@endsection