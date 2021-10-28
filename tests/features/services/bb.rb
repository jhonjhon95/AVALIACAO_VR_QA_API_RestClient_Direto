# Use the class methods to get down to business quickly
require 'httparty'
response = HTTParty.get('https://portal.vr.com.br/api-web/comum/enumerations/VRPAT.json')

puts JSON.parse(response.body)["typeOfEstablishment"][rand(56)]["name"]