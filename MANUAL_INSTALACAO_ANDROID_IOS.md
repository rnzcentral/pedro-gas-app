# Manual de instalacao Android - Pedro Gas, Agua e Racao

Foco atual: Android com APK fora da Play Store.

## Arquivo instalavel

O instalador esta na raiz do projeto:

```text
Pedro-Gas.apk
```

Tambem existe:

```text
Pedro-Gas.aab
```

O arquivo `.aab` serve para Play Store no futuro. Para instalar direto no celular,
use o `.apk`.

## Como instalar no Android

1. Envie `Pedro-Gas.apk` para o celular por cabo USB, Google Drive, WhatsApp ou
   e-mail.
2. No celular, abra o arquivo `Pedro-Gas.apk`.
3. Se o Android bloquear, toque em `Configuracoes`.
4. Ative `Permitir desta fonte` para o app usado para abrir o arquivo
   (Arquivos, Chrome, Drive ou WhatsApp).
5. Volte e toque em `Instalar`.
6. Abra pelo icone `Pedro Gas`.

## Atualizacao sem perder dados

Quando eu gerar uma nova versao:

1. O pacote precisa continuar sendo `br.com.rnzcentral.pedrogas`.
2. A assinatura precisa usar a mesma chave guardada localmente.
3. Voce instala o novo `Pedro-Gas.apk` por cima do antigo.
4. Os dados locais continuam no aparelho.

Parte das melhorias de tela e regras tambem pode atualizar pelo link publicado:

```text
https://rnzcentral.github.io/
```

## Backup obrigatorio nesta fase

Enquanto a nuvem ainda nao estiver conectada:

1. Abra o app.
2. Entre como Dono.
3. Va em `Ajustes`.
4. Toque em `Baixar backup`.
5. Guarde o arquivo em local seguro.

## iPhone

Por enquanto nao vamos focar em iPhone. iOS nao instala APK, e IPA exige Apple
Developer, TestFlight ou App Store. Quando voltarmos ao iPhone, o caminho mais
rapido sera instalar o PWA pelo Safari.
