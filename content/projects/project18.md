+++
title = "SGLang Desktop Playground"
slug = "project18"
date = 2025-06-14
description = "A fully interactive, Python-powered LLM playground built with PyQt5, enabling visual prompt engineering, real-time streaming, and in-depth analysis of SGLang-driven interactions with large language models."
featuredImage = "/images/sglang.png"
demoVideo = "" # Placeholder - Add your video link here if available
downloadUrl = "" # Placeholder - Add your download link here if available
+++

<style>
  /* Base Project Theme (Adjusted for general tech/AI focus) */
  :root {
    --primary: #4A90E2; /* Blue */
    --secondary: #50E3C2; /* Teal */
    --dark: #212121; /* Dark Grey */
    --light: #F5F5F5; /* Light Grey */
    --card-bg: #FFFFFF; /* White for cards */
    --border-color: #E0E0E0; /* Light border */
    --code-bg: #282c34; /* Darker background for code */
  }

  body {
    background-color: var(--light);
  }

  .project-detail {
    max-width: 1200px;
    margin: 0 auto;
    padding: 2rem 1.5rem;
    font-family: 'Inter', -apple-system, sans-serif;
    color: var(--dark);
    line-height: 1.6;
  }

  .project-title {
    font-size: 3rem;
    font-weight: 800;
    background: linear-gradient(90deg, var(--primary), var(--secondary));
    -webkit-background-clip: text;
    background-clip: text;
    color: transparent;
    margin-bottom: 1.5rem;
    line-height: 1.2;
    text-align: center;
  }
  .project-hero {
    max-width: 70%; /* Adjusted for desktop app visuals */
    margin-left: auto;
    margin-right: auto;
    border-radius: 16px;
    box-shadow: 0 15px 30px -8px rgba(0,0,0,0.1);
    margin-bottom: 2rem;
    overflow: hidden;
    border: 2px solid var(--primary);
  }

  .project-hero img {
    width: 100%;
    height: auto;
    display: block;
  }

  @media (max-width: 768px) {
    .project-hero {
      max-width: 95%;
    }
  }

  .project-summary {
    font-size: 1.25rem;
    padding: 1.5rem;
    background: var(--card-bg);
    border-left: 4px solid var(--primary);
    border-radius: 0 8px 8px 0;
    margin-bottom: 3rem;
    border: 1px solid var(--border-color);
    text-align: center;
  }

  h2 {
    font-size: 2rem;
    margin: 2.5rem 0 1.5rem;
    position: relative;
    display: inline-block;
    text-align: center;
    width: 100%;
  }
  h2:after {
    content: '';
    position: absolute;
    bottom: -8px;
    left: 50%;
    transform: translateX(-50%);
    width: 80px;
    height: 4px;
    background: linear-gradient(90deg, var(--primary), var(--secondary));
    border-radius: 2px;
  }

  /* Key Features Grid */
  .features-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 1.5rem;
    margin: 2rem 0;
  }
  .feature-card {
    background: white;
    border-radius: 8px;
    padding: 1.5rem;
    box-shadow: 0 4px 6px -1px rgba(0,0,0,0.05);
    border: 1px solid var(--border-color);
    transition: all 0.3s ease;
  }
  .feature-card:hover {
    transform: translateY(-3px);
    box-shadow: 0 10px 15px -3px rgba(0,0,0,0.1);
    border-color: var(--primary);
  }
  .feature-card h3 {
    margin-top: 0;
    color: var(--primary);
    font-size: 1.25rem;
    display: flex;
    align-items: center;
    gap: 0.5rem;
  }
  .feature-description {
    font-size: 0.95rem;
    color: #546E7A;
  }

  /* Tech Stack Grid */
  .tech-grid {
    display: flex;
    flex-wrap: wrap;
    gap: 10px;
    justify-content: center;
    margin: 2rem 0;
  }
  .tech-pill {
    background-color: #E3F2FD; /* Light blue */
    color: #1976D2; /* Darker blue */
    padding: 8px 15px;
    border-radius: 20px;
    font-size: 0.9rem;
    font-weight: 600;
    box-shadow: 0 2px 4px rgba(0,0,0,0.05);
  }

  /* Buttons */
  .btn-group {
    display: flex;
    gap: 1rem;
    justify-content: center;
    flex-wrap: wrap;
    margin: 2rem 0;
  }
  .btn {
    display: inline-flex;
    align-items: center;
    padding: 0.75rem 1.75rem;
    border-radius: 8px;
    text-decoration: none;
    font-weight: 600;
    transition: all 0.3s ease;
  }
  .btn-primary {
    background: linear-gradient(90deg, var(--primary), var(--secondary));
    color: white;
    box-shadow: 0 4px 6px -1px rgba(74, 144, 226, 0.3);
  }
  .btn-secondary {
    background: white;
    color: var(--primary);
    border: 2px solid var(--primary);
  }
  .btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 10px 15px -3px rgba(74, 144, 226, 0.4);
  }
