json.array!(@orderdetails) do |orderdetail|
  json.extract! orderdetail, :id, :amount, :subtotal
  json.url orderdetail_url(orderdetail, format: :json)
end
