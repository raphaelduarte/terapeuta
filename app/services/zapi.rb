require 'uri'
require 'net/http'
require 'openssl'
require 'json'

class Zapi

    def self.whatsapp_api(mensagem)
        url = URI("https://api.z-api.io/instances/3C6F79AD3C85709E3C46B222D950B483/token/C9EF541F12340D112FBCA858/send-text")

        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE

        request = Net::HTTP::Post.new(url)
        request["client-token"] = 'F119d5c70464941d287215105cb51b1d4S'
        request["Content-Type"] = "application/json"
        request.body = "{\"phone\": \"554891463420\", \"message\": \"#{mensagem}\"}"

        response = http.request(request)
        puts response.read_body
    end
end
