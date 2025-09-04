# TODO: Realize uma solicitação GET para uma URL de sua escolha e analise a resposta no Postman.
GET https://jsonplaceholder.typicode.com/posts/1
# TODO: Modifique a solicitação GET adicionando parâmetros de consulta e observe o impacto na resposta.
GET https://jsonplaceholder.typicode.com/posts?userId=1
# TODO: Execute uma solicitação POST com dados JSON, analisando como os dados são enviados.
POST https://jsonplaceholder.typicode.com/posts
Content-Type: application/json
# TODO: Inspecione os cabeçalhos da resposta para compreender detalhes como Content-Type e Content-Length.
{
  "title": "foo",
  "body": "bar",
  "userId": 1
}
# TODO: Realize uma requisição GET para o site do Youtube (www.youtube.com) e analise dados da resposta HTML.
GET https://www.youtube.com