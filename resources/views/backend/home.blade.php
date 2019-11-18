@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row banner">
            <div class="col-md-12">
                <div class="list-group shadow">
                    <div class="list-group-item">
                        <div class="row-action-primary">
                            <i class="mdi-social-person"></i>
                        </div>
                        <div class="row-content">
                            <div class="action-secondary">
                                <i class="mdi-social-info"></i>
                            </div>
                            <h4 class="list-group-item-heading">{{ ('Manage User') }}</h4>
                            <a href="{{ url('/admin/users') }}" class="btn btn-default btn-raised">{{ ('All Users') }}</a>
                        </div>
                    </div>
                    <div class="list-group-separator"></div>
                    <div class="list-group-item">
                        <div class="row-action-primary">
                            <i class="mdi-social-group"></i>
                        </div>
                        <div class="row-content">
                        <div class="action-secondary"><i class="mdi-material-info"></i></div>
                        <h4 class="list-group-item-heading">{{ __('Manage Roles') }}</h4>
                        <a href="{{ url('/admin/roles') }}" class="btn btn-default btn-raised">{{ __('All Roles') }}</a>
                        <a href="{{ url('/admin/roles/create') }}" class="btn btn-primary btn-raised">{{ ('Create A Role') }}</a>
                    </div>
                </div>
                <div class="list-group-separator"></div>
                <div class="list-group-item">
                    <div class="row-action-primary">
                        <i class="mdi-editor-border-color"></i>
                    </div>
                    <div class="row-content">
                        <div class="action-secondary"><i class="mdi-material-info"></i></div>
                        <h4 class="list-group-item-heading">{{ ('Manage Posts') }}</h4>
                        <a href="{{ url('/admin/posts') }}" class="btn btn-default btn-raised">{{ __('All Posts') }}</a>
                        <a href="{{ url('/admin/posts/create') }}" class="btn btn-primary btn-raised">{{ __('Create A Post') }}</a>
                    </div>
                </div>
                <div class="list-group-separator"></div>
                <div class="list-group-item">
                    <div class="row-action-primary">
                        <i class="mdi-file-folder"></i>
                    </div>
                    <div class="row-content">
                        <div class="action-secondary"><i class="mdi-material-info"></i></div>
                        <h4 class="list-group-item-heading">{{ __('Manage Categories') }}</h4>
                        <a href="{{ url('/admin/categories') }}" class="btn btn-default btn-raised">{{ __('All Categories') }}</a>
                        <a href="{{ url('/admin/categories/create') }}" class="btn btn-primary btn-raised">{{ __('New Category') }}</a>
                    </div>
                </div>
                <div class="list-group-separator"></div>
            </div>
        </div>
    </div>
</div>
@endsection