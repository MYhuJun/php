angular.module('myapp.controllers', [])

.controller('helloCtrl', function($scope,$timeout,usersever) {
    $scope.pagenum=1;//第一页
    usersever.get($scope.pagenum,function(data){
       $scope.infos = data ;
    });
    //获取修改的信息并从新赋值
    $scope.updata=function(item){
        $scope.active=item;
    };
    //获取删除下标和id
    $scope.delete=function(pid,index){
        $scope.pid = pid;
        $scope.index = index;
    };
    //删除
    $scope.deleteseve=function(){
        usersever.delete($scope.pid,function(data){
            if(data.number==400){
                usersever.get($scope.pagenum,function(data){
                   $scope.infos = data ;
                });
            }else{
                $scope.danger=data.info;
            }
            $timeout(function(){
                $scope.danger=false;
            },2000)
        })
    }
    //保存修改内容
    $scope.save=function(item){
        usersever.updatemovie(item.id,item.title,item.lang,item.manuscript,item.translate,item.collate2,item.time,function(data){
            if(data.number==2000){
                $scope.success=data.info;
            }else{
                $scope.danger=data.info;
            }
            $timeout(function(){
                $scope.success=false;
                $scope.danger=false;
            },2000)
        })
    }
    //分页
    $scope.page=function(page){
        switch(page)
        {
        case '1':
          $scope.pagenum++;
          break;
        case '-1':
          $scope.pagenum--;
          break;
        case '0':
          $scope.pagenum=1;
          break;
        }
        usersever.get($scope.pagenum,function(data){
            $scope.infos = data ;
        });   
    }
})
.controller('newCtrl', function($scope) {   
})
.controller('boxCtrl', function($scope,$timeout,usersever) { 
    $scope.save=function(item){
        usersever.inset(item.title,item.lang,item.manuscript,item.translate,item.collate2,item.time,function(data){
            if(data.number==2222){
                $scope.success=data.info;
            }else{
                $scope.danger=data.info;
            }
            $timeout(function(){
                $scope.success=false;
                $scope.danger=false;
            },2000)
        })
    }   
})