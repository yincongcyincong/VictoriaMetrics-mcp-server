# VictoriaMetrics MCP Server

MCP Server for the VictoriaMetrics.

## Debug
```
npx @modelcontextprotocol/inspector -e VM_URL=http://127.0.0.1:8428  node src/index.js

```

### NPX

```json
{
    "mcpServers": {
        "amap-maps": {
            "command": "npx",
            "args": [
                "-y",
                "@yincongcyincong/victoriametrics-mcp-server"
            ],
            "env": {
                "VM_URL": "",
                "VM_SELECT_URL": "",
                "VM_INSERT_URL": ""
            }
        }
    }
}
```
