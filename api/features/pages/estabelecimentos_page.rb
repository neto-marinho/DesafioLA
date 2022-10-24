class Estabelecimento
    include HTTParty
    include OpenSSL

    $uri_base = "https://portal.vr.com.br/api-web/comum/enumerations/VRPAT"  
    OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
    format :json
end
 

