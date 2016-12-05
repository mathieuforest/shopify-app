<script>


    function loadScript(url, callback){

        var script = document.createElement("script")
        script.type = "text/javascript";

        if (script.readyState){  //IE
            script.onreadystatechange = function(){
                if (script.readyState == "loaded" ||
                        script.readyState == "complete"){
                    script.onreadystatechange = null;
                    callback();
                }
            };
        } else {  //Others
            script.onload = function(){
                callback();
            };
        }

        script.src = url;
        document.getElementsByTagName("head")[0].appendChild(script);
    }



    var app = function($){


        $( ".nav.nav-tabs li a" ).click(function() {
            $('body').trigger('altify:loading');
            $('body').trigger('altify:loading:off');
        });




        /* Orders list */
        var ordersList = "<ul>";
        var order_json = {$orders_response};
        $.each(order_json, function (i, data) {
            ordersList += "<li><a data-toggle='modal' data-toggle='modal' data-target='#refundModal' data-order-id='" + data.id + "' data-title='Add a refund'>" + data.id + "</a></li>";
        });
        ordersList += "<ul>";
        $(ordersList).appendTo("#orders-list");






        /* Credit list */
        var creditsList = "<ul>";
        var refunds_json = {$application_credits_response};
        $.each(refunds_json, function (i, data) {
            creditsList += "<li><a data-toggle='modal' data-toggle='modal' data-target='#refundModal' data-order-id='" + data.id + "' data-title='Modify a refund'>" + data.id + "</a></li>";
        });
        creditsList += "<ul>";
        $(creditsList).appendTo("#credits-list");





        /* Modal boxes */
        $('#refundModal').on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget);
            var orderId = button.data('order-id');
            var title = button.data('title');
            var modal = $(this);

            modal.find('.modal-title').text(title);
            modal.find('input[name="refund[transactions][][order_id]"]').attr('value', orderId);
            modal.find('form').attr('action', '/admin/orders/'+ orderId +'/refunds');

            $.getJSON( 'https://altify-dev-store.myshopify.com/admin/orders.json?ids='+ orderId ,function(data){
                $.each(data.orders.line_items, function(i, data) {
                    var refundItems = '';
                    refundItems += '<tr context="refundItems[' + data.orders.line_items.variant_id + ']">';
                    refundItems += '<td class="next-table__cell--item-name" width="45%">';
                    refundItems += '<a href="/admin/products/' + data.orders.line_items.id + '/variants/' + data.orders.line_items.variant_id + '">' + data.orders.line_items.name + '</a>';
                    refundItems += '<p><small class="status error">This product cannot be restocked</small></p>';
                    refundItems += '</td>';
                    refundItems += '<td class="type--left next-table__cell--grow-when-condensed">';
                    refundItems += '<span>$10.00</span>';
                    refundItems += '</td>';
                    refundItems += '<td class="type--subdued">x</td>';
                    refundItems += '<td class="tr">';
                    refundItems += '<span define="">';
                    refundItems += '<input name="refund[refund_line_items][][line_item_id]" type="text" class="hide" value="8615283921">';
                    refundItems += '<input name="refund[refund_line_items][][quantity]" bind="quantity" class="j-refund-quantity" type="number" min="0" max="1" value="0">';
                    refundItems += '</span>';
                    refundItems += '</td>';
                    refundItems += '<td class="type--right" define="">';
                    refundItems += '<span bind-unsafe-html="refundTotal" bind-show="!pendingRefundCalculation">$0.00</span>';
                    refundItems += '<div class="next-spinner sr hide" bind-show="pendingRefundCalculation">';
                    refundItems += '<svg class="next-icon next-icon--size-20"> <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#next-spinner"></use> </svg>';
                    refundItems += '</div>';
                    refundItems += '</td>';
                    refundItems += '</tr>';
                });
            });
        });
    };







    if (typeof jQuery === 'undefined') {
        loadScript('//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js', function(){
            jQuery191 = jQuery.noConflict(true);
            app(jQuery191);
        });
    } else {
        app(jQuery);
    }






</script>