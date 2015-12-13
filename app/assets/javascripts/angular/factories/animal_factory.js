app.factory('AnimalFactory', AnimalFactory)

  AnimalFactory.$inject = ['$resource'];

  // var url = "<%= ENV['URL'] %>" || "http://localhost:3000";

  var url ="http://localhost:3000";

  console.log(url);

  function AnimalFactory($resource) {
   return $resource( url + '/api/animals/:id',
     {id: '@_id'},
     {'update': { method:'PUT' }}
   );

  }
