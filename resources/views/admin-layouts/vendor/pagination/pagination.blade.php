@if ($paginator->hasPages())
<div class="row">
    <div class="col-7"  >
       <div class="dataTables_info" id="example1_info" role="status" aria-live="polite">
        <p class="text-sm text-gray-700 leading-5">
            {!! __('Hiển thị') !!}
            <span class="font-medium">{{ $paginator->firstItem() }}</span>
            {!! __('đến') !!}
            <span class="font-medium">{{ $paginator->lastItem() }}</span>
            {!! __('của') !!}
            <span class="font-medium">{{ $paginator->total() }}</span>
            {!! __('kết quả') !!}
        </p>
       </div>
    </div>
    <div class="col-5"  >
       <div class="dataTables_paginate paging_simple_numbers" id="example1_paginate"  style="float: right ; margin-right: 5px" >
          <ul class="pagination" >
            @if ($paginator->onFirstPage())
                <li class="paginate_button page-item previous " id="example1_previous"><a  aria-controls="example1" data-dt-idx="0" tabindex="0" class="page-link">Trang trước</a></li>
            @else
                <li class="paginate_button page-item previous " id="example1_previous"><a href="{{ $paginator->previousPageUrl() }}" aria-controls="example1" data-dt-idx="0" tabindex="0" class="page-link">Trang trước</a></li>
            @endif
            {{-- Pagination Elements --}}
            @foreach ($elements as $element)
                {{-- "Three Dots" Separator --}}
                @if (is_string($element))
                    <span aria-disabled="true">
                        <span class="relative inline-flex items-center px-4 py-2 -ml-px text-sm font-medium text-gray-700 bg-white border border-gray-300 cursor-default leading-5">{{ $element }}</span>
                    </span>
                @endif
                {{-- Array Of Links --}}
                @if (is_array($element))
                    @foreach ($element as $page => $url)
                        @if ($page == $paginator->currentPage())
                            <li class="paginate_button page-item active"><a aria-label="{{ __('Go to page :page', ['page' => $page]) }}"  aria-controls="example1" data-dt-idx="1" tabindex="0" class="page-link">{{ $page }}</a></li>

                        @else
                            <li class="paginate_button page-item"><a href="{{ $url }}" aria-label="{{ __('Go to page :page', ['page' => $page]) }}"  aria-controls="example1" data-dt-idx="1" tabindex="0" class="page-link">{{ $page }}</a></li>
                        @endif
                    @endforeach
                @endif
            @endforeach
            @if ($paginator->hasMorePages())
                <li class="paginate_button page-item next" id="example1_next"><a href="{{ $paginator->nextPageUrl() }}" aria-controls="example1" data-dt-idx="7" tabindex="0" class="page-link">Trang tiếp theo</a></li>
            @else
                <li class="paginate_button page-item next" id="example1_next"><a  aria-controls="example1" data-dt-idx="7" tabindex="0" class="page-link">Trang tiếp theo</a></li>
            @endif
          </ul>
       </div>
    </div>
 </div>
@endif


