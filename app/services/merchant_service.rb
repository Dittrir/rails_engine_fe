class MerchantService
  def self.all_merchants
    response = conn.get("/api/v1/merchants")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.merchant_info(merchant_id)
    response = conn.get("/api/v1/merchants/#{merchant_id}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.merchant_items(merchant_id)
    response = conn.get("/api/v1/merchants/#{merchant_id}/items")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new("http://localhost:3000")
  end
end
