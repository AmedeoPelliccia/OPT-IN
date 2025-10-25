# SEC_STD-86-203: Gate Datalink Security Standard

**Revisión:** 1.0.0  
**Estado:** CANDIDATE  
**Fecha Efectiva:** 2029-06-01

## 1. Alcance

Este estándar define los requisitos de seguridad obligatorios para la interfaz de enlace de datos en puerta entre la aeronave AMPEL360 y la infraestructura aeroportuaria.

## 2. Referencias Normativas

- **ICD_STD-86-201:** Secure Gate Datalink Physical Connector
- **API_STD-86-202:** DPP Ground Sync API
- **ISO/IEC 27001:** Information security management systems
- **NIST SP 800-53:** Security and Privacy Controls
- **ATA 95:** Digital Product Passport
- **ATA 46-40:** Data Loading

## 3. Requisitos de Seguridad

### 3.1 Requisitos Obligatorios

| ID de Req | Requisito | Método de Verificación |
|:----------|:----------|:-----------------------|
| **SEC-203-01** | **Autenticación Mutua (mTLS):** La aeronave y la infraestructura de puerta deben autenticarse mutuamente usando certificados X.509 v3. | Inspección de Configuración |
| **SEC-203-02** | **Cifrado en Tránsito:** Todo el tráfico debe ser cifrado usando TLS 1.3 o superior con cipher suites aprobados. | Análisis de Paquetes |
| **SEC-203-03** | **Firmas de Carga Útil:** Todas las transferencias de datos críticos (e.g., DPP sync, software updates) deben estar firmadas digitalmente usando RSA-4096 o ECDSA P-384. | Prueba Funcional |
| **SEC-203-04** | **Registro de Auditoría Seguro:** Todos los intentos de conexión y transferencias de datos deben registrarse en un log de auditoría inmutable con timestamps precisos. | Inspección de Logs |
| **SEC-203-05** | **Control de Acceso:** Implementar control de acceso basado en roles (RBAC) con principio de mínimo privilegio. | Revisión de Política |
| **SEC-203-06** | **Detección de Intrusiones:** Monitoreo activo de patrones de tráfico anómalos y tentativas de acceso no autorizado. | Prueba de Penetración |
| **SEC-203-07** | **Aislamiento de Red:** La red de datalink de puerta debe estar aislada de redes públicas mediante firewalls y segmentación VLAN. | Inspección de Arquitectura |
| **SEC-203-08** | **Gestión de Claves:** Rotación automática de claves criptográficas cada 90 días o tras evento de seguridad. | Auditoría de Procesos |

## 4. Autenticación y Autorización

### 4.1 Infraestructura de PKI

```
Root CA: AMPEL360-ROOT-CA
├─ Intermediate CA: AMPEL360-AIRCRAFT-CA
│  └─ Aircraft Certificates (CN=AC-XXXXX)
└─ Intermediate CA: AMPEL360-GROUND-CA
   └─ Ground Station Certificates (CN=GND-XXXXX)
```

### 4.2 Certificados X.509

**Requisitos de Certificado:**
- **Algoritmo:** RSA 4096-bit o ECDSA P-384
- **Hash:** SHA-384 o superior
- **Validez:** 1 año máximo
- **Revocación:** OCSP (Online Certificate Status Protocol) obligatorio
- **Key Usage:** Digital Signature, Key Encipherment
- **Extended Key Usage:** TLS Web Server Authentication, TLS Web Client Authentication

**Contenido del Certificado:**
```
Subject: CN=AMPEL360-AC-12345, O=AMPEL360, C=EU
Issuer: CN=AMPEL360-AIRCRAFT-CA, O=AMPEL360, C=EU
Serial Number: 0x1234567890ABCDEF
Validity:
  Not Before: 2029-01-01 00:00:00 UTC
  Not After:  2030-01-01 00:00:00 UTC
Subject Alternative Name:
  URI: urn:ampel360:aircraft:12345
  DNS: ac-12345.ampel360.aero
```

### 4.3 Proceso de Autenticación

```
1. ESTABLISH CONNECTION
   └─ Aircraft connects to Ground Station via physical datalink
   └─ TCP handshake on port 443

2. TLS HANDSHAKE
   └─ Ground → Aircraft: ServerHello + Certificate
   └─ Aircraft verifies Ground certificate against AMPEL360-GROUND-CA
   └─ Aircraft → Ground: ClientHello + Certificate
   └─ Ground verifies Aircraft certificate against AMPEL360-AIRCRAFT-CA
   └─ Both parties verify certificate validity via OCSP

3. KEY EXCHANGE
   └─ Establish session keys using ECDHE (Ephemeral Diffie-Hellman)
   └─ Forward secrecy guaranteed

4. SESSION ESTABLISHMENT
   └─ Exchange session tokens (JWT with 1-hour expiry)
   └─ Establish permissions based on aircraft ID and clearance level
```

## 5. Cifrado de Datos

### 5.1 Cipher Suites Aprobados (TLS 1.3)

**Requeridos:**
- `TLS_AES_256_GCM_SHA384`
- `TLS_CHACHA20_POLY1305_SHA256`

**Prohibidos:**
- Cualquier cipher suite con algoritmos legacy (DES, 3DES, RC4, MD5)
- Cipher suites sin forward secrecy
- Export-grade ciphers

