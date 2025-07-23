#!/bin/bash

# DripTeller 프로젝트용 MCP 서버 설치 스크립트

echo "🚀 DripTeller 프로젝트용 MCP 서버 설치 시작..."

# UV 설치 확인
if ! command -v uv &> /dev/null; then
    echo "📦 UV 설치 중..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
    export PATH="$HOME/.cargo/bin:$PATH"
fi

# 1. Perplexity Deep Research MCP
echo "🔍 Perplexity Deep Research MCP 설치 중..."
uv add perplexity-mcp

# 2. Semantic Scholar MCP
echo "📚 Semantic Scholar MCP 설치 중..."
uv add semantic-scholar-mcp

# 3. Tavily Search MCP
echo "🔎 Tavily Search MCP 설치 중..."
uv add tavily-mcp

# 4. Open Deep Research MCP
echo "📊 Open Deep Research MCP 설치 중..."
git clone https://github.com/ozamatash/open-deep-research-mcp.git
cd open-deep-research-mcp
uv sync
cd ..

# Claude Desktop 설정 파일 생성
echo "⚙️ Claude Desktop 설정 파일 생성 중..."

cat > claude_desktop_config.json << 'EOF'
{
  "mcpServers": {
    "perplexity-deep-research": {
      "command": "uvx",
      "args": ["perplexity-mcp"],
      "env": {
        "PERPLEXITY_API_KEY": "YOUR_PERPLEXITY_API_KEY",
        "PERPLEXITY_MODEL": "sonar-deep-research"
      }
    },
    "semantic-scholar": {
      "command": "uvx", 
      "args": ["semantic-scholar-mcp"]
    },
    "tavily-search": {
      "command": "uvx",
      "args": ["tavily-mcp"],
      "env": {
        "TAVILY_API_KEY": "YOUR_TAVILY_API_KEY"
      }
    },
    "open-deep-research": {
      "command": "uv",
      "args": ["--directory", "./open-deep-research-mcp", "run", "main.py"],
      "env": {
        "BRAVE_SEARCH_API_KEY": "YOUR_BRAVE_API_KEY",
        "OPENAI_API_KEY": "YOUR_OPENAI_API_KEY"
      }
    }
  }
}
EOF

echo "✅ MCP 서버 설치 완료!"
echo ""
echo "📋 다음 단계:"
echo "1. API 키 설정이 필요합니다:"
echo "   - Perplexity API Key: https://www.perplexity.ai/settings/api"
echo "   - Tavily API Key: https://tavily.com/"
echo "   - Brave Search API Key: https://brave.com/search/api/"
echo "   - OpenAI API Key: https://platform.openai.com/api-keys"
echo ""
echo "2. Claude Desktop 설정:"
echo "   - macOS: ~/Library/Application Support/Claude/claude_desktop_config.json"
echo "   - 생성된 claude_desktop_config.json 파일 내용을 복사하세요"
echo ""
echo "3. API 키를 YOUR_*_API_KEY 부분에 입력하세요"