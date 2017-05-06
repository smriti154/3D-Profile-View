require 'net/http'
require 'json'
require 'uri'
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def sendRequestToOrientDB(url)
    request = generateHTTPRequest(url)
    # request.body = requestBody
    puts "request", request
    response = @http.request(request)
    Rails.logger.info "#################################### ORIENT REPONSE ###########################################"
    Rails.logger.info response.code
    #Rails.logger.info response.body
    return parseResponse(response)
  end

  def generateHTTPRequest(url)
    uri = URI.parse(url)
    puts "uriii", uri.inspect
    @http = Net::HTTP.new(uri.host, uri.port)
    @http.use_ssl = true
    puts "<<<<<<<<<<<<<<<<",@http.inspect
    puts "::::::::::::",uri.request_uri
    request = Net::HTTP::Get.new(uri.request_uri)
    # puts "hhhhhhhhhhhhhhhhhh",request.inspect
    # if isUserAdmin
    #   password = Digest::MD5.hexdigest("TestDatabaseadmin")
    #   user = "TestDatabaseadmin"
    # else
    #   user = "root"
    #   password = "smriti"
    # # end
    # request.basic_auth(user, password)
    # request["Content-Type"] = "application/json"
    # puts "after auth", request.inspect
    return request
  end

  def parseResponse(response)
    # 401 Unautharized
    # 500 Internal Server Error
    # 400 Error in Code
    if response.code.to_i == 200 || response.code.to_i == 404
      puts "dsvjjjjjjjjjjjjjjjjjjjjjjjjh", response.body
      return response.body

    else
      # Rails.logger.error "Error Occured in Orientdb: #{response.code}: #{response.body}"
      # raise "Error Message #{response.code} #{response.body}"
    end
  end
end
