[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/new?template=https://github.com/mogamingcv7v-netizen/PROXY)

# Proxy Server – One-Click Railway Deploy

Deploy a **forward proxy** (HTTP + SOCKS5) on Railway with username/password auth.

## One-Click Deploy

1. Click the **Deploy on Railway** button above
2. Set environment variables:
   - `PROXY_USER` — username (default: `proxyuser`)
   - `PROXY_PASS` — password (default: `proxypass`)
3. Click **Deploy**
4. After deployment, go to **Settings → Networking → Generate Domain** for HTTP
5. For SOCKS5, go to **Settings → Networking → TCP Proxy → Enable** (port `$PORT`)

## Usage

### HTTP Proxy

```bash
curl -x http://user:pass@yourapp.up.railway.app:80 https://ifconfig.me
```

### SOCKS5 Proxy

```bash
curl -x socks5://user:pass@yourapp.proxy.rlwy.net:PORT https://ifconfig.me
```

## Environment Variables

| Variable | Default | Description |
|----------|---------|-------------|
| `PROXY_USER` | `proxyuser` | Proxy authentication username |
| `PROXY_PASS` | `proxypass` | Proxy authentication password |

