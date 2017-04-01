<?php

namespace App\Http\Controllers;

use App\Searches;
use Illuminate\Http\Request;

class SearchController extends ModelController{

	protected $storeRules = [
		'text'	=> 'required|string',
		'persistent'	=> 'required|boolean',
	];

	protected $updateRules = [
		'text'	=> 'string',
	];


	public function __construct(){
    parent::__construct(Searches::class);
	}
}
