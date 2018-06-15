class RootController < ApplicationController

require 'oauth2'

def main()
    server = 'https://172.16.137.128:8443'
    @client = OAuth2::Client.new('client_id', 'client_secret', :site => "#{server}")
    @client.auth_code.authorize_url( :redirect_uri => "#{server}/oauth/authorize" )
    @token = @client.auth_code.get_token()
    #token = client.auth_code.get_token('authorization_code_value', :redirect_uri => 'http://localhost:8080/oauth2/callback', :headers => {'Authorization' => 'Basic some_password'})
end

end
