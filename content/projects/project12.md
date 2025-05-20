+++
title = "PrepBoard – Exam & Interview Preparation App"
slug = "project12"
date = 2025-04-01
description = "Comprehensive Android app for exam and interview prep with AI-assisted tools like OCR, spaced repetition flashcards, and speech-to-text."
featuredImage = "/images/prep1.jpg"
demoVideo = "/videos/prepboard-demo.mp4"
downloadUrl = "https://www.dropbox.com/link-to-apk"
+++

<style>
  /* Learning & Productivity Theme */
  :root {
    --primary: #059669; /* Emerald Green */
    --secondary: #3b82f6; /* Blue */
    --dark: #1f2937;
    --light: #f9fafb;
    --code-bg: #111827; /* Darker slate for code */
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

  .project-summary {
    font-size: 1.25rem;
    padding: 1.5rem;
    background: var(--light);
    border-left: 4px solid var(--primary);
    border-radius: 0 8px 8px 0;
    margin-bottom: 3rem;
    border: 1px solid #e2e8f0;
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
    box-shadow: 0 4px 6px -1px rgba(5, 150, 105, 0.3);
  }
  .btn-secondary {
    background: white;
    color: var(--primary);
    border: 2px solid var(--primary);
  }
  .btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 10px 15px -3px rgba(5, 150, 105, 0.4);
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
    .features-grid, .tech-grid { grid-template-columns: 1fr; }
    .btn-group { flex-direction: column; }
  }
</style>

