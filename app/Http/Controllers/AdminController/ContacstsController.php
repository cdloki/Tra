<?php

namespace App\Http\Controllers\AdminController;
use App\Http\Controllers\Controller;

// use App\Repositories\Mapping\MappingRepositoryInterface;
use App\Repositories\Admin\Contacst\ContacstRepositoryInterface;

use Illuminate\Http\Request;

class ContacstsController  extends Controller
{
    protected $rContacsts;
    public function __construct(

        ContacstRepositoryInterface $rContacsts
    )
    {

        $this->rContacsts = $rContacsts;
    }

    public function index()
    {

        $type = 2;
        $dataContacst = $this->rContacsts->getDetailContacst($type);
        return view('admin-layouts.pages.contacsts.detail',
            [
            'dataContacst' => $dataContacst,
            ]);
    }

    public function edit()
    {
        $type = 2;
        $dataContacst = $this->rContacsts->getDetailContacst($type);
        return view('admin-layouts.pages.contacsts.edit',
            [
            'dataContacst' => $dataContacst,
            ]);
    }

    public function update(Request $request)
    {
        $dataContacst = $request->all();
        return $this->rContacsts->updateContacst($dataContacst);
    }

}