### 5.2 Firmas Digitales de Carga Útil

Para transferencias críticas (DPP, config files, software):

```json
{
  "payload": "<base64_encoded_data>",
  "signature": {
    "algorithm": "ECDSA-P384-SHA384",
    "value": "<base64_encoded_signature>",
    "certificate_fingerprint": "SHA256:<hex_fingerprint>",
    "timestamp": "2029-06-15T14:30:00Z"
  },
  "metadata": {
    "content_type": "application/dpp+json",
    "content_length": 1048576,
    "checksum": "SHA256:<hex_checksum>"
  }
}
```

**Proceso de Verificación:**
1. Verificar certificado del firmante
2. Verificar timestamp (no más de 5 minutos de desviación)
3. Recalcular checksum del payload
4. Verificar firma criptográfica
5. Verificar integridad del payload contra checksum

## 6. Registro de Auditoría

### 6.1 Eventos a Registrar

**Nivel CRITICAL:**
- Intentos de autenticación fallidos
- Acceso denegado a recursos
- Detección de firma digital inválida
- Desconexiones anormales
- Alertas de IDS

**Nivel INFO:**
- Conexiones exitosas
- Transferencias de datos completadas
- Rotación de claves
- Actualizaciones de certificados

### 6.2 Formato de Log

```json
{
  "timestamp": "2029-06-15T14:30:00.123Z",
  "level": "CRITICAL",
  "event_type": "AUTH_FAILURE",
  "aircraft_id": "AC-12345",
  "ground_station_id": "GND-AMS-01",
  "source_ip": "192.168.100.50",
  "details": {
    "error": "Certificate expired",
    "certificate_cn": "AC-12345",
    "expiry_date": "2029-06-01T00:00:00Z"
  },
  "log_signature": "HMAC-SHA256:<hex_signature>"
}
```

### 6.3 Retención de Logs

- **Retención Mínima:** 2 años
- **Almacenamiento:** Sistema WORM (Write Once, Read Many)
- **Integridad:** Logs firmados con HMAC-SHA256
- **Backup:** Replicación diaria a sistema offsite

## 7. Detección y Respuesta a Incidentes

### 7.1 IDS (Intrusion Detection System)

**Patrones Monitoreados:**
- Escaneo de puertos
- Intentos de autenticación repetidos (> 5 fallos en 1 minuto)
- Tráfico anómalo (volumen, patrones)
- Comandos no autorizados
- Manipulación de timestamps

**Respuesta Automática:**
- Bloqueo de IP por 1 hora (tras 5 intentos fallidos)
- Notificación a Security Operations Center (SOC)
- Registro detallado del incidente
- Incremento de nivel de logging

### 7.2 Procedimiento de Respuesta a Incidentes

```
1. DETECCIÓN
   └─ Sistema IDS detecta anomalía
   └─ Genera alerta en tiempo real

2. ANÁLISIS
   └─ SOC analiza logs y contexto
   └─ Clasifica severidad (LOW, MEDIUM, HIGH, CRITICAL)

3. CONTENCIÓN
   └─ Aislar sistemas comprometidos
   └─ Revocar certificados sospechosos
   └─ Bloquear accesos

4. ERRADICACIÓN
   └─ Eliminar causa raíz
   └─ Aplicar parches de seguridad

5. RECUPERACIÓN
   └─ Restaurar servicios
   └─ Validar integridad de sistemas

6. POST-MORTEM
   └─ Documentar incidente
   └─ Actualizar políticas y procedimientos
```

## 8. Gestión de Vulnerabilidades

- **Evaluación de Vulnerabilidades:** Trimestral (automated scanning)
- **Pruebas de Penetración:** Anual (por equipo externo certificado)
- **Actualizaciones de Seguridad:** Dentro de 30 días tras disclosure
- **Zero-Day Response:** Análisis y mitigación en 24 horas

## 9. Cumplimiento y Auditoría

### 9.1 Auditorías de Seguridad

- **Frecuencia:** Semestral (interna), Anual (externa)
- **Alcance:** Configuración, logs, accesos, cifrado, PKI
- **Certificación:** ISO/IEC 27001

### 9.2 Métricas de Seguridad

| Métrica | Objetivo | Medición |
|:--------|:---------|:---------|
| **Tiempo Medio de Detección (MTTD)** | < 5 minutos | Continua |
| **Tiempo Medio de Respuesta (MTTR)** | < 1 hora | Por incidente |
| **Tasa de Falsos Positivos** | < 5% | Semanal |
| **Cobertura de Cifrado** | 100% | Mensual |
| **Certificados Expirados** | 0 | Diaria |

## 10. Responsabilidades

| Rol | Responsabilidad |
|:----|:----------------|
| **Aircraft Operator** | Mantener certificados válidos, aplicar actualizaciones de seguridad |
| **Airport Ground Systems** | Mantener infraestructura PKI, monitorear logs, responder a incidentes |
| **AMPEL360 Security Team** | Gestionar Root CA, auditar cumplimiento, publicar advisories |

---

*Refs: ATA 95, ATA 46-40, ISO/IEC 27001, NIST SP 800-53*  
*Procedimiento de Cumplimiento: TEST_STD-89-201*
