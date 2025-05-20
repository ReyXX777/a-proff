+++
title = "KYC – Know Your Calories (Nutrition Tracker)"
slug = "project14"
date = 2025-03-01
description = "A comprehensive Android nutrition tracking app with real-time food data, barcode scanning, offline logging, and personalized diet management."
featuredImage = "/images/kyclink.jpg"
demoVideo = "/videos/kyc-demo.mp4"
downloadUrl = "https://www.dropbox.com/link-to-apk"
+++

<style>
  /* Nutrition & Health Theme */
  :root {
    --primary: #4CAF50; /* Green - Represents health, freshness */
    --secondary: #2196F3; /* Blue - Represents clarity, technology */
    --dark: #263238; /* Dark Slate Grey */
    --light: #ECEFF1; /* Light Blue Grey */
    --code-bg: #37474F; /* Darker blue-grey for code */
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
    border: 1px solid #cfd8dc; /* Lighter border for summary */
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
    border: 1px solid #cfd8dc;
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
    color: #546E7A; /* Darker grey for readability */
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
    border: 1px solid #cfd8dc;
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
    box-shadow: 0 4px 6px -1px rgba(76, 175, 80, 0.3); /* Shadow based on primary color */
  }
  .btn-secondary {
    background: white;
    color: var(--primary);
    border: 2px solid var(--primary);
  }
  .btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 10px 15px -3px rgba(76, 175, 80, 0.4);
  }

  /* Demo Video */
  .demo-video {
    margin: 4rem 0;
    border-radius: 16px;
    overflow: hidden;
    box-shadow: 0 25px 50px -12px rgba(0,0,0,0.1);
    border: 1px solid #cfd8dc;
  }

  /* Code Block */
  .code-block {
    background: var(--code-bg);
    color: #CFD8DC; /* Light text for dark background */
    padding: 1.5rem;
    border-radius: 8px;
    font-family: 'Fira Code', monospace;
    overflow-x: auto;
    margin: 1.5rem 0;
  }
  .code-keyword { color: #82B1FF; } /* Light blue for keywords */
  .code-type { color: #C5E1A5; } /* Light green for types */
  .code-string { color: #FFF176; } /* Yellow for strings */
  .code-comment { color: #90A4AE; } /* Grey for comments */
  .code-number { color: #FFCC80; } /* Orange for numbers */
  .code-function { color: #B39DDB; } /* Purple for function names */

  /* Responsive */
  @media (max-width: 768px) {
    .project-title { font-size: 2.25rem; }
    .features-grid, .tech-grid { grid-template-columns: 1fr; }
    .btn-group { flex-direction: column; }
  }
</style>

<div class="project-detail">

  <div class="project-hero">
    <img src="/images/kyclink1.jpg" alt="KYC - Know Your Calories app interface showing food tracking" />
  </div>

  <h1 class="project-title">KYC – Know Your Calories (Nutrition Tracker)</h1>

  <div class="project-summary">
    **KYC – Know Your Calories** is a robust **Android application** designed for effortless **nutritional tracking**. It offers real-time food data, convenient **barcode scanning**, and comprehensive logging capabilities, empowering users to make informed dietary choices and manage their health goals effectively.
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


  <h2>✨ Key Features & Health Tools</h2>
  <div class="features-grid">
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm-1 15h2v-6h-2v6zm0-8h2V7h-2v2z"></path></svg> Real-time Nutrition Data</h3>
      <p class="feature-description">Integrates a powerful **Nutrition API** to instantly fetch detailed information on calories, macronutrients, and micronutrients for a vast food database.</p>
    </div>
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="2" y="7" width="20" height="10" rx="2" ry="2"></rect><line x1="8" y1="12" x2="8" y2="12"></line><line x1="16" y1="12" x2="16" y2="12"></line><line x1="12" y1="7" x2="12" y2="17"></line></svg> Barcode Scanning</h3>
      <p class="feature-description">Effortlessly scan food packaging barcodes to get **instant nutritional breakdowns**, streamlining food logging.</p>
    </div>
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line></svg> Daily Calorie Log with Offline Support</h3>
      <p class="feature-description">Maintain a detailed daily calorie log with local persistence via **Room Database**, allowing offline tracking and historical data analysis.</p>
    </div>
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="8" x2="12" y2="12"></line><line x1="12" y1="16" x2="12" y2="16"></line></svg> Interactive Food Search & Filtering</h3>
      <p class="feature-description">Utilize an advanced food search with robust filtering and sorting options, making meal planning and food discovery simple.</p>
    </div>
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"></path></svg> Personalized Diet Tracking (Firebase)</h3>
      <p class="feature-description">Secure user authentication with **Firebase Auth** enables personalized diet tracking and data synchronization across devices.</p>
    </div>
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path><polyline points="22 6 12 13 2 6"></polyline></svg> Modern UI with Material3</h3>
      <p class="feature-description">Features a sleek and intuitive user interface built with **Jetpack Compose** and **Material3 theming**, supporting dark mode and enhanced accessibility.</p>
    </div>
  </div>

  <div class="code-block">
    <span class="code-comment">// Kotlin: Example of fetching food data with Retrofit and sealed class for result handling</span><br>
    <span class="code-keyword">sealed class</span> <span class="code-type">Result</span><<span class="code-type">T</span>> {<br>
    &nbsp;&nbsp;&nbsp;&nbsp;<span class="code-keyword">data class</span> <span class="code-type">Success</span><<span class="code-type">T</span>>(<span class="code-keyword">val</span> data: <span class="code-type">T</span>) : <span class="code-type">Result</span><<span class="code-type">T</span>>()<br>
    &nbsp;&nbsp;&nbsp;&nbsp;<span class="code-keyword">data class</span> <span class="code-type">Error</span>(<span class="code-keyword">val</span> exception: <span class="code-type">Exception</span>) : <span class="code-type">Result</span><<span class="code-type">T</span>>()<br>
    }<br>
    <br>
    <span class="code-keyword">interface</span> <span class="code-type">NutritionApiService</span> {<br>
    &nbsp;&nbsp;<span class="code-keyword">@GET</span>(<span class="code-string">"food-details"</span>)<br>
    &nbsp;&nbsp;<span class="code-keyword">suspend</span> <span class="code-keyword">fun</span> <span class="code-type">getFoodDetails</span>(<span class="code-keyword">@Query</span>(<span class="code-string">"query"</span>) query: <span class="code-type">String</span>): <span class="code-type">FoodResponse</span><br>
    }<br>
  </div>

  <h2>🛠 Robust Technology Stack</h2>
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
      <h3>Data & API Integration</h3>
      <p><strong>Nutrition API</strong> (Real-time Food Data)</p>
      <p><strong>Retrofit</strong> (HTTP Client with Sealed Classes)</p>
      <p><strong>Room Database</strong> (Offline Data Persistence)</p>
      <p>JSON (Data Serialization)</p>
    </div>
    <div class="tech-card">
      <h3>Authentication & UI/UX</h3>
      <p><strong>Firebase Auth</strong> (User Authentication)</p>
      <p>Barcode Scanner Library</p>
      <p>Modern UI/UX Principles</p>
      <p>Animated Transitions</p>
    </div>
    <div class="tech-card">
      <h3>Development Practices</h3>
      <p>Clean MVVM Architecture</p>
      <p>Centralized Dependencies (`libs.versions.toml`)</p>
      <p>Optimized for SDK 35</p>
      <p>Error Handling Best Practices</p>
    </div>
  </div>

  <h2>🎯 Who It's For & Why You'll Love It</h2>
  <ul>
    <li><strong>Health Enthusiasts:</strong> Ideal for anyone looking to track their diet, understand food intake, and manage calorie goals effectively.</li>
    <li><strong>Fitness Trainers & Nutritionists:</strong> A practical tool for clients to log their meals and gain insights into their eating habits.</li>
    <li><strong>Busy Individuals:</strong> Barcode scanning and quick search make logging food fast and convenient, even on the go.</li>
    <li><strong>Modern & Intuitive:</strong> Enjoy a smooth, responsive experience with a beautiful Material3 design and fluid animations.</li>
    <li><strong>Data-Driven Decisions:</strong> Leverage accurate, real-time nutritional data to make informed choices about your diet.</li>
    <li><strong>Reliable & Offline-Friendly:</strong> Your data is always accessible, even without an internet connection, thanks to Room Database.</li>
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
    <a href="/videos/kyc-demo.mp4" class="btn btn-secondary" target="_blank">
      <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" style="margin-right:8px;">
        <polygon points="23 7 16 12 23 17 23 7"></polygon>
        <rect x="1" y="5" width="15" height="14" rx="2" ry="2"></rect>
      </svg>
      Watch Demo
    </a>
  </div>

</div>