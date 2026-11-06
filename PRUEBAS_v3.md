# Verificación técnica — Selah Chords v3

Fecha: 6 de noviembre de 2026

## Pruebas realizadas
- Sintaxis JavaScript: `node --check` sin errores.
- Navegador Chromium, viewport móvil simulado 390 × 844: sin excepciones JavaScript en las pruebas de interfaz.
- Editor visual: colocar un acorde en una palabra, moverlo a otra palabra, eliminarlo y comprobar que la notación entre corchetes se actualiza.
- Transporte: C → D comprobando C, G7, Am, C/E, Fmaj7 y G6/9; los resultados esperados fueron D, A7, Bm, D/F#, Gmaj7 y A6/9.
- Transporte con bemoles y calidades: Bbmaj7, C#dim7, Faug, Gsus4, Am7/G, C6/9 y Db/F transpuestos tres semitonos hacia Eb.
- Cifrado latino: se comprobó la visualización de Re, La7, Sim, Re/Fa#, Solmaj7 y La6/9.
- Modo en vivo: se comprobó el cambio de tono y la actualización de la tonalidad mostrada.
- Guardado local: se comprobó que la acción de guardar serializa la canción en el almacenamiento del navegador simulado para la prueba.
- OCR: se probó el algoritmo de asociación de acordes por coordenadas con las cajas de palabras obtenidas por Tesseract 5.5 al leer una imagen de ejemplo. La salida conservó texto y colocó varios acordes sobre palabras aproximadas, pero algunos símbolos fueron mal reconocidos o se omitieron.

## Alcance de la verificación
Las pruebas de interfaz se hicieron en Chromium con un almacenamiento local simulado porque el entorno de pruebas bloqueó la navegación a archivos y a localhost. Por eso no se certificó la persistencia real en Safari/iPhone ni en Chrome/Android. La ejecución del OCR Tesseract.js y la lectura PDF.js desde CDN tampoco se pudieron probar de extremo a extremo en el navegador. El archivo se entrega como prototipo web/PWA sin publicar; todavía no hay cuentas, sincronización en la nube, compartir por WhatsApp ni publicación en App Store/Google Play.
