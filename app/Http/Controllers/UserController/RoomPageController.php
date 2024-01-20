<?php

namespace App\Http\Controllers\UserController;
use App\Http\Controllers\Controller;
use App\Repositories\User\RoomPage\RoomPageRepositoryInterface;
use App\Repositories\SEO\SEORepositoryInterface;
use Illuminate\Http\Request;

class RoomPageController extends Controller
{
    protected $rRoomPage;
    public function __construct(

        RoomPageRepositoryInterface $rRoomPage,
        SEORepositoryInterface $rSEO

    )
    {

        $this->rRoomPage = $rRoomPage;
        $this->rSEO = $rSEO;

    }
    public function index($slug, Request $request)
    {
        $dataRoom["room"] = $this->rRoomPage->getDataRoom($slug);
        if( $dataRoom["room"] != null ) {
            $filter["id_room"] = $dataRoom["room"]["id"];
            $filter["id_category"] = $request->key;
            $dataRoom["category"] = $this->rRoomPage->getDataCategory($filter["id_room"]);

           if($filter["id_category"] == null && $dataRoom["category"] != null){
            foreach ($dataRoom["category"] as $key => $item) {
                $filter["id_category"][] = (int) $item["id_category"];
                // $dataRoom["category"][$key]["status "] = "checked";
            }
           }
        $dataRoom["product"] = $this->rRoomPage->getProductWithCategoryId($filter["id_category"]);
        $dataRoom["total"] = count($dataRoom["product"]);
        $dataRoom["SEO"] = $this->rSEO->getDataSEO($page = "room", $type = null, $id = $dataRoom["room"]["id"]);
        $dataRoom["filter"] = $filter["id_category"];
        }
        return view('users-layouts.pages.room-page.index',
        [
        'dataRoom' => $dataRoom,
        ]);
    }
}
