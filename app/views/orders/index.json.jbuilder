json.array!(@orders) do |order|
  json.extract! order, :id, :shipping_address, :date_order, :delivery_date, :total_price, :comment, :order_state
  json.url order_url(order, format: :json)
end
