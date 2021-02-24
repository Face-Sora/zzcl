angular.module("myApp",[])
    .controller("MyCtrl",['$scope',function ($scope) {
        //初始化message数据
        $scope.message = '';
        //定义计算剩余字数的方法
        $scope.getCount = function () {
            //判断用户输入的内容长度
            if($scope.message.length > 50){
                //使用 xx.slice(start, end)方法[抽取一个子串],参数一（start）截取片段的开始的下标，参数二（end）截取的最后位置
                $scope.message = $scope.message.slice(0,50);
            }
            return 50 - $scope.message.length;
        }

        //保存数据的方法
        $scope.save = function () {
            alert("data save");
            localStorage.setItem('keyOne',JSON.stringify($scope.message)); //使用JSON.stringify()转换为json
            $scope.message = ''; //操作完成后将页面还原
        }

        //读取数据的方法
        $scope.read = function () {
            //使用JSON.parse()转换回原字符
            $scope.message = JSON.parse(localStorage.getItem('keyOne') || '[]'); //处理null的情况
        }

        // 删除数据的方法
        $scope.remove = function () {
            localStorage.removeItem('keyOne');
            $scope.message = '';
        }


    }]);