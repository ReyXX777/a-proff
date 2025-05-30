+++
title = "LuaC – Lua/C Compiler Android App"
slug = "project-nine"
date = 2025-04-01
description = "Android app for compiling and executing Lua and C code on the go, powered by a fast backend."
featuredImage = "/images/luaclink.jpg"
demoVideo = "/videos/luac-demo.mp4"
downloadUrl = "https://www.dropbox.com/link-to-apk"
+++

<style>
  /* Developer/Code Theme */
  :root {
    --primary: #6d28d9; /* Deep Purple */
    --secondary: #06b6d4; /* Cyan */
    --dark: #0f172a;
    --light: #f8fafc;
    --code-bg: #1e1e2e; /* Dracula dark background */
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
  }
  .project-hero {
    /* Set the maximum width for the hero section to 75% of its parent's content area. */
    max-width: 38%;
    /* Center the hero section horizontally on the page. */
    margin-left: auto;
    margin-right: auto;
    /* Maintain existing styling for appearance (border-radius, shadow, margin-bottom). */
    border-radius: 16px;
    box-shadow: 0 15px 30px -8px rgba(0,0,0,0.1);
    margin-bottom: 2rem;
    overflow: hidden; /* Crucial to apply border-radius and contain image */
    /* Remove any 'position: relative;' or 'padding-bottom:' if they were for 16:9 aspect ratio. */
  }

  .project-hero img {
    /* Make the image fill 100% of its .project-hero container's width. */
    width: 100%;
    /* Crucial: Maintain the image's original aspect ratio as it scales down. */
    height: auto;
    /* Ensure no extra space below the image. */
    display: block;
    /* Remove any 'position: absolute;' or 'top/left' properties that were for 16:9 aspect ratio. */
  }

  /* ... (Rest of your CSS, including other sections like .features-grid, .tech-grid, etc.) ... */

  /* Optional: Add a responsive adjustment for smaller screens */
  @media (max-width: 768px) {
    .project-hero {
      max-width: 70%; /* On smaller screens, allow it to be a bit larger to remain visible */
    }
  }

  .project-summary {
    font-size: 1.25rem;
    padding: 1.5rem;
    background: var(--light);
    border-left: 4px solid var(--primary);
    border-radius: 0 8px 8px 0;
    margin-bottom: 3rem;
    border: 1px solid #e2e8f0;
  }

  h2 {
    font-size: 1.75rem;
    margin: 2.5rem 0 1.5rem;
    position: relative;
    display: inline-block;
  }
  h2:after {
    content: '';
    position: absolute;
    bottom: -8px;
    left: 0;
    width: 50px;
    height: 4px;
    background: linear-gradient(90deg, var(--primary), var(--secondary));
    border-radius: 2px;
  }

  /* Code Execution Features */
  .compiler-features-grid {
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
    border: 1px solid #e2e8f0;
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
    color: #64748b;
  }

  /* Tech Stack Grid */
  .tech-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
    gap: 1rem;
    margin: 2rem 0;
  }
  .tech-card {
    background: white;
    border-radius: 8px;
    padding: 1.5rem;
    box-shadow: 0 4px 6px -1px rgba(0,0,0,0.05);
    border: 1px solid #e2e8f0;
    transition: all 0.3s ease;
  }
  .tech-card:hover {
    transform: translateY(-3px);
    box-shadow: 0 10px 15px -3px rgba(0,0,0,0.1);
    border-color: var(--primary);
  }
  .tech-card h3 {
    margin-top: 0;
    color: var(--primary);
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
    box-shadow: 0 4px 6px -1px rgba(109, 40, 217, 0.3);
  }
  .btn-secondary {
    background: white;
    color: var(--primary);
    border: 2px solid var(--primary);
  }
  .btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 10px 15px -3px rgba(109, 40, 217, 0.4);
  }

  /* Demo Video */
  .demo-video {
    margin: 4rem 0;
    border-radius: 16px;
    overflow: hidden;
    box-shadow: 0 25px 50px -12px rgba(0,0,0,0.1);
    border: 1px solid #e2e8f0;
  }

  /* Code Block */
  .code-block {
    background: var(--code-bg);
    color: #f8f8f2;
    padding: 1.5rem;
    border-radius: 8px;
    font-family: 'Fira Code', monospace;
    overflow-x: auto;
    margin: 1.5rem 0;
  }
  .code-keyword { color: #ff79c6; }
  .code-type { color: #8be9fd; }
  .code-string { color: #f1fa8c; }
  .code-comment { color: #6272a4; }
  .code-number { color: #bd93f9; }

  /* Responsive */
  @media (max-width: 768px) {
    .project-title { font-size: 2.25rem; }
    .compiler-features-grid, .tech-grid { grid-template-columns: 1fr; }
    .btn-group { flex-direction: column; }
  }
</style>

<div class="project-detail">

  <div class="project-hero">
    <img src="/images/lualink1.jpg" alt="LuaC app interface showing code editor and output console" />
  </div>

  <h1 class="project-title">LuaC – Lua/C Compiler Android App</h1>

  <div class="project-summary">
    **LuaC** is an innovative Android application designed for mobile developers, learners, and hobbyists. It provides a convenient way to compile and execute **Lua** and **C code** directly from your smartphone, powered by a robust backend.
  </div>

 <!-- 
<h2>🎬 App Demo</h2>
<div class="demo-video">
  <video controls width="100%" poster="{{ .Params.featuredImage | relURL }}">
    <source src="{{ .Params.demoVideo | relURL }}" type="video/mp4">
    Your browser doesn't support HTML5 video.
  </video>
</div>
-->


  <h2>✨ Core Features & Developer Experience</h2>
  <div class="compiler-features-grid">
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="16 18 22 12 16 6"></polyline><polyline points="8 6 2 12 8 18"></polyline></svg> Remote Compilation & Execution</h3>
      <p class="feature-description">Compile and run Lua and C code securely on a powerful cloud-based backend, delivering results back to your device.</p>
    </div>
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="4 7 4 4 20 4 20 7"></polyline><line x1="9" y1="20" x2="15" y2="20"></line><line x1="12" y1="4" x2="12" y2="20"></line></svg> Syntax-Highlighted Editor</h3>
      <p class="feature-description">Enjoy a modern code editor with built-in syntax highlighting for Lua and C, enhancing readability and coding speed.</p>
    </div>
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line></svg> Real-time Output & Debugging</h3>
      <p class="feature-description">Receive instant compilation output and error streams to quickly identify and debug issues in your code.</p>
    </div>
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"></path></svg> Expandable Architecture</h3>
      <p class="feature-description">Designed with a modular architecture, allowing for easy integration of additional scripting languages in the future.</p>
    </div>
  </div>

  <div class="code-block">
    <span class="code-comment">-- Lua Example: Hello World</span><br>
    <span class="code-keyword">print</span>(<span class="code-string">"Hello from Lua!"</span>)<br>
    <br>
    <span class="code-comment">/* C Example: Simple Addition */</span><br>
    <span class="code-keyword">#include</span> <span class="code-string">&lt;stdio.h&gt;</span><br>
    <br>
    <span class="code-type">int</span> <span class="code-type">main</span>() {<br>
    &nbsp;&nbsp;<span class="code-type">int</span> a = <span class="code-number">10</span>;<br>
    &nbsp;&nbsp;<span class="code-type">int</span> b = <span class="code-number">20</span>;<br>
    &nbsp;&nbsp;<span class="code-keyword">printf</span>(<span class="code-string">"Sum: %d\n"</span>, a + b);<br>
    &nbsp;&nbsp;<span class="code-keyword">return</span> <span class="code-number">0</span>;<br>
    }
  </div>

  <h2>🛠 Technical Deep Dive</h2>
  <div class="tech-grid">
    <div class="tech-card">
      <h3>Frontend (Android)</h3>
      <p><strong>Kotlin</strong></p>
      <p><strong>Jetpack Compose</strong></p>
      <p>Material Design 3</p>
      <p>Optimized for Android SDK 35</p>
    </div>
    <div class="tech-card">
      <h3>Backend (Cloud)</h3>
      <p><strong>Express.js</strong> (Node.js)</p>
      <p><strong>LuaJIT</strong> (for Lua execution)</p>
      <p><strong>Docker</strong> (containerization)</p>
      <p>Railway (hosting)</p>
    </div>
    <div class="tech-card">
      <h3>Communication</h3>
      <p><strong>Retrofit</strong> (HTTP client)</p>
      <p><strong>Gson</strong> (JSON parsing)</p>
      <p>RESTful API</p>
    </div>
    <div class="tech-card">
      <h3>Key Implementations</h3>
      <p>Syntax highlighting logic</p>
      <p>Error stream parsing</p>
      <p>Modular architecture</p>
    </div>
  </div>

  <h2>🎯 Target Audience & Benefits</h2>
  <ul>
    <li><strong>Learners:</strong> Ideal for students to practice coding concepts in Lua and C on their mobile devices.</li>
    <li><strong>Mobile Coders:</strong> Offers a quick and convenient way to test small code snippets without needing a full development environment.</li>
    <li><strong>Hobbyists:</strong> Perfect for experimenting with scripting languages on the go, fostering creativity and rapid prototyping.</li>
    <li><strong>Efficient Execution:</strong> Leverages **LuaJIT** within an **Alpine Linux Docker container** for extremely fast and lightweight code execution.</li>
    <li><strong>Modern UX:</strong> Adheres strictly to Material3 Design Guidelines, providing a fluid and intuitive user experience across a wide range of Android devices.</li>
  </ul>

  <div class="btn-group">
    <a href="{{ .Params.downloadUrl }}" class="btn btn-primary" target="_blank">
      <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" style="margin-right:8px;">
        <path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"></path>
        <polyline points="7 10 12 15 17 10"></polyline>
        <line x1="12" y1="15" x2="12" y2="3"></line>
      </svg>
      Download APK
    </a>
    <a href="{{ .Params.demoVideo | relURL }}" class="btn btn-secondary" target="_blank">
      <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" style="margin-right:8px;">
        <polygon points="23 7 16 12 23 17 23 7"></polygon>
        <rect x="1" y="5" width="15" height="14" rx="2" ry="2"></rect>
      </svg>
      Watch Demo
    </a>
  </div>

</div>