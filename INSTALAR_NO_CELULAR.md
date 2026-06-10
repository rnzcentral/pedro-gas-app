# Instalar no celular

## Caminho recomendado hoje

Este app foi preparado como PWA. Isso permite:

- Instalar no Android e no iPhone pela tela inicial.
- Atualizar o app sem reinstalar APK/IPA.
- Evoluir o código mantendo os dados locais e a sincronização em nuvem.

Você usa o navegador apenas para instalar pela primeira vez. Depois disso, o app aparece com ícone na tela inicial e abre em tela própria, parecido com app baixado da loja.

## Android

1. Publique o app em um link HTTPS.
2. Abra o link no Chrome do celular.
3. Toque no menu de três pontos.
4. Toque em `Adicionar à tela inicial` ou `Instalar app`.
5. Depois abra pelo ícone criado na tela inicial.

## iPhone

1. Abra o link HTTPS no Safari.
2. Toque no botão de compartilhar.
3. Toque em `Adicionar à Tela de Início`.
4. Depois abra pelo ícone criado na tela inicial.

## Sobre APK e iOS nativo

- APK Android exige Java/JDK, Gradle e empacotamento Android, que não estão instalados neste computador agora.
- iPhone não instala IPA livremente sem Apple Developer, TestFlight ou App Store.
- Para atualização automática sem transferir instalador, PWA é o melhor caminho inicial.

## Atualização automática

Quando fizermos alterações e publicarmos no mesmo link HTTPS, o celular baixa a versão nova automaticamente. O usuário não precisa baixar outro instalador.

Os dados ficam protegidos porque:

- vendas/clientes/produtos ficam no armazenamento local do app;
- existe backup JSON;
- a próxima etapa é Supabase para nuvem.

## Para publicar grátis

Opções gratuitas:

- GitHub Pages
- Netlify
- Vercel

Depois de publicado, basta abrir o link no celular e instalar.
