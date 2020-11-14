<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Article;
use App\Models\Category;
use App\Services\CategoryService;

class ArticlesController extends Controller
{
    public function index(Request $request,Article $article,CategoryService $categoryService)
    {
        //创建一个查询器
        $builder = Article::query();
        // 判断是否有提交 search 参数，如果有就赋值给 $search 变量
        // search 参数用来模糊搜索商品
        if ($search = $request->input('search','')){
            $like = '%'.$search.'%';
            // 模糊搜索文章标题、文章详情
            $builder->where(function($query) use ($like){
                $query->where('title','like',$like)
                      ->orWhere('description','like',$like);
            });
        }

        // 如果有传入 category_id 字段，并且在数据库中有对应的类目
        if ($request->input('category_id') && $category = Category::find($request->input('category_id'))) {
            // 如果这是一个父类目
            if ($category->is_directory) {
                // 则筛选出该父类目下所有子类目的商品
                $builder->whereHas('category', function ($query) use ($category) {
                    // 这里的逻辑参考本章第一节
                    $query->where('path', 'like', $category->path.$category->id.'-%');
                });
            } else {
                // 如果这不是一个父类目，则直接筛选此类目下的商品
                $builder->where('category_id', $category->id);
            }
        }

        // 是否有提交 order 参数，如果有就赋值给 $order 变量
        // order 参数用来控制文章的排序规则
        if ($order = $request->input('order', '')) {
            // 是否是以 _asc 或者 _desc 结尾
            if (preg_match('/^(.+)_(asc|desc)$/', $order, $m)) {
                // 如果字符串的开头是这 3 个字符串之一，说明是一个合法的排序值
                if (in_array($m[1], ['sortrank'])) {
                    // 根据传入的排序值来构造排序参数
                    $builder->orderBy($m[1], $m[2]);
                }
            }
        }

        $articles = $builder->paginate(6);

        return view('articles.index',[
            'articles' => $articles,
            'filters' => [
                'search' => $search,
                'order' => $order,
            ],
            'category' => $category ?? null,
            // 将类目树传递给模板文件
            'categoryTree' => $categoryService->getCategoryTree(),
        ]);
    }

    public function show(Request $request)
    {
        return view('articles.show');
    }
}
