<?php /* Smarty version Smarty 3.1.4, created on 2016-12-02 11:08:28
         compiled from "templates/app-js.tpl" */ ?>
<?php /*%%SmartyHeaderCode:201778931458407ea4209237-61823423%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f3151f46ac5fd0a9a66d70ae689da0978f0622c0' => 
    array (
      0 => 'templates/app-js.tpl',
      1 => 1480694905,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '201778931458407ea4209237-61823423',
  'function' => 
  array (
  ),
  'version' => 'Smarty 3.1.4',
  'unifunc' => 'content_58407ea4232dd',
  'variables' => 
  array (
    'orders_response' => 0,
    'application_credits_response' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58407ea4232dd')) {function content_58407ea4232dd($_smarty_tpl) {?><script>
    /* Orders list */
    var ordersList = "<ul>";
    var order_json = <?php echo $_smarty_tpl->tpl_vars['orders_response']->value;?>
;
    $.each(order_json, function (i, data) {
        ordersList += "<li><a target='_blank' href='https://altify-dev-store.myshopify.com/admin/orders/" + data.id + "'>" + data.id + "</a></li>";
    });
    ordersList += "<ul>";
    $(ordersList).appendTo("#orders-list");




    /* Credit list */
    var creditsList = "<ul>";
    var refunds_json = <?php echo $_smarty_tpl->tpl_vars['application_credits_response']->value;?>
;
    $.each(refunds_json, function (i, data) {
        creditsList += "<li><a data-toggle='modal' data-target='#refundModal' data-whatever='" + data.id + "'>" + data.id + "</a></li>";
    });
    creditsList += "<ul>";
    $(creditsList).appendTo("#credits-list");




    /* Modal boxes */
    $('#refundModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget) // Button that triggered the modal
        var recipient = button.data('whatever') // Extract info from data-* attributes
        // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
        // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
        var modal = $(this)
        modal.find('.modal-title').text('New message to ' + recipient)
        modal.find('.modal-body input').val(recipient)
    });
</script><?php }} ?>