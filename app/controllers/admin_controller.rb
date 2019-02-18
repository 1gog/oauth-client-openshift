class AdminController < ApplicationController



def admin
require 'oauth2'
client_id = 'oauth-client'
client_secret = 'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJrdWJlcm5ldGVzL3NlcnZpY2VhY2NvdW50Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9uYW1lc3BhY2UiOiJkZXYiLCJrdWJlcm5ldGVzLmlvL3NlcnZpY2VhY2NvdW50L3NlY3JldC5uYW1lIjoib2F1dGgtY2xpZW50LXRva2VuLWhmcms3Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9zZXJ2aWNlLWFjY291bnQubmFtZSI6Im9hdXRoLWNsaWVudCIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VydmljZS1hY2NvdW50LnVpZCI6IjEwZTllYjcyLTczNmMtMTFlOC05NjIxLTI2NjEwZTQ5ZTJkMiIsInN1YiI6InN5c3RlbTpzZXJ2aWNlYWNjb3VudDpkZXY6b2F1dGgtY2xpZW50In0.jRX29opRjKXhMgDfMzDqhYq3Cbi2DLkVn4QQtz_mm7hnM_rQUEq4r-VhwZjTybeJad0M04fgwOyIvC11xKGyAvsn4ikW3T0lAOAitPx1qUtXohFstshcd8oe13Y6hui8_0TlAUhTstYdcS_fIQiLDgzFlsyd986GsvN8HhFeB-etgObQNXlanGb125-jmCQy1CJSzdIxjK9Ti-lt69YDX0e6A4QV7FMgs7HvwqvnE3-BKIiY4MoVFONRacJ0lYz-z6G4tZl-GFXqGO9xOpyE8cgomELxo_7DQhiVoHXWy0pkwTe08Nr9vH6ZP9wmjgdgjNoMmH0tsuJHQX3NA7VA-Q'
client = OAuth2::Client.new( client_id, client_secret, :site => 'https://oauth-client-dev.172.16.137.128.nip.io/admin')

client.auth_code.authorize_url(:redirect_uri => 'http://localhost:3000/oauth2/authorize')

token = client.auth_code.get_token('authorization_code_value', :redirect_uri => 'https://172.16.137.128/oauth2/token', :headers => {'Authorization' => 'Basic some_password'})
response = token.get('/api/resource', :params => { 'query_foo' => 'bar' })
response.class.name
# => OAuth2::Response
end

end
