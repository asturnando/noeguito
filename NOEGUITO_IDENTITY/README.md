# NOEGUITO — Pack de Identidad Completo

Carpeta unificada con todo lo necesario para crear contenido con Noeguito
de forma consistente: vectores colorizados, frames de referencia reales,
expresiones, poses y guía de estilo.

---

## Estructura

```
NOEGUITO_IDENTITY/
├── NOEGUITO_STYLE_GUIDE.md          ← LEE ESTO PRIMERO
├── noeguito_paleta_colores.svg      ← Swatch visual de la paleta oficial
├── extraer_frames.bat               ← Arrastra cualquier video para sacar frames
│
├── 01_vectores/
│   ├── noeguito_model_sheet_COLOR.svg   ← Hoja maestra COLOREADA (nueva)
│   ├── noeguito_hero_pose_COLOR.svg     ← Hero pose COLOREADA (nueva)
│   ├── noeguito_model_sheet_BW.svg      ← Original B&N (para ilustradores)
│   └── noeguito_hero_pose_BW.svg        ← Original B&N (para ilustradores)
│
├── 02_referencias_color/                ← FRAMES REALES del video — SOURCE OF TRUTH
│   ├── noeguito_ref_03_frontal_neutral.png  ← ★ REFERENCIA PRINCIPAL (cuerpo completo)
│   ├── noeguito_ref_07_cara_closeup.png     ← ★ REFERENCIA CARA (para face consistency)
│   ├── noeguito_ref_02_frontal_dinamico.png
│   ├── noeguito_ref_01_frontal_cuerpo.png
│   ├── noeguito_ref_06_lateral_guino.png
│   ├── noeguito_ref_04_pose_thumbsup.png
│   └── noeguito_ref_05_exterior_parque.png
│
├── 03_personaje/                        ← Personaje principal
│   ├── noeguito_model_sheet.png         ← Hoja maestra completa (PNG)
│   ├── noeguito_hero_pose.png           ← Hero pose (PNG fondo transparente)
│   └── noeguito_hero_pose.svg           ← Hero pose (SVG original)
│
├── 04_turnaround/                       ← 4 ángulos del personaje
│   ├── noeguito_turnaround_frontal.png
│   ├── noeguito_turnaround_3_4.png
│   ├── noeguito_turnaround_perfil.png
│   └── noeguito_turnaround_espalda.png
│
├── 05_expresiones/                      ← 5 expresiones faciales
│   ├── noeguito_exp_feliz.png
│   ├── noeguito_exp_sorprendido.png
│   ├── noeguito_exp_picaro.png
│   ├── noeguito_exp_pensativo.png
│   └── noeguito_exp_cansado.png
│
├── 06_bocas/                            ← 5 posiciones de boca
│   ├── noeguito_boca_sonrisa_cerrada.png
│   ├── noeguito_boca_abierta_pequena.png
│   ├── noeguito_boca_abierta_media.png
│   ├── noeguito_boca_abierta_grande.png
│   └── noeguito_boca_o.png
│
├── 07_poses/                            ← 3 poses base
│   ├── noeguito_pose_senalando.png
│   ├── noeguito_pose_brindando.png
│   └── noeguito_pose_pensativo.png
│
└── 08_detalles/                         ← Props oficiales
    ├── noeguito_taza_oficial.png
    └── noeguito_vapor_motivo.png
```

---

## Paleta de colores oficial

| Elemento        | HEX       |
|-----------------|-----------|
| Cuerpo / fondo  | `#F0EEEB` |
| Gorra + delantal| `#3A5040` |
| Detalle oscuro  | `#2D3D34` |
| Sombra media    | `#4A6050` |
| Hojas / claro   | `#C5D8C5` |
| Mejillas        | `#F2A8A0` |
| Ojos / contorno | `#1A1A1A` |

---

## Regla de uso para IA

**Para cualquier generación (CapCut AI, Kling, Runway, Midjourney):**
1. Adjunta siempre `02_referencias_color/noeguito_ref_03_frontal_neutral.png`
2. Copia el prompt del `NOEGUITO_STYLE_GUIDE.md`
3. Los SVG colorizados de `01_vectores/` son para Illustrator / Figma / animación

**Los frames `02_referencias_color/` mandan sobre los SVG para color.**
Los SVG son la referencia de forma y estructura.
