Dado('que eu faça um GET no VRPAT.json do endpoint da VR') do
  response = HTTParty.get('https://portal.vr.com.br/api-web/comum/enumerations/VRPAT.json')
end
Quando('o retorno dele será todo o corpo de object') do
  puts JSON.parse(response.body)
end
Entao('será aplicado um filtro no Body para localizar o object typeOfEstablishment') do
  puts JSON.parse(response.body)["typeOfEstablishment"]
end
E ('printar aleatoriamente um dos typeOfEstablishment') do
  puts JSON.parse(response.body)["typeOfEstablishment"][rand(56)]["name"]
end
