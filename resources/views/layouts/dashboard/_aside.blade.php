<aside class="main-sidebar">

    <section class="sidebar">

        <div class="user-panel">
            <div class="pull-left image">
                <img src="{{ auth()->user()->image_path }}" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>                                    
                    {{ auth()->user()->first_name .' '. auth()->user()->last_name }}
                </p>
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>

        <ul class="sidebar-menu" data-widget="tree">
            <li class="{{ route('dashboard.index')==url()->current() ? 'active' : '' }}">
                <a href="{{ route('dashboard.index') }}" ><i class="fa fa-th"></i><span>@lang('site.dashboard')</span></a>
            </li>

            @if(auth()->user()->hasPermission('read_users'))
            <li class="{{ route('dashboard.users.index')==url()->current() ? 'active' : '' }}">
                <a href="{{ route('dashboard.users.index') }}">
                <i class="fa fa-users"></i><span>@lang('site.users')</span></a>
            </li>
            @endif

            @if(auth()->user()->hasPermission('read_categories'))
            <li class="{{ route('dashboard.categories.index')==url()->current() ? 'active' : '' }}">
                <a href="{{ route('dashboard.categories.index') }}"><i class="fa  fa-cube"></i><span>@lang('site.categories')</span></a>
            </li>
            @endif
    
            <li class="{{ route('dashboard.surgery.index')==url()->current() ? 'active' : '' }}">
                <a href="{{ route('dashboard.surgery.index') }}"><i class="fa  fa-heartbeat"></i><span>@lang('site.surgeries')</span></a>
            </li>

            <li class="{{ route('dashboard.image_album.index')==url()->current() ? 'active' : '' }}">
                <a href="{{ route('dashboard.image_album.index') }}"><i class="fa  fa-photo"></i><span>@lang('site.photo_album')</span></a>
            </li>

            <li class="{{ route('dashboard.videos.index')==url()->current() ? 'active' : '' }}">
                <a href="{{ route('dashboard.videos.index') }}"><i class="fa  fa-video-camera"></i><span>@lang('site.videos')</span></a>
            </li>

            <li class="{{ route('dashboard.question_answer.index')==url()->current() ? 'active' : '' }}">
                <a href="{{ route('dashboard.question_answer.index') }}"><i class="fa  fa-question"></i><span>@lang('site.question_answer')</span></a>
            </li>
            
            <li class="{{ route('dashboard.blog.index')==url()->current() ? 'active' : '' }}">
                <a href="{{ route('dashboard.blog.index') }}"><i class="fa fa-pencil"></i><span>@lang('site.blog')</span></a>
            </li>

            <li class="{{ route('dashboard.blog.index')==url()->current() ? 'active' : '' }}">
                <a href="{{ route('dashboard.blog.index') }}"><i class="fa fa-file-code-o"></i><span>@lang('site.pages')</span></a>
            </li>



        </ul>

    </section>

</aside>

