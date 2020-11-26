<?php

namespace App\Admin\Controllers;

use App\Models\Advert;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use App\Models\AdvertType;

class AdvertController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '广告';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Advert());
        $grid->column('id','ID')->sortable();
        $grid->column('advert_type.advert_type_name','广告分类');
        $grid->column('advert_desc','标题');
        $grid->column('image','图片')->image('',200,100);
        $grid->column('url','链接');


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
        $show = new Show(Advert::findOrFail($id));



        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Advert());

        $form->text('advert_desc', '标题')->rules("required");
        $form->select('advert_type_id', '选择广告位')->options(AdvertType::pluck('advert_type_name', 'id'));
        $form->url('url', '地址');
        $form->image('image', '图片')->rules('mimes:gif,jpg,png,jpeg');

        return $form;
    }
}
