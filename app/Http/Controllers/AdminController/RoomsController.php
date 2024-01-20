<?php

namespace App\Http\Controllers\AdminController;
use App\Http\Controllers\Controller;
use App\Http\Requests\CreatRoomsRequest;
use App\Http\Requests\UpdateRoomsRequest;

use App\Repositories\Admin\Room\RoomRepositoryInterface;

use Illuminate\Http\Request;

class RoomsController  extends Controller
{
    protected $rRoom;
    public function __construct(

        RoomRepositoryInterface $rRoom
    )
    {
        $this->rRoom = $rRoom;
    }

    public function index()
    {
        $filter = null;
        $dataRoom = $this->rRoom->getListRoom($filter);
        return view('admin-layouts.tables.roomsTable',
            [
            'dataRoom' => $dataRoom,
            ]);
    }

    public function getValue(Request $request)
    {
        $filter = $request->all();
        $dataRoom = $this->rRoom->getListRoom($filter);
        return $dataRoom->toArray();
    }


    public function create()
    {
        return view('admin-layouts.pages.rooms.create');
    }

    public function store(CreatRoomsRequest $request)
    {
        $dataRoom = $request->all();
        return $this->rRoom->storeRoom($dataRoom);
    }

    public function show($id)
    {
        $dataRoom = $this->rRoom->getDetailRoom($id);
        return view('admin-layouts.pages.rooms.detail',
            [
            'dataRoom' => $dataRoom,
            ]);
    }

    public function edit($id)
    {
        $dataRoom = $this->rRoom->getDetailRoom($id);
        return view('admin-layouts.pages.rooms.edit',
            [
            'dataRoom' => $dataRoom,
            ]);
    }

    public function changeStatus(Request $request)
    {
        $id = $request->id;
        return $this->rRoom->changeStatus($id);
    }

    public function update(UpdateRoomsRequest $request)
    {
        $dataRoom = $request->all();
        return $this->rRoom->updateRoom($dataRoom);
    }

    public function remove(Request $request)
    {
        $id = $request->id;
        return $this->rRoom->removeRoom($id);
    }
}