</style>

<div class="project-detail">

  <h1 class="project-title">SGLang Desktop Playground</h1>

  <div class="project-hero">
    <img src="/images/sglang.png" alt="A screenshot of the SGLang Desktop Playground application interface." />
  </div>

  <div class="project-summary">
    This project is an **interactive, Python-powered LLM playground** built with **PyQt5**. It's designed as a creative, modular environment where users can experiment with prompt engineering, visualize function traces, analyze token usage, and see prompts stream live with commentary—all in real-time. The interface is responsive, theme-aware with light/dark toggles, and even features a playful creeping snake animation in the title bar.
  </div>

  <h2>💡 What is SGLang?</h2>
  <p>
    **SGLang (Structured Generation Language)** is a powerful, open-source framework developed by the **LMSYS team** (known for innovations like Chatbot Arena and Vicuna). It allows developers to define structured prompts as trees and workflows, bridging the gap between freeform prompting and programmatic reasoning. SGLang enables reusable prompt components, function-style syntax, and native integration with Large Language Models (LLMs), fostering more modular, introspectable, and programmable interactions.
  </p>

  <h2>✨ Key Features & Capabilities</h2>
  <div class="features-grid">
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm-1 15h2v-6h-2v6zm0-8h2V7h-2v2z"></path></svg> Visual Prompt Engineering</h3>
      <p class="feature-description">Offers an intuitive interface to **build and edit SGLang prompts visually**, making complex prompt structures more accessible.</p>
    </div>
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M22 12h-4l-3 9L9 3l-3 9H2"></path></svg> Real-time LLM Streaming</h3>
      <p class="feature-description">Streams **LLM responses live with commentary and debugging information**, providing immediate insights into the generation process.</p>
    </div>
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line></svg> Function Trace & Debugging</h3>
      <p class="feature-description">Allows users to **track function traces and execution paths**, offering deep introspection into how prompts are processed by the LLM.</p>
    </div>
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="8" x2="12" y2="12"></line><line x1="12" y1="16" x2="12" y2="16"></line></svg> Intelligent Token Estimator</h3>
      <p class="feature-description">Monitors **token usage and calculates estimated costs** per model in real-time, providing valuable insights for cost management and optimization.</p>
    </div>
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"></path></svg> Dynamic Theming & Playful UI</h3>
      <p class="feature-description">Features **light and dark theme toggles** for enhanced accessibility, alongside a unique **creeping snake animation** in the title bar for a fun touch.</p>
    </div>
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4 15s1-1 4-1 5 2 8 2 4-1 4-1V3s-1 1-4 1-5-2-8-2-4 1-4 1v12z"></path><line x1="2" y1="17" x2="22" y2="17"></line><line x1="2" y1="20" x2="22" y2="20"></line></svg> Cross-Platform & Open Source</h3>
      <p class="feature-description">Packaged using **PyInstaller** for cross-platform compatibility and **open-sourced on GitHub** for community collaboration and exploration.</p>
    </div>
  </div>

  <h2>💻 Technologies Used</h2>
  <div class="tech-grid">
    <span class="tech-pill">Python</span>
    <span class="tech-pill">PyQt5</span>
    <span class="tech-pill">SGLang</span>
    <span class="tech-pill">LLM</span>
    <span class="tech-pill">Prompt Engineering</span>
    <span class="tech-pill">PyInstaller</span>
    <span class="tech-pill">QSS (Qt Style Sheets)</span>
    <span class="tech-pill">Open Source</span>
    <span class="tech-pill">Desktop Application</span>
    <span class="tech-pill">AI Tools</span>
  </div>

  <div class="btn-group">
    <a href="https://github.com/your-repo-link-here" class="btn btn-primary" target="_blank">
      <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" style="margin-right:8px;">
        <path d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 0 0-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0 0 20 4.77 5.07 5.07 0 0 0 19.91 3M12 17.25V21"></path>
        <path d="M12 3a5.44 5.44 0 0 0-4.77 2.45A5.07 5.07 0 0 0 5 3.09C4.9 3.09 3.5 3.5 2.5 3.5c-.75.75-.75 1.25-.75 2.25L1.5 17c0 2 1 4 4 4h13c3 0 4-2 4-4V5c0-1-.25-1.5-.75-2.25-.5-.5-1-2.25-1"></path>
      </svg>
      View on GitHub
    </a>
    <a href="" class="btn btn-secondary" target="_blank">
      <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" style="margin-right:8px;">
        <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"></path>
      </svg>
      Watch Demo (Coming Soon)
    </a>
  </div>

</div>
