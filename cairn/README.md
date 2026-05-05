<p align="center">
  <img src="https://github.com/TRC-Loop/cairn/raw/main/.github/cairnbanner-rawest-v1-font-embed-safe.webp" alt="Cairn Banner" width="100%">
</p>

# ❇️ Cairn Status Monitor

**A powerful, self-hosted uptime monitoring solution with incident management and beautiful status pages.**

📖 **About Cairn**
Cairn is a modern, lightweight solution designed to keep track of your services' availability. This add-on brings Cairn directly into your Home Assistant ecosystem—natively compiled for maximum performance on Raspberry Pi (ARM64) and x86 (Intel/AMD) systems. Unlike simple ping tools, Cairn offers a full dashboard for documenting incidents and hosting public-facing status pages.

### 🚀 Features & Comparison
| Feature | Cairn Add-on | Standard Ping |
| :--- | :--- | :--- |
| **Monitoring** | ✅ HTTP(s), Ports, TCP | ⚠️ Ping Only |
| **Status Pages** | ✅ Public & Private Designs | ❌ No |
| **Database** | ✅ Persistent SQLite | ❌ None |
| **Incident Management**| ✅ Professional Logs | ❌ No |
| **Architecture** | ⚡ Native ARM64/AMD64 | ⚖️ Variable |

---

⚙️ **Configuration & Setup**

To ensure Cairn starts securely, you must define an encryption key before the first launch:

1. Navigate to the **Configuration** tab.
2. Enter a random, secure key (minimum 32 characters) in the `CAIRN_ENCRYPTION_KEY` field.
3. (Optional) Change the Network Port (Default: `3002`).
4. Click **Save** and start the add-on.

### Available Options
* **CAIRN_ENCRYPTION_KEY**: Your private key used to encrypt database contents.
* **Port**: The network port used to access the web interface.
* **Log Level**: Controls the detail of system messages (Default: `info`).

---

🔗 **Accessing the Dashboard**
Due to technical path limitations with Ingress (sidebar), CSS styles may not load correctly through the sidebar link. For the full design, please access the app directly via the web interface:
👉 `http://your-homeassistant-ip:3002`

👨‍💻 **Credits & License**
* **Core App**: Developed by [TRC-Loop](https://github.com/TRC-Loop).
* **Add-on Package**: Maintained by [TheROcraft](https://github.com/TheROcraft).
* **License**: This project is released under the AGPL-3.0 License.