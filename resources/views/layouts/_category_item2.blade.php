
<ul class="li_content">
    <li class="itemtitle"><a href="{{ route('products.index', ['category_id' => $category['id']]) }}">{{ $category['name'] }}</a></li>
    @if(isset($category['children']) && count($category['children']) > 0)
    @each('layouts._category_item3', $category['children'], 'category')
    @endif
</ul>

