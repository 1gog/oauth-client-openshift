class RootController < ApplicationController

require 'oauth2'

def main()
    server = 'https://172.16.137.128:8443'
    client_id = 'msa-oauth'
    client_secret="eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJrdWJlcm5ldGVzL3NlcnZpY2VhY2NvdW50Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9uYW1lc3BhY2UiOiJkZXYiLCJrdWJlcm5ldGVzLmlvL3NlcnZpY2VhY2NvdW50L3NlY3JldC5uYW1lIjoibXNhLW9hdXRoLXRva2VuLTZscXB2Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9zZXJ2aWNlLWFjY291bnQubmFtZSI6Im1zYS1vYXV0aCIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VydmljZS1hY2NvdW50LnVpZCI6ImUwMmMwZGZiLTZlZTktMTFlOC1hNmNiLTVhMDA2ZGUwMmI5OCIsInN1YiI6InN5c3RlbTpzZXJ2aWNlYWNjb3VudDpkZXY6bXNhLW9hdXRoIn0.Gu_SVE0DBe7zzevhluN-jfENf77pknq16-HAgeaUie0SEr_j0JEP122kBlpPCU2RruGWNNui0CepPuysqitcfakaQFb_nv8lXPSSHuuq97Gdn4RK6UmhkVu62nxgVVTEr9xN7ByonHEC8sQf_r09RrxiMZZcCdmzviUfPio2mv78jngFmF21VFq2U5Y6-ELsooPE9Xm0xGTMGlxTAe8bh_Vk1wPsV5_K7o-lrGj3G5wJQ5Rdeuz8HDsRSrwY15bn42XUMzLIP9UWntIb9GjjeJ2siBTQN6Pe_h9Jd7eMi0DXUNJW85hEZxG4u_ia4N8-UWK8Lt1KarTZPCLB2nPY8g"
    @client = OAuth2::Client.new( client_id, client_secret, :site => server)
    @client.auth_code.authorize_url( :redirect_uri => "#{server}/oauth/token/request" )

    puts @client
    #token = client.auth_code.get_token('authorization_code_value', :redirect_uri => 'http://localhost:8080/oauth2/callback', :headers => {'Authorization' => 'Basic some_password'})
end

end
