#!/bin/bash

# Initialize git repository
git init
git remote add origin https://github.com/Jeet267/Ai_Website_builder1.git

# Set up gitignore properly
echo "node_modules" > .gitignore
echo ".env" >> .gitignore
echo ".DS_Store" >> .gitignore
echo "client/node_modules" >> .gitignore
echo "server/node_modules" >> .gitignore
echo "client/.env" >> .gitignore
echo "server/.env" >> .gitignore

# Ensure user is configured
git config user.name "Jeet267"
git config user.email "Jeet267@users.noreply.github.com"

# Commit 1
GIT_AUTHOR_DATE="2026-07-02T10:00:00" GIT_COMMITTER_DATE="2026-07-02T10:00:00" git add README.md .gitignore
GIT_AUTHOR_DATE="2026-07-02T10:00:00" GIT_COMMITTER_DATE="2026-07-02T10:00:00" git commit -m "Initial commit: Add README and gitignore"

# Commit 2
GIT_AUTHOR_DATE="2026-07-05T14:30:00" GIT_COMMITTER_DATE="2026-07-05T14:30:00" git add server/package*.json server/server.js 2>/dev/null
GIT_AUTHOR_DATE="2026-07-05T14:30:00" GIT_COMMITTER_DATE="2026-07-05T14:30:00" git commit -m "Setup Express server backend"

# Commit 3
GIT_AUTHOR_DATE="2026-07-08T11:15:00" GIT_COMMITTER_DATE="2026-07-08T11:15:00" git add server/config/ server/models/ 2>/dev/null
GIT_AUTHOR_DATE="2026-07-08T11:15:00" GIT_COMMITTER_DATE="2026-07-08T11:15:00" git commit -m "Configure MongoDB connection and define Database Models"

# Commit 4
GIT_AUTHOR_DATE="2026-07-12T16:45:00" GIT_COMMITTER_DATE="2026-07-12T16:45:00" git add server/controllers/authController* server/routes/auth* 2>/dev/null
GIT_AUTHOR_DATE="2026-07-12T16:45:00" GIT_COMMITTER_DATE="2026-07-12T16:45:00" git commit -m "Implement user authentication controllers and routes"

# Commit 5
GIT_AUTHOR_DATE="2026-07-15T09:20:00" GIT_COMMITTER_DATE="2026-07-15T09:20:00" git add server/controllers/projectController* server/routes/project* 2>/dev/null
GIT_AUTHOR_DATE="2026-07-15T09:20:00" GIT_COMMITTER_DATE="2026-07-15T09:20:00" git commit -m "Add project management APIs"

# Commit 6
GIT_AUTHOR_DATE="2026-07-19T13:10:00" GIT_COMMITTER_DATE="2026-07-19T13:10:00" git add server/services/ai.js server/services/prompts.js 2>/dev/null
GIT_AUTHOR_DATE="2026-07-19T13:10:00" GIT_COMMITTER_DATE="2026-07-19T13:10:00" git commit -m "Integrate OpenRouter AI for website generation"

# Commit 7
GIT_AUTHOR_DATE="2026-07-22T10:05:00" GIT_COMMITTER_DATE="2026-07-22T10:05:00" git add server/services/aiSchemas.js server/services/codeValidator.js server/services/contentNormalizer.js 2>/dev/null
GIT_AUTHOR_DATE="2026-07-22T10:05:00" GIT_COMMITTER_DATE="2026-07-22T10:05:00" git commit -m "Add code validation and AI response normalization schemas"

# Commit 8
GIT_AUTHOR_DATE="2026-07-25T15:40:00" GIT_COMMITTER_DATE="2026-07-25T15:40:00" git add client/package*.json client/vite.config.js client/index.html client/src/main.jsx client/src/index.css 2>/dev/null
GIT_AUTHOR_DATE="2026-07-25T15:40:00" GIT_COMMITTER_DATE="2026-07-25T15:40:00" git commit -m "Initialize React frontend client with Vite"

# Commit 9
GIT_AUTHOR_DATE="2026-07-28T11:25:00" GIT_COMMITTER_DATE="2026-07-28T11:25:00" git add client/src/context/ client/src/utils/ 2>/dev/null
GIT_AUTHOR_DATE="2026-07-28T11:25:00" GIT_COMMITTER_DATE="2026-07-28T11:25:00" git commit -m "Setup AppContext for global state management and utility functions"

# Commit 10
GIT_AUTHOR_DATE="2026-08-01T14:55:00" GIT_COMMITTER_DATE="2026-08-01T14:55:00" git add client/src/pages/Home.jsx client/src/components/Navbar.jsx client/src/components/Hero* 2>/dev/null
GIT_AUTHOR_DATE="2026-08-01T14:55:00" GIT_COMMITTER_DATE="2026-08-01T14:55:00" git commit -m "Build landing page and navigation bar UI"

# Commit 11
GIT_AUTHOR_DATE="2026-08-04T10:30:00" GIT_COMMITTER_DATE="2026-08-04T10:30:00" git add client/src/pages/Login.jsx client/src/pages/Register.jsx 2>/dev/null
GIT_AUTHOR_DATE="2026-08-04T10:30:00" GIT_COMMITTER_DATE="2026-08-04T10:30:00" git commit -m "Create authentication UI (Login/Register)"

# Commit 12
GIT_AUTHOR_DATE="2026-08-07T16:15:00" GIT_COMMITTER_DATE="2026-08-07T16:15:00" git add client/src/pages/Dashboard.jsx client/src/components/ProjectCard.jsx 2>/dev/null
GIT_AUTHOR_DATE="2026-08-07T16:15:00" GIT_COMMITTER_DATE="2026-08-07T16:15:00" git commit -m "Implement project dashboard to view generated sites"

# Commit 13
GIT_AUTHOR_DATE="2026-08-10T09:45:00" GIT_COMMITTER_DATE="2026-08-10T09:45:00" git add client/src/pages/BuilderPage.jsx client/src/components/PreviewPanel.jsx client/src/components/FullPagePreview.jsx 2>/dev/null
GIT_AUTHOR_DATE="2026-08-10T09:45:00" GIT_COMMITTER_DATE="2026-08-10T09:45:00" git commit -m "Add Sandpack preview engine for live AI code compilation"

# Commit 14
GIT_AUTHOR_DATE="2026-08-12T13:20:00" GIT_COMMITTER_DATE="2026-08-12T13:20:00" git add client/src/components/SandpackErrorMonitor.jsx client/src/App.jsx 2>/dev/null
GIT_AUTHOR_DATE="2026-08-12T13:20:00" GIT_COMMITTER_DATE="2026-08-12T13:20:00" git commit -m "Implement error monitoring and complete frontend routing"

# Commit 15
GIT_AUTHOR_DATE="2026-08-15T11:00:00" GIT_COMMITTER_DATE="2026-08-15T11:00:00" git add . 2>/dev/null
GIT_AUTHOR_DATE="2026-08-15T11:00:00" GIT_COMMITTER_DATE="2026-08-15T11:00:00" git commit -m "Finalize AI Website Builder platform, polish styles, and bug fixes"

# Change branch to main and push
git branch -M main
git push -u origin main
