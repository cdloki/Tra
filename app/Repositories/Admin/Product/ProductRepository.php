<?php

namespace App\Repositories\Admin\Product;

use App\Repositories\Admin\Product\ProductRepositoryInterface;
use App\Models\Products;
use App\Models\MappingCategoryProduct;
use App\Models\MappingProductImage;

// use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

use Carbon\Carbon;
class ProductRepository implements ProductRepositoryInterface
{
    protected $tProduct;

    public function __construct(
        Products $tProduct,
        MappingCategoryProduct $tMappingCategoryProduct,
        MappingProductImage $tMappingProductImage
    )
    {
        $this->tProduct = $tProduct;
        $this->tMappingCategoryProduct = $tMappingCategoryProduct;
        $this->tMappingProductImage = $tMappingProductImage;
    }

    public function getListProduct($filter)
    {
        $dataProduct = $this->tProduct->getListProduct($filter)->toarray();
        // $key = $loop->index;
        foreach ( $dataProduct as $key => $item) {
            $filter["id_product"] = $item["id"];
            $dataMapping = $this->tMappingProductImage->getListMappingProductImage($filter)->toarray();
            $dataProduct[$key]["dataImage"] = $dataMapping;
        }
        foreach ( $dataProduct as $key => $item) {
            $filter["id_product"] = $item["id"];
            $dataMapping = $this->tMappingCategoryProduct->getListMappingCategoryProduct($filter)->toarray();
            $dataProduct[$key]["dataCategory"] = $dataMapping;
        }
        return $dataProduct;
    }

    public function storeProduct($data)
    {
        DB::beginTransaction();
        try {
            $dataStoreProduct = [
                'code_product' => $data['code_product'],
                'name_product' => $data['name_product'],
                'url_product' => $data['url_product'],
                'cost' => $data['cost'],
                'price' => $data['price'],
                // 'warranty' => $data['warranty'],
                // 'time_warranty' => $data['time_warranty'],
                'description_product' => $data['description_product'],
                // 'gift' => $data['gift'],
                // 'element_product' => $data['element_product'],
                // 'specifications' => $data['specifications'],
                'shopee_url' => $data['shopee_url'],
                'note' => $data['note'],
                'title_seo_product' => $data['title_seo'],
                'description_seo_product' => strip_tags($data['description_seo']),
                'keyword_seo_product' => $data['dataTagSeo'],
            ];
            if ($dataStoreProduct['url_product'] == NULL) {
                $dataStoreProduct["url_product"] = ChangeToSlug($data['name_product']);
            }
            // $value['create_by_id'] = Auth::guard('users')->user()->id;
            // $value['last_modify_by_id'] = Auth::guard('users')->user()->id;
            $id = $this->tProduct->store($dataStoreProduct);
            if ($data["dataCategory"] != null) {
                $idCategory = explode(',',$data["dataCategory"]);
                foreach ($idCategory as $item) {
                    $dataMapping[] = [
                        "id_category" => $item,
                        "id_product" => $id
                    ];
                }
                $this->tMappingCategoryProduct->store($dataMapping);
            }

            if ($data["image_product"] != null) {
                $urlImage = explode(',',$data["image_product"]);
                $cout = 0;
                foreach ($urlImage as $item) {
                    $dataMappingImage[] = [
                        "url_image" => $item,
                        "id_product" => $id,
                        "main_image" => $cout > 0 ? 0 : 1
                    ];
                    $cout = $cout + 1;
                }
                $this->tMappingProductImage->store($dataMappingImage);
            }
            DB::commit();
            return [
                'error' => false,
                'message' => __('Tạo thành công!'),
            ];
        } catch (\Exception $exception) {
            DB::rollBack();
            return [
                'error' => true,
                'message' => __('Tạo thất bại!')
            ];
        }
    }

    public function getDetailProduct($id)
    {
        $data = $this->tProduct->getOneProduct($id);
        // $data["url_product"] = substr($data["url_product"], 1);
        return $data;
    }

