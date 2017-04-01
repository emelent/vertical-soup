<?php

namespace App\Http\Controllers;

use App\Interests;
use App\Categories;
use Illuminate\Http\Request;

class InterestsController extends ModelController{

	protected $storeRules = [
		'name'	=> 'required|string',
    'category' => 'required|string'
	];

	protected $updateRules = [
		'name'	=> 'string',
    'category' => 'required|string'
	];

	public function __construct(){
    parent::__construct(Interests::class);
	}

	public function store(Request $request)
	{
		$this->validateStoreRequest($request);
		$category = Categories::where('name', $request->input('category'))->first();
		if($category){
			$interest = Interests::where('name', $request->input('name'))->first();
			
			//if interest already exists, increase the hit count
			if($interest){
				$interest->hits = $interest->hits + 1;
				$interest->save();
				return $this->success('Interests updated.', self::HTTP_OK);
			}

			Interests::create(['name' => $request->input('name'), 'category_id' => $category->id]);
			return $this->success('New interest added.', self::HTTP_OK);	
		}
		return $this->error('Invalid category selected.', self::HTTP_UNPROCESSABLE_ENTITY);
	}

}
