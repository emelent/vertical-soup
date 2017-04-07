/*
Website API Routes
GET:
	/
	shoes/category/brand/:searchQuery
	shoes/category/type/:searchQuery
	shoes/category/color/:searchQuery
	shoes/category/custom/:searchQuery

	/api/interests/
	/api/searches/
POST:
	/api/interests/
*/

var express 	= require('express');
var mysql	= require('mysql');
var http	= require('http');
var fs 		= require('fs');
var cors 	= require('cors');
var app 	= express();
var srvRES, apiRES;

/*CORs*/

var corsOptions = {
  origin: '127.0.0.1:5001',
  optionsSuccessStatus: 200 // some legacy browsers (IE11, various SmartTVs) choke on 204
}

app.use(cors());

/***** API ROUTES *****/
function findPersistentHits(path) {
	var req = http.request({
		'host': 'http://192.168.8.105',
		'path': path,
		'method': 'GET',
		'headers': {'Content-Type': 'application/json'}
	}, function (res){
		res.setEncoding('utf8');
/*		res.on('data', function (data) {
			console.log('findPersistentHits: data on res.ondata => ', data);
		});
*/
		res.on('end', function (data) {
			console.log('findPersistentHits: data on res.onend => ', data);
			apiRES = JSON.parse(data).data;
		});
	});

	req.on('error', function (err) {
		console.log(err);
	});

	req.end();
}

function updateSearchHistory(query){
	var req = http.request({
		'host': 'http://192.168.8.105',
		'port': 3000,
		'path': '/api/searches/',
		'method': 'POST',
		'headers': {'Content-Type': 'application/json'},
		'json': {'text': query}
	}, function (res){
		res.setEncoding('utf8');
		/*res.on('data', function (data) {
			console.log('updateSearchHistory: data on res.ondata => ', data);
		});
		*/
		res.on('end', function (data) {
			console.log('updateSearchHistory: data on res.onend => ', data);
		});
	});

	req.on('error', function (err) {
		console.log(err);
	});

	req.end();

}

/***** ROUTES *****/
app.get('/', function (req, res) {
	findPersistentHits('/api/interests/');
	var interests = apiRES;
	findPersistentHits('/api/searches/');
	var searches = apiRES;
	var records = [];
	if(interests === undefined || interests === null) {
		if(searches === undefined || searches === null) {
			getAllRecords(res);
			return;
		} else {
			for(var j = 0; j < searches.length; j++){
				records.push(handleQuery(null, searches[j].brand));
			}
		}
	} else {
		for(var i = 0; i < interests.length; i++){
			records.push(handleQuery(null, interests[i].category));
		}
		if(searches !== undefined && searches !== null) {
			for(var j = 0; j < searches.length; j++){
				records.push(handleQuery(null, searches[j].text));
			}
		}
	}
	// find the highest partial match i.e max # rows
	var highest = records[0];
	for(var x = 0; x < records.length; x++){
		if(highest.data.length < records[x].data.length){
			highest = records[x];
		}
	}
	console.log("/ requested -> response: highest is ", highest);
	res.setHeader('Content-Type', 'application/json');
	res.send(JSON.stringify({'data': highest}, null, 3));
	res.end();
});

app.get('/shoes/brand/:searchQuery', function (req, res) {
	console.log('Search query: ', req.params.searchQuery);
	updateSearchHistory(req.params.searchQuery);
	var interests = findPersistentHits('/api/interests/');
	if(interests === undefined || interests === null){
		console.log("handleQuerytime\n");
		handleQuery('brand', req.params.searchQuery, res);
		return;
	} else {
		var records = [];
		for(var i = 0; i < interests.length; i++){
			records.push(handleQuery('brand', interests[i].category, res));
		}
		// find the highest partial match i.e max # rows
		var highest = records[0];
		for(var x = 0; x < records.length; x++){
			if(highest.data.length < records[x].data.length){
				highest = records[x];
			}
		}
		console.log("/ requested -> response: highest is ", highest);
		res.setHeader('Content-Type', 'application/json');
		res.send(JSON.stringify(highest, null, 3));
		res.end();
	}
});

app.get('/shoes/type/:searchQuery', function (req, res) {
	console.log('Search query: ', req.params.searchQuery);
	updateSearchHistory(req.params.searchQuery);
	var interests = findPersistentHits('/api/interests/');
	if(interests === undefined || interests === null){
		console.log("handleQuerytime\n");
		handleQuery('type', req.params.searchQuery, res);
		return;
	} else {
		var records = [];
		for(var i = 0; i < interests.length; i++){
			records.push(handleQuery('type', interests[i].category, res));
		}
		// find the highest partial match i.e max # rows
		var highest = records[0];
		for(var x = 0; x < records.length; x++){
			if(highest.data.length < records[x].data.length){
				highest = records[x];
			}
		}
		console.log("/ requested -> response: highest is ", highest);
		res.setHeader('Content-Type', 'application/json');
		res.send(JSON.stringify(highest, null, 3));
		res.end();
	}
});

app.get('/shoes/color/:searchQuery', function (req, res) {
	console.log('Search query: ', req.params.searchQuery);
	updateSearchHistory(req.params.searchQuery);
	var interests = findPersistentHits('/api/interests/');
	if(interests === undefined || interests === null){
		console.log("handleQuerytime\n");
		handleQuery('color', req.params.searchQuery, res);
		return;
	} else {
		var records = [];
		for(var i = 0; i < interests.length; i++){
			records.push(handleQuery('color', interests[i].category, res));
		}
		// find the highest partial match i.e max # rows
		var highest = records[0];
		for(var x = 0; x < records.length; x++){
			if(highest.data.length < records[x].data.length){
				highest = records[x];
			}
		}
		console.log("/ requested -> response: highest is ", highest);
		res.setHeader('Content-Type', 'application/json');
		res.send(JSON.stringify(highest, null, 3));
		res.end();
	}
});

