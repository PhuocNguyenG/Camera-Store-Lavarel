@if ($paginator->hasPages())
    <div class="shop-pagination m-auto" >
        <div class="basic-pagination" style="display: flex;
    justify-content: center;">
            <nav>
                <ul style="display: flex; justify-content: center">
            @if ($paginator->onFirstPage())

            @else
                        <li>
                            <a href="{{ $paginator->previousPageUrl() }}">
                                <i class="far fa-angle-left"></i>
                            </a>
                        </li>
            @endif

            @foreach ($elements as $element)
                @if (is_string($element))
                    <li >{{ $element }}</li>
                @endif
                @if (is_array($element))
                    @foreach ($element as $page => $url)
                        @if ($page == $paginator->currentPage())
                                <li>
                                    <a class="active">{{ $page }}</a>
                                </li>
                        @else
                                <li>
                                    <a href="{{ $url }}" >{{ $page }}</a>
                                </li>
                        @endif
                    @endforeach
                @endif
            @endforeach

            @if ($paginator->hasMorePages())
                    <li>
                        <a href="{{ $paginator->nextPageUrl() }}">
                            <i class="far fa-angle-right"></i>
                        </a>
                    </li>
            @else

            @endif
                </ul>
            </nav>
        </div>
    </div>
@endif
