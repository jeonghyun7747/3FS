
# ClickHouse와 FoundationDB는 둘 다 강력한 데이터베이스 시스템이지만, 설계 철학과 사용 사례가 크게 다릅니다.  

## 🔍 **1. 개요 비교**  

|  | **ClickHouse** | **FoundationDB** |
|---|---|---|
| **유형** | 컬럼 기반 OLAP DB (분석용) | 분산 키-값 저장소 |
| **주요 목적** | 대량 데이터 분석 (OLAP, BI, 로그 분석) | 트랜잭션 처리 및 확장 가능한 분산 데이터 저장소 |
| **데이터 모델** | 컬럼 기반 테이블 | Key-Value Store (Document, SQL Layer 추가 가능) |
| **트랜잭션 지원** | 약한 트랜잭션 지원 (OLAP 특화) | 강력한 ACID 트랜잭션 |
| **확장성** | 선형 확장 가능, 분산 환경 최적화 | 글로벌 분산 가능, 자동 샤딩 |
| **사용 사례** | 로그 분석, BI, 시계열 데이터 | 금융 시스템, 분산 트랜잭션, 클라우드 서비스 |

---

## 🎯 **2. 주요 차이점 상세 비교**  

### ✅ **1) 아키텍처 및 데이터 저장 방식**
- **ClickHouse**: 컬럼형 저장방식(Columnar Storage)을 사용하여 OLAP(Online Analytical Processing) 쿼리를 최적화함.  
  - `SELECT` 성능이 뛰어나고, 빠른 집계 및 분석을 지원.  
  - 데이터 압축이 뛰어나고, 빠른 읽기 속도를 제공.  

- **FoundationDB**: Key-Value Store 기반으로 동작하며, 기본적으로 ACID 트랜잭션을 제공하는 분산 데이터베이스.  
  - 샤딩(Sharding)과 데이터 복제를 자동으로 수행하여 높은 가용성을 제공.  
  - SQL이 기본 지원되지 않으며, 별도의 SQL Layer를 추가해야 함.  

---

### ✅ **2) 트랜잭션 지원 (ACID vs. Eventually Consistent)**
- **ClickHouse**:  
  - 주로 OLAP 워크로드를 대상으로 하기 때문에 `INSERT`, `UPDATE`, `DELETE`는 제한적으로 지원됨.  
  - 기본적으로 **트랜잭션을 강력하게 지원하지 않음** (OLTP 용도에는 적합하지 않음).  
  - 대량의 데이터 적재 및 분석을 빠르게 수행하는 데 최적화됨.  

- **FoundationDB**:  
  - **강력한 ACID 트랜잭션 지원** (분산 환경에서도 트랜잭션 일관성 유지).  
  - 금융, 클라우드 서비스 등 트랜잭션이 중요한 서비스에 적합.  
  - SQL 인터페이스가 없어 직접 사용하기 어려울 수도 있지만, SQL Layer(예: CockroachDB, Snowflake의 일부 내부 시스템) 위에서 동작할 수 있음.  

---

### ✅ **3) 성능 및 확장성**
|  | **ClickHouse** | **FoundationDB** |
|---|---|---|
| **읽기 성능** | 초고속 (컬럼형 저장 + 벡터화 연산) | 빠름 (Key-Value 기반) |
| **쓰기 성능** | 배치 삽입(INSERT)에 최적화 | 실시간 쓰기/읽기 최적화 |
| **확장성** | 분산 노드 추가 시 선형 확장 | 샤딩 자동 지원 (전역 확장) |
| **데이터 복제** | 기본 지원 (Replicated MergeTree) | 자동 복제 및 장애 복구 |

- **ClickHouse**는 OLAP 시스템에 적합하여 빠른 분석을 제공하지만, OLTP(트랜잭션 처리)에는 적합하지 않음.  
- **FoundationDB**는 OLTP 및 트랜잭션 무결성을 보장하는 시스템에 적합함.  

---

### ✅ **4) 주요 사용 사례**
|  | **ClickHouse** | **FoundationDB** |
|---|---|---|
| **로그 분석** | ✅ 매우 적합 | ❌ 부적합 |
| **시계열 데이터** | ✅ 적합 (빠른 Aggregation) | ⚠️ 가능하지만 비효율적 |
| **데이터 웨어하우스** | ✅ 매우 적합 | ❌ 부적합 |
| **OLTP 트랜잭션** | ❌ 부적합 | ✅ 매우 적합 |
| **금융 시스템** | ❌ 부적합 | ✅ 매우 적합 |
| **분산 저장소** | ⚠️ 가능하지만 적합하지 않음 | ✅ 매우 적합 |
| **대규모 샤딩** | ✅ 지원 (수동 설정) | ✅ 자동 샤딩 |

