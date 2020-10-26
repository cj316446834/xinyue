<?php

namespace App\Admin\Controllers;

use App\Models\Article;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use App\Models\Category;

class ArticlesController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '文章';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Article());
        $grid->model()->with(['category']);
        $grid->column('id', __('Id'));
        $grid->column('category.name', __('所属栏目'));
        $grid->column('title', __('标题'));
        $grid->column('description', __('摘要'));
        $grid->column('image', __('缩略图'));
        $grid->column('body', __('内容'));
        $grid->column('sortrank', __('排序'));
        $grid->column('created_at', __('创建时间'));
        $grid->column('updated_at', __('更新时间'));

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
        $show = new Show(Article::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('category_id', __('Category id'));
        $show->field('title', __('Title'));
        $show->field('description', __('Description'));
        $show->field('image', __('Image'));
        $show->field('body', __('Body'));
        $show->field('sortrank', __('Sortrank'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Article());
        $categoryData = (new Category())->getAll();
        $form->select('category_id', __('所属分类'))->options($categoryData)->rules('required');
        $form->text('title', __('标题'))->rules('required');
        $form->text('description', __('摘要'));
        $form->image('image', __('缩略图'));
        $form->quill('body', __('文章内容'))->rules('required');
        $form->number('sortrank', __('排序'));

        return $form;
    }
}
