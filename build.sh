#!/bin/bash
# ═══════════════════════════════════════════════════════════════
# BOB'S LAWYER — Vercel Build Script
# Static assets only. API key lives exclusively in /api/chat.js
# via process.env.GROQ_API_KEY (Vercel Environment Variables).
# ═══════════════════════════════════════════════════════════════

set -e

mkdir -p dist

cp index.html dist/
cp style.css dist/
cp app.js dist/
cp logo.png dist/

echo "Build complete. Static output in dist/. API key is server-side only."
