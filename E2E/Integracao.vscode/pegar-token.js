// pegar-token.js

// 1. Recebe os parâmetros dinâmicos enviados pelo fluxo YAML do Maestro.
// Se não for passado no bloco 'env' do YAML, usa um CPF padrão de testes.
var loginId = typeof LOGIN_ID !== 'undefined' ? LOGIN_ID : "74873540089";

// 2. Define a URL do endpoint GET passando o loginId (CPF) na rota
var apiUrl = 'https://9nguwq91xh.execute-api.us-east-1.amazonaws.com/stage/callback/signin-otp/' + loginId;

console.log("Iniciando busca do OTP via GET para LOGIN_ID: " + loginId);

try {
    // 3. Executa a requisição GET para a sua API buscando o token do usuário.
    var response = http.get(apiUrl, {
        headers: {
            'Content-Type': 'application/json'
        }
    });

    // 4. Transforma a resposta em JSON
    var dados = json(response.body);

    // 5. Salva o token recuperado na variável global do Maestro.
    // A API retorna o JSON com o formato: { "token": "123456" }
    output.sfToken = dados.token; 

    console.log("Token/OTP recuperado com sucesso para " + loginId + ": " + output.sfToken);

} catch (e) {
    console.log("Erro ao buscar o token na API: " + e);
    // Em caso de falha na API, lançamos um erro claro
    throw new Error("Falha na integração ao buscar token: " + e);
}

//GET https://doq7h9ak7k.execute-api.us-east-1.amazonaws.com/qa/callback/signin-otp/{CPF}
//Resposta: { "token": "123456" }