

var cartApp = angular.module ("cartApp", []);

cartApp.controller("cartCtrl", function ($scope, $http) {

    $scope.refreshCart = function (cartId) {
        $http.get('/eshopstore/rest/cart/'+ $scope.cartId).success(function (data) {
            $scope.cart=data;
        });
    };

    $scope.clearCart = function () {
        $http.delete('/eshopstore/rest/cart/' + $scope.cartId).success($scope.refreshCart($scope.cartId));
    }

    $scope.initCartId = function (cartId) {
        $scope.cartId = cartId;
        $scope.refreshCart(cartId);
    };

    $scope.addToCart = function (productId) {
        $http.put('/eshopstore/rest/cart/add/'+ productId).success(function (data) {
            $scope.refreshCart($http.get('/eshopstore/rest/cart/cartId'));
            alert("Item successfully added to cart!")
        });
    };

    $scope.removeFromCart = function (productId) {
        $http.put('/eshopstore/rest/cart/remove/'+ productId).success(function (data) {
            $scope.refreshCart($http.get('/eshopstore/rest/cart/cartId'));
        });
    };
});