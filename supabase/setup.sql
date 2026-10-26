-- Gema Flowers: base de datos del panel de administración.
-- Pégalo completo en Supabase > SQL Editor > New query > Run. Se puede ejecutar más de una vez sin dañar nada.

create table if not exists public.config (
  id         int primary key check (id = 1),     -- una sola fila: toda la configuración del sitio
  datos      jsonb not null,
  updated_at timestamptz not null default now()
);

alter table public.config enable row level security;

-- Cualquier visitante del sitio puede LEER los precios.
drop policy if exists "lectura publica" on public.config;
create policy "lectura publica" on public.config for select to anon, authenticated using (true);

-- Solo una persona con sesión iniciada (la dueña) puede CAMBIAR los precios.
-- No hay políticas de insert ni delete: nadie puede crear ni borrar filas desde el navegador.
drop policy if exists "solo dueña modifica" on public.config;
create policy "solo dueña modifica" on public.config for update to authenticated using (true) with check (id = 1);

-- Precios de partida: son los mismos que ya tiene publicado el sitio.
insert into public.config (id, datos) values (1, $json$
{
  "vigencia": {
    "hasta": "2026-11-09",
    "texto": "del 26 de octubre al 9 de noviembre de 2026"
  },
  "anticipo": 0.5,
  "envioGratisDesde": 3000,
  "rosas": [
    {
      "n": 24,
      "p": 320,
      "c": 1
    },
    {
      "n": 36,
      "p": 490,
      "c": 2
    },
    {
      "n": 50,
      "p": 640,
      "c": 2
    },
    {
      "n": 75,
      "p": 1020,
      "c": 3
    },
    {
      "n": 100,
      "p": 1280,
      "c": 4
    },
    {
      "n": 150,
      "p": 1920,
      "c": 0
    },
    {
      "n": 200,
      "p": 2560,
      "c": 0
    },
    {
      "n": 300,
      "p": 3840,
      "c": 0
    },
    {
      "n": 400,
      "p": 5000,
      "c": 0
    }
  ],
  "gypsophila": {
    "24": 200,
    "50": 220,
    "75": 250,
    "100": 300,
    "150": 450
  },
  "extras": [
    {
      "n": "3 mariposas",
      "p": 45
    },
    {
      "n": "Corona chica",
      "p": 120,
      "g": "corona"
    },
    {
      "n": "Corona mediana",
      "p": 220,
      "g": "corona"
    },
    {
      "n": "Corona extra grande",
      "p": 500,
      "g": "corona"
    },
    {
      "n": "Luz led",
      "p": 60
    },
    {
      "n": "Moño",
      "p": 60
    },
    {
      "n": "Jarrón",
      "p": 120
    },
    {
      "n": "Gypsophila",
      "gyp": true
    },
    {
      "n": "Diseño de papel especial",
      "p": null
    },
    {
      "n": "Caja en lugar de ramo",
      "p": null
    }
  ],
  "envios": [
    {
      "id": "pickup",
      "n": "Recoger (pick up)",
      "p": 0
    },
    {
      "id": "centro",
      "n": "Zona centro",
      "p": 60
    },
    {
      "id": "cerca",
      "n": "Zonas cercanas",
      "p": 30
    },
    {
      "id": "lejos",
      "n": "Alrededor de la ciudad",
      "p": 120
    },
    {
      "id": "fuera",
      "n": "Pueblos y fuera de Durango capital",
      "p": 300,
      "desde": true,
      "liquidar": true
    }
  ],
  "ramos": {
    "Ramo rosas rojas con listones": {
      "agotado": false
    },
    "Ramo rosas rojas con gypsophila": {
      "agotado": false
    },
    "Ramo rosas rojas y rosadas": {
      "agotado": false
    },
    "Ramo con corona y mariposa": {
      "agotado": false
    },
    "Caja de rosas fucsia": {
      "p": 1500,
      "agotado": false
    },
    "Ramo rosas rosadas y blancas": {
      "agotado": false
    },
    "Ramo de rosas blancas con moño": {
      "agotado": false
    },
    "Ramo rosas fucsia y rosa": {
      "agotado": false
    },
    "Ramo de rosas rojo intenso": {
      "agotado": false
    },
    "Ramo con chocolates": {
      "p": 550,
      "agotado": false
    },
    "Ramo de gerberas": {
      "p": 400,
      "agotado": false
    },
    "Ramo de lirios y rosas": {
      "p": 600,
      "agotado": false
    },
    "Ramo de girasoles": {
      "p": 1100,
      "agotado": false
    },
    "Ramo fucsia pequeño": {
      "p": 350,
      "agotado": false
    },
    "Corazón de rosas": {
      "p": 600,
      "agotado": false
    },
    "Ramo de mangos": {
      "p": 700,
      "agotado": false
    }
  },
  "promos": [],
  "aviso": {
    "texto": "",
    "desde": "",
    "hasta": ""
  }
}
$json$::jsonb)
on conflict (id) do nothing;
