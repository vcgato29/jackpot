Jackpot.configure do |c|
  if Rails.env.production? or Rails.env.staging?
    c.gateway_type      :braintree
    c.gateway_login     ENV['jackpot_login']
    c.gateway_password  ENV['jackpot_demo']
    c.gateway_mode      :test
  else
    c.gateway_type      :braintree
    c.gateway_login     'login'
    c.gateway_password  'demo'
    c.gateway_mode      :test
  end 
end 
