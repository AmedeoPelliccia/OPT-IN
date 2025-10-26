# ICD_STD-85-201: LCO2 Offload Coupling and Protocol

**Revisión:** 1.0.0  
**Estado:** CANDIDATE  
**Fecha Efectiva:** 2029-06-01

## 1. Alcance

Este documento de control de interfaz (ICD) define el acoplamiento estándar y el protocolo para la descarga de dióxido de carbono líquido capturado (LCO₂) desde la aeronave AMPEL360 hacia la infraestructura de almacenamiento en tierra.

## 2. Referencias Normativas

- **ISO 20421:** Cryogenic vessels - Large transportable vacuum-insulated vessels
- **EN 1092-1:** Flanges and their joints - Circular flanges for pipes, valves, fittings and accessories
- **ATA 21-80:** CO2 Capture Processing (Provisional)
- **ATA 12:** Servicing - Routine Maintenance
- **TEST_STD-89-101:** Infrastructure System Fidelity Test

## 3. Descripción del Sistema

La aeronave AMPEL360 captura CO₂ atmosférico durante el vuelo mediante su sistema de captura directa de aire (DAC). El CO₂ capturado se licua y almacena a bordo para su posterior descarga en tierra, contribuyendo a la cadena de valor de CO₂ circular.

### 3.1 Parámetros del LCO₂ a Bordo

| Parámetro | Valor Típico |
|:----------|:-------------|
| **Estado Físico** | Líquido a presión |
| **Temperatura** | -56°C a -20°C |
| **Presión** | 5-20 bar |
| **Pureza** | > 99.5% CO₂ |
| **Volumen Típico por Vuelo** | 100-500 litros |

## 4. Especificaciones de Interfaz

### 4.1 Acoplamiento Físico

| Parámetro | Especificación | Tolerancia |
|:----------|:---------------|:-----------|
| **Tipo de Conector** | DIN 11851 Dairy coupling | - |
| **Diámetro Nominal** | DN 25 (1 inch) | - |
| **Material de Sellado** | EPDM (Ethylene Propylene Diene Monomer) | - |
| **Presión de Diseño** | 25 bar | - |
| **Temperatura de Operación** | -60°C a +80°C | - |
| **Material del Cuerpo** | Acero inoxidable 316L | - |
| **Tasa de Fuga Máxima** | 5×10⁻⁵ mbar·L/s | - |

### 4.2 Características de Seguridad

- **Válvula de Retención:** Previene reflujo hacia la aeronave
- **Válvula de Alivio:** Calibrada a 28 bar para protección contra sobrepresión
- **Detección de CO₂:** Sensor de concentración con alarma a 5000 ppm (8 horas TWA)
- **Venteo Controlado:** Sistema de venteo a atmósfera con dispersión segura

### 4.3 Protocolo de Descarga

```
1. PREPARATION
   └─ Verificar presión de tanque a bordo: 5-20 bar
   └─ Verificar temperatura: -60°C a -20°C
   └─ Confirmar capacidad de almacenamiento en tierra > volumen a descargar

2. CONNECTION
   └─ Limpiar superficies de acoplamiento
   └─ Conectar acoplamiento DIN 11851
   └─ Verificar sellado mediante prueba de presión a 5 bar
   └─ Confirmar lectura de sensores CO₂ < 1000 ppm

3. PRESSURE EQUALIZATION
   └─ Abrir válvula de ecualización lentamente
   └─ Permitir igualación de presión (30 segundos)
   └─ Verificar presión estable en ±0.5 bar

4. TRANSFER
   └─ Abrir válvula de transferencia en aeronave
   └─ Iniciar bomba de vacío en tierra (si es necesario)
   └─ Tasa de flujo: 10-30 litros/min
   └─ Monitorear presión y temperatura continuamente

5. COMPLETION
   └─ Cuando presión de tanque a bordo < 1 bar:
      └─ Cerrar válvula de transferencia
      └─ Purgar línea con N₂ seco
      └─ Desconectar acoplamiento
   └─ Registrar volumen transferido y parámetros

6. POST-OFFLOAD
   └─ Verificar sensores CO₂ < 1000 ppm
   └─ Inspeccionar acoplamiento por daños
   └─ Generar reporte de descarga
```

## 5. Monitoreo y Control

### 5.1 Parámetros Monitoreados

Durante la descarga, los siguientes parámetros deben ser monitoreados continuamente:

- **Presión de Tanque a Bordo:** Cada 5 segundos
- **Temperatura de LCO₂:** Cada 5 segundos
- **Tasa de Flujo:** Cada segundo
- **Concentración de CO₂ Ambiental:** Cada 10 segundos
- **Presión de Línea de Transferencia:** Cada 5 segundos

### 5.2 Condiciones de Abort Automático

| Condición | Umbral | Acción |
|:----------|:-------|:-------|
| **Fuga de CO₂ Detectada** | > 5000 ppm | Cerrar válvulas, ventilar área |
| **Sobrepresión de Línea** | > 25 bar | Cerrar válvulas, activar alivio |
| **Temperatura Anormal** | > -10°C o < -70°C | Detener transferencia |
| **Pérdida de Comunicación** | > 30 segundos | Entrar en modo seguro |

## 6. Requisitos de la Infraestructura en Tierra

### 6.1 Sistema de Almacenamiento

- **Tipo:** Tanque criogénico aislado al vacío
- **Capacidad Mínima:** 5000 litros
- **Presión de Operación:** 15-20 bar
- **Temperatura:** -30°C a -20°C
- **Material:** Acero inoxidable o aluminio

### 6.2 Sistema de Seguridad

- **Detectores de CO₂:** Mínimo 2 unidades, calibrados mensualmente
- **Ventilación de Emergencia:** Capacidad de 10 cambios de aire por hora
- **Señalización:** Señales visuales y audibles de advertencia
- **Equipo de Protección Personal:** Máscaras respiratorias disponibles

## 7. Beneficios Ambientales

- **Captura de CO₂:** Cada vuelo captura aproximadamente 50-200 kg de CO₂
- **Utilización de CO₂:** El LCO₂ descargado puede ser utilizado para:
  - Producción de combustibles sintéticos
  - Procesos industriales
  - Aplicaciones agrícolas (invernaderos)
  - Bebidas carbonatadas
  - Refrigeración industrial

## 8. Mantenimiento e Inspección

- **Inspección Visual del Acoplamiento:** Antes de cada uso
- **Prueba de Hermeticidad:** Semanal
- **Reemplazo de Sellos EPDM:** Cada 6 meses o 500 ciclos
- **Calibración de Sensores de CO₂:** Mensual
- **Verificación de Válvulas de Alivio:** Semestral

## 9. Compatibilidad

Este estándar es compatible con:
- Sistemas de captura de CO₂ según ATA 21-80
- Infraestructura de almacenamiento de CO₂ industrial
- Aeropuertos certificados "AMPEL360-Ready"

---

**Notas de Seguridad:**
- El CO₂ en altas concentraciones puede causar asfixia
- Ventilación adecuada es obligatoria durante la descarga
- El LCO₂ a baja temperatura puede causar quemaduras por frío

---

*Refs: ATA 21-80, ATA 12, ISO 20421, EN 1092-1*  
*Procedimiento de Cumplimiento: TEST_STD-89-101*
