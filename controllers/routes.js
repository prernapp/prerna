/**
 * Created by RAJesh1 on 6/22/2016.
 */

// OR commonjs style
//var angularMaterialize = require('angular-materialize');

angular.module('myModule', ['ui.router' , 'ngFileUpload' ])

    .config(function($stateProvider,  $urlRouterProvider) {
            var source="";
        $stateProvider
            .state('homePage', {
                url: '/homePage',
                templateUrl: source + '/templates/home.html',
                controller: 'homePageCtrl'
            })
            .state('registration', {
                url: '/registration',
                templateUrl: source + '/templates/registration.html',
                controller: 'registrationCtrl'
            })

            .state('login', {
                url: '/login/:type',
                templateUrl: source + '/templates/login.html',
                controller: 'logInCtrl'
            })

            .state('userDashBoard', {
                url: '/userDashBoard/:user_id',
                templateUrl: source + '/templates/userprofile.html',
                controller: 'userDashBoardCtrl'
            })

            .state('buyer', {
                url: '/buyer',
                templateUrl: source + '/templates/buyer.html',
                controller: 'buyerCtrl'
            })
            .state('searchproperty', {
                url: '/searchproperty/:user_id',
                templateUrl: source + '/templates/searchproperty.html',
                controller: 'searchpropertyCtrl'
            })

            .state('admindashBoard', {
                url: '/admindashBoard',
                templateUrl: source + '/templates/adminDashBoard.html',
                controller: 'adminDashBoardCtrl'
            })

            .state('adminVerifyProperty', {
                url: '/adminVerifyProperty',
                templateUrl: source + '/templates/adminVerifyProperty.html',
                controller: 'adminVerifyPropertyCtrl'
            })

            .state('sellerViewProperty', {
                url: '/sellerViewProperty',
                templateUrl: source + '/templates/sellerViewProperty.html',
                controller: 'sellerViewPropertyCtrl'
            })



            .state('uploadproperty', {
                url: '/uploadproperty/:user_id',
                templateUrl: source + '/templates/uploadproperty.html',
                controller: 'MyCtrl'
            })


            .state('seller', {
                url: '/seller/:user_id',
                templateUrl: source + '/templates/seller.html',
                controller: 'sellerCtrl'
            })

            .state('showProfile', {
                url: '/showProfile/:user_id',
                templateUrl: source + '/templates/showProfile.html',
                controller: 'showProfileCtrl'
            })
            .state('showSearchResults', {
                url: '/showSearchResults/:input',
                templateUrl: source + '/templates/showReservedProperty.html',
                controller: 'showSearchResultsCtrl'
            })
            .state('buyerReserveproperty', {
                url: '/buyerReserveproperty',
                templateUrl: source + '/templates/showReservedProperty2.html',
                controller: 'buyerReservepropertyCtrl'
            })


            .state('viewProfile', {
                url: '/viewProfile',
                templateUrl: source + '/templates/viewProfile.html',
                controller: 'viewProfileCtrl'
            })

            .state('editProfile', {
                url: '/editProfile',
                templateUrl: source + '/templates/editProfile.html',
                controller: 'editProfileCtrl'
            })
            .state('updatedMessage', {
                url: '/updatedMessage',
                templateUrl: source + '/templates/updatedMessage.html',
                controller: 'updatedMessageCtrl'
            })

        
        $urlRouterProvider.otherwise('/homePage')
    })



    .controller('homePageCtrl', function ($scope ,$state, $http) {
        console.log('yasjdbjh')
        $scope.Log_in=function() {
            $scope.type="registration"
            console.log($scope.type + "$scope.type");
            $state.go('login' , {"type" :  $scope.type});
        }

        $scope.Registration=function() {
            console.log($scope.type + "$scope.type");
            $state.go('registration');
        }

        $scope.Admin=function() {
            $scope.type="admin";
            $state.go('login' , {"type" :  $scope.type});

        }






    })
    .controller('registrationCtrl', function ($scope ,$http){
        $scope.form={};
        $scope.submit=function () {
            console.log($scope.form)
                $http.post('/registration', $scope.form).success(function(response) {
                    console.log(response);
                    if(response.status == "successfull"){
                        
                    }
             });


        }
        
    })

    .controller('logInCtrl', function ($scope ,$state, $http, $stateParams) {
        $scope.form={};

        var type = $stateParams.type;
        console.log( type ,"type");

        $scope.Login = function () {
               console.log($scope.form);
                        $scope.form.type = type;
                         $http.post('/loginVerify', $scope.form).success(function(response) {
                          console.log(response);

                     if(response.authentication == "success"){
                         
                         if(type== "admin"){
                          console.log('admin  oidflknkvjdsnfjvn ');
                             localStorage.setItem('ppid', response.user_id);
                             localStorage.setItem('userType', "admin");

                             var id =localStorage.getItem('ppid')
                             console.log(id ," idbbbbbbbb")
                             $state.go('admindashBoard');

                         }else{
                             localStorage.setItem('userType', "nonAdmin");
                              localStorage.setItem('ppid', response.user_id);
                             $state.go('userDashBoard',{"user_id": response.user_id});
                         }
                         

                    }
            });

        }

        


    })

    .controller('userDashBoardCtrl', function ($scope,$state,$stateParams, $http) {
        console.log('userDashBoard')

        $scope.type;
        $scope.buyer = function () {
            $scope.type = $stateParams.user_id;
            console.log( "ghhh",$scope.type);
            $state.go('buyer', {"user_id" : $scope.type});
        }
        $scope.seller= function () {
            $scope.type ="seller"
            $state.go('seller', {"type" : $scope.type});
        }

        $scope.viewProfile = function () {
            $state.go('viewProfile');

        }
        $scope.editProfile = function () {
            $state.go('editProfile');

        }
        //$scope.showProfile=function () {
          //  $state.go('editProfile', {"userId" : $stateParams.userId , "indication" :"edit"});
        //}

    })

    .controller('buyerCtrl', function ($scope,$state,$stateParams, $http) {
        console.log('userDashBoard')

        $scope.type;
        $scope.searchproperty = function () {
            $scope.type = $stateParams.user_id;
            console.log('ghh',$scope.type);
            $state.go('searchproperty', {"user_id" : $scope.type});
        }
        $scope.reservedproperty= function () {
            $scope.type = $stateParams.user_id;
            $state.go('buyerReserveproperty');
        }




        //$scope.showProfile=function () {
        //  $state.go('editProfile', {"userId" : $stateParams.userId , "indication" :"edit"});
        //}

    })

    .controller('sellerCtrl', function ($scope,$state,$stateParams, $http) {
        console.log('userDashBoard')

        $scope.type;
        $scope.uploadproperty = function () {
            $scope.type = $stateParams.user_id;
            console.log('ghh',$scope.type);
            $state.go('uploadproperty', {"user_id" : $scope.type});
        }
        $scope.reservedproperty= function () {
            $scope.type = $stateParams.user_id;
            $state.go('reserveproperty', {"user_id" : $scope.type});
        }

        $scope.viewProperty = function () {
            $state.go('sellerViewProperty');
        }

        //$scope.showProfile=function () {
        //  $state.go('editProfile', {"userId" : $stateParams.userId , "indication" :"edit"});
        //}

    })


    .controller('MyCtrl',function ($scope,$state,$stateParams, $http) {

            $scope.productList=['Apartment' , 'Bunglaw']
            $scope.features = ['1BHK' ,'2BHK' , '3BHK'];
            $scope.input={};

        var userId= localStorage.getItem('ppid');
        data = {"userId" : userId}
        
        $scope.input.userId  = userId;
        $scope.submit=function () {
            console.log($scope.input);
            $http.post('/uploadProperty', $scope.input).success(function (response) {
                    console.log(response , "response");
                if(response.status == "success")
                {
                    console.log('successfully inserted');
                }
            });
        }
    })



