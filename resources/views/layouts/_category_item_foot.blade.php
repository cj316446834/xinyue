@if(isset($category['children']) && count($category['children']) > 0 )
    @if($category['id'] == 1 || $category['id'] == 2 || $category['id'] == 3 || $category['id'] == 4 )
        <div class="fn_l_a">
            <div  class="l_a_l"><img src="/images/footer_ftnav_{{ $category['id'] }}.jpg" /></div>
            <div class="l_a_r">
                @if(isset($category['children']) && count($category['children']) > 0 )
                @each('layouts._category_item_foot1', $category['children'], 'category')
                    @endif
            </div>
        </div>
    @endif
@endif