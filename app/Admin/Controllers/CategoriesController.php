<?php

namespace App\Admin\Controllers;

use App\Models\Category;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

use Encore\Admin\Facades\Admin;
use Encore\Admin\Tree;
use Encore\Admin\Layout\Content;




class CategoriesController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '文章分类';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */

    public function index(Content $content)
    {
        $tree = new Tree(new Category);

        return $content
            ->header('分类管理')
            ->body($tree);
    }


    protected function grid()
    {
        $grid = new Grid(new Category());


        $grid->column('id', __('Id'));
        $grid->column('name', __('栏目名称'));
        $grid->column('reid',__('所属栏目'))->display(function ($reid) {
                return Category::find($reid)->name;
        });
        $grid->column('description', __('简介'));
        $grid->column('sortrank', __('排序'))->default(99)->help('越小越靠前');
        $grid->column('image', __('缩略图'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Category::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('栏目名称'));
        $show->field('description', __('简介'));
        $show->field('sortrank', __('排序'));
        $show->field('image', __('缩略图'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
//        $form = new Form(new Category());
//
////        $form->text('name', __('栏目名称'));
////        $form->radio('reid','上及栏目')->options([
////            '1' => '品牌中心',
////            '2' => '整形美容',
////            '3' => '注射美容',
////            '4' => '皮肤美容',
////            '5' => '私密整形',
////            '6' => '品质保障',
////            '7' => '支付方式',
////            '8' => '售后服务'
////        ]);
////        $form->textarea('description', __('简介'));
////        $form->number('sortrank', __('排序'))->rules('integer|min:0');
////        $form->image('image', __('缩略图'));
//
//        return $form;
        return Admin::form(Category::class, function (Form $form) {

            $form->display('id', 'ID');

            $form->select('reid', '所属类别')->options(Category::selectOptions());

            $form->text('name', '类别名称')->rules('required');

            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
        });
    }

    protected function tree()
    {
        return Category::tree(function (Tree $tree) {

            $tree->branch(function ($data) {
                return "{$data['id']} - {$data['name']}";

            });

        });
    }


}
