require 'uri'
require 'net/http'
require 'openssl'
require 'json'

class Zapi
    
    def self.whatsapp_api(mensagem)
        url = URI("https://api.z-api.io/instances/3C6F79AD3C85709E3C46B222D950B483/token/C9EF541F12340D112FBCA858/send-text")
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = false

        request = Net::HTTP::Post.new(url)
        request["client-token"] = 'C9EF541F12340D112FBCA858'
        request.content_type = 'application/json'
        request.body = JSON.dump({
        "phone": "554891463420",
        "message": "#{mensagem}"
        })

        begin
        response = http.request(request)
        puts response.read_body
        rescue => e
        puts "Erro: #{e.message}"
        end
    end
end

