<?php

namespace App\Models;
use Encore\Admin\Traits\ModelTree;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use ModelTree;

    public $timestamps = false;

    protected $table = 'categories';

    protected $fillable = [
        'reid','topid','name','description','sortrank','image'
    ];

    public function __construct(array $attributes = [])
    {
        parent::__construct($attributes);

        $this->setParentColumn('reid'); // 设置父类ID的字段名称
        $this->setOrderColumn('sortrank'); // 设置排序字段名称
        $this->setTitleColumn('name'); // 设置标题名称
    }

    public function parent()
    {
        return $this->belongsTo(Category::class);
    }

    public function children()
    {
        return $this->hasMany(Category::class, 'reid');
    }

    public function article()
    {
        return $this->hasMany(Category::class);
    }

    //增加select返回数据接口
    public function getAll()
    {
        $res=$this->get();
        $tmp=[];
        foreach($res as $v){
            $tmp[$v->id]=$v->name;
        }
        return $tmp;
    }
}
