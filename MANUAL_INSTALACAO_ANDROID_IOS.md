# Manual de instalação - Pedro gás, água e ração

## O que este app é

Este app está sendo feito como PWA. Na prática:

- instala no Android;
- instala no iPhone;
- cria ícone na tela inicial;
- abre como aplicativo, sem barra comum do navegador;
- atualiza sozinho quando publicamos uma versão nova no mesmo link.

## Por que não APK/IPA agora

APK Android e IPA iPhone são instaladores nativos. Eles não são o melhor caminho para atualização automática simples:

- APK exige Android Studio/JDK/Gradle para gerar e assinar.
- iPhone exige Apple Developer, TestFlight ou App Store.
- PWA funciona hoje, em Android e iPhone, sem loja.

## Android

1. Abra o link HTTPS do app no Chrome.
2. Toque nos três pontos.
3. Toque em `Instalar app` ou `Adicionar à tela inicial`.
4. Confirme.
5. Abra pelo ícone `Pedro gás`.

## iPhone

1. Abra o link HTTPS do app no Safari.
2. Toque no botão de compartilhar.
3. Toque em `Adicionar à Tela de Início`.
4. Confirme.
5. Abra pelo ícone `Pedro gás`.

## Atualizações

Quando fizermos nova versão:

1. Publicamos os arquivos novos no mesmo link.
2. O app instalado atualiza o cache automaticamente.
3. O usuário continua abrindo pelo mesmo ícone.
4. Não precisa baixar outro APK ou instalador.

## Dados

O app salva dados no aparelho e terá sincronização em nuvem pelo Supabase.

Para segurança:

1. Use `Ajustes > Baixar backup`.
2. Guarde o arquivo na pasta `dados`.
3. Guarde também no Google Drive.
