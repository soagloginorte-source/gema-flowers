# Diseño UX/UI — Página de Florería

## 0. Regla maestra
**Las FLORES son las protagonistas; la interfaz es el marco, no el cuadro.**
Prioridad: `FOTO HERMOSA → FACILIDAD PARA PEDIR → CONFIANZA → MARCA → DETALLE`.
La página debe transmitir: **frescura · calidez · elegancia · cercanía · confianza**. No parecer plantilla genérica ni tienda fría.
Conservar lo que funciona, mejorar lo que genera fricción, no cambiar por cambiar.

## 1. Antes de cualquier cambio
1. Analizar lo actual. 2. Qué funciona. 3. Qué estorba (fricción para pedir). 4. Qué se conserva. 5. Qué se mejora. 6. Cambiar solo lo necesario.
Pregunta clave en cada cambio: **¿acerca a la persona a hacer el pedido?** Si no, replantear.

## 2. Funcionalidad intocable (nunca romper)
Botón de **pedido / WhatsApp** · catálogo de arreglos · **precios** visibles · fotos · filtro por ocasión · carrito (si existe) · formulario/datos de contacto · información de entrega · enlaces a redes (Instagram).

## 3. Modelo UX: INSPIRAR → ELEGIR → PEDIR
- **Inspirar:** hero con foto hermosa + arreglos destacados por ocasión.
- **Elegir:** catálogo claro con foto, nombre, precio, tamaño/ocasión.
- **Pedir:** botón directo (WhatsApp con mensaje prellenado, o carrito) — **a un toque**, siempre visible.

## 4. Jerarquía de información (3 niveles)
- **Nivel 1 — lo primero que ve:** foto del arreglo · nombre · **precio** · botón **"Pedir / WhatsApp"**.
- **Nivel 2 — para decidir:** ocasión, tamaño (ch/med/gde), qué incluye, entrega (zona/tiempo).
- **Nivel 3 — complementario:** cuidados de las flores, políticas, reseñas, nosotros.
La **foto y el botón de pedir** siempre pesan más que el texto.

## 5. Identidad visual
Cálida, orgánica, natural y elegante. Mucho **espacio en blanco** (respira como un ramo). Fotografía real con **luz natural** y fondo neutro. Femenina/artesanal sin ser infantil.
Evitar: fondos oscuros pesados, stock genérico, saturación de la UI (las flores dan el color), exceso de texto.

## 6. Paleta (tokens — la UI es neutra, el color lo ponen las flores)
| Uso | Valor |
|---|---|
| Fondo | `#faf6f0` (crema) |
| Superficie / tarjetas | `#ffffff` |
| Texto | `#33382f` (verde carbón) |
| Texto suave | `#7a7366` |
| Línea / borde | `#e8e0d6` |
| **Primario / botones** (verde salvia) | `#6f8f6a` |
| **Acento** (rosa empolvado) | `#c98b86` |
| Destacado / precio u oferta (opcional) | `#c9a24b` (dorado tenue) |
| Disponible | verde salvia · Agotado | gris `#9a938a` |
Pocos colores a la vez. Verde salvia = acción (pedir, enlaces). Rosa = acento/afecto. Nada de colores fluorescentes que compitan con las flores.

## 7. Tipografía
- **Títulos (elegancia floral):** una serif como **Fraunces / Cormorant / Playfair Display** — para nombre de la florería, títulos y nombres de arreglos.
- **Cuerpo (legible y cálido):** una sans como **Nunito Sans / Mulish / Inter** — descripciones, precios, botones, formularios.
- Script/caligráfica **solo** para el logotipo o un detalle; nunca para párrafos ni precios.

## 8. Fotografía (lo más importante)
- **Fotos reales** de los arreglos (no stock), buena luz, fondo neutro, **relación de aspecto consistente** en el catálogo.
- Hero con una foto grande e impactante. Galería tipo grid. Zoom suave al hover (sutil).
- Imágenes optimizadas (que carguen rápido en celular). Alt text descriptivo.

## 9. Layout
- **Hero:** foto grande + nombre de la florería + frase corta + **CTA** ("Pedir por WhatsApp" / "Ver catálogo").
- **Ocasiones:** accesos rápidos — Cumpleaños · Aniversario · Amor · Condolencias · Nuevo bebé · Agradecimiento · Solo porque sí.
- **Catálogo:** grid de **tarjetas de producto** (foto · nombre · precio · tamaño · botón pedir).
- **Cómo pedir / Entrega:** zonas de cobertura, tiempos, "pedido mismo día" si aplica.
- **Contacto:** WhatsApp, teléfono, dirección, horario, Instagram, mapa.

## 10. Componentes clave
- **Tarjeta de producto:** foto (protagonista) · nombre · **precio** · tamaño/ocasión · botón **Pedir**. Hover: leve elevación/zoom.
- **Botón flotante de WhatsApp** siempre visible (abajo-derecha / barra fija en móvil) con mensaje prellenado: *"Hola, me interesa el arreglo ___"*.
- **Filtro** por ocasión y por rango de precio.
- **Reseñas/testimonios** reales (confianza).

## 11. Conversión (la meta es el pedido)
- **Precio claro** en cada arreglo (no "consultar" si se puede evitar).
- **WhatsApp a un toque**, con el producto ya en el mensaje.
- Señales de confianza: fotos reales, reseñas, cobertura de entrega, formas de pago, "entrega el mismo día".
- CTA repetido sin saturar: en hero, en cada tarjeta y fijo en móvil.

## 12. Responsive — MÓVIL PRIMERO
La mayoría pide desde el celular.
- Fotos a ancho completo, tarjetas en 1–2 columnas.
- **Barra inferior fija** con "Pedir por WhatsApp".
- Texto grande y legible; botones amplios (área táctil cómoda).
- Funciona en móvil, tablet y escritorio.

## 13. Microinteracciones
Permitidas: hover suave en fotos (zoom/elevación ligera), transiciones delicadas, aparición al hacer scroll (sutil). Deben sentirse **suaves y naturales**.
Evitar: animaciones agresivas, parpadeos, carruseles automáticos muy rápidos, pop-ups intrusivos.

## 14. Evitar siempre
Stock genérico, fondos oscuros pesados, exceso de colores en la UI, tipografías difíciles de leer, texto de más, pop-ups molestos, precios escondidos, botones de pedido poco visibles, música/auto-play.

## 15. Negocio local (si aplica)
Es un negocio de barrio/ciudad: nombre + ciudad visibles, "florería en [ciudad]", entrega a domicilio, horario, WhatsApp, Instagram, mapa. Ayuda a que la encuentren y confíen.

## 16. Accesibilidad
Contraste suficiente del texto sobre crema/blanco, tamaño de letra cómodo, foco visible, alt text en fotos, botones con texto (no solo íconos).

## 17. Revisión antes de entregar
- **Funciona:** botón de pedido/WhatsApp, precios, catálogo, filtros, contacto, enlaces.
- **Visual:** fotos nítidas y consistentes, espacio en blanco, tipografía, contraste, paleta.
- **Responsive:** móvil (barra de pedido fija), tablet, escritorio.
- **UX:** ¿se ve hermoso? ¿es fácil elegir? ¿es obvio cómo pedir?

## Criterio final
Que transmita: *"una florería real, cálida y confiable, donde da gusto pedir"* — no *"una plantilla de tienda"*. Las flores se ven hermosas y pedir es facilísimo.
