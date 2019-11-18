@extends('layouts.app')

@section('content')
    <div class="container col-md-8 col-md-offset-2">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h2>{{ __('All comments') }}</h2>
            </div>
        
            @if (session('status'))
                <div class="alert alert-success">
                    {{ session('status') }}
                </div>
            @endif
        
            @if ($comments->isEmpty())
                <p>{{ __('There is no comment.') }}</p>
            @else
                <table class="table">
                    <tbody>
                        @foreach($comments as $comment)
                            <tr>
                            <td>{!! $comment->content !!}</td>
                            <td>
                                <form action="{{ action('Admin\AdminCommentsController@delete', $comment->id) }}"  class='form-horizontal' method='post'>
                                    {!! csrf_field() !!}
                                    <input type="hidden" name="post_id" value="{{ $comment->post_id }}" >
                                    <button type="submit" class="btn btn-primary">{{ __('Delete') }}</button>
                                </form>
                            </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            @endif
            
        </div>
    </div>
@endsection