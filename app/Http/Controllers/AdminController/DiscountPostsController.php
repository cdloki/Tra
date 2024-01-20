<?php

namespace App\Http\Controllers\AdminController;
use App\Http\Controllers\Controller;
use App\Http\Requests\CreatDiscountPostsRequest;
use App\Http\Requests\UpdateDiscountPostsRequest;

use App\Repositories\Admin\DiscountPost\DiscountPostRepositoryInterface;

use Illuminate\Http\Request;

class DiscountPostsController  extends Controller
{
    protected $rDiscountPost;
    protected $rRoom;
    public function __construct(

        DiscountPostRepositoryInterface $rDiscountPost
    )
    {
        $this->rDiscountPost = $rDiscountPost;
    }

    public function index()
    {
        $filter = null;
        $dataDiscountPost = $this->rDiscountPost->getListDiscountPost($filter);
        return view('admin-layouts.tables.discount-postsTable',
            [
            'dataDiscountPost' => $dataDiscountPost,
            ]);
    }

    public function create()
    {
        return view('admin-layouts.pages.discount-posts.create');

    }

    public function store(CreatDiscountPostsRequest $request)
    {
        $dataDiscountPost = $request->all();
        return $this->rDiscountPost->storeDiscountPost($dataDiscountPost);
    }

    public function show($id)
    {
        $dataDiscountPost = $this->rDiscountPost->getDetailDiscountPost($id);
        return view('admin-layouts.pages.discount-posts.detail',
            [
            'dataDiscountPost' => $dataDiscountPost,
            ]);
    }

    public function edit($id)
    {
        $dataDiscountPost = $this->rDiscountPost->getDetailDiscountPost($id);
        return view('admin-layouts.pages.discount-posts.edit',
            [
            'dataDiscountPost' => $dataDiscountPost,
            ]);
    }

    public function changeStatus(Request $request)
    {
        $id = $request->id;
        return $this->rDiscountPost->changeStatus($id);
    }

    public function update(UpdateDiscountPostsRequest $request)
    {
        $dataDiscountPost = $request->all();
        return $this->rDiscountPost->updateDiscountPost($dataDiscountPost);
    }

    public function remove(Request $request)
    {
        $id = $request->id;
        return $this->rDiscountPost->removeDiscountPost($id);
    }
}
