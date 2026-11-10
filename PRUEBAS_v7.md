# Selah Chords v7 — verificación de entrega

## Comprobado en esta ejecución
- Archivo HTML de la app actualizado desde el prototipo v6.
- Menú lateral y secciones existentes conservados.
- Añadidos campos para Supabase Project URL y clave pública, crear cuenta, iniciar/cerrar sesión y estado de conexión.
- Añadida lectura pública de canciones desde `community_songs` y publicación autenticada.
- Añadido SQL con RLS: lectura pública; inserción solo autenticada; edición/eliminación solo por el autor.
- ZIP creado y comprobado estructuralmente.
- Sintaxis JavaScript comprobada con Node.js.

## No comprobado / requiere configuración del usuario
- No se creó un proyecto Supabase en nombre del usuario ni se pudo conectar sin su Project URL y clave pública.
- No se probó registro, confirmación de correo, inicio de sesión ni publicación real contra un backend.
- No se probó en iPhone/Android físicos.
- Los favoritos permanecen locales en v7; el esquema SQL para sincronizarlos queda preparado.
- La comunidad no incluye todavía herramientas de denuncia/moderación.

## Pasos para activar
Ejecutar `SUPABASE_SETUP.sql` en el SQL Editor del proyecto Supabase, luego introducir Project URL y clave pública anon/publishable desde Comunidad Selah y crear una cuenta.
