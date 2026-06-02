# BOB'S Lawyer — Alberta AI Legal Specialist System

> Alberta's Premier Multi-Agent AI Legal Service  
> *All lawyers personally approved by Bob*

---

## 🏛️ About

BOB'S Lawyer is a sophisticated multi-agent AI legal system specifically designed for Alberta, Canada. It provides specialized legal counsel across 9 major areas of law, each powered by Groq's `llama-3.3-70b-versatile` model for fast, accurate, and comprehensive legal guidance.

### Licensed Areas of Practice

| Agent | Specialty | Key Legislation |
|-------|-----------|-----------------|
| ⚖️ **Criminal Law** | Criminal defence, bail, sentencing, Charter rights | Criminal Code, Alberta Court procedures |
| 💼 **Business Law** | Contracts, partnerships, business registration | ABCA, Partnership Act |
| 🏛️ **Corporate Law** | Incorporation, M&A, governance, securities | ABCA, CBCA, ASC |
| 🔍 **Civil Law** | Lawsuits, torts, personal injury, property | Alberta Court of King's Bench, Limitation Act |
| 👨‍👩‍👧 **Family Law** | Divorce, custody, support, restraining orders | Divorce Act, Family Law Act, Matrimonial Property Act |
| 🚗 **Traffic Law** | Tickets, speeding, DUI, licence suspensions | Traffic Safety Act, Criminal Code |
| 👷 **Employment Law** | Wrongful dismissal, severance, workplace rights | Employment Standards Code |
| 🏠 **Real Estate Law** | Property transactions, mortgages, landlord-tenant | Land Titles Act, Residential Tenancies Act |
| ✈️ **Immigration Law** | Visas, PR, citizenship, refugee claims | IRPA, IRCC programs |

---

## 🚀 Features

- **Pure Client-Side Application** — No backend server required. All logic runs in the browser.
- **Multi-Agent Architecture** — 9 specialized AI lawyers with dedicated system prompts.
- **Streaming Responses** — Real-time streaming from Groq API for instant responses.
- **Professional UI/UX** — Dark theme with BOB'S Lawyer branding (black background, blue flame accents, red titles).
- **Suggested Questions** — Each agent provides relevant suggested questions to get started.
- **Responsive Design** — Works seamlessly on desktop, tablet, and mobile devices.
- **Session Persistence** — Conversation history maintained within the session.

---

## 🛠️ Technology Stack

- **Frontend**: Pure HTML5, CSS3, JavaScript (ES6+)
- **AI Model**: Groq API → `llama-3.3-70b-versatile`
- **Fonts**: Cinzel (titles), Inter (body), JetBrains Mono (code)
- **Deployment**: NinjaTech Pages (static site hosting)

---

## 📦 Installation

### Local Development

1. Clone this repository:
```bash
git clone https://github.com/METHOD-MEDIA/bobs-lawyer.git
cd bobs-lawyer
```

2. Open `index.html` in your browser:
```bash
# Using Python 3
python3 -m http.server 8000
# Then open http://localhost:8000
```

Or simply open `index.html` directly in a modern browser.

---

## ⚙️ Configuration

### API Key

The application requires a Groq API key to function. Configure it in `app.js` (line 8):

```javascript
const GROQ_API_KEY = 'YOUR_GROQ_API_KEY_HERE'; // Replace with actual key
```

**⚠️ Security Note**: For production deployment:
- Replace `'YOUR_GROQ_API_KEY_HERE'` with your actual Groq API key
- Do NOT commit API keys to public repositories
- For web deployments, use environment variables or a secure secrets service
- Set via `GROQ_API_KEY` environment variable for server deployments

### Model Configuration

You can modify the AI model settings in `app.js`:

```javascript
const GROQ_MODEL   = 'llama-3.3-70b-versatile';  // Current model
const MAX_TOKENS   = 2048;                        // Response length limit
const TEMPERATURE  = 0.7;                         // Creativity level (0-2)
```

---

## 📁 File Structure

```
bobs-lawyer/
├── index.html       # Main HTML — selection screen & chat interface
├── style.css        # Full styling (BOB'S Lawyer theme)
├── app.js           # Multi-agent logic & Groq API integration
├── logo.png         # BOB'S Lawyer branding logo
└── README.md        # This file
```

---

## 🎨 Branding

The project uses the BOB'S Lawyer identity:

- **Colors**: Black (#000000), Blue Flame (#4fc3f7, #0288d1), Red (#c0392b, #e74c3c), Silver (#b0bec5)
- **Typography**: Cinzel (titles/headings), Inter (body text)
- **Logo**: Blue flame, red "BOB'S" text, courthouse with scales, silver "LAWYER" text

### Custom Platform Badge

The floating platform badge displays:
```
⚖️ The Best Methodz : Developed by METHOD-MEDIA
```

This is dynamically patched via JavaScript after page load.

---

## 🔧 Customization

### Adding a New Agent

1. Add the agent definition to `AGENTS` object in `app.js`:

```javascript
tax: {
  emoji: '🧮',
  name: 'Tax Law',
  title: 'Tax Specialist',
  welcome: 'Your tax law welcome message...',
  suggestions: ['Question 1', 'Question 2', 'Question 3'],
  systemPrompt: 'Comprehensive tax law system prompt...'
}
```

2. Add the agent card to `index.html` grid:

```html
<div class="agent-card" data-agent="tax" onclick="selectAgent('tax')">
  <div class="agent-emoji">🧮</div>
  <div class="agent-name">TAX LAW</div>
  <div class="agent-title">Tax Specialist</div>
  <div class="agent-desc">Description here...</div>
  <div class="agent-badge">Income Tax Act</div>
  <div class="bob-approved">✦ BOB APPROVED ✦</div>
</div>
```

---

## 🌐 Deployment

### NinjaTech Pages

```bash
deploy bobs-lawyer alberta-law-bot-deploy
```

Current deployment:  
**https://sites.super.myninja.ai/97e4bb4e-8470-4ebe-aa33-fa02eb5624f0/db88af9e/index.html**

### Subdomain Integration

Intended for: **bobs-lawyer.methodz.ca**

Configure via your DNS and hosting provider to point this repository's static content to the subdomain.

---

## ⚖️ Legal Disclaimer

**IMPORTANT**: BOB'S Lawyer provides comprehensive legal **information** and guidance for Alberta, Canada. All AI responses should be considered general legal information only, not specific legal advice. For critical matters, court appearances, binding legal opinions, or complex litigation, always consult a licensed lawyer or a certified legal professional in Alberta.

---

## 👥 Credits

- **Powered by**: Groq AI (`llama-3.3-70b-versatile`)
- **Designed for**: METHOD-MEDIA
- **Approved by**: Bob
- **Badge Text**: "The Best Methodz : Developed by METHOD-MEDIA"

---

## 📜 License

© 2025 METHOD-MEDIA / BOB'S Lawyer. All rights reserved.

---

## 🤝 Support

For issues, questions, or collaborations related to this project, please contact METHOD-MEDIA.

---

**BOB'S Lawyer — Alberta's Trusted AI Legal Service** ⚖️