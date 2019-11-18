@extends('layouts.app')

@section('content')
    <div class="container col-md-8 col-md-offset-2 shadow py-3">
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
                    <legend>{{ __('Edit a post') }}</legend>
                    <div class="form-group">
                        <label for="title" class="col-lg-2 control-label">{{ __('Title') }}</label>
                        <div class="col-lg-10">
                            <input type="text" class="form-control" id="title" placeholder="Title" name="title" value="{{ $post->title }}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="content" class="col-lg-2 control-label">{{ __('Content') }}</label>
                        <div class="col-lg-10">
                            <textarea class="form-control" rows="3" id="content" name="content">{!! $post->content !!}</textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="select" class="col-lg-2 control-label">{{ __('Categories') }}</label>
                        <div class="col-lg-10">
                            <select class="form-control" id="categories" name="categories[]" multiple>
                    
                                @foreach($categories as $category)
                                    <option value="{!! $category->id !!}" @if(in_array($category->id, $selectedCategories))
                                        selected="selected" @endif >{!! $category->name !!}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-10 col-lg-offset-2">
                            <button type="reset" class="btn btn-default">{{ __('Cancel') }}</button>
                            <button type="submit" class="btn btn-primary">{{ __('Submit') }}</button>
                        </div>
                    </div>
                </fieldset>
            </form>
            <form action="{{ action('Admin\PostsController@delete', $post->id) }}"  class='form-horizontal' method='post'>
                {!! csrf_field() !!}
                <button type="submit" class="btn btn-primary">{{ __('Delete this post') }}</button>
            </form>
            <form action="{{ action('Admin\AdminCommentsController@index', $post->id) }}"  class='form-horizontal' method='post'>
                {!! csrf_field() !!}
                <button type="submit" class="btn btn-primary">{{ __('Show all comments') }}</button>
            </form>
        </div>
    </div>
@endsection