/*.controller('MyCtrl', ['$scope', 'Upload', function ($scope, Upload) {
    // upload later on form submit or something similar
    $scope.submit = function() {
        if ($scope.form.file.$valid && $scope.file) {
            $scope.upload($scope.file);
        }
    };

    // upload on file select or drop
    $scope.upload = function (file) {
        Upload.upload({
            url: 'http://localhost:3005/upload ',
            data: {file: file}
        }).then(function (resp) {
            console.log('Success ' + resp.config.data.file.name + 'uploaded. Response: ' + resp.data);
        }, function (resp) {
            console.log('Error status: ' + resp.status + resp);
        }, function (evt) {
            var progressPercentage = parseInt(100.0 * evt.loaded / evt.total);
            console.log('progress: ' + progressPercentage + '% ' + evt.config.data.file.name);
        });
    };
    // for multiple files:
   /!* $scope.uploadFiles = function (files) {
        if (files && files.length) {
            for (var i = 0; i < files.length; i++) {
                Upload.upload({..., data: {file: files[i]}, ...})...;
            }
            // or send them all together for HTML5 browsers:
            Upload.upload({..., data: {file: files}, ...})...;
        }
    }*!/
}])*/


    /*.controller('MyCtrl',[ 'Upload','$window',function(Upload,$window,$scope){
        console.log(' i am inside the controller');

        var vm = this;
        vm.submit = function(){ //function to call on form submit
            if (vm.upload_form.file.$valid && vm.file) { //check if from is valid
                vm.upload(vm.file); //call upload function
            }
            else {
                console.log("i am in else");
            }
            vm.upload(vm.file);
        }

        vm.upload = function (file) {
            Upload.upload({
                url: 'http://localhost:3005/upload', //webAPI exposed to upload the file
                data:{file:file} //pass file as data, should be user ng-model


            }).then(function (resp) { //upload function returns a promise
                if(resp.data.error_code === 0){ //validate success
                    $window.alert('Success ' + resp.config.data.file.name + 'uploaded. Response: ');
                } else {
                    $window.alert('an error occured');
                }
            }, function (resp) { //catch error
                console.log('Error status: ' + resp.status);
                $window.alert('Error status: ' + resp.status);
            }, function (evt) {
                console.log(evt);
                var progressPercentage = parseInt(100.0 * evt.loaded / evt.total);
                console.log('progress: ' + progressPercentage + '% ' + evt.config.data.file.name);
                vm.progress = 'progress: ' + progressPercentage + '% '; // capture upload progress
            });
        };
    }])*/


    .controller('buyerReservepropertyCtrl', function ($scope,$state,$stateParams, $http) {

        var userId= localStorage.getItem('ppid');
        data = {"userId" : userId}
        console.log(userId);
        $http.post('/buyerreservedproperty', data ).success(function(response) {
            console.log(response ,"response");
            $scope.result=response;
        });


        $scope.book = function (id) {
            info = {"userId" : userId , "propertyId" : id}
            $http.post('/bookProperty', info).success(function (response) {
                console.log(response );
                alert('Successfully Booked');

                var userId= localStorage.getItem('ppid');
                data = {"userId" : userId}
                console.log(userId);
                $http.post('/buyerreservedproperty', data ).success(function(response) {
                    console.log(response ,"response");
                    $scope.result=response;
                });
            });
        }

        $scope.cancel  = function (id) {

            info = {"userId" : userId , "property_id" : id}

            $http.post('/cancelProperty', info ).success(function(response) {
                console.log(response ,"response");
                $scope.result=response;

                var userId= localStorage.getItem('ppid');
                data = {"userId" : userId}
                console.log(userId);
                $http.post('/buyerreservedproperty', data ).success(function(response) {
                    console.log(response ,"response");
                    $scope.result=response;
                });


            });

        }





    })
    
    

    .controller('searchpropertyCtrl', function ($scope,$state,$stateParams, $http) {
        console.log('userDashBoard')


        $scope.form = {};
        $scope.search = function () {
            console.log($scope.form , "$scope.form" );
            var my = JSON.stringify($scope.form);
            console.log(my , "my ");

            $state.go('showSearchResults' , {"input" : my} )
        }

        $scope.type;
        $scope.searchproperty = function () {
            $scope.type = $stateParams.user_id;
            console.log('ghh', $scope.type);
            $state.go('searchproperty', {"user_id": $scope.type});
        }
        $scope.reservedproperty = function () {
            $scope.type = $stateParams.user_id;
            $state.go('reserveproperty', {"user_id": $scope.type});
        }
    })


    .controller('showSearchResultsCtrl', function ($scope,$state,$stateParams, $http) {
        console.log('userDashBoard')
        console.log($stateParams.input , "$stateParams.input") ;
        var input = JSON.parse($stateParams.input);

        $http.post('/serachPropery', input).success(function (response) {
            console.log(response);
            $scope.result= response;
            $scope.res = response;
            console.log($scope.res.length ,"response.length")
        });

        var userId= localStorage.getItem('ppid');
        $scope.reservedproperty = function (id) {
            console.log(id , "userId" , userId);
            info = {"userId" : userId , "property_id" : id}
             $http.post('/reservedproperty', info).success(function (response) {
                console.log(response );
                 
                 alert('Successfully Added');
                 $http.post('/serachPropery', input).success(function (response) {
                     console.log(response);
                     $scope.result= response;
                     $scope.res = response;
                     console.log($scope.res.length ,"response.length")
                 });


            });
        }

        $scope.book = function (id) {

            info = {"userId" : userId , "propertyId" : id}
            $http.post('/bookProperty', info).success(function (response) {
                console.log(response );
                alert('Successfully Booked');

                $http.post('/serachPropery', input).success(function (response) {
                    console.log(response);
                    $scope.result= response;
                    $scope.res = response;
                    console.log($scope.res.length ,"response.length")
                });


            });

        }
        
        
        
        
        
        
        

    })

    .controller('sellerViewPropertyCtrl', function ($scope,$state,$stateParams, $http) {

        var userId= localStorage.getItem('ppid');
        data = {"userId" : userId}
        console.log('i am inside controller ')

        $http.post('/sellerViewProperty', data ).success(function(response) {
            console.log(response ,"response");
            $scope.result= response;
        });

        $scope.delete = function (id) {
            console.log(id , "iddd")
            $http.delete('/deleteProperty/'+id, data ).success(function(response) {
                console.log(response ,"response");
                if(response.status == "success"){
                    alert('successfully Deleted');
                    $http.post('/sellerViewProperty', data ).success(function(response) {
                        console.log(response ,"response");
                        $scope.result= response;
                    });
                }

            });
        }

    })

    .controller('editProfileCtrl', function ($scope,$state, $http, $stateParams) {
        $scope.form={}
        $scope.form.userId =$stateParams.userId;
        var input ={"userId" : $stateParams.userId , "tableName":"registration" };
       
        $http.post('/userInfo', input ).success(function(response) {
            console.log(response ,"response");
            console.log("i am insode")
            $scope.form.name=response.name;
            $scope.form.password=response.password
            $scope.form.emailAddress=response.emailAddress
            $scope.form.mobileNo=response.mobileNo
            $scope.form.address=response.address
          });
        
        $scope.submit=function () {

            console.log($scope.form);
            $http.post('/editprofile', $scope.form ).success(function(response) {
                if(response.status == "12")
                { console.log('successfully changed');}
                else
                {$state.go('userDashBoard', {"userId" :$scope.form.userId})}
            })
        }

    })

    .controller('showProfileCtrl', function ($scope,$state, $http, $stateParams) {
        $scope.form={}
        $scope.form.userId =$stateParams.userId;
        var input ={"userId" : $stateParams.userId , "tableName":"registration" };

        $http.post('/userInfo', input ).success(function(response) {
            console.log(response ,"response");
            console.log("i am insode")
            $scope.form.name=response.name;
            $scope.form.password=response.password
            $scope.form.emailAddress=response.emailAddress
            $scope.form.mobileNo=response.mobileNo
            $scope.form.address=response.address
        });



    })

    .controller('viewProfileCtrl', function ($scope,$state, $http, $stateParams) {

        var userId= localStorage.getItem('ppid');
        console.log(userId , "userId")

        var table =localStorage.getItem('userType')
        if(table === "admin") {
            data = {"userId" : userId , "tableName" : "admin" }
        } else if( table == "nonAdmin"){
            data = {"userId" : userId , "tableName" : "registration" }
        }



        $http.post('/viewProfile', data ).success(function(response) {
            console.log(response ,"response");
            $scope.form= response;
            console.log($scope.form , "$scope.form" ) ;
        });


    })


    .controller('editProfileCtrl', function ($scope,$state, $http, $stateParams) {
        
        var userId= localStorage.getItem('ppid');
        $scope.input ={};

        var table =localStorage.getItem('userType')

        if(table == "admin") {
            data = {"userId" : userId , "tableName" : "admin" }
            $scope.input.tableName = "admin";
        } else {
            data = {"userId" : userId , "tableName" : "registration" }
            $scope.input.tableName = "registration";
        }

        $http.post('/viewProfile', data ).success(function(response) {
            $scope.input = response[0];
            console.log("$scope.form"  , $scope.input , "$scope.form" ) ;
        });
        
        $scope.editProfile = function () {
            

            if(table == "admin") {
                $scope.input.tableName = "admin";
            } else {
                $scope.input.tableName = "registration";
            }
            console.log($scope.input.tableName  ,"$scope.input.tableName ")
            var values = $scope.input;
            
            console.log(values , "object")
            $http.post('/editprofile', values ).success(function(response) {
                console.log(response ,"response");


                if(response.status == "changed" && table !="admin")
                {
                    $state.go('updatedMessage');
                }else {
                    alert('successfully Updated');
                }

            });
        }
        


    })


    .controller('updatedMessageCtrl', function ($scope,$state, $http, $stateParams) {

        $scope.redirect = function () {

            $state.go('userDashBoard');
        }
    })



    .controller('adminDashBoardCtrl', function ($scope,$state, $http, $stateParams) {


        $scope.verify = function () {
            $state.go('adminVerifyProperty');

        }

        $scope.viewProfile = function () {
            $state.go('viewProfile');

        }
        $scope.editProfile = function () {
            $state.go('editProfile');

        }
    })

.controller('adminVerifyPropertyCtrl' , function ($scope,$state, $http , $stateParams) {
        console.log('i am inside admin Verify Controller');
            $http.get('/adminData').success(function(response) {
                $scope.result= response;
            })

        $scope.Approve = function (id) {
            console.log(id , "Id")
            var xx = {"propertyId" : id}
            $http.post('/adminApproval', xx).success(function(response) {
                $scope.result= response;
                if(response.status == "changed"){
                    alert('Approved Successfully');

                    $http.get('/adminData').success(function(response) {
                        $scope.result= response;
                        $scope.res = response;

                    })
                }
            })
        }

        $scope.cancel = function (id) {
            console.log(id , "Id")
            $http.delete('/deleteProperty/' + id).success(function(response) {
                if(response.status == "success"){
                    alert('Successfully Deleted');
                    $http.get('/adminData').success(function(response) {
                        $scope.result= response;
                        $scope.res = response;
                        
                    })
                }


            })


        }
})