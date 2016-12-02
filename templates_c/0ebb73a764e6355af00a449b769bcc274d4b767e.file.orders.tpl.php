<?php /* Smarty version Smarty 3.1.4, created on 2016-11-27 16:18:36
         compiled from "templates/orders.tpl" */ ?>
<?php /*%%SmartyHeaderCode:563830937583b4dac38bda3-95378566%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0ebb73a764e6355af00a449b769bcc274d4b767e' => 
    array (
      0 => 'templates/orders.tpl',
      1 => 1480281405,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '563830937583b4dac38bda3-95378566',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'shop_name' => 0,
    'orders_count' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty 3.1.4',
  'unifunc' => 'content_583b4dac3a09b',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_583b4dac3a09b')) {function content_583b4dac3a09b($_smarty_tpl) {?><h3>Orders</h3>

<dl>
    <dt>Shop Name</dt>
    <dd><?php echo $_smarty_tpl->tpl_vars['shop_name']->value;?>
</dd>
    <dt>Orders Count</dt>
    <dd><?php echo $_smarty_tpl->tpl_vars['orders_count']->value;?>
</dd>
</dl>
<?php }} ?>