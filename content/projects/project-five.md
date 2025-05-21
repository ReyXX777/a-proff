+++
title = "Code-View – Multi-Language Compiler"
slug = "project-five"
date = 2025-03-01
description = "Android app for compiling and analyzing code with AST visualization and execution tracing"
featuredImage = "/images/codeview.jpg"
demoVideo = "/videos/codeview-demo.mp4"
downloadUrl = "https://www.dropbox.com/link-to-apk"
+++

<style>
  /* Developer Theme */
  :root {
    --primary: #2563eb; /* Blue */
    --secondary: #7c3aed; /* Purple */
    --dark: #1e293b;
    --light: #f8fafc;
    --code-bg: #1e1e2e;
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

  /* Code Visualization */
  .code-visualization {
    display: flex;
    margin: 2rem 0;
    background: white;
    border-radius: 8px;
    overflow: hidden;
    box-shadow: 0 4px 6px -1px rgba(0,0,0,0.1);
  }
  .code-tabs {
    display: flex;
    border-bottom: 1px solid #e2e8f0;
    padding: 0 1rem;
  }
  .code-tab {
    padding: 0.75rem 1.5rem;
    cursor: pointer;
    position: relative;
  }
  .code-tab.active:after {
    content: '';
    position: absolute;
    bottom: -1px;
    left: 0;
    width: 100%;
    height: 2px;
    background: var(--primary);
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
    box-shadow: 0 4px 6px -1px rgba(37, 99, 235, 0.3);
  }
  .btn-secondary {
    background: white;
    color: var(--primary);
    border: 2px solid var(--primary);
  }
  .btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 10px 15px -3px rgba(37, 99, 235, 0.4);
  }

  /* Demo Video */
  .demo-video {
    margin: 4rem 0;
    border-radius: 16px;
    overflow: hidden;
    box-shadow: 0 25px 50px -12px rgba(0,0,0,0.1);
    border: 1px solid #e2e8f0;
  }

  /* Responsive */
  @media (max-width: 768px) {
    .project-title { font-size: 2.25rem; }
    .tech-grid { grid-template-columns: 1fr; }
    .btn-group { flex-direction: column; }
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
</style>

<div class="project-detail">

  

  <h1 class="project-title">Tech Talk</h1>

  <div class="project-summary">
    Code-View revolutionizes code learning with real-time compilation, AST visualization, and execution tracing - all in a Material Design 3 Android app with a powerful backend analysis engine.
  </div>
  <div class="project-hero">
    <img src="/images/codeview1.jpg" alt="Code-View app interface showing code analysis" />
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



  <h2>🚀 Key Features</h2>
  <ul>
    <li><strong>Multi-Language Support:</strong> Java, C, and Kotlin compilation and analysis</li>
    <li><strong>AST Visualization:</strong> Interactive tree-view of abstract syntax trees</li>
    <li><strong>Execution Tracing:</strong> Step-by-step program flow visualization</li>
    <li><strong>Symbol Tables:</strong> Real-time display of variables and scopes</li>
    <li><strong>Control Flow Graphs:</strong> Visual representation of program logic</li>
    <li><strong>Secure Execution:</strong> Isolated backend processing with child_process.spawn</li>
  </ul>

  <div class="code-block">
    <span class="code-keyword">public class</span> <span class="code-type">Main</span> {<br>
    &nbsp;&nbsp;<span class="code-keyword">public static void</span> main(String[] args) {<br>
    &nbsp;&nbsp;&nbsp;&nbsp;<span class="code-comment">// Sample code visualization</span><br>
    &nbsp;&nbsp;&nbsp;&nbsp;System.out.println(<span class="code-string">"Hello Code-View!"</span>);<br>
    &nbsp;&nbsp;}<br>
    }
  </div>

  <h2>🛠 Technology Stack</h2>
  <div class="tech-grid">
    <div class="tech-card">
      <h3>Mobile App</h3>
      <p>Kotlin + Jetpack Compose</p>
      <p>Material Design 3</p>
    </div>
    <div class="tech-card">
      <h3>Backend</h3>
      <p>Node.js + Express</p>
      <p>Docker containers</p>
    </div>
    <div class="tech-card">
      <h3>Infrastructure</h3>
      <p>Railway deployment</p>
      <p>WebView integration</p>
    </div>
    <div class="tech-card">
      <h3>Analysis</h3>
      <p>ANTLR parsing</p>
      <p>Compiler phases</p>
    </div>
  </div>

  <h2>⚙️ Technical Implementation</h2>
  <ul>
    <li><strong>Modular Architecture:</strong> Separated compiler phases into independent modules</li>
    <li><strong>Real-Time Communication:</strong> WebSocket-based updates between app and backend</li>
    <li><strong>Material 3 Compliance:</strong> Followed latest Android design guidelines</li>
    <li><strong>Secure Execution:</strong> Sandboxed code execution with resource limits</li>
    <li><strong>Optimized Performance:</strong> Cached parsing results and incremental analysis</li>
  </ul>

  <h2>📊 Sample Analysis Output</h2>
  <div class="code-visualization">
    <div style="padding: 1.5rem; width: 100%;">
      <div class="code-tabs">
        <div class="code-tab active">AST</div>
        <div class="code-tab">CFG</div>
        <div class="code-tab">Symbol Table</div>
      </div>
      <div style="margin-top: 1rem; text-align: center;">
        <img src="/images/ast-visualization.png" alt="AST visualization example" style="max-width: 100%; border-radius: 4px;">
      </div>
    </div>
  </div>
  

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
      Watch Pitch
    </a>
  </div>

</div>

<script>
  // Tab functionality for code visualization
  document.querySelectorAll('.code-tab').forEach(tab => {
    tab.addEventListener('click', function() {
      document.querySelector('.code-tab.active').classList.remove('active');
      this.classList.add('active');
      // Here you would typically switch the visualization content
    });
  });
</script>