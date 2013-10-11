class Api::V1::PurchaseOrdersController < ApplicationController
  respond_to :json

  def search
    po = PurchaseOrder.find_by_purchase_order_number(params[:po_number])
    respond_with(po, :status => po.blank? ? 404 : 200)
  end
end