app.get('/shoes/custom/:searchQuery', function (req, res) {
	console.log('Search query: ', req.params.searchQuery);
	updateSearchHistory(req.params.searchQuery);
	var interests = findPersistentHits('/api/interests/');
	if(interests === undefined || interests === null){
		console.log("handleQuerytime\n");
		handleQuery(null, req.params.searchQuery, res);
		return;
	} else {
		var records = [];
		for(var i = 0; i < interests.length; i++){
			records.push(handleQuery(null, interests[i].category, res));
		}
		// find the highest partial match i.e max # rows
		var highest = records[0];
		for(var x = 0; x < records.length; x++){
			if(highest.data.length < records[x].data.length){
				highest = records[x];
			}
		}
		console.log("/ requested -> response: highest is ", highest);
		res.setHeader('Content-Type', 'application/json');
		res.send(JSON.stringify(highest, null, 3));
		res.end();
	}
});

/***** MYSQL CONNECTION *****/
var connection = mysql.createConnection({
	host: '127.0.0.1',
	user: 'root',
	password: 'IloveAv02',
	database: 'cogno_os_v1'
});

function handleQuery(category, searchQuery, res) {
	srvRES = {data: ''};
	console.log('Database is connected.');
	var sqlStmt;
	if(category) {
		if(category === 'color'){
 			sqlStmt = 'SELECT * FROM shoe WHERE ' + category + ' = \'' + searchQuery.toLowerCase() +'\'';
			console.log(sqlStmt);
			connection.query(sqlStmt, function (err, rows, fields) {
				if(!err){
					console.log('The solution is found');
					srvRES = {data: rows};
					console.log(srvRES);
					res.setHeader('Content-Type', 'application/json');
					res.send(JSON.stringify(srvRES, null, 3));
					res.end();
				} else {
					console.log('Error while performing query.');
					srvRES = {data: ''};
				}
			});
		} else {
			sqlStmt = 'SELECT * FROM ' + category; //+ ' WHERE name LIKE %\'' + searchQuery + '\'%';
			var categoryIDs;
			connection.query(sqlStmt, function (err, rows, fields) {
				if(!err){
					//console.log('The solution is found for '+category+'IDs: ', rows);
					categoryIDs = rows;
					if(categoryIDs === undefined || categoryIDs === null){
						sqlStmt = 'SELECT * FROM shoe WHERE title LIKE %\'' + category;
						sqlStmt += '\'% OR description LIKE %\'' + category + '\'% OR color LIKE %\'';
						sqlStmt += searchQuery + '\'%';
					} else {
						var Id = categoryIDs[((Math.floor(Math.random() * categoryIDs.length)) % categoryIDs.length)];
						for(var i = 0; i < categoryIDs.length; i++){
							//console.log(categoryIDs[i].name + ' == '+searchQuery);
							if(categoryIDs[i].name.toLowerCase() == searchQuery.toLowerCase()){
								Id = categoryIDs[i][category+'_id'];
								//console.log(Id);
								break;
							}
						}
						sqlStmt = 'SELECT * FROM shoe WHERE ' + category + '_id = ' + Id;
					}
					console.log(sqlStmt);
					connection.query(sqlStmt, function (err, rows, fields) {
						if(!err){
							console.log('The solution is found');
							srvRES = {data: rows};
							console.log(srvRES);
							res.setHeader('Content-Type', 'application/json');
							res.send(JSON.stringify(srvRES, null, 3));
							res.end();
						} else {
							console.log('Error while performing query.');
							srvRES = {data: ''};
						}
					});
				} else {
					console.log('Error while performing query.');
					categoryIDs = null;
				}
			});
		}
	} else { // custom
		sqlStmt = 'SELECT * FROM shoe WHERE title = \'' + searchQuery;
		sqlStmt += '\' OR description LIKE %\'' + searchQuery + '\'% OR color = \'';
		sqlStmt += searchQuery + '\'';
		console.log(sqlStmt);
		connection.query(sqlStmt, function (err, rows, fields) {
			if(!err){
				console.log('The solution is found');
				srvRES = {data: rows};
				console.log(srvRES);
				res.setHeader('Content-Type', 'application/json');
				res.send(JSON.stringify(srvRES, null, 3));
				res.end();
			} else {
				console.log('Error while performing query.');
				srvRES = {data: ''};
			}
		});
	}
}

function getAllRecords(res){
	srvRES = {data: ''};
	console.log('Database is connected.');
	var sqlStmt = 'SELECT * FROM shoe';
	connection.query(sqlStmt, function (err, rows, fields) {
		if(!err){
			console.log('Showing all records...');
			srvRES = { data: rows};
		} else {
			console.log('Error while performing query.');
			srvRES = { data: ''};
		}
		console.log("/ requested -> response: ", srvRES);
		res.setHeader('Content-Type', 'application/json');
		res.send(JSON.stringify(srvRES, null, 3));
		res.end();
	});
}

/***** EXPRESSO *****/
const PORT =  5001;
app.listen(PORT, function () {
	setTimeout(function() { console.log('Peak'); }, 1000);
	setTimeout(function () { console.log('Blackness'); }, 2000);
	setTimeout(function () { console.log('Is now live on http://127.0.0.1:%d/', PORT); }, 3000);
});