    public function changeStatus($id)
    {
        DB::beginTransaction();
        try {
            $dataProduct = $this->tProduct->getOneProduct($id);
            $dataUpdate["id"] = $id;
            $dataProduct["status"] == 0 ? $dataUpdate["status"] = 1: $dataUpdate["status"] = 0;
            $id = $this->tProduct->edit($dataUpdate);
            DB::commit();
            return [
                'error' => false,
                'message' => __('Cập nhật trạng thái thành công!'),
                'status' =>  $dataUpdate["status"],
            ];
        } catch (\Exception $exception) {
            DB::rollBack();
            return [
                'error' => true,
                'message' => __('Cập nhật trạng thái thất bại!')
            ];
        }
    }
    public function removeProduct($id)
    {
        DB::beginTransaction();
        try {

            $this->tProduct->remove($id);
            // Xóa category & update category
            $this->tMappingCategoryProduct->removeWithIdProduct($id);
            // Xóa ảnh & update ảnh mới
            $this->tMappingProductImage->removeWithIdProduct($id);
            DB::commit();
            return [
                'error' => false,
                'message' => __('Xóa thành công!'),
                'id' =>  $id,
            ];
        } catch (\Exception $exception) {
            DB::rollBack();
            return [
                'error' => true,
                'message' => __('Xóa thất bại!')
            ];
        }
    }



    public function updateProduct($data)
    {

        DB::beginTransaction();
        try {
            $dataStoreProduct = [
                'id' => $data['id'],
                'code_product' => $data['code_product'],
                'name_product' => $data['name_product'],
                'url_product' => $data['url_product'],
                'cost' => $data['cost'],
                'price' => $data['price'],
                // 'warranty' => $data['warranty'],
                // 'time_warranty' => $data['time_warranty'],
                'description_product' => $data['description_product'],
                // 'gift' => $data['gift'],
                // 'element_product' => $data['element_product'],
                // 'specifications' => $data['specifications'],
                'shopee_url' => $data['shopee_url'],
                'note' => $data['note'],
                'title_seo_product' => $data['title_seo'],
                'description_seo_product' => strip_tags($data['description_seo']),
                'keyword_seo_product' => $data['dataTagSeo'],
            ];
            if ($dataStoreProduct['url_product'] == NULL) {
                $dataStoreProduct["url_product"] = ChangeToSlug($data['name_product']);
            }
            // $value['create_by_id'] = Auth::guard('users')->user()->id;
            // $value['last_modify_by_id'] = Auth::guard('users')->user()->id;
            $this->tProduct->edit($dataStoreProduct);

            // Xóa category & update category
            $this->tMappingCategoryProduct->removeWithIdProduct($data['id']);
            if (!empty($data["dataCategory"])) {

                $idCategory = explode(',',$data["dataCategory"]);
                foreach ($idCategory as $item) {
                    $dataMapping[] = [
                        "id_category" => $item,
                        "id_product" => $data['id']
                    ];
                }
                $this->tMappingCategoryProduct->store($dataMapping);
            }

            // Xóa ảnh & update ảnh mới
            $this->tMappingProductImage->removeWithIdProduct($data['id']);
            if (!empty($data["image_product"])) {

                $urlImage = explode(',',$data["image_product"]);
                $cout = 0;
                foreach ($urlImage as $item) {
                    $dataMappingImage[] = [
                        "url_image" => $item,
                        "id_product" => $data['id'],
                        "main_image" => $cout > 0 ? 0 : 1
                    ];
                    $cout = $cout + 1;
                }
                $this->tMappingProductImage->store($dataMappingImage);
            }
            DB::commit();
            return [
                'error' => false,
                'message' => __('Cập nhật thành công!'),
            ];
        } catch (\Exception $exception) {
            DB::rollBack();
            return [
                'error' => true,
                'message' => __('Cập nhật thất bại!')
            ];
        }
    }




}
