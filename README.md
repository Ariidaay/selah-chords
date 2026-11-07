# Selah Chords — prototipo v3

## Novedades de esta versión
- Editor visual de acordes: toca una palabra para colocar un acorde; toca un acorde existente y luego otra palabra para moverlo; también permite actualizarlo o eliminarlo.
- Posiciones de acordes guardadas como índices de caracteres dentro de cada línea, conservando la letra y los espacios originales.
- Vista previa y modo en vivo alinean acordes sobre la letra con una pista monoespaciada y desplazamiento horizontal cuando la línea es larga.
- Transporte mejorado: transpone únicamente la nota raíz y el bajo de los slash chords, preservando la calidad/extensión escrita (mayores, menores, maj7, m7, 7, sus, dim, aug, add, extensiones e inversiones expresadas como slash chords).
- La tonalidad actual se actualiza al transportar; «Volver al tono original» restaura la letra y tonalidad con las que se abrió/creó la canción.
- Selector de cifrado internacional (C, D, E) o latino (Do, Re, Mi) en la vista previa, editor visual y modo en vivo. Los datos se siguen guardando en cifrado internacional para facilitar el intercambio.
- Se mantiene la importación PDF/fotografía con OCR experimental y revisión manual.

## Funciones que conserva
- Crear y guardar canciones localmente en el navegador.
- Repertorios por actividad.
- Modo en vivo con tamaño de letra y transporte por semitonos.
- Interfaz básica ES/EN.
- Base PWA para instalar desde Safari/Chrome al publicarse en HTTPS.

## Probar
1. Descomprime el ZIP.
2. Abre `index.html` en un navegador para una prueba local.
3. Para instalar como PWA, publica todos los archivos de esta carpeta en un servicio HTTPS.
4. iPhone: abre el enlace en Safari > Compartir > Añadir a pantalla de inicio.
5. Android: abre el enlace en Chrome > menú > Instalar aplicación.

## Limitaciones conocidas
- El OCR usa Tesseract.js y PDF.js desde CDN; requiere conexión para cargar esas bibliotecas y los resultados musicales siempre deben revisarse manualmente. La colocación aproximada de acordes se probó con cajas de palabras obtenidas de Tesseract 5.5 en una fotografía de ejemplo: recuperó varios acordes, pero confundió algunos caracteres y omitió otros. La ejecución de Tesseract.js/PDF.js dentro del navegador no pudo certificarse en esta sesión porque las bibliotecas CDN no estaban accesibles; tampoco se ha probado una colección amplia de partituras.
- El transporte conserva la calidad y extensiones del acorde tal como están escritas y mueve raíz/bajo. Se probaron acordes mayores, menores, séptimos, maj7, dim, aug, sus, extensiones y slash chords/inversiones; no realiza análisis armónico ni valida si cada símbolo es musicalmente convencional.
- Los datos permanecen en el almacenamiento local de cada navegador/dispositivo. No hay cuentas, sincronización en la nube ni envío directo por WhatsApp en esta versión.
- No está publicada en App Store ni Google Play; es un prototipo web/PWA.
