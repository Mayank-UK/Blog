@extends('layouts.app')

@section('content')
    <div class="container col-md-8 col-md-offset-2">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h2>{{ __('All users') }}</h2>
            </div>
            
            @if (session('status'))
                <div class="alert alert-success">
                    {{ session('status') }}
                </div>
            @endif
            
            @if ($users->isEmpty())
                <p>{{ __('There is no user.') }}</p>
            @else
                <table class="table">
                    <thead>
                        <tr>
                            <th>{{ __('ID') }}</th>
                            <th>{{ __('Name') }}</th>
                            <th>{{ __('Email') }}</th>
                            <th>{{ __('Joined at') }}</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($users as $user)
                            <tr>
                                <td>{!! $user->id !!}</td>
                                <td>
                                    <a href="{!! action('Admin\UsersController@edit', $user->id) !!}">{!! $user->name !!} </a>
                                </td>
                                <td>{!! $user->email !!}</td>
                                <td>{!! $user->created_at !!}</td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            @endif
        
        </div>
    </div>
@endsection