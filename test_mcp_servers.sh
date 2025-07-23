#!/bin/bash

echo "Testing MCP Servers..."

echo -e "\n1. Testing Semantic Scholar MCP Server:"
cd /Users/zimo_mbp16_m1max/Projects/DripTeller/semanticscholar-MCP-Server
source .venv/bin/activate
python -m mcp run semantic_scholar_server.py &
PID1=$!
sleep 5
kill $PID1 2>/dev/null

echo -e "\n2. Testing Academic Search MCP Server:"
cd /Users/zimo_mbp16_m1max/Projects/DripTeller/academic-search-mcp-server
source .venv/bin/activate
python -m mcp run server.py &
PID2=$!
sleep 5
kill $PID2 2>/dev/null

echo -e "\nBoth servers tested. Check output above for errors."