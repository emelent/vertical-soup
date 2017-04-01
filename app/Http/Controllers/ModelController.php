<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;


/**
 * Base Model Controller class which implements generic CRUD
 * endpoint behaviour.
 */
abstract class ModelController extends Controller{

  protected $modelClass;
  protected $updateRules;
  protected $storeRules;
  
  public function __construct($modelClass){
    $this->modelClass = $modelClass;
    $this->modelName = strtolower(array_reverse(explode('\\', $modelClass))[0]);
  }

  public function showAll(Request $request){
  	return $this->showAllAction();
  }

  public function show(Request $request, $id){
  	return $this->showAction($request, $id);
  }

  public function update(Request $request, $id)
  {
  	return $this->updateAction($request, $id);
  }

  public function store(Request $request)
  {
  	return $this->storeAction($request);
  }

  public function destroy(Request $request, $id){
  	return $this->destroyAction($request, $id);
  }

  public function destroyAll(Request $request){
  	return $this->destroyAllAction($request);
  }

	protected function showAllAction(){
    //TODO implement search
    $cName = $this->modelClass;
		$models = $cName::all();
		return $this->success($models, self::HTTP_OK);
	}

	protected function showAction($request, $id){
    $cName = $this->modelClass;
		$model = $cName::find($id);
		if(!$model){
			return $this->error("The {$this->modelName} with $id doesn't exist.", self::HTTP_NOT_FOUND);
		}
		return $this->success($model, self::HTTP_OK);
	}

	protected function destroyAction($request, $id, $validateOwnership=true){
    $cName = $this->modelClass;
		$model = $cName::find($id);
		if(!$model){
			return $this->error("The {$this->modelName} with $id doesn't exist.", self::HTTP_NOT_FOUND);
		}

		if($validateOwnership && !$this->isAdmin($request->user())){
			if($model->creator_id != $request->user()->id)
				return $this->error('Not permitted.', self::HTTP_FORBIDDEN);
		}

		$model->delete();
		return $this->success("The {$this->modelName} has been deleted.", self::HTTP_OK);
	}

	protected function destroyAllAction($request){
		$cName = $this->modelClass;
		$cName::truncate();
		$name = ucfirst($this->modelName);
		return $this->success("$name models cleared.", self::HTTP_OK);
	}

	protected function updateAction($request, $id, $validateOwnership=false){
		$cName = $this->modelClass;
		$model = $cName::find($id);
		if(!$model){
			return $this->error("The {$this->modelName} with $id doesn't exist", self::HTTP_NOT_FOUND);
		}

		if($validateOwnership){
			if($model->$key != $value)
				return $this->error('Not permitted.', self::HTTP_FORBIDDEN);
		}
		$this->validateUpdateRequest($request);

		//update values
		$fields = $request->all();
		$fillables = $model->getFillable();
		$validFields = array_intersect(array_keys($fields), $fillables);
		foreach($validFields as $field){
			$model->$field = $fields[$field];
		}

		$model->save();
		return $this->success("The {$this->modelName} has been updated.", self::HTTP_OK);
	}


	protected function storeAction($request){
		$cName = $this->modelClass;
		$this->validateStoreRequest($request);

		$fields = (new $cName())->getFillable();
		$data = [];
		foreach($fields as $field){
			$data[$field] = $request->get($field);
		}
		$model = $cName::create($data);
		return $this->success("The {$this->modelName} has been created.", self::HTTP_CREATED);
	}

	protected function validateUpdateRequest(Request $request){
		$this->validate($request, $this->updateRules);
	}

	protected function validateStoreRequest(Request $request){
		$this->validate($request, $this->storeRules);
	}

	protected function validateKey($id, $key, $value, $msg, $code){
		$cName = $this->modelClass;
		$model = $cName::find($id);

		if(!$model){
			return $this->error("The {$this->modelName} with $id doesn't exist", self::HTTP_NOT_FOUND);
		}

		if($model->$key == $value){
			return true;
		}

		return $this->error($msg, $code);
	}

	protected function validateOwnership($request, $id, $key='creator_id'){
			return $this->validateKey(
			$id, 
			$key, 
			$request->user()->id,
			'Not permitted.',
			self::HTTP_FORBIDDEN
		);
	}

	protected function isAdmin($user)
	{
		if(!$user)
			return false;
		
		return $user->roles()->where('role', 'admin')->get() != null;
	}
}
