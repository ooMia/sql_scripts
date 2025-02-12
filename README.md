# Get Started

```bash
brew install sqlcmd

# run container
docker compose up -d
```

# SQL 스크립트

MSSQL, MySQL, Oracle, PostgreSQL 및 Greenplum에 유용한 SQL 스크립트입니다. 이는 수년간의 사용과 개선을 기반으로 합니다. 데이터 분석가, 소프트웨어 테스터 및 기타 데이터베이스 전문가가 사용하는 일반적인 스크립트입니다.

## [데이터 사전](https://github.com/DataResearchLabs/sql_scripts/blob/main/data_dictionary_scripts.md)

![](./img/02_data_dictionary_in_xl.png)

데이터 사전 스크립트 및 튜토리얼을 통해 기존 데이터베이스 스키마를 쉽게 문서화할 수 있습니다. 테이블, 뷰, 열 설명, 데이터 유형/길이/크기/정밀도, 키 제약 조건 및 기타 정보를 덤프할 수 있습니다. Excel로 내보내서 깔끔한 출력과 간단한 필터링, 검색 및 공유가 가능합니다.

## [데이터 검증 스크립트](https://github.com/DataResearchLabs/sql_scripts/blob/main/data_validation_scripts.md)

![](./img/04_data_validation_scripts.png)

데이터 검증 프레임워크 스크립트 및 튜토리얼을 통해 환경에서 자동화된 데이터 검증 테스트 배터리를 쉽게 설정할 수 있습니다. DVF를 사용하여 프로덕션 체크아웃, 테스트 및 스테이지 회귀 테스트, 개발 단위 테스트 또는 각 데이터 로드 후 자동 데이터 검증을 수행할 수 있습니다. 행 수, 키, 휴리스틱 임계값, 숫자/날짜/텍스트 값, 정규 표현식 및 데이터 또는 스키마 차이를 테스트하는 66개의 샘플 테스트 케이스를 설명하는 9개의 규칙 세트가 있습니다. 기본 데이터 검증 스크립트 데모는 테스트 ID, 상태 및 테스트 설명과 함께 한 줄의 텍스트를 출력하여 테스트를 간단하게 정리하는 방법을 보여줍니다. 고급 데이터 검증 스크립트는 동일한 66개의 샘플 검증 테스트를 실행하지만, 출력 결과를 테이블에 푸시하고 실행 시간을 초 단위로 추가하며, 실패 시 거부 코드와 이유, 예상 값, 실제 값 및 거부된 행을 조회할 SQL을 포함한 지원 세부 행을 추가합니다. 이를 통해 복사-붙여넣기-실행-문제 해결이 가능합니다.

## [스키마 차이](https://github.com/DataResearchLabs/sql_scripts/blob/main/schemadiff_scripts.md)

![](./img/01_schemadiff_side_by_side.png)

스키마 차이 스크립트 및 튜토리얼을 통해 시간 경과에 따른 스키마 변경 사항이나 환경 간의 차이를 추적할 수 있습니다. 전날 밤의 안정적인 기준선과 비교하여 배포 후 정확히 무엇이 변경되었는지 알 수 있습니다. 매일 아침 개발 또는 테스트 환경을 변경하는 사람들을 15일 후가 아닌 즉시 알 수 있어 모든 문제 해결의 허위 단서를 피할 수 있습니다.
