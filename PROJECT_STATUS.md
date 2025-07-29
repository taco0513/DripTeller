# 📌 DripTeller/숨(Soom) 프로젝트 현재 상황

**작성일시**: 2025-07-23

## 🎯 프로젝트 개요

**브랜드 컨셉**: 메시지 카드가 들어있는 프리미엄 드립백 커피
- 뽑기 심리를 활용한 재구매 유도
- 3단계 가격대 전략 (가성비/중급/프리미엄)
- 타겟: 홈 간편족, 오피스 프리미엄족, 선물 큐레이터족

**브랜드명 후보**:
1. DripTeller (드립+스토리텔링)
2. 숨(Soom) (한국적 감성, 휴식)

## ✅ 완료된 작업

### 1. BMAD METHOD 설치 ✅
- 위치: `/BMAD-METHOD/`
- Business Analyst, PM, Architect 등 에이전트 활용 가능
- 시장조사, 경쟁분석, 비즈니스 전략 템플릿 확보

### 2. MCP 서버 설치 ✅
- **Semantic Scholar MCP**: 학술 논문 검색 (무료)
- **Academic Search MCP**: 통합 학술 검색 (무료)
- **Perplexity MCP**: 웹 검색 + 출처 인용 (유료 준비)
- **Omnisearch MCP**: 통합 검색 플랫폼 (일부 유료)

### 3. Claude Desktop 설정 ✅
- 무료 MCP 서버만 우선 설정
- 설정 파일: `~/Library/Application Support/Claude/claude_desktop_config.json`
- **⚠️ Claude Desktop 재시작 필요**

### 4. 프로젝트 문서화 ✅
- `CLAUDE.md`: 프로젝트 전체 가이드
- `BRAND_NAME_NOTES.md`: 브랜드명 상세 분석
- `DRIPTELLER_RESEARCH_PLAN.md`: 2주 리서치 계획
- `FREE_MCP_SETUP.md`: 무료 MCP 설정 가이드
- `MCP_SETUP_COMPLETE.md`: 전체 MCP 서버 목록
- `api-keys-setup.md`: API 키 설정 가이드

## 🔄 진행 중인 작업

### 드립백 커피 시장 조사
- 무료 MCP 서버 활용한 학술 기반 조사 준비
- 2주간 리서치 계획 수립 완료
- **다음 단계**: Claude Desktop 재시작 후 첫 검색 시작

## 📋 TODO List

1. **즉시 필요**
   - [ ] Claude Desktop 재시작
   - [ ] MCP 서버 연결 테스트
   - [ ] 첫 번째 학술 검색 시작

2. **Day 1-3: 소비자 심리 연구**
   - [ ] "single serve coffee purchase motivation" 검색
   - [ ] "convenience coffee consumer psychology" 검색
   - [ ] "premium coffee willingness to pay" 검색

3. **Day 4-6: 뽑기/수집 심리학**
   - [ ] "gacha mechanics consumer psychology" 검색
   - [ ] "collectible marketing engagement" 검색
   - [ ] "message personalization loyalty" 검색

4. **Day 7-9: 시장 세분화 연구**
   - [ ] "coffee market segmentation price" 검색
   - [ ] "multi-tier pricing strategy food" 검색
   - [ ] "gift coffee purchase behavior" 검색

5. **Day 10-12: 경쟁 전략 이론**
   - [ ] "blue ocean strategy coffee" 검색
   - [ ] "differentiation single serve market" 검색
   - [ ] "storytelling brand strategy" 검색

## 🚀 다음 액션

1. **Claude Desktop 재시작**
2. **MCP 서버 테스트**: 
   ```
   "Use Semantic Scholar to search for papers about drip coffee consumer behavior"
   ```
3. **첫 리서치 세션 시작**

## 💡 중요 노트

- **무료 MCP만으로도 충분**: 초기 학술 기반 검증 가능
- **단계적 업그레이드**: 필요시 Perplexity ($20/월) 추가
- **브랜드명 결정**: 시장 조사 후 5-6주 내 목표
- **메시지 카드 전략**: 일상 동기부여(40%), 업무 격려(25%), 감성(20%), 계절(10%), 레어(5%)

## 📁 프로젝트 구조

```
DripTeller/
├── BMAD-METHOD/         # 비즈니스 전략 프레임워크
├── MCP 서버들/          # 4개 연구용 서버
├── 프로젝트 문서/       # 각종 가이드 및 계획
└── 설정 파일/           # Claude Desktop 설정
```

---

**현재 상태**: Claude Desktop 재시작 대기 중
**다음 작업**: MCP 서버 연결 확인 후 학술 리서치 시작