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

## Dónde se edita el contenido
Todo lo editable está en el bloque **CONFIG** al inicio del `<script>` en `index.html`:
- `NEGOCIO` — nombre de la florería ("Gema Flowers").
- `CIUDAD` — ciudad ("Durango").
- `WA_NUMERO` — **número de WhatsApp real**, formato `52` + 10 dígitos, sin espacios
  ni signos. Hoy: `526183199067` (única línea de atención según su Instagram; confirmar con la dueña).
- `LOGO_IMG` — `"assets/logo.png"` (ya puesto). Vacío = usa el ícono dibujado.
- `HERO_IMG` — foto grande del hero (hoy `assets/ramo-rosas-rojas-listones.webp`). Vacío = ilustración.
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
- Hecho: logo y 14 fotos reales (de su Instagram, con permiso pendiente de confirmar por la dueña).
- Pendiente: precios y nombres reales, zonas de entrega y flete, formas de pago, horario,
  reseñas reales, confirmar el WhatsApp. No inventar datos del negocio.
- La información detallada de las flores/catálogo la definirá el dueño por separado;
  no inventar precios ni nombres definitivos.

## Cómo previsualizar
Abre `index.html` en el navegador, o levanta un server local:
`python3 -m http.server` y entra a `http://localhost:8000`.
Las fotos locales (`assets/…`) solo cargan vía server local o al abrir el archivo,
no en vistas remotas.
