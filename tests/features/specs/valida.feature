#language: pt
@getvalida
Funcionalidade: Validar dados internos de uma api

Eu, como DEVQA
Eu quero validar todas as api's do sistema
A fim de garantir a qualidade.

@executa_getvalida
Cenario: Automatizando VALIDACAOAPI

  Dado que eu faça um GET no VRPAT.json do endpoint da VR
  Quando o retorno dele será todo o corpo de object
  Então será aplicado um filtro no Body para localizar o object typeOfEstablishment
  E printar aleatoriamente um dos typeOfEstablishment
  
  