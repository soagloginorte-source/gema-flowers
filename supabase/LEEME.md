# Panel de administración de Gema Flowers

Con el panel, la dueña cambia **precios, promociones, avisos y ramos agotados** sin pedir cambios al código.
Los datos viven en Supabase (base de datos gratuita). El sitio los lee cada vez que alguien lo abre.

## Cómo funciona
- `index.html` (el sitio) **lee** la configuración desde Supabase. Si el servicio no responde o no está
  configurado, usa los precios que ya trae dentro, así que nunca se queda sin precios.
- `admin.html` (el panel) pide correo y contraseña. Solo quien tenga ese usuario puede **guardar** cambios.
- La seguridad está en la base de datos (`setup.sql`): cualquiera puede leer, solo un usuario con sesión
  puede modificar, y nadie puede crear ni borrar filas.

## Qué hacer una vez (lo hace la dueña, o tú con ella)
1. **Correo de Google** a nombre de la dueña (con su teléfono de recuperación).
2. Entrar a **supabase.com** con ese correo (Sign in with Google) y tocar **New project**:
   - Nombre: `gema-flowers`
   - Database password: una larga; guardarla en un lugar seguro (no se comparte).
   - Region: la más cercana a México (por ejemplo East US o South America).
   - Plan: Free.
3. En el menú izquierdo, **SQL Editor > New query**: pegar todo el contenido de `supabase/setup.sql` y tocar **Run**.
   Debe decir "Success". Crea la tabla con los precios actuales.
4. **Authentication > Sign In / Providers** (o Settings): **apagar "Allow new users to sign up"**.
   Esto es importante: así nadie más puede crearse una cuenta.
5. **Authentication > Users > Add user > Create new user**: correo y contraseña de la dueña, con
   "Auto Confirm User" marcado. Con ese correo y contraseña entrará al panel.
6. **Project Settings > API** (o Data API): copiar
   - **Project URL** (algo como `https://abcdxyz.supabase.co`)
   - **anon public key** (clave larga que empieza con `eyJ...`)
   Estos dos datos **sí se pueden compartir**: son públicos por diseño.
   **Nunca** compartir la `service_role key` ni la contraseña de la base de datos.
7. Pasar la URL y la clave `anon` a quien mantiene el sitio. Se pegan en `SUPABASE_URL` / `SUPABASE_ANON`
   de `index.html` y de `admin.html`, y se publica.

## Uso diario
Entrar a `https://…/admin.html`, iniciar sesión, cambiar lo que haga falta y tocar **Guardar cambios**.
El sitio se actualiza al instante para quien lo abra.

## Notas
- Los proyectos gratuitos de Supabase se pausan si pasan muchos días sin ninguna visita. Como el sitio consulta
  la base de datos con cada visita, no debería pasar; si pasara, se reactiva con un clic desde su panel y mientras
  tanto el sitio sigue funcionando con los precios que trae.
- `seed.json` es una copia de los precios de partida. Sirve de respaldo.
- Las fotos y los nombres de los ramos siguen cambiándose en el código (`assets/` y `arreglos[]`).
