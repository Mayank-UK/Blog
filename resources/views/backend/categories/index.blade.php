@extends('layouts.app')

@section('content')
    <div class="container col-md-8 col-md-offset-2">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h2>{{ __('All categories') }}</h2>
            </div>
        
            @if (session('status'))
                <div class="alert alert-success">
                    {{ session('status') }}
                </div>
            @endif
        
            @if ($categories->isEmpty())
                <p>{{ __('There is no category.') }}</p>
            @else
                <table class="table">
                    <tbody>
                        @foreach($categories as $category)
                            <tr>
                            <td>{!! $category->name !!}</td>
                            <td>
                                <form action="{{ action('Admin\CategoriesController@delete', $category->id) }}"  class='form-horizontal' method='post'>
                                    {!! csrf_field() !!}
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