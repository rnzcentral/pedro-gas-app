# Continuidade do Projeto

App: Pedro gas, agua e racao

## Pedido do dono

Construir um app instalavel em Android/iPhone para gerir pedidos, clientes, entregas, precos, custos, impostos, relatórios e acessos da empresa Pedro gas, agua e racao.

## Regras de trabalho

- Antes de criar contas, baixar dependencias ou usar servicos externos, pedir autorizacao ao dono.
- Registrar neste arquivo as decisoes e mudancas importantes para outro Codex continuar.
- Economizar creditos: fazer passos objetivos, evitar retrabalho e perguntar somente quando for necessario.

## Escopo inicial autorizado

- Programacao completa do app.
- Comecar pela base informada pelo dono.
- App deve ser instalavel em qualquer celular ou iPhone.
- Dados devem futuramente ficar em nuvem segura e gratuita.

## Funcionalidades planejadas

- Novo pedido pelo celular com cliente, endereco, produtos, desconto, forma de pagamento e entregador.
- Lista de clientes cadastrados.
- Desconto para comerciante.
- Relatorios diarios, semanais, mensais e anuais.
- Configuracao de preco de custo do gas, impostos, dados da empresa e fornecedor.
- Aba suporte com contato do fornecedor.
- Login multicamadas:
  - RNZ: acesso total.
  - Master: acesso total exceto permissoes que o dono selecionar.
  - Entregador: acesso limitado a area de venda/entrega.
- Dados em nuvem segura e gratuita na fase seguinte.

## Decisoes tecnicas iniciais

- Comecar como PWA: HTML, CSS e JavaScript puro, sem baixar dependencias agora.
- Motivo: funciona em Android/iPhone pelo navegador, pode ser instalado na tela inicial e economiza setup.
- Persistencia inicial: localStorage no aparelho para prototipo funcional offline.
- Nuvem recomendada para fase seguinte: Supabase free tier ou Firebase free tier. Ainda nao foi criada conta nem conectado servico externo.

## Estado atual

- O prototipo estatico inicial foi transformado em uma base operacional PWA.
- Arquivos principais:
  - `index.html`: estrutura das telas.
  - `styles.css`: visual mobile-first.
  - `app.js`: regras do app, dados locais, login simulado, pedidos, clientes, relatorios e ajustes.
  - `manifest.json`: configuracao de instalacao PWA.
  - `sw.js`: cache basico para funcionamento como app instalavel.
- Login inicial era apenas prototipo local:
  - Senha: `1234`.
  - Perfis: dono, master e entregador.
- Permissoes atuais:
  - RNZ: ve tudo.
  - Master: ve pedidos, clientes, relatorios e suporte.
  - Entregador: ve pedidos, clientes e suporte.
- Dados atuais ficam no `localStorage` do aparelho/navegador.
- Nuvem ainda nao conectada. Pedir autorizacao antes de criar conta, configurar banco ou usar servico externo.
- Foi aberto `https://supabase.com/dashboard/sign-in` no navegador interno para o dono entrar/criar conta com Google.
- Adicionado backup local:
  - Botao "Baixar backup" em Ajustes.
  - Botao "Restaurar backup" em Ajustes.
  - Estrutura de dados com `version: 1` e migracao basica para evoluir o app sem perder dados.
- Para uso hoje antes da nuvem: usar em um aparelho principal e baixar backup no fim do dia.
- O dono pediu app funcionando hoje, com instalacao no celular e atualizacao sem transferir instaladores.
- Decisao: manter como PWA para atualizacao automatica e instalacao em Android/iPhone por HTTPS.
- APK nativo nao foi gerado porque este computador nao tem Java/JDK/Gradle.
- IPA/iOS nativo nao e viavel sem Apple Developer/TestFlight/App Store; usar PWA no Safari.
- Adicionados:
  - `supabase-config.js`: local para colar Project URL e anon public key.
  - `supabase-schema.sql`: SQL inicial para tabela `business_state` com RLS para usuarios autenticados.
  - `INSTALAR_NO_CELULAR.md`: instrucoes de instalacao.
- App agora tem area de nuvem em Ajustes:
  - Criar login.
  - Entrar e sincronizar.
  - Mantem fallback local e backup JSON.
