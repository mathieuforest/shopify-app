<?php
	/* SHOPIFY CONFIG */
	define('SHOPIFY_API_KEY', 'b5b55534b2a014a4d88c9efac98fd07b');
	define('SHOPIFY_SECRET', '55bd6255852aab2478ffd63e590d260d');
	define('SHOPIFY_SCOPE', 'write_content,write_products,write_orders');
	
	if (class_exists("Smarty"))
	{
		$smarty = new Smarty;
		//$smarty->force_compile = true;
		$smarty->debugging = false;
		$smarty->caching = false;
		$smarty->cache_lifetime = 120;
	}

	/* simple debug function */
	function debug(&$var) {
		echo "<pre>";
		print_r($var);
		echo "</pre>";
	}
