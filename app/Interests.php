<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Interests extends Model
{
  
  protected $fillable = [
    'name'
  ];  

  public function categories(){
    return $this->belongsTo('categories');
  }
}