- Service worker atualizado para cache `pedro-gas-app-v2` para forcar atualizacao do PWA quando publicar nova versao.
- Service worker atualizado novamente para cache `pedro-gas-app-v3` apos adicionar catalogo/estoque.
- Dono pediu foco para registrar vendas hoje e nesta semana.
- Mudancas:
  - Dados de exemplo removidos.
  - `STORAGE_KEY` alterado para `pedro-gas-app-v2`, iniciando app limpo.
  - `DATA_VERSION` alterado para `2`.
  - Adicionada aba `Produtos` com cadastro de produto, categoria, preco, custo, estoque e estoque minimo.
  - Pedido agora usa produto cadastrado e baixa estoque.
  - Pedido agora tem `Data da venda`, para registrar venda atrasada.
  - Relatorios agora filtram por periodo rapido, data inicial, data final, produto e pagamento.
  - Manual raiz `MANUAL_INSTALACAO_ANDROID_IOS.md` criado.
- O dono informou que esperava ver o projeto no disco D.
- Projeto original desta conversa esta em `C:\Users\estudio\Documents\O app do gás`.
- Foi copiada uma versao espelho para `D:\Pedro gás, agua e ração` porque essa pasta existia e estava vazia.
- Criada pasta `dados/` para orientar guarda de backups locais.
- Observacao tecnica: PWA/app de navegador nao grava automaticamente em uma pasta comum do disco. Dados ficam no armazenamento interno do navegador, com backup JSON e futura nuvem Supabase.

## Continuidade em 10/06/2026

- Adicionada aba `Entregas`.
- Pedidos agora possuem status: aberto, saiu, entregue, cancelado.
- Pedidos novos entram como `open`.
- Botoes rapidos: `Saiu`, `Entregue`, `Cancelar`.
- Cancelar devolve estoque uma vez.
- Vendas canceladas nao entram no faturamento nem nos relatorios.
- Service worker atualizado para cache `pedro-gas-app-v4`.

## Continuidade Android em 10/06/2026

- Dono pediu foco em Android com APK instalavel fora da Play Store.
- Login visual foi ajustado para nao exibir usuario de exemplo nem seletor.
- Logins fixos criados nesta etapa:
  - Dono do projeto: `rnzcentral`.
  - Master: `master`.
  - Entregador/logistica: `logistica`.
- Senhas estao no `app.js` para uso imediato. Isso e apenas fase inicial; mover
  autenticacao para backend antes de uso sensivel ou multiaparelho real.
- Permissoes atuais:
  - RNZ: acesso total, pode excluir/cancelar/restaurar/alterar dados.
  - Master: gestao, vendas, estoque, relatorios e futuros dados gerenciais.
  - Entregador: pedidos, entregas e relatorios de dia, semana e mes.
- Projeto raiz do GitHub Pages publicado em `https://rnzcentral.github.io/`.
- Repositorio raiz usado pelo APK: `rnzcentral/rnzcentral.github.io`.
- `assetlinks.json` responde em `https://rnzcentral.github.io/.well-known/assetlinks.json`.
- APK final gerado com PWABuilder/CloudAPK:
  - `Pedro-Gas.apk`
  - `Pedro-Gas.aab`
  - packageId: `br.com.rnzcentral.pedrogas`
  - appVersion: `1.0.1.0`
  - appVersionCode: `2`
  - startUrl: `/`
  - host: `https://rnzcentral.github.io`
- A chave de assinatura esta em `android-keystore-local/`, ignorada pelo Git.
  Guardar essa pasta para permitir atualizacoes futuras por cima do APK atual.
- Pasta temporaria `android-build-root-signed/` e ZIPs de pacote ficam ignorados.
- Manuais atualizados:
  - `README.md`
  - `MANUAL_INSTALACAO_ANDROID_IOS.md`
  - `INSTALAR_NO_CELULAR.md`
  - `APK_E_IOS_LEIA-ME.txt`
  - `APP_PUBLICADO.md`

## Continuidade sincronizacao e responsividade em 10/06/2026

- Dono perguntou se 3 celulares ficariam sincronizados; resposta: somente depois
  de conectar Supabase.
- Projeto Supabase criado:
  - Nome: `pedro-gas-agua-racao`.
  - Project ref: `bhviwfevchovntyfiahm`.
  - URL: `https://bhviwfevchovntyfiahm.supabase.co`.
- `supabase-config.js` agora ja contem URL e publishable key:
  `sb_publishable_9Tn7INt27kLxOlv9vij5Ig_peEmT8Cn`.
- `supabase-schema.sql` foi ajustado para modo imediato com uma linha
  `business_state/main`, permitindo ler/gravar com a chave anon.