---

## 📌 **결론: ClickHouse vs FoundationDB, 언제 사용할까?**
- **ClickHouse가 적합한 경우**  
  - 실시간 로그 분석 및 데이터 시각화  
  - 빠른 `SELECT` 성능이 중요한 BI(Big Data) 분석  
  - 대량의 시계열 데이터 저장 및 집계 처리  

- **FoundationDB가 적합한 경우**  
  - 글로벌 트랜잭션이 필요한 금융/결제 시스템  
  - 고가용성이 필요한 분산 데이터 저장소  
  - Key-Value 기반의 확장 가능한 데이터 레이어 구축  

---

### 🎯 **핵심 요약**
- ClickHouse: **OLAP 분석 최적화**, 빠른 읽기 성능, 로그/BI 시스템에 적합  
- FoundationDB: **ACID 트랜잭션 보장**, 분산 Key-Value Store, 금융 및 OLTP 시스템에 적합  

💡 **만약 OLAP 분석이 필요하면 ClickHouse, OLTP 트랜잭션이 필요하면 FoundationDB를 선택하세요!** 😊


#  clickhouse port 변경  9000 -> 9500 

ClickHouse의 기본 포트(9000번)를 변경하려면 **설정 파일 (`config.xml`)을 수정**해야 합니다.  

---

## 1️⃣ **현재 포트 확인**
기본적으로 ClickHouse는 다음 포트를 사용합니다.  

| 프로토콜 | 기본 포트 | 설명 |
|---|---|---|
| TCP | `9000` | ClickHouse 클라이언트(기본) |
| HTTP | `8123` | HTTP API |
| MySQL | `9004` | MySQL 프로토콜 호환 |
| PostgreSQL | `9005` | PostgreSQL 프로토콜 호환 |

현재 사용 중인 포트를 확인하려면:
```sh
sudo netstat -tulnp | grep clickhouse
```
또는
```sh
ss -tulnp | grep clickhouse
```

---

## 2️⃣ **포트 변경 방법**
설정 파일을 수정하여 포트를 변경할 수 있습니다.  

### 🔹 **`config.xml` 파일 수정**
ClickHouse의 설정 파일 (`config.xml`)은 보통 다음 위치에 있습니다.

- Ubuntu/Debian: `/etc/clickhouse-server/config.xml`
- CentOS/RHEL: `/etc/clickhouse-server/config.xml`
- MacOS (Homebrew 설치): `/usr/local/etc/clickhouse-server/config.xml`

```sh
sudo nano /etc/clickhouse-server/config.xml
```

파일에서 `<listen_host>` 및 `<tcp_port>` 값을 수정합니다.

```xml
<yandex>
    <!-- 기본 TCP 포트 변경 -->
    <tcp_port>9500</tcp_port>

    <!-- HTTP API 포트 변경 -->
    <http_port>8181</http_port>

    <!-- 클라이언트 접속을 허용할 호스트 지정 -->
    <listen_host>0.0.0.0</listen_host>
</yandex>
```
> 🔹 **주의:** `listen_host`를 `0.0.0.0`으로 설정하면 모든 네트워크에서 접근할 수 있습니다. 보안이 필요한 경우 `127.0.0.1`로 제한하세요.

---

## 3️⃣ **ClickHouse 서버 재시작**
설정을 적용하려면 ClickHouse 서버를 재시작해야 합니다.

```sh
sudo systemctl restart clickhouse-server
```
또는 Docker에서 실행 중이라면:
```sh
docker restart clickhouse
```

설정이 적용되었는지 확인:
```sh
clickhouse-client --port 9500
```

또는 HTTP API 확인:
```sh
curl http://localhost:8181
```

---

## 4️⃣ **방화벽 설정 (선택 사항)**
포트를 변경한 후 방화벽에서 새 포트를 허용해야 할 수도 있습니다.

```sh
sudo ufw allow 9500/tcp
sudo ufw allow 8181/tcp
```
또는 CentOS에서:
```sh
sudo firewall-cmd --add-port=9500/tcp --permanent
sudo firewall-cmd --add-port=8181/tcp --permanent
sudo firewall-cmd --reload
```

---

### ✅ **결론**
ClickHouse의 기본 포트를 변경하려면:
1. `/etc/clickhouse-server/config.xml`에서 `<tcp_port>` 수정
2. 서버 재시작 (`sudo systemctl restart clickhouse-server`)
3. 방화벽 설정 (필요 시)

이제 새로운 포트에서 ClickHouse를 사용할 수 있습니다! 🚀  
궁금한 점이 있으면 말씀해주세요. 😊