# Proyecto: Página web — Gema Flowers (florería en línea, Durango)

Landing page de una florería local (ramos de rosas y regalos, con entrega a
domicilio en Durango y pedido por WhatsApp). Es un sitio estático de **un solo archivo**:
`index.html` (HTML + CSS + JS inline, sin build, sin dependencias). Se abre
directo en el navegador.

## Reglas de diseño (OBLIGATORIAS)
Sigue **`design-floreria.md`** al pie de la letra en cualquier cambio visual.
Resumen de lo intocable:
- **Las flores son las protagonistas; la interfaz es el marco.** UI neutra
  (crema + rojo vino + rosa empolvado); el color lo ponen las fotos de flores.
- **Móvil primero.** La mayoría pide desde el celular.
- **Nunca rompas:** el botón/enlaces de WhatsApp, los precios visibles, el
  catálogo, el filtro por ocasión ni el bloque de contacto.
- Tipografía: **Fraunces** (títulos) + **Mulish** (cuerpo), vía Google Fonts.
- Estilo de las fotos de la marca: ramos grandes de rosas (rojo, rosa, blanco), papel negro/rosa/crema, detalles dorados.
- Paleta (tokens en `:root`, sacada de los colores de sus flores): fondo crema `#faf5f2`,
  texto `#2a2224`, acento/acción rojo vino `#8c1c2e`, rosa empolvado `#d98a95`,
  bloque oscuro `#3b1119`, dorado `#b99440` solo en detalles finos. Sin verde en la UI.
- Antes de tocar algo: analiza lo actual, conserva lo que funciona, cambia solo
  lo necesario. Pregunta guía: *¿esto acerca a la persona a hacer el pedido?*

## Estructura del sitio
Un solo `index.html` con **vistas** (una "página" por botón del menú, vía `#hash`): Inicio, Catálogo,
Cotizar (`#arma`), Nosotros, Cómo pedir y Contacto. Cada sección lleva `data-vista="…"`; el router está
al final del `<script>` (`ruta()`). En móvil el menú son pestañas bajo el encabezado.

## Mapa de entrega
El cotizador (`#arma`) lleva un mapa de Durango capital con Leaflet 1.9.4 (cdnjs, con `integrity`) y mosaicos de
OpenStreetMap, sin claves. El cliente marca el punto (o usa su ubicación) y el mensaje de WhatsApp lleva un enlace
`google.com/maps?q=lat,lng`. Al marcar el punto, la dirección se sugiere sola con Nominatim (OpenStreetMap, `buscaDireccion()`): solo rellena si el
campo está vacío o sin editar, nunca pisa lo que el cliente corrigió. Si elige "Recoger", se ocultan dirección, referencias y mapa. Si la librería no carga,
el mapa se oculta y el cotizador sigue funcionando. Los mosaicos públicos de OSM son para poco tráfico: si el sitio
crece, cambiar de proveedor.
**Datos bancarios:** NO se publican en el sitio ni en el repositorio (el sitio es público). Ella los manda por
WhatsApp después de la cotización.

## Dónde se edita el contenido
Todo lo editable está en el bloque **CONFIG** al inicio del `<script>` en `index.html`:
- `NEGOCIO` — nombre de la florería ("Gema Flowers").
- `CIUDAD` — ciudad ("Durango").
- `WA_NUMERO` — **número de WhatsApp real**, formato `52` + 10 dígitos, sin espacios
  ni signos. Hoy: `526181829246` (+52 1 618 182 9246), único WhatsApp para pedidos y cotizaciones. Ya NO se usa el 618 319 9067.
- `LOGO_IMG` — `"assets/logo.png"` (ya puesto). Vacío = usa el ícono dibujado.
- `HERO_IMG` — foto grande del hero (hoy `assets/ramo-rosas-rojas-listones.webp`). Vacío = ilustración.
- Precios del cotizador "Arma tu ramo" (los pasó la dueña; vigentes del 26 oct al 9 nov 2026, después el
  sitio avisa solo que pueden haber cambiado, ver `PRECIOS_HASTA`): `ROSAS` (24 a 400 rosas, `c` = cuántos
  colores se pueden elegir), `COLORES`, `GYPSOPHILA` (precio según rosas), `EXTRAS` (`p:null` = por cotizar),
  `ENVIOS`, `ANTICIPO` (50 %) y `ENVIO_GRATIS_DESDE` ($3,000). En fechas especiales (14 feb, 10 may) ella usa
  OTRA lista: hay que reemplazar estos valores.
- `arreglos[]` — el catálogo. Cada arreglo: `n` nombre, `p` precio (`null` = "Cotiza tu ramo"),
  `t` tamaño, `o` ocasiones (filtro; las ocasiones sin arreglos se ocultan solas),
  `et` etiqueta opcional, `img` ruta de la foto, `alt` texto alternativo, `c` colores de la
  ilustración de respaldo, `d` descripción. Nombres de arreglo y precios son provisionales.

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
- Hecho: armador de ramos con total, galería, sección Nosotros (misión y visión TEXTUALES de su Instagram:
  no se editan), eventos y empresas. Logo y 15 fotos reales (de su Instagram, con permiso pendiente de confirmar por la dueña).
- Decisiones de la dueña: horario 24/7; acepta transferencia, tarjeta y efectivo; pueblos y fuera de la ciudad
  (desde $300) van totalmente liquidados; eventos y empresas de cualquier tipo; SIN reseñas; la sección de
  ocasiones de la portada se quitó (el filtro por ocasión sigue en el Catálogo).
- Foto con fondo blanco recortado: ramo de mangos (el recorte es rústico; pedir foto sobre fondo liso).
- NO se ofrecen coronas fúnebres ni condolencias: la dueña pidió quitarlas (el filtro de Condolencias se oculta
  solo mientras no haya arreglos con esa ocasión).
- Pendiente: panel de administración para que ella cambie precios y promociones de temporada (nueva sección;
  requiere guardar datos fuera del `index.html`, se hace cuando compre el dominio); dominio propio; lista de
  precios de fechas especiales (14 feb, 10 may); definir qué colonias son zona centro / cercana / alrededor de la ciudad. No inventar datos del negocio.
- La información detallada de las flores/catálogo la definirá el dueño por separado;
  no inventar precios ni nombres definitivos.

## Cómo previsualizar
Abre `index.html` en el navegador, o levanta un server local:
`python3 -m http.server` y entra a `http://localhost:8000`.
Las fotos locales (`assets/…`) solo cargan vía server local o al abrir el archivo,
no en vistas remotas.
