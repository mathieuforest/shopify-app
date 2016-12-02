<?php /* Smarty version Smarty 3.1.4, created on 2016-12-01 16:24:44
         compiled from "templates/index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:205754175839f038bd2784-49609224%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '90093ad09988b466f409a1871733c5589014713e' => 
    array (
      0 => 'templates/index.tpl',
      1 => 1480604509,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '205754175839f038bd2784-49609224',
  'function' => 
  array (
  ),
  'version' => 'Smarty 3.1.4',
  'unifunc' => 'content_5839f038c454d',
  'variables' => 
  array (
    'shop_name' => 0,
    'product_count' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5839f038c454d')) {function content_5839f038c454d($_smarty_tpl) {?><h3>Products</h3>

<dl>
	<dt>Shop Name</dt>
	<dd><?php echo $_smarty_tpl->tpl_vars['shop_name']->value;?>
</dd>
	<dt>Product Count</dt>
	<dd><?php echo $_smarty_tpl->tpl_vars['product_count']->value;?>
</dd>
</dl>
<?php }} ?>