# ICD_STD-85-101: LH2 Refueling Coupling Interface

**Revisión:** 1.0.0  
**Estado:** CANDIDATE  
**Fecha Efectiva:** 2029-06-01

## 1. Alcance

Este documento de control de interfaz (ICD) define el acoplamiento estándar para el reabastecimiento de hidrógeno líquido (LH₂) de la aeronave AMPEL360 desde la infraestructura de hidratante en tierra.

## 2. Referencias Normativas

- **ISO 21013:** Cryogenic vessels - Pressure-relief accessories for cryogenic service
- **NFPA 2:** Hydrogen Technologies Code
- **ATA 28-60:** Fuel Storage System
- **ATA 12:** Servicing - Routine Maintenance
- **TEST_STD-89-101:** LH2 Hydrant System Fidelity Test

## 3. Especificaciones de Interfaz

### 3.1 Acoplamiento Físico

| Parámetro | Especificación | Tolerancia |
|:----------|:---------------|:-----------|
| **Tipo de Conector** | Quick-disconnect bayonet type | - |
| **Diámetro Nominal** | 50 mm | ±0.5 mm |
| **Material de Sellado** | PTFE (Teflon) con respaldo de acero inoxidable | - |
| **Presión de Diseño** | 8 bar | - |
| **Temperatura de Operación** | -253°C a +50°C | - |
| **Tasa de Fuga Máxima** | 1×10⁻⁵ mbar·L/s | - |
| **Material del Cuerpo** | Acero inoxidable 316L | - |

### 3.2 Características de Seguridad

- **Bloqueo de Desconexión en Presión:** El acoplamiento no puede ser desconectado mientras hay presión en la línea (>0.5 bar).
- **Válvula de Alivio de Presión:** Integrada en el lado de la aeronave, calibrada a 10 bar.
- **Detección de Fugas:** Sensor de H₂ ambiental integrado con umbral de alarma a 1% LEL (Lower Explosive Limit).
- **Venteo de Emergencia:** Línea de venteo dedicada con capacidad de 100 g/s.

### 3.3 Protocolo de Conexión

```
1. PRE-CHECK
   └─ Verificar presión de línea < 0.5 bar
   └─ Verificar temperatura de acoplamiento > -260°C
   └─ Verificar nivel de O₂ ambiental < 23.5%

2. ALIGN
   └─ Alinear acoplamiento con marcas guía
   └─ Verificar ángulo de inclinación < 5°

3. ENGAGE
   └─ Insertar hasta el tope
   └─ Girar bayoneta 90° en sentido horario
   └─ Escuchar "click" de bloqueo

4. VERIFY
   └─ Realizar prueba de presión a 2 bar
   └─ Verificar ausencia de fugas durante 30 segundos
   └─ Confirmar lectura de sensores H₂ < 0.1% LEL

5. READY
   └─ Interfaz lista para transferencia de LH₂
```

## 4. Requisitos de Verificación

Todo acoplamiento debe ser verificado mediante **TEST_STD-89-101** antes de su certificación para servicio.

Los puntos de verificación incluyen:
- Prueba de resistencia a presión (1.5× presión de diseño)
- Prueba de hermeticidad con helio
- Verificación de temperatura extrema (-260°C)
- Prueba de ciclos de conexión/desconexión (mínimo 1000 ciclos)

## 5. Mantenimiento e Inspección

- **Inspección Visual:** Antes de cada uso
- **Prueba de Hermeticidad:** Cada 100 ciclos de conexión
- **Reemplazo de Sellos:** Cada 500 ciclos o anualmente, lo que ocurra primero
- **Recalibración de Válvula de Alivio:** Anualmente

## 6. Compatibilidad

Este estándar es compatible con:
- Sistemas de hidratante de LH₂ conforme a ISO 21013
- Aeronaves equipadas con sistemas de almacenamiento de H₂ según ATA 28-60
- Infraestructura aeroportuaria certificada "AMPEL360-Ready"

---

**Notas de Seguridad:**
- El personal debe estar certificado en manejo de criogénicos
- Uso obligatorio de PPE criogénico (guantes, gafas, delantal)
- Mantener distancia mínima de seguridad de 3 metros durante la conexión

---

*Refs: ATA 28-60, ATA 12, ISO 21013, NFPA 2*  
*Procedimiento de Cumplimiento: TEST_STD-89-101*
