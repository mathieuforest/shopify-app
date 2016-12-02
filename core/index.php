<?php
	try {
		$orders_response = $shopifyClient->call('GET', '/admin/orders.json');
		$smarty->assign('orders_response', json_encode($orders_response));

		$application_credits_response = $shopifyClient->call('GET', '/admin/orders.json?financial_status=partially_refunded');
		$smarty->assign('application_credits_response', json_encode($application_credits_response));

	} catch (ShopifyApiException $ex) {
		// handle the exception
		debug($ex);
	}
?>
