<div class="box-modal">
    <div class="modal fade" id="refundModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title"></h4>
                </div>
                <div class="modal-body">




                    <form tg-remote="true" refresh-on-success="modal timeline_container order-line-items order-notices order-actions ui-modal-contents" refresh-on-error="modal timeline_container order-line-items order-notices order-actions ui-modal-contents" submit-on-cmd-enter="true" define="" autocomplete="off"  accept-charset="UTF-8" method="post">
                        <input name="utf8" type="hidden" value="✓">
                        <input type="hidden" name="authenticity_token" value="">
                        <div class="body">
                            <div style="padding-right: 12px;">
                                <div class="table-wrapper">
                                    <table class="next-table--line-items next-table--with-price">
                                        <tbody class="refundItems">

                                        </tbody>
                                    </table>
                                </div>
                                <div class="table-wrapper">
                                    <hr class="next-card__section__separator--half">
                                </div>
                                <div class="table-wrapper">
                                    <table class="table--nested table--no-border type--right next-table--with-price">
                                        <tbody>
                                        <tr>
                                            <td class="tr type--subdued">Subtotal</td>
                                            <td class="tr fw-strong">
                                                <span bind-unsafe-html="refundedSubtotal" bind-show="!pendingRefundCalculation" class="">$0.00</span>
                                                <div class="next-spinner sr hide" bind-show="pendingRefundCalculation">
                                                    <svg class="next-icon next-icon--size-12"> <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#next-spinner"></use> </svg>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="tr type--subdued">Tax</td>
                                            <td class="tr fw-strong">
                                                <span bind-unsafe-html="refundedTax" bind-show="!pendingRefundCalculation" class="">$0.00</span>
                                                <div class="next-spinner sr hide" bind-show="pendingRefundCalculation">
                                                    <svg class="next-icon next-icon--size-12"> <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#next-spinner"></use> </svg>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="tr type--subdued">Total available to refund</td>
                                            <td class="tr quantity">$6.50</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <div class="table-wrapper">
                                <table class="refund-payments">
                                    <tbody>
                                    <tr context="refundableTransactions[5204215377]">
                                        <td>
                                            <div class="ui-stack ui-stack--wrap">
                                                <span role="img" class="ui-inline-svg"><svg xmlns="http://www.w3.org/2000/svg" width="28" height="18" viewBox="0 0 28 18"><path fill="#F1F5F7" d="M-464-1428.975h1107v1785.975h-1107z"></path><g><path fill="#3086C8" d="M28 16.006c0 1.101-.893 1.994-1.994 1.994h-24.012c-1.101 0-1.994-.893-1.994-1.994v-14.012c0-1.101.893-1.994 1.994-1.994h24.011c1.102 0 1.995.893 1.995 1.994v14.012z"></path><path opacity=".25" fill="#231F20" d="M0 6h28v6h-28z"></path><path fill="#F9DC80" d="M7 10c0 .477-.531 1-1 1h-2c-.469 0-1-.491-1-.968v-2.032c0-.477.531-1 1-1h2c.469 0 1 .523 1 1v2z"></path></g></svg></span>
                                                <p class="type--subdued">
                                                    Refund with: Manual
                                                </p>
                                            </div>
                                        </td>
                                        <td class="tr" define="">
                                            <span class="add-on before">$</span>
                                            <input name="refund[transactions][][kind]" class="hide" value="refund" type="text">
                                            <input name="refund[transactions][][gateway]" class="hide" value="manual" type="text">
                                            <input name="refund[transactions][][order_id]" class="hide" type="text">
                                            <input name="refund[transactions][][parent_id]" class="hide" value="5204215377" type="text">
                                            <input name="refund[transactions][][amount]" type="number" value="0" min="0" max="6.50" step="0.01" bind="amount" class="j-refund-amount w-tiny no-spinbox tr disabled">
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>

                            </div>
                            <div bind-show="hasDiscrepancy" class="hide"><div class="next-input-wrapper"><label class="next-label" for="refund_discrepancy_reason">Reason for discrepancy in refund amount</label><div class="next-select__wrapper"><select name="refund[discrepancy_reason]" id="refund_discrepancy_reason" class="next-select" aria-describedby="help-4aba8aaece48d47a822e0c7acb232856"><option value="restock">Customer was charged restocking fee</option>
                                            <option value="damage">Customer returned the item damaged</option>
                                            <option value="customer">Customer was unhappy with the order</option>
                                            <option value="Refund discrepancy">Other</option></select><svg class="next-icon next-icon--size-12"> <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#next-chevron-down"></use> </svg></div><p id="help-4aba8aaece48d47a822e0c7acb232856" class="next-input__help-text">(Used in sales reports)</p></div></div>
                            <div class="ppt">
                                <label for="refund-note">
                                    Reason for refund (optional)
                                </label>
                                <input type="text" id="refund-note" name="refund[note]" bind="note">
                            </div>
                            <div id="global-icon-symbols" data-tg-refresh="global-icon-symbols" data-tg-refresh-always="true" style="display: none;"><svg xmlns="http://www.w3.org/2000/svg"><symbol id="next-spinner"><svg preserveAspectRatio="xMinYMin"><circle class="next-spinner__ring" cx="50%" cy="50%" r="45%"></circle></svg></symbol><symbol id="next-chevron-down"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" enable-background="new 0 0 24 24"><path d="M21 5.176l-9.086 9.353-8.914-9.353-2.314 2.471 11.314 11.735 11.314-11.735-2.314-2.471z"></path></svg></symbol></svg></div>
                        </div>
                        <div class="modal-footer">
                            <div class="buttons">
                                <div class="fl align-with-input">
                                    <input name="refund[notify]" checked="" type="checkbox" bind="notify" id="send-email" value="true">
                                    <label class="inline fw-normal type--subdued" for="send-email">
                                        Send a <a href="/admin/settings/notifications">notification email</a> to the customer
                                    </label>
                                </div>
                                <a class="btn close-modal" data-dismiss="modal">Cancel</a>
                                <button type="submit" bind-disabled="hasNoAmountToRefund &amp;&amp; !hasSelectedQuantity()" class="btn btn-primary js-btn-loadable has-loading btn-disabled" bind-class="" disabled="">
                                    Refund <span bind-unsafe-html="formattedRefundAmount">$0.00</span>
                                </button>
                            </div>
                        </div>
                    </form>






                </div>
            </div>
        </div>
    </div>
</div>