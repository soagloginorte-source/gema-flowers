# Proyecto: Página web — Florería Azahar

Landing page de una florería local (venta de arreglos florales con entrega a
domicilio y pedido por WhatsApp). Es un sitio estático de **un solo archivo**:
`index.html` (HTML + CSS + JS inline, sin build, sin dependencias). Se abre
directo en el navegador.

## Reglas de diseño (OBLIGATORIAS)
Sigue **`design-floreria.md`** al pie de la letra en cualquier cambio visual.
Resumen de lo intocable:
- **Las flores son las protagonistas; la interfaz es el marco.** UI neutra
  (crema + verde salvia + rosa empolvado); el color lo ponen las fotos de flores.
- **Móvil primero.** La mayoría pide desde el celular.
- **Nunca rompas:** el botón/enlaces de WhatsApp, los precios visibles, el
  catálogo, el filtro por ocasión ni el bloque de contacto.
- Tipografía: **Fraunces** (títulos) + **Mulish** (cuerpo), vía Google Fonts.
- Paleta (tokens ya definidos en `:root`): crema `#faf6f0`, texto `#33382f`,
  salvia `#6f8f6a` (acción), rosa `#c98b86` (acento), dorado `#c9a24b` (precio/realce).
- Antes de tocar algo: analiza lo actual, conserva lo que funciona, cambia solo
  lo necesario. Pregunta guía: *¿esto acerca a la persona a hacer el pedido?*

## Dónde se edita el contenido
Todo lo editable está en el bloque **CONFIG** al inicio del `<script>` en `index.html`:
- `NEGOCIO` — nombre de la florería (hoy "Azahar", de muestra).
- `CIUDAD` — ciudad (hoy "Montemorelos").
- `WA_NUMERO` — **número de WhatsApp real**, formato `52` + 10 dígitos, sin espacios
  ni signos. Hoy trae uno falso (`528100000000`).
- `LOGO_IMG` — ruta al logo, ej. `"assets/logo.png"`. Vacío = usa el ícono dibujado.
- `HERO_IMG` — ruta a la foto grande del hero, ej. `"assets/hero.jpg"`. Vacío = ilustración.
- `arreglos[]` — el catálogo. Cada arreglo: `n` nombre, `p` precio, `t` tamaño,
  `o` ocasiones (para el filtro), `et` etiqueta opcional, `img` ruta de la foto
  (vacío = ilustración), `c` colores de la ilustración, `d` descripción.

> Otros textos de muestra (dirección, teléfono, horario, Instagram, reseñas, frase
> del hero) están en el HTML; se cambian con buscar/reemplazar.

## Imágenes
- Van en `assets/`. Ver `assets/LEEME.txt` para nombres y medidas sugeridas.
- **Fotos reales, no stock.** Mientras no haya foto, cada arreglo muestra una
  ilustración floral de respaldo — está bien para maquetar, pero el objetivo es
  reemplazarlas por fotos reales del negocio.
- Optimiza peso (que carguen rápido en celular); formato `.jpg`/`.webp`, proporción
  consistente (las tarjetas usan 4:5).

## Estado actual
- Hecho: estructura completa (hero, ocasiones, catálogo con filtro, cómo pedir,
  reseñas, contacto), WhatsApp con mensaje prellenado, botón flotante + barra móvil
  fija, responsive, accesible, respeta `prefers-reduced-motion`.
- Pendiente (prioridad): meter **logo real**, **número de WhatsApp real**, **fotos
  reales** (hero y arreglos), y datos de contacto reales (dirección, tel, horario, IG).
- La información detallada de las flores/catálogo la definirá el dueño por separado;
  no inventar precios ni nombres definitivos.

## Cómo previsualizar
Abre `index.html` en el navegador, o levanta un server local:
`python3 -m http.server` y entra a `http://localhost:8000`.
Las fotos locales (`assets/…`) solo cargan vía server local o al abrir el archivo,
no en vistas remotas.
