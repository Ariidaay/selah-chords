# Selah Chords v7

Aplicación web progresiva (PWA) para organizar canciones, letras y acordes. Incluye menú lateral, modo oscuro/claro, editor visual, transporte, modo en vivo, importación experimental PDF/foto, biblioteca local, favoritos y una primera integración opcional con Supabase para la comunidad pública.

## Abrir localmente / publicar

Sube el contenido de esta carpeta a la raíz (`/(root)`) del repositorio GitHub Pages. Mantén `index.html`, `manifest.webmanifest` y `sw.js` en la raíz. Luego abre la URL de GitHub Pages.

## Activar la Comunidad Selah compartida

La comunidad compartida requiere configurar un proyecto gratuito de Supabase. Sin esta configuración, la app funciona en modo local y las publicaciones no son visibles a otros usuarios.

1. Crea un proyecto en https://supabase.com/.
2. En Supabase, abre **SQL Editor** y ejecuta todo el contenido de `SUPABASE_SETUP.sql`.
3. Abre **Project Settings → API** (o **Connect**) y copia el **Project URL** y la clave pública **anon / publishable**.
4. En Selah Chords → menú lateral → Comunidad Selah, pega esos dos valores y pulsa **Conectar servicio**.
5. Crea una cuenta gratuita con correo y contraseña. Si Supabase requiere confirmación de correo, abre el mensaje y confirma antes de iniciar sesión.
6. Selecciona una canción de tu biblioteca, escribe el nombre público del autor y pulsa **Publicar**.

### Seguridad importante

- Solo se debe introducir el Project URL y la clave pública `anon` / `publishable`.
- **Nunca** introduzcas `service_role`, claves secretas ni contraseñas de Supabase en la aplicación.
- La política RLS permite leer canciones publicadas a todos, pero solo usuarios autenticados pueden publicar; cada autor solo puede modificar o borrar sus propias publicaciones.
- Las publicaciones creadas antes de conectar Supabase permanecen locales; no se suben automáticamente.
- La búsqueda pública consulta hasta 300 publicaciones recientes en esta versión.
- Los favoritos siguen guardándose localmente en este prototipo; la tabla SQL para sincronizarlos queda preparada para una siguiente iteración.
- No hay revisión editorial previa: usuarios registrados pueden publicar. Deben publicar únicamente transcripciones propias o material con autorización/derechos suficientes. Añadir denuncia y moderación es una mejora pendiente antes de abrir ampliamente la comunidad.

## Límites y funciones pendientes

- Sin Supabase configurado, no existe sincronización ni publicación compartida.
- La interfaz de cuenta necesita conexión a internet y el CDN de Supabase JS v2.
- La confirmación de correo y las reglas de autenticación se administran desde el panel Supabase.
- Favoritos multidispositivo, moderación/reportes, recuperación de contraseña y pruebas completas en Safari iOS/Android quedan pendientes.
- OCR es experimental y siempre requiere revisión manual.

## Archivos

- `index.html`: aplicación.
- `manifest.webmanifest`: metadatos PWA.
- `sw.js`: service worker y caché.
- `SUPABASE_SETUP.sql`: tablas y políticas RLS para la comunidad.
- `PRUEBAS_v7.md`: comprobaciones de esta entrega.