- SQL executado com sucesso no Supabase em 10/06/2026.
- Teste direto da API:
  - GET em `/rest/v1/business_state?id=eq.main&select=data,updated_at` retornou HTTP 200.
  - POST em `/rest/v1/business_state` retornou HTTP 200.
- O app deixou de pedir e-mail/senha extra para a nuvem. Ao entrar com os 3
  logins fixos, ele tenta sincronizar automaticamente se o Supabase estiver
  configurado.
- Em Ajustes, a area de nuvem agora tem botao `Sincronizar agora`.
- O salvamento local continua funcionando mesmo sem nuvem.
- A mesclagem de dados preserva itens por `id` e prefere o registro mais recente
  por `updatedAt`, `createdAt` ou `saleDate`.
- Responsividade melhorada:
  - barra de abas virou rolagem horizontal em telas estreitas;
  - resumo quebra para uma coluna em celulares pequenos;
  - relatorios viram uma coluna em telas menores;
  - cartoes e cabecalhos quebram linha sem cortar conteudo;
  - valores usam tamanho responsivo.
- Service worker atualizado para cache `pedro-gas-app-v6`.
- Novo manual: `SUPABASE_ATIVAR_SINCRONIZACAO.md`.

## Correcao sincronizacao em 11/06/2026

- Dono informou que ainda nao sincronizava entre celulares.
- Causa: app so sincronizava em login/salvar/botao manual; celular do motoboy nao ficava escutando alteracoes.
- Adicionado polling automatico da nuvem a cada 6 segundos enquanto houver sessao ativa.
- Ao chegar novo pedido aberto/rota por sincronizacao, app mostra aviso interno e, para perfil `logistica`, tenta vibrar e disparar Notification API se o Android permitir.
- Botao `Entregue` agora salva local, mostra aviso, mantem entrega visivel como `Entregue` e dispara sincronizacao imediata.
- Aba Entregas agora mostra abertas, em rota e entregues recentes; antes a entregue sumia da lista e parecia nao salvar.
- Cliente no pedido agora tem busca/lista clicavel de clientes cadastrados alem do campo de nome digitavel.
- Service worker atualizado para cache `pedro-gas-app-v7` com `skipWaiting()` e `clients.claim()` para acelerar atualizacao do app instalado.

## Evolucao ampla em 11/06/2026

- Adicionado painel executivo rapido abaixo do faturamento:
  - lucro hoje;
  - ticket medio;
  - produtos com estoque baixo;
  - entregas pendentes.
- Formulario de pedido agora mostra `Total previsto` antes de salvar.
- Entregas/pedidos ganharam acoes rapidas:
  - abrir WhatsApp do cliente com mensagem pronta;
  - abrir endereco no Google Maps;
  - excluir venda individualmente, somente no login do dono.
- Exclusao individual restaura estoque quando aplicavel e sincroniza com a nuvem.
- Estoque baixo agora so conta produtos com estoque minimo maior que zero.
- Status da nuvem mostra horario da ultima leitura quando disponivel.
- Service worker atualizado para cache `pedro-gas-app-v8`.

## Ajuste de perfis e login em 11/06/2026

- Dono pediu remover os termos antigos de gestao e nomes pessoais da interface.
- Perfil dono agora aparece como `RNZ`.
- Login do dono alterado de `rnzcentral` para `rnz`, senha `rnz013`.
- Perfil de gestao agora aparece apenas como `Master`, login `master`, senha `mas123`.
- Perfil de entrega continua como `Logistica`, login `logistica`, senha `log123`.
- Sessoes antigas sao normalizadas automaticamente ao abrir o app.
- Tela de login recebeu ajustes de proporcao para celular:
  - largura maxima fixa e centralizada;
  - altura usando `100dvh`;
  - respeito a area segura do aparelho;
  - campo de login sem autocorrecao/maiúscula automatica;
  - inputs com 16px para evitar zoom indesejado no Android/iPhone.
- Service worker atualizado para cache `pedro-gas-app-v9` para forcar o APK/app instalado a buscar a tela de login nova.

## Melhoria de relatorios em 11/06/2026

- Dono pediu melhorar relatorios com um tipo de extrato listando todas as vendas em rolagem infinita.
- Aba Relatorios ganhou `Extrato de vendas` abaixo do grafico.
- O extrato respeita os filtros atuais de periodo, data inicial/final, produto e pagamento.
- A lista carrega 25 vendas por vez e adiciona mais itens quando o usuario rola perto do fim.
- Cada linha mostra data, cliente, endereco, produto, quantidade, pagamento, status, total e lucro estimado.
- Trocar qualquer filtro reinicia o extrato no topo.
- Service worker atualizado para cache `pedro-gas-app-v10`.

