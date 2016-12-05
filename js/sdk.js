var _init_shopify_client = function _init_shopify_client() {
    if (window.ShopifyApp) {
        window.ShopifyApp.init({
            apiKey: '000d1b4c45d8ddc55d6c7b9ae5726707',
            shopOrigin: 'https://altify-dev-store.myshopify.com',
            icon: 'https://cdn.shopify.com/s/files/1/1230/9376/t/2/assets/altiXldc.ico',
            debug: false
        });
        window.ShopifyApp.Bar.setIcon('https://cdn.shopify.com/s/files/1/1230/9376/t/2/assets/altiXldc.ico');
        ShopifyApp.Bar.initialize({
            buttons: {
                primary: {
                    label: 'Save',
                    message: 'save',
                    callback: function(){
                        ShopifyApp.Bar.loadingOn();
                        alert("Test Button");
                        ShopifyApp.Bar.loadingOff();
                    }
                }
            }
        });
        if (window.self == window.top) {
            throw new Error('Redirecting the the shopify back office...');
        }
        init();
        $('body').trigger('altify:loading:off');
    }
};

var init = function init() {
    if (window.ShopifyApp) {
        $('body').on('altify:loading', window.ShopifyApp.Bar.loadingOn);
        $('body').on('altify:loading:off', window.ShopifyApp.Bar.loadingOff);
        $('body').on('altify:flash', function(event, message) {
            window.ShopifyApp.flashNotice(message);
        });
        $('body').on('altify:flash:error', function(event, message) {
            window.ShopifyApp.flashError(message);
        });
    }
    $('body').on('altify:loading', function() {
        $('body').addClass('loading');
        $('.btn-loading').attr('disabled', 'disabled');
    });
    $('body').on('altify:loading:off', function() {
        $('body').removeClass('loading');
        setTimeout(function() {
            $('.btn-loading').removeAttr('disabled');
        }, 200);
    });
};

var messages = {
    init: init,
    flash: function flash(message) {
        $('body').trigger('altify:flash', [message]);
    },
    flashError: function flashError(message) {
        $('body').trigger('altify:flash:error', [message]);
    },
    loading: function loading() {
        $('body').trigger('altify:loading');
    },
    loadingOff: function loadingOff() {
        $('body').trigger('altify:loading:off');
    }
};

_init_shopify_client();