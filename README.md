# AI Website Builder 🚀

[![GitHub](https://img.shields.io/badge/GitHub-Repository-blue?logo=github)](https://github.com/Jeet267/AI_Website_builder)

An AI‑powered SaaS platform that converts natural‑language prompts into complete React websites. This platform empowers users to generate, edit, and publish modern websites instantly, without needing to build them manually from scratch.

## 🌟 Features

- **Text-to-Website Generation**: Instantly generate complete React websites from natural‑language prompts using the power of AI.
- **AI-Powered Iterative Editing**: Integrated code editor allowing users to modify generated websites manually or refine them through additional prompts.
- **Real-time Generation Tracking**: Seamless visibility into the AI generation process.
- **Export & Publishing Workflows**: Streamlined processes to export the generated code or publish the website directly.
- **Project Management**: Complete dashboard to create, view, and manage your generated projects.
- **Secure Authentication**: Robust user authentication and session management.

## 💻 Tech Stack

**Full-Stack Ecosystem:**
- **Frontend**: React.js
- **Backend**: Node.js, Express.js
- **Database**: MongoDB
- **AI Integration**: OpenRouter API

## 🚀 Getting Started

Follow these steps to set up the project locally.

### Prerequisites

- Node.js installed on your machine
- MongoDB database (local or Atlas)
- OpenRouter API key

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/Jeet267/AI_Website_builder.git
   cd AI_Website_builder
   ```

2. **Backend Setup:**
   ```bash
   cd server
   npm install
   ```
   Create a `.env` file in the `server` directory and add your environment variables:
   ```env
   PORT=3000
   MONGODB_URI=your_mongodb_connection_string
   OPENROUTER_API_KEY=your_openrouter_api_key
   OPENROUTER_MODEL=anthropic/claude-3.5-sonnet
   JWT_SECRET=your_jwt_secret
   ORIGINS=http://localhost:5173,http://localhost:3000
   ```
   Start the backend server:
   ```bash
   npm run dev
   ```

3. **Frontend Setup:**
   ```bash
   cd ../client
   npm install
   ```
   Start the frontend application:
   ```bash
   npm run dev
   ```

## 🛠️ Usage

1. **Sign up / Log in** to your account.
2. **Generate:** Enter a descriptive natural language prompt (e.g., *"A modern landing page for a local coffee shop with a dark theme"*).
3. **Track & Wait:** Watch the real-time generation tracking as the AI builds your React components.
4. **Iterate & Edit:** Preview the generated website. Use the integrated code editor to make manual tweaks, or provide follow-up prompts to the AI for automated refinements.
5. **Publish:** Export the React source code or publish the website directly from the platform.

## 📅 Development

Built in **July 2026**.
