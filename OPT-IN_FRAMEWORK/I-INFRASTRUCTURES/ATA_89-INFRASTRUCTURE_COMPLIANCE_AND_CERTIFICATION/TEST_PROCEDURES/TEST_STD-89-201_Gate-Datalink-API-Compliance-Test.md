# TEST_STD-89-201: Gate Datalink API Compliance Test

**Revisión:** 1.0.0  
**Estado:** CANDIDATE  
**Fecha Efectiva:** 2025-10-27

## 1. Alcance

Este procedimiento verifica el cumplimiento de sistemas de gate datalink con los estándares ICD_STD-86-201, API_STD-86-202, y SEC_STD-86-203.

## 2. Referencias

- **ICD_STD-86-201:** Secure Gate Datalink Physical Connector
- **API_STD-86-202:** DPP Ground Sync API
- **SEC_STD-86-203:** Gate Datalink Security
- **ISO/IEC 27001:** Information security standards

## 3. Equipamiento de Prueba

- Analizador de redes (10GBASE-T capable)
- Probador TLS/SSL (para verificar cipher suites)
- Simulador de aeronave AMPEL360
- Traffic generator (para pruebas de carga)
- Penetration testing toolkit
- Certificate authority de prueba

## 4. Procedimientos de Prueba

### 4.1 TEST-201-A: Conectividad Física

**Objetivo:** Verificar interfaz física

**Procedimiento:**
```
1. Verificar conector RJ45 shielded
2. Probar cable Cat 6a STP (hasta 30m)
3. Verificar auto-negotiation a 10GBASE-T
4. Medir latencia, jitter, BER
5. Probar PoE++ (100W)
```

**Criterios de Aceptación:**
- ✓ Link establece en < 5 segundos
- ✓ Latencia < 1 ms
- ✓ Jitter < 100 ns
- ✓ BER < 10⁻¹²
- ✓ PoE++ entrega 100W ±5%

### 4.2 TEST-201-B: Seguridad TLS

**Objetivo:** Verificar cumplimiento SEC_STD-86-203

**Procedimiento:**
```
1. Verificar TLS 1.3 únicamente (prohibir TLS 1.2)
2. Verificar cipher suites aprobados
3. Probar autenticación mutua (mTLS)
4. Verificar validación de certificados
5. Intentar conexión con cert inválido (debe fallar)
6. Verificar OCSP stapling
```

**Criterios de Aceptación:**
- ✓ Solo TLS 1.3 aceptado
- ✓ Solo cipher suites aprobados funcionan
- ✓ mTLS obligatorio
- ✓ Certificados inválidos rechazados
- ✓ OCSP funciona

### 4.3 TEST-201-C: API Compliance

**Objetivo:** Verificar API_STD-86-202

**Procedimiento:**
```
1. Probar endpoint /dpp/sync con payload válido
2. Verificar validación de esquema
3. Probar con payload inválido (debe rechazar)
4. Verificar firmas digitales de payload
5. Probar endpoint /dpp/status/{aircraftId}
6. Verificar códigos de respuesta HTTP
```

**Criterios de Aceptación:**
- ✓ API responde según especificación OpenAPI
- ✓ Validación de esquema funciona
- ✓ Firmas digitales verificadas
- ✓ Códigos HTTP correctos

### 4.4 TEST-201-D: Performance

**Objetivo:** Verificar capacidad de throughput

**Procedimiento:**
```
1. Transferir archivo DPP de 100 MB
2. Medir tiempo de transferencia
3. Generar carga sostenida de 1 hora
4. Monitorear throughput, latencia, errores
```

**Criterios de Aceptación:**
- ✓ Throughput > 8 Gbps (80% de 10G)
- ✓ Transfer 100 MB en < 1 segundo
- ✓ Sin degradación en 1 hora

### 4.5 TEST-201-E: Logging y Auditoría

**Objetivo:** Verificar logs de auditoría

**Procedimiento:**
```
1. Realizar operaciones diversas
2. Verificar logs generados
3. Verificar formato de logs (JSON)
4. Verificar integridad (HMAC)
5. Intentar modificar logs (debe detectarse)
```

**Criterios de Aceptación:**
- ✓ Todos los eventos registrados
- ✓ Formato JSON válido
- ✓ HMAC correcto
- ✓ Modificaciones detectadas

### 4.6 TEST-201-F: Penetration Testing

**Objetivo:** Verificar seguridad contra ataques

**Procedimiento:**
```
1. Port scanning
2. Intentar downgrade attack (TLS)
3. Intentar replay attacks
4. Intentar SQL injection (si aplica)
5. Intentar XSS
6. Fuzz testing de API
```

**Criterios de Aceptación:**
- ✓ Solo puertos necesarios abiertos
- ✓ Downgrade attacks fallidos
- ✓ Replay protection funciona
- ✓ Sin vulnerabilidades críticas

## 5. Certificación

Al pasar todas las pruebas:
- Emitir certificado de conformidad
- Validez: 6 meses (due to security)
- Re-testing semestral requerido

---

*Refs: ICD_STD-86-201, API_STD-86-202, SEC_STD-86-203*
