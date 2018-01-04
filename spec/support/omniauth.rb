def stub_omniauth
  OmniAuth.config.test_mode = true
  OmniAuth.config.mock_auth[:google] = OmniAuth::AuthHash.new(
    {"provider"=>"google",
 "uid"=>"10786451058",
 "info"=>
  {"email"=>"marshall@gmail.com",
   "first_name"=>"Marshall",},
 "credentials"=>
  {"token"=>
    "FZC29M3BibRSfHfMmVwOoekcJucEQKU3So_2f0q1iXU1S4"}
  })
end
