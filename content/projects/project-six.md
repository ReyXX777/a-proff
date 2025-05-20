+++
title = "VisualR – Recursion Visualizer"
slug = "project-six"
date = 2025-03-01
description = "Android app for visualizing recursive function execution with animated call stacks"
featuredImage = "/images/visualr-hero.png"
demoVideo = "/videos/visualr-demo.mp4"
downloadUrl = "https://www.dropbox.com/link-to-apk"
+++

<style>
  /* Educational Theme */
  :root {
    --primary: #3b82f6; /* Blue */
    --secondary: #10b981; /* Teal */
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

  /* Recursion Visualization */
  .recursion-visualizer {
    background: white;
    border-radius: 8px;
    padding: 1.5rem;
    margin: 2rem 0;
    box-shadow: 0 4px 6px -1px rgba(0,0,0,0.1);
  }
  .recursion-animation {
    width: 100%;
    height: 300px;
    background: #f1f5f9;
    border-radius: 4px;
    margin: 1rem 0;
    display: flex;
    justify-content: center;
    align-items: center;
    position: relative;
    overflow: hidden;
  }
  .recursion-step {
    position: absolute;
    background: var(--primary);
    color: white;
    padding: 0.5rem 1rem;
    border-radius: 20px;
    font-weight: 600;
    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    opacity: 0;
    transition: all 0.5s ease;
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
    box-shadow: 0 4px 6px -1px rgba(59, 130, 246, 0.3);
  }
  .btn-secondary {
    background: white;
    color: var(--primary);
    border: 2px solid var(--primary);
  }
  .btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 10px 15px -3px rgba(59, 130, 246, 0.4);
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

  /* Responsive */
  @media (max-width: 768px) {
    .project-title { font-size: 2.25rem; }
    .tech-grid { grid-template-columns: 1fr; }
    .btn-group { flex-direction: column; }
  }
</style>

<div class="project-detail">

  <div class="project-hero">
    <img src="{{ .Params.featuredImage | relURL }}" alt="VisualR app interface showing recursive function visualization" />
  </div>

  <h1 class="project-title">{{ .Title }}</h1>

  <div class="project-summary">
    VisualR transforms how students learn recursion by animating each step of recursive function execution, making abstract concepts tangible through interactive visualization and adjustable playback.
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


  <h2>🧠 Core Learning Features</h2>
  <ul>
    <li><strong>Step-by-Step Visualization:</strong> Animated call stack progression for recursive functions</li>
    <li><strong>Adjustable Playback:</strong> Customizable animation speed for different learning paces</li>
    <li><strong>Example Library:</strong> Curated recursive algorithms (factorial, Fibonacci, tree traversals, etc.)</li>
    <li><strong>Interactive SVG Output:</strong> Generated with svg-term-cli for crisp, shareable visuals</li>
    <li><strong>Code Persistence:</strong> Saved user inputs with Jetpack DataStore between sessions</li>
    <li><strong>Export Capabilities:</strong> Save animations as SVG for study materials or presentations</li>
  </ul>

  <div class="code-block">
    <span class="code-comment">// Sample recursive factorial function</span><br>
    <span class="code-keyword">int</span> <span class="code-type">factorial</span>(<span class="code-keyword">int</span> n) {<br>
    &nbsp;&nbsp;<span class="code-keyword">if</span> (n <= 1) <span class="code-keyword">return</span> 1;<br>
    &nbsp;&nbsp;<span class="code-keyword">return</span> n * factorial(n-1);<br>
    }
  </div>

  <h2>🛠 Technology Implementation</h2>
  <div class="tech-grid">
    <div class="tech-card">
      <h3>Mobile App</h3>
      <p>Kotlin + Jetpack Compose</p>
      <p>Material Design 3</p>
      <p>Android SDK 35</p>
    </div>
    <div class="tech-card">
      <h3>Visualization</h3>
      <p>SVG-term-cli</p>
      <p>Asciinema recordings</p>
      <p>WebView rendering</p>
    </div>
    <div class="tech-card">
      <h3>Backend</h3>
      <p>Node.js + Express</p>
      <p>Docker containers</p>
      <p>Railway hosting</p>
    </div>
    <div class="tech-card">
      <h3>Data</h3>
      <p>Jetpack DataStore</p>
      <p>Local storage</p>
    </div>
  </div>

  <h2>🎓 Educational Value</h2>
  <div class="recursion-visualizer">
    <h3>Recursive Call Stack Visualization</h3>
    <div class="recursion-animation" id="recursionAnimation">
      <!-- Animation will be inserted here by JavaScript -->
    </div>
    <div style="display: flex; justify-content: center; gap: 1rem; margin-top: 1rem;">
      <button onclick="startAnimation()" style="padding: 0.5rem 1rem; background: var(--primary); color: white; border: none; border-radius: 4px; cursor: pointer;">
        Play Animation
      </button>
      <input type="range" id="speedControl" min="1" max="10" value="5" style="width: 200px;">
    </div>
  </div>

  <h2>✨ Unique Aspects</h2>
  <ul>
    <li><strong>Frame-by-Frame Control:</strong> Students can pause and examine each recursion level</li>
    <li><strong>Parameter Highlighting:</strong> Visual tracking of changing parameter values</li>
    <li><strong>Return Value Tracing:</strong> Clear visualization of how base cases propagate solutions</li>
    <li><strong>Educational Design:</strong> Interface optimized for computer science pedagogy</li>
    <li><strong>Shareable Outputs:</strong> Export visualizations for homework or study groups</li>
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

<script>
  // Recursion animation simulation
  function startAnimation() {
    const animationDiv = document.getElementById('recursionAnimation');
    animationDiv.innerHTML = '';
    
    const steps = [
      {text: "factorial(5)", top: "20%", left: "50%", delay: 0},
      {text: "5 * factorial(4)", top: "35%", left: "45%", delay: 1},
      {text: "4 * factorial(3)", top: "50%", left: "40%", delay: 2},
      {text: "3 * factorial(2)", top: "65%", left: "35%", delay: 3},
      {text: "2 * factorial(1)", top: "80%", left: "30%", delay: 4},
      {text: "return 1", top: "80%", left: "30%", delay: 5},
      {text: "return 2", top: "65%", left: "35%", delay: 6},
      {text: "return 6", top: "50%", left: "40%", delay: 7},
      {text: "return 24", top: "35%", left: "45%", delay: 8},
      {text: "return 120", top: "20%", left: "50%", delay: 9}
    ];

    const speed = 1000 / document.getElementById('speedControl').value;

    steps.forEach((step, index) => {
      setTimeout(() => {
        // Clear previous active steps
        document.querySelectorAll('.recursion-step').forEach(el => {
          el.style.opacity = '0';
          setTimeout(() => el.style.display = 'none', 500);
        });
        
        const stepEl = document.createElement('div');
        stepEl.className = 'recursion-step';
        stepEl.textContent = step.text;
        stepEl.style.top = step.top;
        stepEl.style.left = step.left;
        stepEl.style.opacity = '0';
        stepEl.style.display = 'block';
        
        animationDiv.appendChild(stepEl);
        
        setTimeout(() => {
          stepEl.style.opacity = '1';
        }, 50);
      }, step.delay * speed);
    });
  }

  // Initialize with first step visible
  document.addEventListener('DOMContentLoaded', () => {
    const stepEl = document.createElement('div');
    stepEl.className = 'recursion-step';
    stepEl.textContent = "Click 'Play Animation'";
    stepEl.style.top = "50%";
    stepEl.style.left = "50%";
    stepEl.style.transform = "translate(-50%, -50%)";
    stepEl.style.opacity = "1";
    document.getElementById('recursionAnimation').appendChild(stepEl);
  });
</script>