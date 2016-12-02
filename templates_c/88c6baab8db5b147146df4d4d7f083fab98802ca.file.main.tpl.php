<?php /* Smarty version Smarty 3.1.4, created on 2016-12-02 11:23:06
         compiled from "templates/main.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1676247612584034cdd74a06-82254159%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '88c6baab8db5b147146df4d4d7f083fab98802ca' => 
    array (
      0 => 'templates/main.tpl',
      1 => 1480695781,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1676247612584034cdd74a06-82254159',
  'function' => 
  array (
  ),
  'version' => 'Smarty 3.1.4',
  'unifunc' => 'content_584034cddd61c',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_584034cddd61c')) {function content_584034cddd61c($_smarty_tpl) {?><div>
    <h2>Refunds</h2>
</div>

<div id="exTab2" class="container">
    <ul class="nav nav-tabs">
        <li class="active">
            <a href="#1" data-toggle="tab">Orders</a>
        </li>
        <li><a href="#2" data-toggle="tab">Credits</a>
        </li>
    </ul>

    <div class="tab-content">
        <div class="tab-pane active" id="1">
            <h3>Orders</h3>
            <dl>
                <dt>Orders list</dt>
                <dd id="orders-list"></dd>
            </dl>
        </div>

        <div class="tab-pane" id="2">
            <h3>Credits</h3>
            <dt>Orders with credits list</dt>
            <dd id="credits-list"></dd>
        </div>
    </div>

</div>
<?php }} ?>