# Pedro Gas, Agua e Racao

App operacional para Android, feito para registrar vendas, clientes, entregas,
produtos, estoque e relatorios da empresa Pedro Gas, Agua e Racao.

## Uso hoje

- APK instalavel: `Pedro-Gas.apk`
- App web publicado: `https://rnzcentral.github.io/`
- Repositorio principal: `https://github.com/rnzcentral/pedro-gas-app`
- Publicacao raiz usada pelo APK: `https://github.com/rnzcentral/rnzcentral.github.io`

## Login

O app tem 3 acessos fixos nesta fase:

- Dono do projeto: acesso total.
- Socio master: area de gestao, vendas, estoque, divisao de lucro e relatorios.
- Entregador: pedidos, entregas e relatorios de dia, semana e mes.

Observacao: os logins fixos estao no codigo para permitir uso imediato. A fase
seguinte deve mover autenticacao e permissoes para Supabase ou outro backend.

## O que ja existe

- Login sem exemplos na tela, com campo de login e senha.
- Pedidos com cliente, endereco, produto, quantidade, pagamento, desconto,
  entregador, observacao e data da venda.
- Cadastro de clientes.
- Catalogo de produtos com categoria, preco, custo, estoque e estoque minimo.
- Aba de entregas com status aberto, saiu, entregue e cancelado.
- Cancelamento devolve estoque e nao entra no faturamento.
- Relatorios com filtros por periodo, datas, produto e pagamento.
- Ajustes de imposto, desconto, dados da empresa e fornecedor.
- Backup e restauracao por arquivo JSON.
- Preparacao para Supabase em `supabase-config.js` e `supabase-schema.sql`.

## Dados

Nesta primeira versao, os dados ficam no armazenamento local do app/navegador no
celular. Para reduzir risco:

1. Use sempre o mesmo celular principal ate conectar a nuvem.
2. No fim do dia, use `Ajustes > Baixar backup`.
3. Guarde o arquivo de backup na pasta `dados`, Google Drive ou WhatsApp.

## Atualizacao

O APK usa o pacote `br.com.rnzcentral.pedrogas` e a chave local guardada em
`android-keystore-local/`, que esta no `.gitignore`.

Para futuras atualizacoes por APK:

1. Mantenha o mesmo `packageId`.
2. Mantenha a mesma chave `signing.keystore`.
3. Aumente `appVersionCode`.
4. Gere novo `Pedro-Gas.apk`.
5. Instale por cima no Android.

As alteracoes de HTML/CSS/JS publicadas em `https://rnzcentral.github.io/`
tambem chegam ao app instalado, pois ele carrega a versao publicada.
