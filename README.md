[![MseeP.ai Security Assessment Badge](https://mseep.net/pr/yincongcyincong-victoriametrics-mcp-server-badge.png)](https://mseep.ai/app/yincongcyincong-victoriametrics-mcp-server)

# VictoriaMetrics MCP Server
[![smithery badge](https://smithery.ai/badge/@yincongcyincong/victoriametrics-mcp-server)](https://smithery.ai/server/@yincongcyincong/victoriametrics-mcp-server)

<a href="https://glama.ai/mcp/servers/@yincongcyincong/VictoriaMetrics-mcp-server">
  <img width="380" height="200" src="https://glama.ai/mcp/servers/@yincongcyincong/VictoriaMetrics-mcp-server/badge" alt="VictoriaMetrics-mcp-server MCP server" />
</a>

MCP Server for the VictoriaMetrics.

### Installing via Smithery

To install VictoriaMetrics Server for Claude Desktop automatically via [Smithery](https://smithery.ai/server/@yincongcyincong/victoriametrics-mcp-server):

```bash
npx -y @smithery/cli install @yincongcyincong/victoriametrics-mcp-server --client claude
```

## Debug
```
npx @modelcontextprotocol/inspector -e VM_URL=http://127.0.0.1:8428  node src/index.js

```

### NPX

```json
{
    "mcpServers": {
        "victoriametrics": {
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

### 📊 VictoriaMetrics Tools API Documentation

## 1. `vm_data_write`

**Description**: Write data to the VictoriaMetrics database.

**Input Parameters**:

| Parameter     | Type        | Description                                | Required |
|---------------|-------------|--------------------------------------------|----------|
| `metric`      | `object`    | Tags of the metric                         | ✅        |
| `values`      | `number[]`  | Array of metric values                     | ✅        |
| `timestamps`  | `number[]`  | Array of timestamps in Unix seconds        | ✅        |

---

## 2. `vm_prometheus_write`

**Description**: Import Prometheus exposition format data into VictoriaMetrics.

**Input Parameters**:

| Parameter | Type     | Description                                     | Required |
|-----------|----------|-------------------------------------------------|----------|
| `data`    | `string` | Metrics in Prometheus exposition format         | ✅        |

---

## 3. `vm_query_range`

**Description**: Query time series data over a specific time range.

**Input Parameters**:

| Parameter | Type     | Description                                     | Required |
|-----------|----------|-------------------------------------------------|----------|
| `query`   | `string` | PromQL expression                               | ✅        |
| `start`   | `number` | Start timestamp in Unix seconds                 | ⛔️        |
| `end`     | `number` | End timestamp in Unix seconds                   | ⛔️        |
| `step`    | `string` | Query resolution step width (e.g., `10s`, `1m`) | ⛔️        |

> Only `query` is required; the other fields are optional.

---

## 4. `vm_query`

**Description**: Query the current value of a time series.

**Input Parameters**:

| Parameter | Type     | Description                             | Required |
|-----------|----------|-----------------------------------------|----------|
| `query`   | `string` | PromQL expression to evaluate           | ✅        |
| `time`    | `number` | Evaluation timestamp in Unix seconds    | ⛔️        |

---

## 5. `vm_labels`

**Description**: Get all unique label names.

**Input Parameters**: None

---

## 6. `vm_label_values`

**Description**: Get all unique values for a specific label.

**Input Parameters**:

| Parameter | Type     | Description                  | Required |
|-----------|----------|------------------------------|----------|
| `label`   | `string` | Label name to get values for | ✅        |

---

## Hosted deployment

A hosted deployment is available on [Fronteir AI](https://fronteir.ai/mcp/yincongcyincong-victoriametrics-mcp-server).

