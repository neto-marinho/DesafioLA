require    'httparty'
require    'uri'
require    'net/http'
require    'openssl'


url = URI("https://portal.vr.com.br/api-web/comum/enumerations/VRPAT")

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

https = Net::HTTP.new(url.host, url.port)
# https.use_ssl = false

response = HTTParty.get(url)
puts "response code : #{response.code}"
puts "response message : #{response.message}"
puts "response headers : #{response.headers}"
puts "response body : #{response.body}"