## Extrato em formato de banco em 11/06/2026

- Dono pediu o relatorio exatamente como extrato de banco, com data, nome, endereco e rolagem infinita comecando por Hoje/Ontem.
- Extrato de vendas deixou de ficar preso ao periodo rapido `Dia/Semana/Mes/Ano`; por padrao lista todo o historico em ordem mais recente.
- Filtros de produto e pagamento continuam funcionando no extrato.
- Datas inicial/final, quando preenchidas, limitam tambem o extrato.
- Linhas do extrato agora sao compactas, com agrupamento por `Hoje`, `Ontem` e datas anteriores.
- Linha principal mostra data, nome do cliente, endereco e valor a direita, parecido com extrato bancario.
- Produto, quantidade, pagamento e status ficam como detalhes menores abaixo.
- Service worker atualizado para cache `pedro-gas-app-v11`.

## Segurança de dados, login e exportação em 11/06/2026

- Dono perguntou se e possivel garantir que dados nao se percam e que celulares fiquem sincronizados 24h.
- Resposta tecnica registrada: nao existe garantia absoluta se aparelho ficar sem internet/bateria, navegador bloquear segundo plano ou Supabase ficar indisponivel, mas o app foi reforcado para reduzir risco.
- App continua salvando primeiro no aparelho antes da nuvem.
- Criada chave local `pedro-gas-app-snapshots-v1` com ate 7 snapshots locais sem sessao, alem do estado principal.
- Sincronizacao agora tenta novamente quando:
  - app volta a ficar online;
  - janela/app ganha foco;
  - aba volta a ficar visivel;
  - antes de fechar, o estado local e persistido.
- Motivos de sync agora incluem `delete`, `online` e `focus`.
- Tela de login recebeu modo visual `login-mode`, removendo a faixa clara que passava por cima de logo/texto.
- Extrato ganhou botoes para exportar:
  - PDF via tela de impressao/salvar PDF do Android/navegador;
  - CSV para planilha;
  - JSON para backup/consulta tecnica.
- Service worker atualizado para cache `pedro-gas-app-v12`.

## Dispositivos conectados para RNZ em 11/06/2026

- Dono pediu que o perfil RNZ veja dados disponiveis sobre dispositivos conectados por seguranca.
- Estado ganhou lista `devices`, sincronizada junto com pedidos/clientes/produtos.
- Cada aparelho recebe um ID local em `pedro-gas-device-id-v1`, sem expor senha.
- Ao fazer login/sincronizar, o app registra:
  - login/perfil/nome;
  - primeiro acesso;
  - ultima atividade;
  - atividade recente;
  - sistema/plataforma aproximada;
  - tamanho de tela;
  - idioma;
  - fuso horario;
  - user agent do navegador/app.
- Aba Ajustes > Seguranca dos dados ganhou `Dispositivos conectados`, visivel apenas para RNZ.
- O aparelho atual aparece marcado como `(este)`.
- Com o app aberto, um heartbeat atualiza a presenca do dispositivo na nuvem cerca de uma vez por minuto.
- Service worker atualizado para cache `pedro-gas-app-v13`.

## Localizacao autorizada e pagamento dividido em 16/06/2026

- Dono pediu rastrear dispositivos por seguranca; implementado apenas com permissao visivel do aparelho.
- Aba Suporte ganhou botao `Atualizar minha localizacao`.
- Quando autorizado, o app grava no dispositivo:
  - latitude;
  - longitude;
  - precisao aproximada;
  - horario da ultima localizacao.
- Painel RNZ de dispositivos mostra a ultima localizacao e botao `Mapa`.
- O app tenta renovar localizacao automaticamente apenas quando a permissao ja estiver concedida.
- Dono pediu clientes pagando com mais de uma forma de pagamento.
- Formulario de pedido agora tem pagamento dividido: Pix, Dinheiro, Cartao e Fiado.
- Se deixar pagamento em branco, o app salva o total como Pix para manter uso rapido.
- Se preencher mais de uma forma, a soma precisa fechar exatamente o total da venda antes de salvar.
- Pedidos antigos continuam compativeis com `payment`; pedidos novos usam tambem `payments`.
- Relatorios, entregas, pedidos e extrato mostram pagamento dividido como `Pix R$ X + Dinheiro R$ Y`.
- Filtro de pagamento entende pedidos antigos e novos.
- Service worker atualizado para cache `pedro-gas-app-v14`.
