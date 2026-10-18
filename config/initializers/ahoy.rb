class Ahoy::Store < Ahoy::DatabaseStore
  def authenticate(data)
    # disables automatic linking of visits and users
  end
end

Ahoy.api_only = true
Ahoy.mask_ips = true
Ahoy.geocode = false
Ahoy.cookies = :none
