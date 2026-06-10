# Pedro gás, água e ração

Base inicial de app instalável para gerir pedidos, clientes, relatórios e configurações da empresa.

## Como abrir

Com Python instalado, rode na pasta do projeto:

```powershell
python -m http.server 4173 --bind 127.0.0.1
```

Depois acesse:

```text
http://127.0.0.1:4173
```

Também é possível abrir o arquivo `index.html` diretamente no navegador, mas o servidor local simula melhor o funcionamento de um app instalável.

## O que ja existe

- Login simulado com senha `1234`.
- Perfis: dono, socio master e entregador.
- Novo pedido com cliente, telefone, endereco, produto, quantidade, pagamento, entregador, desconto e observacao.
- Data da venda no pedido, permitindo registrar vendas atrasadas.
- Cadastro/lista de clientes.
- Catalogo de produtos com categoria, preco, custo, estoque e estoque minimo.
- Aba de entregas com status aberto, saiu, entregue e cancelado.
- Cancelamento devolve estoque e sai do faturamento/relatorios.
- Desconto automatico para comerciante.
- Relatorios por dia, semana, mes e ano, com filtros por datas, produto e pagamento.
- Ajustes de imposto, desconto de comerciante, dados da empresa e fornecedor.
- Aba suporte com fornecedor e telefone.
- Manifest e service worker para funcionar como PWA instalavel.
- Dados locais salvos no navegador/aparelho via `localStorage`, iniciando sem dados de exemplo.
- Backup e restauração por arquivo JSON em Ajustes.
- Preparado para Supabase com `supabase-config.js` e `supabase-schema.sql`.

## Proximos passos recomendados

1. Conectar banco gratuito e seguro em nuvem, preferencialmente Supabase ou Firebase.
2. Trocar login simulado por autenticação real.
3. Criar contas e permissoes editaveis pelo dono.
4. Publicar em link HTTPS para instalar nos celulares.
5. Conectar Supabase para sincronizar os aparelhos.

## Conectar Supabase

1. Crie o projeto no Supabase.
2. Abra o SQL Editor do Supabase e rode o conteudo de `supabase-schema.sql`.
3. No Supabase, abra `Project Settings` > `API`.
4. Copie:
   - Project URL.
   - anon public key.
5. Cole esses valores em `supabase-config.js`.
6. No app, entre como Dono > Ajustes > Nuvem.
7. Crie login ou entre e sincronize.

## Como usar hoje sem perder dados

1. Use um celular principal enquanto a nuvem ainda não estiver conectada.
2. No fim do dia, entre em Ajustes e toque em `Baixar backup`.
3. Guarde o arquivo em Google Drive, WhatsApp ou outro local seguro.
4. Se trocar de aparelho ou navegador, entre em Ajustes e use `Restaurar backup`.

## Instalar no celular

Para instalar como app de verdade em Android/iPhone, o ideal é publicar em um endereço HTTPS gratuito. Enquanto estiver rodando só no computador, o celular pode testar pela rede local, mas a instalação PWA completa depende de HTTPS.

Opção recomendada para hoje:

1. Publicar gratuitamente no GitHub Pages, Netlify ou Vercel.
2. Abrir o link HTTPS no celular.
3. Android/Chrome: menu de três pontos > `Adicionar à tela inicial` ou `Instalar app`.
4. iPhone/Safari: botão compartilhar > `Adicionar à Tela de Início`.

Depois disso, o app abre como aplicativo na tela inicial.
