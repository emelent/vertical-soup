<?php

namespace App\Http\Controllers;

use App\Interests;
use Illuminate\Http\Request;

class EventController extends ModelController{

	protected $storeRules = [
		'name'	=> 'required|string',
	];

	protected $updateRules = [
		'name'	=> 'string',
	];

	public function store(Request $request)
	{
		return parent::store($request);
	}

	public function destroy(Request $request, $id){
		return parent::destroy($request, $id, true);
	}
}
