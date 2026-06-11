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
  - Dono: acesso total.
  - Socio master: acesso total exceto permissoes que o dono selecionar.
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
- Login atual e apenas prototipo local:
  - Senha: `1234`.
  - Perfis: dono, socio master e entregador.
- Permissoes atuais:
  - Dono: ve tudo.
  - Socio master: ve pedidos, clientes, relatorios e suporte.
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
- Logins fixos atuais:
  - Dono do projeto: `rnzcentral`.
  - Socio master/Pedro Pereira Domingos: `master`.
  - Entregador/logistica: `logistica`.
- Senhas estao no `app.js` para uso imediato. Isso e apenas fase inicial; mover
  autenticacao para backend antes de uso sensivel ou multiaparelho real.
- Permissoes atuais:
  - Dono: acesso total, pode excluir/cancelar/restaurar/alterar dados.
  - Socio master: gestao, vendas, estoque, relatorios e futuros dados gerenciais.
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
