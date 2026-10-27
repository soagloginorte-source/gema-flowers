-- Gema Flowers: espacio de almacenamiento para las fotos que sube la dueña desde el panel.
-- Pégalo en Supabase > SQL Editor > Run. Se puede ejecutar más de una vez.
-- Las fotos son públicas para verlas (es un sitio público), pero SOLO los correos de la lista pueden subir, cambiar o borrar.
-- Para agregar a otra persona, agrega su correo (en minúsculas) a las TRES listas de abajo y vuelve a correr este archivo.

insert into storage.buckets (id, name, public, file_size_limit, allowed_mime_types)
values ('fotos', 'fotos', true, 5242880, array['image/webp', 'image/jpeg', 'image/png'])
on conflict (id) do update
  set public = true, file_size_limit = excluded.file_size_limit, allowed_mime_types = excluded.allowed_mime_types;

drop policy if exists "fotos subir solo dueña" on storage.objects;
create policy "fotos subir solo dueña" on storage.objects
  for insert to authenticated
  with check (
    bucket_id = 'fotos'
    and lower(auth.jwt() ->> 'email') in ('gemaflowers8@gmail.com')
    and coalesce((auth.jwt() ->> 'is_anonymous')::boolean, false) = false
  );

drop policy if exists "fotos cambiar solo dueña" on storage.objects;
create policy "fotos cambiar solo dueña" on storage.objects
  for update to authenticated
  using (
    bucket_id = 'fotos'
    and lower(auth.jwt() ->> 'email') in ('gemaflowers8@gmail.com')
    and coalesce((auth.jwt() ->> 'is_anonymous')::boolean, false) = false
  );

drop policy if exists "fotos borrar solo dueña" on storage.objects;
create policy "fotos borrar solo dueña" on storage.objects
  for delete to authenticated
  using (
    bucket_id = 'fotos'
    and lower(auth.jwt() ->> 'email') in ('gemaflowers8@gmail.com')
    and coalesce((auth.jwt() ->> 'is_anonymous')::boolean, false) = false
  );
