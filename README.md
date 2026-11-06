# SanHao Global Experts — 885 Business Skills for AI Agents

**885 callable skills** (12 flagship experts + 885 long-tail playbooks) for brand strategy, restaurant operations, marketing, video scripting and crisis PR.

Available over **A2A v1.0** and **MCP (Streamable HTTP)**. Paid per call via **x402 — 0.01 USDC per call, settled on-chain on Base**.

---

## Why this is worth paying for

These are not generic chatbot prompts. Each skill is a **battle-tested operating playbook** with its own frameworks, decision rules and worked examples:

| Skill family | What you get |
|---|---|
| Brand strategy | 3C / SWOT / STP / Porter / 4P / AIPL diagnosis, positioning, brand architecture |
| Restaurant operations | Store P&L diagnosis, menu engineering, site selection with payback modelling, new-store launch playbooks |
| Marketing campaigns | Full campaign generation from minimal input, ROI preview, SOPs and rollout calendars |
| Crisis PR | Food-safety incident response, brand-reputation repair, social-media escalation playbooks |
| Long-tail (885) | Focused single-purpose kits — budget allocation, A/B test analysis, JD writing, pricing, SOPs, and more |

## Connect

### MCP (recommended for agent clients)

```json
{
  "mcpServers": {
    "sanhao-experts": {
      "url": "https://sanhaoyoung821208-d5dv139af0958c.service.tcloudbase.com/a2a/mcp"
    }
  }
}
```

`tools/list` returns all **885 tools**. Call any of them with a `query` argument.

### A2A v1.0 (JSON-RPC)

```
POST https://sanhaoyoung821208-d5dv139af0958c.service.tcloudbase.com/a2a
```

Agent card: [`/.well-known/agent-card.json`](https://sanhaoyoung821208-d5dv139af0958c-1255559199.tcloudbaseapp.com/.well-known/agent-card.json)

## Payment (x402)

Unpaid calls return **HTTP 402** with an x402 challenge in the `PAYMENT-REQUIRED` header. Any x402 v1/v2 client handles this automatically:

1. Client calls the endpoint.
2. Server responds `402` + challenge (`amount: 10000` = 0.01 USDC, `network: eip155:8453`, USDC on Base).
3. Client signs an EIP-3009 authorization and retries with `PAYMENT-SIGNATURE` (v2) or `X-PAYMENT` (v1).
4. Server verifies + settles with the facilitator and returns the result, with a receipt in `PAYMENT-RESPONSE`.

- **Both protocol generations are supported** — v2 clients and older v1 clients both pay successfully.
- Settlement address: `0x35BF6bCaBBc91BFdD1dd65E288fCe313752C599b`
- Facilitator: `https://facilitator.xpay.sh`
- No API keys, no subscriptions, no accounts.

### Free tier

Send `X-Expert-Tier: free` (or set `metadata.tier = "free"`) to receive the **methodology brief** for any skill — the frameworks, decision rules and example prompts — at **zero cost**. The brief costs the publisher nothing because no model is executed. Paid tier returns the finished deliverable.

## Registry listings

- **A2A Registry** — [github.sanhaoyoung.sanhao-global-experts](https://www.a2a-registry.org/agent/github.sanhaoyoung.sanhao-global-experts) (885 skill agents listed individually, all `github_verified`)
- **MCP Registry** — `io.github.sanhaoyoung/sanhao-global-experts`
- **MCP endpoint** — `https://sanhaoyoung821208-d5dv139af0958c.service.tcloudbase.com/a2a/mcp`
- **Store** — [store.html](https://sanhaoyoung821208-d5dv139af0958c-1255559199.tcloudbaseapp.com/store.html)

## Per-skill catalog

All 885 skill names and descriptions: [`skills.json`](skills.json) · Individual cards: [`agentcards/`](agentcards/)

## Contact

454157727@qq.com
