# 🔑 DripTeller 프로젝트 API 키 설정 가이드

## 🚨 보안 주의사항

**중요**: API 키를 절대 Git에 커밋하지 마세요!
- 모든 API 키는 `.env.local` 파일에 저장하세요
- `.env.local` 파일은 이미 `.gitignore`에 포함되어 있습니다
- `claude_desktop_config.json` 파일도 실제 API 키가 포함된 경우 커밋하지 마세요

### 보안 사고 발생 시
1. 즉시 노출된 API 키를 무효화하고 재발급하세요
2. Git 히스토리에서 민감한 정보를 제거하세요 (BFG Repo-Cleaner 사용)
3. 모든 API 키를 `.env.local`로 이동하세요

## 필수 API 키 목록

### 1. Perplexity API
- **목적**: 웹 검색 + 출처 인용 (커피 시장 조사용)
- **가격**: $20/월 (프로 플랜)
- **신청**: https://www.perplexity.ai/settings/api
- **사용량**: 무제한 질문, 최신 정보 검색

### 2. Tavily API  
- **목적**: 의미론적 검색 + 팩트체크
- **가격**: 무료 플랜 1,000 calls/월, $50/월 (프로)  
- **신청**: https://tavily.com/
- **사용량**: 실시간 웹 검색, 정확도 높은 정보

### 3. Semantic Scholar API
- **목적**: 학술 논문 검색 (소비자 행동 연구)
- **가격**: 무료 (API 제한 있음)
- **신청**: 자동 등록 또는 https://www.semanticscholar.org/product/api
- **사용량**: 학술 자료, 소비자 심리학 연구

### 4. Brave Search API
- **목적**: 독립적인 웹 검색 (구글 의존성 제거)
- **가격**: 무료 2,000 calls/월, $3/1,000 calls
- **신청**: https://brave.com/search/api/
- **사용량**: 검색 다양성, 편향 제거

### 5. OpenAI API (백업용)
- **목적**: Deep Research MCP 백업 모델
- **가격**: GPT-4o: $2.50/1M input tokens
- **신청**: https://platform.openai.com/api-keys
- **사용량**: 복잡한 분석, 보고서 생성

## 예상 월 비용

### 스타트업 단계 (최소)
- Perplexity: $20
- Tavily: $0 (무료 플랜)
- Brave Search: $0 (무료 플랜)
- OpenAI: ~$10-20 (사용량 기준)
- **총합: ~$30-40/월**

### 본격 리서치 단계 (권장)
- Perplexity: $20
- Tavily: $50  
- Brave Search: $30-50
- OpenAI: $50-100
- **총합: ~$150-220/월**

## 설정 우선순위

1. **1순위**: Perplexity (가장 중요)
2. **2순위**: Semantic Scholar (무료)  
3. **3순위**: Tavily
4. **4순위**: Brave Search
5. **5순위**: OpenAI (백업)

## 즉시 시작 가능한 조합

### 무료로 시작
- Semantic Scholar (무료)
- Brave Search (무료 2,000 calls)
- Tavily (무료 1,000 calls)

### 최소 투자로 시작 ($20/월)
- Perplexity ($20) - 핵심 웹 검색
- 위 무료 서비스들

이 조합으로도 충분히 강력한 시장 조사가 가능합니다!

## API 키 설정 방법

### 1. `.env.local` 파일 생성
프로젝트 루트에 `.env.local` 파일을 생성하고 다음 형식으로 API 키를 추가하세요:

```bash
# Semantic Scholar API
SEMANTIC_SCHOLAR_API_KEY=your_actual_api_key_here

# Perplexity API
PERPLEXITY_API_KEY=your_actual_api_key_here

# Omnisearch APIs
TAVILY_API_KEY=your_actual_api_key_here
BRAVE_SEARCH_API_KEY=your_actual_api_key_here
KAGI_API_KEY=your_actual_api_key_here
JINA_API_KEY=your_actual_api_key_here
FIRECRAWL_API_KEY=your_actual_api_key_here
```

### 2. Claude Desktop 설정
`claude_desktop_config.json` 파일의 API 키는 플레이스홀더로 유지하고, 실제 키는 `.env.local`에만 저장하세요.

### 3. 보안 확인
- `git status`로 `.env.local`이 추적되지 않는지 확인
- `claude_desktop_config.json`에 실제 API 키가 없는지 확인
- 커밋 전 항상 민감한 정보가 포함되지 않았는지 검토