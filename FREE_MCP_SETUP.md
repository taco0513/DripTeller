# 🆓 DripTeller 무료 MCP 서버 설정 가이드

## 즉시 사용 가능한 무료 MCP 서버

### 1. Semantic Scholar MCP ✅
- **API 키**: 불필요
- **제한**: 없음 (합리적 사용 시)
- **즉시 사용 가능**

### 2. Academic Search MCP ✅  
- **API 키**: 불필요
- **제한**: 없음
- **즉시 사용 가능**

## Claude Desktop 설정 (무료 버전)

### 설정 파일 생성
```bash
# 1. 설정 디렉토리로 이동
cd ~/Library/Application\ Support/Claude/

# 2. 무료 버전 설정 파일 생성
cat > claude_desktop_config.json << 'EOF'
{
  "mcpServers": {
    "semantic-scholar": {
      "command": "python",
      "args": [
        "/Users/zimo_mbp16_m1max/Projects/DripTeller/semanticscholar-MCP-Server/.venv/bin/python",
        "/Users/zimo_mbp16_m1max/Projects/DripTeller/semanticscholar-MCP-Server/semantic_scholar_server.py"
      ]
    },
    "academic-search": {
      "command": "python", 
      "args": [
        "/Users/zimo_mbp16_m1max/Projects/DripTeller/academic-search-mcp-server/.venv/bin/python",
        "/Users/zimo_mbp16_m1max/Projects/DripTeller/academic-search-mcp-server/server.py"
      ]
    }
  }
}
EOF
```

## 설정 확인 방법

### 1. Claude Desktop 재시작
- Claude Desktop 완전 종료 (Cmd+Q)
- 다시 실행

### 2. MCP 서버 연결 테스트
새 대화에서 다음 명령어 입력:
```
"Use Semantic Scholar to search for 'coffee consumer behavior' papers"
```

예상 응답: 관련 논문 리스트가 표시되어야 함

### 3. 문제 해결

**서버가 인식되지 않는 경우**:
```bash
# Python 경로 확인
which python3

# 가상환경 활성화 테스트
cd /Users/zimo_mbp16_m1max/Projects/DripTeller/semanticscholar-MCP-Server
source .venv/bin/activate
python semantic_scholar_server.py --help
```

**JSON 형식 오류**:
```bash
# JSON 유효성 검사
python3 -m json.tool ~/Library/Application\ Support/Claude/claude_desktop_config.json
```

## 무료 버전 활용 팁

### 효율적인 검색 전략
1. **구체적인 키워드 사용**
   - ❌ "coffee market"
   - ✅ "single-serve drip coffee consumer behavior 2020-2024"

2. **AND/OR 연산자 활용**
   - "drip coffee AND (gacha OR collectible) AND marketing"

3. **저자 추적**
   - 좋은 논문 발견 시 → 저자의 다른 연구 확인

4. **인용 체인 추적**
   - 핵심 논문 → 인용한 논문들 → 최신 연구 동향

### 데이터 수집 템플릿

```markdown
# 검색 세션: [날짜]

## 검색어: [keyword]

### 결과 요약
- 총 결과: X건
- 관련성 높은 논문: Y건
- 핵심 인사이트: 

### 상위 5개 논문
1. [제목] (연도, 인용수)
   - 핵심 내용:
   - DripTeller 관련성:

[이하 반복]
```

## 단계적 업그레이드 계획

### Phase 1: 무료 (현재)
- Semantic Scholar + Academic Search
- 학술 기반 검증
- 이론적 프레임워크 구축

### Phase 2: 기본 유료 (+$20/월)
- \+ Perplexity Deep Research
- 실시간 시장 데이터 추가
- 경쟁사 기본 모니터링

### Phase 3: 프로 버전 (+$50-100/월)
- \+ Tavily, Brave Search
- 종합적 시장 인텔리전스
- 실시간 트렌드 분석

## 시작하기

1. **설정 파일 적용 완료**
2. **Claude Desktop 재시작**
3. **첫 검색 실행**: 
   ```
   "Search Semantic Scholar for recent papers on drip coffee consumer behavior"
   ```

준비 완료! 이제 무료 학술 리서치를 시작할 수 있습니다. 🚀