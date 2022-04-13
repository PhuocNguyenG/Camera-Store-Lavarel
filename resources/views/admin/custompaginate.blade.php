@if ($paginator->hasPages())
    <div class="col-sm-7 text-right text-center-xs">
        <ul class="pagination pagination-sm m-t-none m-b-none">
                    @if ($paginator->onFirstPage())

                    @else
                <li><a href="{{ $paginator->previousPageUrl() }}"><i class="fa fa-chevron-left"></i></a></li>
                    @endif

                    @foreach ($elements as $element)
                        @if (is_string($element))
                            <li >{{ $element }}</li>
                        @endif
                        @if (is_array($element))
                            @foreach ($element as $page => $url)
                                @if ($page == $paginator->currentPage())
                                        <li><a href="" class="active">{{ $page }}</a></li>
                                @else
                                        <li><a href="{{ $url }}">{{ $page }}</a></li>
                                @endif
                            @endforeach
                        @endif
                    @endforeach

                    @if ($paginator->hasMorePages())
                            <li><a href="{{ $paginator->nextPageUrl() }}"><i class="fa fa-chevron-right"></i></a></li>
                    @else

                    @endif
        </ul>
    </div>
@endif
