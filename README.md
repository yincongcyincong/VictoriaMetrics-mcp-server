npx @modelcontextprotocol/inspector -e VM_URL=http://127.0.0.1:8428  node src/index.js


{
"jsonrpc": "2.0",
"id": 3,
"params": {
"metric": {
"__name__": "cpu_usage",
"instance": "server1",
"job": "node_exporter"
},
"values": [
45.3
],
"timestamps": [
1744446660
]
},
"method": "tools/call"
}
