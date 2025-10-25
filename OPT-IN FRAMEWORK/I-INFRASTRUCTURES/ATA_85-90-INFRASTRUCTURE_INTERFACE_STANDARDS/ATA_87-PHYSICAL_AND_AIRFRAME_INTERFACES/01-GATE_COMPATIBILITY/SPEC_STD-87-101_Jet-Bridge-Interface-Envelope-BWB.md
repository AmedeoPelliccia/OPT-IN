# SPEC_STD-87-101: Jet Bridge Interface Envelope - BWB

**Revisión:** 1.0.0  
**Estado:** CANDIDATE  
**Fecha Efectiva:** 2029-06-01

## 1. Alcance

Este documento especifica el envolvente de interfaz para puentes de abordaje (jet bridges) compatibles con la aeronave AMPEL360 de configuración BWB (Blended Wing Body).

## 2. Referencias Normativas

- **ISO 16150:** Passenger boarding bridges - General design and safety requirements
- **SAE AS8049:** Passenger boarding bridge safety
- **ATA 52:** Doors
- **SPEC_STD-87-102:** Aircraft Clearance and Exclusion Zones

## 3. Configuración BWB - Consideraciones Especiales

La aeronave AMPEL360 utiliza una configuración de ala integrada al fuselaje (BWB), lo que presenta desafíos únicos para el abordaje:

- Múltiples puertas de pasajeros distribuidas lateralmente
- Altura variable de puertas (15-20m sobre el suelo)
- Falta de fuselaje cilíndrico convencional
- Ancho de fuselaje > 50 metros en secciones centrales

## 4. Especificaciones de Puerta

### 4.1 Puertas Principales de Pasajeros

| Identificador | Ubicación | Altura sobre Suelo | Dimensiones (A×L) |
|:--------------|:----------|:-------------------|:------------------|
| **L1** | Forward Left | 18.5m ± 0.3m | 2.1m × 1.2m |
| **L2** | Mid Forward Left | 17.8m ± 0.3m | 2.1m × 1.2m |
| **R1** | Forward Right | 18.5m ± 0.3m | 2.1m × 1.2m |
| **R2** | Mid Forward Right | 17.8m ± 0.3m | 2.1m × 1.2m |

### 4.2 Marcas de Alineación

Cada puerta tiene marcas de alineación visual:
- **Color:** Amarillo fluorescente (RAL 1026)
- **Dimensiones:** 150mm × 150mm
- **Posición:** Centro de la puerta, ±10mm
- **Reflectividad:** Clase D (ASTM D4956)

## 5. Requisitos del Jet Bridge

### 5.1 Envolvente de Movimiento

```
Altura de Puerta: 15.0m - 20.0m
Alcance Horizontal: 0m - 15m desde línea de parada
Movimiento Vertical: ±3m desde altura nominal
Rotación: ±30° respecto a perpendicular de fuselaje
```

### 5.2 Capacidades Técnicas

| Parámetro | Requisito |
|:----------|:----------|
| **Tipo de Bridge** | Telescópico de 3 secciones mínimo |
| **Rango de Altura** | 5.0m - 22.0m |
| **Extensión Máxima** | 60 metros |
| **Capacidad de Carga** | 2700 kg (450 pasajeros simultáneos) |
| **Ancho de Pasillo** | 2.0m mínimo |
| **Pendiente Máxima** | 12° (1:5) |

### 5.3 Sistema de Guiado

- **Guiado Visual:** Luces LED que indican alineación óptima
- **Guiado Láser:** Sistema de medición de distancia con precisión ±5mm
- **Sensores de Proximidad:** Detectan contacto prematuro con aeronave
- **Sistema de Frenado Automático:** Detiene bridge a 50mm de contacto

## 6. Interfaz de Contacto

### 6.1 Canopy (Cabeza del Bridge)

- **Material:** Aluminio 6061-T6 con acolchado de neopreno
- **Dimensiones:** 2.5m × 1.5m
- **Presión de Contacto:** < 500 Pa
- **Sellado:** Sello inflable para presión positiva en cabina

### 6.2 Protección de Fuselaje

- **Distancia Mínima a Aeronave:** 30mm (en reposo)
- **Fuerza de Contacto Máxima:** 200N
- **Sistema de Detección de Colisión:** Sensores de presión con alarma

## 7. Atraque y Desatraque

### 7.1 Procedimiento de Atraque

```
1. PRE-POSITIONING
   └─ Bridge se posiciona a 5m de la puerta
   └─ Verificar altura correcta ±0.5m

2. APPROACH
   └─ Extensión lenta a 0.1 m/s
   └─ Guiado láser activo
   └─ Operador monitorea alineación visual

3. CONTACT
   └─ Contacto suave con fuselaje
   └─ Verificar sellado de canopy
   └─ Activar sello inflable

4. VERIFICATION
   └─ Confirmar presión positiva en cabina (5 Pa)
   └─ Verificar ausencia de gaps > 10mm
   └─ Operador aprueba para apertura de puerta
```

### 7.2 Procedimiento de Desatraque

```
1. CLEAR BRIDGE
   └─ Confirmar ausencia de pasajeros en bridge

2. DOOR CLOSURE
   └─ Tripulación cierra y asegura puerta de aeronave

3. DEFLATE SEAL
   └─ Desactivar sello inflable del canopy

4. RETRACT
   └─ Retracción lenta (0.2 m/s)
   └─ Monitoreo continuo de contacto
   └─ Detener si se detecta resistencia
```

## 8. Condiciones Ambientales

- **Operación con Viento:** Hasta 65 km/h (35 kt)
- **Temperatura:** -30°C a +50°C
- **Humedad:** 0-100% RH
- **Precipitación:** Operación en lluvia, nieve ligera

## 9. Mantenimiento e Inspección

- **Inspección Diaria:** Verificación visual de estructura, sensores, iluminación
- **Inspección Semanal:** Prueba de sistemas de seguridad, guiado, frenado
- **Inspección Mensual:** Verificación de alineación láser, calibración de sensores
- **Inspección Anual:** Inspección estructural completa, certificación

## 10. Compatibilidad

Este estándar es compatible con:
- Aeronaves AMPEL360 BWB (todos los modelos)
- Jet bridges telescópicos modernos (con modificaciones menores)
- Infraestructura de puerta estándar ICAO

---

*Refs: ATA 52, ISO 16150, SAE AS8049*  
*Procedimiento de Cumplimiento: TEST_STD-89-101*
