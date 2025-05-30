+++
title = "GCPU – Android Task Manager"
slug = "project-seven"
date = 2025-01-01
description = "Real-time Android task manager for monitoring CPU, GPU, and process activity with performance insights."
featuredImage = "/images/desc-gcpu-hero.png"
demoVideo = "/videos/desc-gcpu-demo.mp4"
downloadUrl = "https://www.dropbox.com/link-to-apk"
+++

<style>
  /* Modern Performance Theme */
  :root {
    --primary: #8b5cf6; /* Violet */
    --secondary: #22d3ee; /* Cyan */
    --dark: #0f172a;
    --light: #f8fafc;
    --code-bg: #1f2937;
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

  /* Performance Metrics */
  .metrics-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 1.5rem;
    margin: 2rem 0;
  }
  .metric-card {
    background: white;
    border-radius: 8px;
    padding: 1.5rem;
    box-shadow: 0 4px 6px -1px rgba(0,0,0,0.05);
    border: 1px solid #e2e8f0;
    transition: all 0.3s ease;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
  }
  .metric-card:hover {
    transform: translateY(-3px);
    box-shadow: 0 10px 15px -3px rgba(0,0,0,0.1);
    border-color: var(--primary);
  }
  .metric-card h3 {
    margin-top: 0;
    color: var(--primary);
    font-size: 1.25rem;
    display: flex;
    align-items: center;
    gap: 0.5rem;
  }
  .metric-value {
    font-size: 2rem;
    font-weight: bold;
    color: var(--dark);
    margin-top: 1rem;
  }
  .metric-description {
    font-size: 0.9rem;
    color: #64748b;
    margin-top: 0.5rem;
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
    box-shadow: 0 4px 6px -1px rgba(139, 92, 246, 0.3);
  }
  .btn-secondary {
    background: white;
    color: var(--primary);
    border: 2px solid var(--primary);
  }
  .btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 10px 15px -3px rgba(139, 92, 246, 0.4);
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
    .metrics-grid, .tech-grid { grid-template-columns: 1fr; }
    .btn-group { flex-direction: column; }
  }
</style>

<div class="project-detail">

  <div class="project-hero">
    <img src="{{ .Params.featuredImage | relURL }}" alt="desc->GCPU app interface showing CPU and GPU metrics" />
  </div>

  <h1 class="project-title">Tech Talk</h1>

  <div class="project-summary">
    **desc->GCPU** is a cutting-edge Android Task Manager, empowering users with real-time insights into their device's CPU, GPU, and task activity. It provides a comprehensive overview of system performance and resource consumption.
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


  <h2>📊 Key Features & Performance Monitoring</h2>
  <div class="metrics-grid">
    <div class="metric-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="2" y="2" width="20" height="20" rx="2" ry="2"></rect><line x1="8" y1="6" x2="8" y2="18"></line><line x1="16" y1="6" x2="16" y2="18"></line><line x1="2" y1="12" x2="22" y2="12"></line></svg> Real-time CPU Usage</h3>
      <p class="metric-description">Monitors overall and per-core CPU utilization by parsing data from <code>/proc/stat</code> and <code>dumpsys cpuinfo</code>.</p>
    </div>
    <div class="metric-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"></path></svg> Dynamic GPU Metrics</h3>
      <p class="metric-description">Integrates with **Snapdragon Profiler** via <code>sdpcli</code> to collect and display crucial GPU performance metrics.</p>
    </div>
    <div class="metric-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2"></path><path d="M12 19V2"></path><path d="M8 6h8"></path></svg> Active Process Monitoring</h3>
      <p class="metric-description">Lists all running system processes with their respective CPU, memory, and battery consumption.</p>
    </div>
    <div class="metric-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><line x1="10" y1="9" x2="10" y2="9"></line></svg> Resource Usage Alerts</h3>
      <p class="metric-description">Monitors battery statistics and provides configurable alerts for high CPU/GPU usage to optimize device longevity.</p>
    </div>
  </div>

  <div class="code-block">
    <span class="code-comment">// Example of parsing CPU usage from /proc/stat</span><br>
    <span class="code-keyword">fun</span> <span class="code-type">readCpuStats</span>(): <span class="code-type">Map</span><<span class="code-type">String</span>, <span class="code-type">Long</span>> {<br>
    &nbsp;&nbsp;<span class="code-keyword">val</span> procStat = <span class="code-type">File</span>("/proc/stat").<span class="code-type">readText</span>()<br>
    &nbsp;&nbsp;<span class="code-keyword">val</span> lines = procStat.<span class="code-type">split</span>("\n")<br>
    &nbsp;&nbsp;<span class="code-keyword">val</span> cpuLine = lines[0].<span class="code-type">substringAfter</span>("cpu ")<br>
    &nbsp;&nbsp;<span class="code-keyword">val</span> cpuTimes = cpuLine.<span class="code-type">trim</span>().<span class="code-type">split</span>(" ").<span class="code-type">map</span> { <span class="code-type">it</span>.<span class="code-type">toLong</span>() }<br>
    &nbsp;&nbsp;<span class="code-keyword">return</span> <span class="code-type">mapOf</span>(<br>
    &nbsp;&nbsp;&nbsp;&nbsp;"user" <span class="code-keyword">to</span> cpuTimes[0],<br>
    &nbsp;&nbsp;&nbsp;&nbsp;"nice" <span class="code-keyword">to</span> cpuTimes[1],<br>
    &nbsp;&nbsp;&nbsp;&nbsp;"system" <span class="code-keyword">to</span> cpuTimes[2]<br>
    &nbsp;&nbsp;)<br>
    }
  </div>

  <h2>🛠 Technology Stack</h2>
  <div class="tech-grid">
    <div class="tech-card">
      <h3>Framework</h3>
      <p><strong>Kotlin</strong></p>
      <p><strong>Jetpack Compose</strong></p>
      <p>Material Design 3</p>
    </div>
    <div class="tech-card">
      <h3>Performance Tools</h3>
      <p><strong>ADB Shell</strong></p>
      <p><strong>Snapdragon Profiler</strong> (via <code>sdpcli</code>)</p>
      <p><code>/proc/stat</code> & <code>dumpsys cpuinfo</code> parsing</p>
    </div>
    <div class="tech-card">
      <h3>Architecture & Data</h3>
      <p><strong>Jetpack DataStore</strong> (preferences)</p>
      <p>Compose Navigation</p>
      <p>Real-time data streams</p>
    </div>
    <div class="tech-card">
      <h3>Optimization</h3>
      <p>Optimized for **Android SDK 35**</p>
      <p>Responsive UI</p>
      <p>Efficient resource parsing</p>
    </div>
  </div>

  <h2>✨ Differentiating Features</h2>
  <ul>
    <li><strong>Smart Toggles:</strong> Enable/disable GPU tracking on demand for optimal resource management.</li>
    <li><strong>User-Friendly UI:</strong> Presents complex system data in a compact, intuitive, and accessible interface adhering to Material3 guidelines.</li>
    <li><strong>Deep Dive Metrics:</strong> Provides granular CPU data from low-level system files and `dumpsys`.</li>
    <li><strong>Actionable Insights:</strong> Highlights CPU/GPU-accelerated programs and background processes, aiding user investigation and performance tuning.</li>
    <li><strong>Persistent Settings:</strong> Utilizes Jetpack DataStore to save user preferences and alert configurations seamlessly.</li>
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