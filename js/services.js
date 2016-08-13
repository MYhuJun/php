angular.module('myapp.services', [])
.factory('session', function ($http) {
 var user;
    var serviceURL = 'http://192.168.1.105/bank/php/index.php/';
    function request(action, parameters, callback) {
        var response;
        var url = serviceURL + action + '?';
        for (var key in parameters) {
            url += key + '=' + parameters[key] + '&';
        }
        url += 'callback=JSON_CALLBACK';
        $http.jsonp(url).success(function (data) {
            callback(data);
        });
    }
    return {
        request: function (action, data, callback) {
            request(action, data, function (result) {
                callback(result);
            });
        }

    };
})
.factory('usersever',function(session){
  return{
    //获取
    get:function(page,callback){
      session.request('movie/get',{'page':page}, function (data) {
        callback(data)
      })
    },
    //删除
    delete:function(pid,callback){
      session.request('movie/deletemovie',{'pid':pid}, function (data) {
            callback(data)
      })  
    },
    //修改
    updatemovie:function(pid,title,lang,manuscript,translate,collate2,time,callback){
        session.request('movie/updatemovie',{'pid':pid,'title':title,'lang':lang,'manuscript':manuscript,'translate':translate,'collate2':collate2,'time':time}, function (data) {
            callback(data)
      }) 
    },
    inset:function(title,lang,manuscript,translate,collate2,time,callback){
        session.request('movie/inset',{'title':title,'lang':lang,'manuscript':manuscript,'translate':translate,'collate2':collate2,'time':time}, function (data) {
            callback(data)
      }) 
    }
  }
})