<div class="project-detail">

  <div class="project-hero">
    <img src="/images/prep1.jpg" alt="PrepBoard app interface showing study features" />
  </div>

  <h1 class="project-title">PrepBoard – Exam & Interview Preparation App</h1>

  <div class="project-summary">
    **PrepBoard** is a modular **Android application** designed to provide comprehensive tools for **exam and interview preparation**. It leverages **AI-assisted features** and a **multi-microservice backend** to offer a holistic learning experience for students and aspirants.
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


  <h2>✨ Key Features & Learning Tools</h2>
  <div class="features-grid">
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14.5 4L20 9.5V20a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h8.5L14.5 4z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><line x1="10" y1="9" x2="10" y2="9"></line></svg> OCR for Note Digitization</h3>
      <p class="feature-description">Utilizes **Tesseract.js** via a backend to extract text from images, allowing users to digitize handwritten or printed study notes.</p>
    </div>
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="3" y="3" width="18" height="18" rx="2" ry="2"></rect><line x1="12" y1="18" x2="12" y2="21"></line><line x1="12" y1="3" x2="12" y2="6"></line><line x1="21" y1="12" x2="18" y2="12"></line><line x1="3" y1="12" x2="6" y2="12"></line></svg> Spaced Repetition Flashcards</h3>
      <p class="feature-description">Features both offline and online flashcard systems, powered by **Anki-based spaced repetition logic** to optimize memorization.</p>
    </div>
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4 15s1-1 4-1 5 2 8 2 4-1 4-1V3s-1 1-4 1-5-2-8-2-4 1-4 1v12z"></path><line x1="12" y1="20" x2="12" y2="22"></line><line x1="16" y1="20" x2="16" y2="22"></line><line x1="8" y1="20" x2="8" y2="22"></line></svg> Medical Dictionary Integration</h3>
      <p class="feature-description">Includes a custom medical dictionary integrated with **Merriam-Webster's API** for specialized terminology lookups, crucial for healthcare students.</p>
    </div>
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 2a3 3 0 0 0-3 3v7a3 3 0 0 0 6 0V5a3 3 0 0 0-3-3z"></path><path d="M19 10v2a7 7 0 0 1-14 0v-2"></path><line x1="12" y1="19" x2="12" y2="22"></line></svg> Speech-to-Text Search</h3>
      <p class="feature-description">Integrated with a **Vosk speech-to-text backend** to convert spoken queries into searchable text, enabling hands-free navigation and study.</p>
    </div>
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg> Audio Content Conversion</h3>
      <p class="feature-description">Supports audio content conversion using a lightweight **FFmpeg-Flask backend** for efficient media preparation and playback.</p>
    </div>
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M2 3h6a4 4 0 0 1 4 4v14a3 3 0 0 0-3-3H2z"></path><path d="M22 3h-6a4 4 0 0 0-4 4v14a3 3 0 0 1 3-3h7z"></path></svg> Persistent User Data</h3>
      <p class="feature-description">Utilizes **Jetpack DataStore** for persisting user preferences, revision tracking, and offline content locally, ensuring a seamless experience.</p>
    </div>
  </div>

  <div class="code-block">
    <span class="code-comment">// Kotlin: Example of fetching data with Retrofit</span><br>
    <span class="code-keyword">interface</span> <span class="code-type">FlashcardApiService</span> {<br>
    &nbsp;&nbsp;<span class="code-keyword">@GET</span>(<span class="code-string">"flashcards"</span>)<br>
    &nbsp;&nbsp;<span class="code-keyword">suspend</span> <span class="code-keyword">fun</span> <span class="code-type">getFlashcards</span>(): <span class="code-type">List</span><<span class="code-type">Flashcard</span>><br>
    }<br>
    <br>
    <span class="code-comment"># Python (FastAPI): Example for spaced repetition logic</span><br>
    <span class="code-keyword">@app.post</span>(<span class="code-string">"/update_repetition"</span>)<br>
    <span class="code-keyword">async def</span> <span class="code-type">update_repetition</span>(item: <span class="code-type">FlashcardUpdate</span>):<br>
    &nbsp;&nbsp;<span class="code-comment"># Logic to update Anki-like spaced repetition intervals</span><br>
    &nbsp;&nbsp;<span class="code-keyword">pass</span><br>
  </div>

  <h2>🛠 Comprehensive Technology Stack</h2>
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
      <h3>Backend Microservices</h3>
      <p><strong>FastAPI</strong> (Python)</p>
      <p><strong>Flask</strong> (Python)</p>
      <p><strong>Express.js</strong> (Node.js)</p>
      <p><strong>Docker</strong> (Containerization)</p>
      <p><strong>Railway</strong> (Deployment)</p>
    </div>
    <div class="tech-card">
      <h3>AI & Media Processing</h3>
      <p><strong>Tesseract.js</strong> (OCR)</p>
      <p><strong>Vosk</strong> (Speech-to-Text)</p>
      <p><strong>FFmpeg</strong> (Audio Conversion)</p>
    </div>
    <div class="tech-card">
      <h3>Core Logic & APIs</h3>
      <p><strong>Anki-based Logic</strong> (Spaced Repetition)</p>
      <p>Merriam-Webster's API</p>
      <p>Retrofit + Gson</p>
      <p>OCRDolphin (Express)</p>
      <p>DolphinFc (Express)</p>
    </div>
  </div>

  <h2>🎯 Designed For & Optimized Experience</h2>
  <ul>
    <li><strong>Medical Students:</strong> Specialized tools like the medical dictionary enhance learning of complex terminology.</li>
    <li><strong>Interview Aspirants:</strong> Efficient flashcard and note digitization features aid in systematic preparation.</li>
    <li><strong>General Learners:</strong> Anyone seeking AI-assisted productivity tools for enhanced study habits and memory retention.</li>
    <li><strong>Clean Architecture:</strong> Developed with modularity and clean architectural principles, ensuring maintainability and scalability.</li>
    <li><strong>Centralized Dependencies:</strong> Manages dependencies efficiently using `libs.versions.toml` for streamlined development.</li>
    <li><strong>Responsive & Accessible UI:</strong> Optimized for Android SDK 35, featuring a responsive and accessible user interface built with Material3.</li>
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
    <a href="/videos/prepboard-demo.mp4" class="btn btn-secondary" target="_blank">
      <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" style="margin-right:8px;">
        <polygon points="23 7 16 12 23 17 23 7"></polygon>
        <rect x="1" y="5" width="15" height="14" rx="2" ry="2"></rect>
      </svg>
      Watch Demo
    </a>
  </div>

</div>