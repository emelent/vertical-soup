<?php

namespace App\Http\Controllers;

use App\Searches;
use Illuminate\Http\Request;
use GuzzleHttp\Client;

class SearchController extends ModelController{

	protected $storeRules = [
		'text'	=> 'required|string',
	];

	protected $updateRules = [
		'text'	=> 'string',
	];


	public function __construct(){
    parent::__construct(Searches::class);
	}

  public function store(Request $request)
  {
    $this->validateStoreRequest($request);
    $text = $request->input('text');
    $search = Searches::create(['text', $text]);
    
    //make request
    $headers = [
      'headers' => [
        'Accept' => 'application/json',
        'Authorization' => 'Basic M2VhZDFjYTYtMmYzZi00ZjA1LTlhYzYtNDkxNWUzYjRjZWFlOnRXQU9HVVo3T0lBeQ==',
      ]
    ];
    $client = new Client();
    $url="https://watson-api-explorer.mybluemix.net/natural-language-understanding/api/v1/analyze?version=2017-02-27&text='$text'&features=categories&return_analyzed_text=false&clean=false&fallback_to_raw=true&concepts.limit=8&emotion.document=false&entities.limit=50&entities.emotion=false&entities.sentiment=false&keywords.limit=50&keywords.emotion=false&keywords.sentiment=false&relations.model=en-news&semantic_roles.limit=50&semantic_roles.entities=false&semantic_roles.keywords=false&sentiment.document=true";
    $res = $client->request('GET', $url, $headers);
    $watson = json_decode($res->getBody());
    $cats = $watson->categories; 
    if(count($cats) > 0){
      //update with watson stuff
      $search->descriptors = $cats[0]->label;
    }

    
    $client = new Client();
    $url = "https://watson-api-explorer.mybluemix.net/natural-language-understanding/api/v1/analyze?version=2017-02-27&text='$text'&features=concepts&return_analyzed_text=false&clean=false&fallback_to_raw=true&concepts.limit=8&emotion.document=false&entities.limit=50&entities.emotion=false&entities.sentiment=false&keywords.limit=50&keywords.emotion=false&keywords.sentiment=false&relations.model=en-news&semantic_roles.limit=50&semantic_roles.entities=false&semantic_roles.keywords=false&sentiment.document=true";
    $res = $client->request('GET', $url, $headers);
    $watson = json_decode($res->getBody());
    $concepts = $watson->concepts;
    if(count($concepts) > 0){
      $search->brand = $concepts[0]->text;
    }
    $search->text = $text;
    $search->save();
  	return $this->success('New search created.', self::HTTP_OK);
  }
}
