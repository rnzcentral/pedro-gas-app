# Dados do aplicativo

Esta pasta existe para guardar backups locais do app Pedro gas, agua e racao.

## Importante

Um app de celular/PWA nao pode gravar automaticamente em uma pasta comum do Windows, Android ou iPhone. Por seguranca, o navegador salva os dados em uma area interna propria.

Por isso, o app usa tres camadas:

1. Dados locais do navegador/aparelho para funcionar rapido.
2. Backup manual em arquivo JSON pelo botao `Baixar backup`.
3. Nuvem Supabase para sincronizar celulares e proteger contra perda do aparelho.

## Rotina recomendada ate a nuvem estar pronta

1. No fim do dia, abrir o app como Dono.
2. Ir em `Ajustes`.
3. Tocar em `Baixar backup`.
4. Mover o arquivo baixado para esta pasta `dados`.
5. Guardar tambem uma copia no Google Drive.

## Quando a nuvem estiver conectada

Mesmo com Supabase funcionando, mantenha backups ocasionais nesta pasta para seguranca extra.
