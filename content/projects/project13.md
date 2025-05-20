+++
title = "RustC – Rust Compiler Android App"
slug = "project13"
date = 2025-03-01
description = "Android compiler app for Rust with real-time code editor, token stream, AST, symbol table, and CFG visualization, targeting compiler learners."
featuredImage = "/images/rustlink.jpg"
demoVideo = "/videos/rustc-demo.mp4"
downloadUrl = "https://www.dropbox.com/link-to-apk"
+++

<style>
  /* Compiler & Rust Theme */
  :root {
    --primary: #CC662F; /* Rust Orange */
    --secondary: #8B4513; /* Darker Rust */
    --dark: #1e1e1e; /* Near black for contrast */
    --light: #f8f8f2; /* Light grey for text */
    --code-bg: #272822; /* Monokai-like dark background */
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
    box-shadow: 0 4px 6px -1px rgba(204, 102, 47, 0.3);
  }
  .btn-secondary {
    background: white;
    color: var(--primary);
    border: 2px solid var(--primary);
  }
  .btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 10px 15px -3px rgba(204, 102, 47, 0.4);
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
  .code-keyword { color: #f28a3a; } /* Orange-ish for Rust keywords */
  .code-type { color: #56B6C2; } /* Cyan for types */
  .code-string { color: #98C379; } /* Green for strings */
  .code-comment { color: #6272a4; } /* Dracula comment color */
  .code-number { color: #D19A66; } /* Yellow-brown for numbers */
  .code-function { color: #61AFEF; } /* Blue for function names */

  /* Responsive */
  @media (max-width: 768px) {
    .project-title { font-size: 2.25rem; }
    .features-grid, .tech-grid { grid-template-columns: 1fr; }
    .btn-group { flex-direction: column; }
  }
</style>

<div class="project-detail">

  <div class="project-hero">
    <img src="/images/rustlink1.png" alt="RustC app interface showing Rust code editor and compiler output" />
  </div>

  <h1 class="project-title">RustC – Rust Compiler Android App</h1>

  <div class="project-summary">
    **RustC** is an advanced **Android compiler application** built for **Rust**, providing a dynamic environment for writing, compiling, and analyzing Rust code directly on your mobile device. It features a robust backend that exposes compiler internals like **token streams**, **Abstract Syntax Trees (AST)**, **symbol tables**, and **Control Flow Graphs (CFG)**.
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


  <h2>✨ Key Features & Compiler Insights</h2>
  <div class="features-grid">
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="16 18 22 12 16 6"></polyline><polyline points="8 6 2 12 8 18"></polyline></svg> Real-time Rust Compilation</h3>
      <p class="feature-description">Compile and execute **Rust code** on a powerful backend, receiving immediate feedback and error messages.</p>
    </div>
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line></svg> Code Editor & Syntax Highlighting</h3>
      <p class="feature-description">Offers a feature-rich code editor with **syntax highlighting** for Rust, ensuring a comfortable coding experience.</p>
    </div>
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M10 13a5 5 0 0 0 7.54.54l3-3a5 5 0 0 0-7.07-7.07l-1.72 1.71"></path><path d="M14 11a5 5 0 0 0-7.54-.54l-3 3a5 5 0 0 0 7.07 7.07l1.71-1.71"></path></svg> Token Stream Visualization</h3>
      <p class="feature-description">Visualize the raw **token stream** generated by the Rust compiler, aiding in understanding the lexical analysis phase.</p>
    </div>
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M17 18h.01"></path><path d="M7 18h.01"></path><path d="M12 10h.01"></path><path d="M12 15h.01"></path><path d="M12 5h.01"></path><path d="M7 13v-3l-2.4 2.4"></path><path d="M17 13v-3l2.4 2.4"></path><path d="M12 18v-3l-2.4 2.4"></path></svg> AST & CFG Exploration</h3>
      <p class="feature-description">Explore the **Abstract Syntax Tree (AST)** and **Control Flow Graph (CFG)** of your Rust code via intuitive tree renderers and graph views.</p>
    </div>
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="16" x2="12" y2="12"></line><line x1="12" y1="8" x2="12" y2="8"></line></svg> Symbol Table & LLVM IR Viewing</h3>
      <p class="feature-description">Inspect the **symbol table** and generated **LLVM IR** to gain deeper insights into Rust's compilation process.</p>
    </div>
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M2 3h6a4 4 0 0 1 4 4v14a3 3 0 0 0-3-3H2z"></path><path d="M22 3h-6a4 4 0 0 0-4 4v14a3 3 0 0 1 3-3h7z"></path></svg> State Persistence</h3>
      <p class="feature-description">Utilizes **Jetpack DataStore** to persist your last edited code snippet and language preferences locally.</p>
    </div>
  </div>

  <div class="code-block">
    <span class="code-comment">// Rust Example: Hello World with a function</span><br>
    <span class="code-keyword">fn</span> <span class="code-function">main</span>() {<br>
    &nbsp;&nbsp;&nbsp;&nbsp;<span class="code-keyword">let</span> message = <span class="code-string">"Hello from RustC!"</span>;<br>
    &nbsp;&nbsp;&nbsp;&nbsp;<span class="code-function">println!</span>(<span class="code-string">"{}"</span>, message);<br>
    }<br>
    <br>
    <span class="code-comment">// LLVM IR snippet for a simple integer addition</span><br>
    <span class="code-type">%add.result</span> = <span class="code-keyword">add</span> <span class="code-type">i32</span> <span class="code-number">10</span>, <span class="code-number">20</span><br>
  </div>

  <h2>🛠 Advanced Technical Architecture</h2>
  <div class="tech-grid">
    <div class="tech-card">
      <h3>Frontend (Android)</h3>
      <p><strong>Kotlin</strong></p>
      <p><strong>Jetpack Compose</strong></p>
      <p>Material Design 3</p>
      <p>Compose Navigation</p>
      <p>Jetpack DataStore</p>
    </div>
    <div class="tech-card">
      <h3>Backend (Cloud)</h3>
      <p><strong>Rust</strong> (Compiler Core)</p>
      <p><strong>Express.js</strong> (Node.js for API)</p>
      <p><strong>Docker</strong> (Multi-stage builds)</p>
      <p><strong>Railway</strong> (Deployment)</p>
    </div>
    <div class="tech-card">
      <h3>Compiler Tooling & IPC</h3>
      <p>Rust **`cargo`** (Build System)</p>
      <p>Rust **`rustc`** (Actual Compiler)</p>
      <p>Rust **`syn`** (Parsing procedural macros)</p>
      <p>Rust **`serde`** (Serialization/Deserialization)</p>
      <p>Node.js **`child_process.spawn()`**</p>
    </div>
    <div class="tech-card">
      <h3>Communication & Data Viz</h3>
      <p><strong>Retrofit</strong> (HTTP Client)</p>
      <p>JSON (Data Exchange)</p>
      <p><strong>LLVM IR</strong> (Intermediate Representation)</p>
      <p>Custom Tree Renderers</p>
      <p>Graph Views (for CFG)</p>
    </div>
  </div>

  <h2>🎯 Ideal For & Optimized Experience</h2>
  <ul>
    <li><strong>Compiler Construction Learners:</strong> Provides a hands-on platform to visualize and understand different stages of the Rust compilation process.</li>
    <li><strong>Rust Developers:</strong> Offers a portable environment to test Rust snippets and understand their underlying structure.</li>
    <li><strong>Computer Science Students:</strong> An excellent educational tool for learning about programming language design and implementation.</li>
    <li><strong>Clean MVVM Architecture:</strong> Organized following modern MVVM patterns for robust, scalable, and maintainable code.</li>
    <li><strong>Centralized Dependencies:</strong> Manages project dependencies effectively using `libs.versions.toml`.</li>
    <li><strong>Optimized UX:</strong> Built for Android SDK 35 with **Material3 UI elements** and **animated transitions** for a smooth, intuitive user experience.</li>
  </ul>

  <div class="btn-group">
    <a href="https://www.dropbox.com/link-to-apk" class="btn btn-primary" target="_blank">
      <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" style="margin-right:8px;">
        <path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"></path>
        <polyline points="7 10 12 15 17 10"></polyline>
        <line x1="12" y1="15" x2="12" y2="3"></line>
      </svg>
      Download APK
    </a>
    <a href="/videos/rustc-demo.mp4" class="btn btn-secondary" target="_blank">
      <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" style="margin-right:8px;">
        <polygon points="23 7 16 12 23 17 23 7"></polygon>
        <rect x="1" y="5" width="15" height="14" rx="2" ry="2"></rect>
      </svg>
      Watch Demo
    </a>
  </div>

</div>