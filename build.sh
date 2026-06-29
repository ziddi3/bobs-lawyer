#!/bin/bash
# ═══════════════════════════════════════════════════════════════
# BOB'S LAWYER — Vercel Build Script
# Injects the GROQ_API_KEY from environment into app.js at build time
# so the secret never lives in the git repository.
# ═══════════════════════════════════════════════════════════════

set -e

mkdir -p dist

# Copy all static assets to the output directory
cp index.html dist/
cp style.css dist/
cp app.js dist/
cp logo.png dist/

# Inject the API key into the built app.js (not the source)
if [ -n "$GROQ_API_KEY" ]; then
  echo "Injecting GROQ_API_KEY into dist/app.js..."
  sed -i "s|const GROQ_API_KEY = 'YOUR_GROQ_API_KEY_HERE';|const GROQ_API_KEY = '$GROQ_API_KEY';|" dist/app.js
  echo "API key injected successfully."
else
  echo "WARNING: GROQ_API_KEY environment variable not set. App will not function without it."
fi

echo "Build complete. Output in dist/"
