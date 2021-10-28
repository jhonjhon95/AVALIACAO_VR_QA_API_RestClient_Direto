require 'rest-client'
require 'json'
require 'rspec'

url = 'https://portal.vr.com.br/api-web/comum/enumerations/VRPAT' //onde está a api (em um serviço web)
q = 'spotcode'
language = 'ruby'
resp = RestClient.get "#{url}q=#{q}&language=#{language}"
puts JSON.parse(response.body)["typeOfEstablishment"][rand(56)]["name"]