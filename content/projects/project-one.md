+++
title = "SiU App (Restaurant & Hotel Aggregator)"
slug = "project-one"
date = 2025-02-01 # Changed to Feb 2025
description = "A Jetpack Compose Android app for restaurant and hotel services, featuring modular screen design, location services, real-time tracking, and robust offline support."
featuredImage = "/images/siu1.jpg" # Placeholder image, update this to your actual image
demoVideo = "/videos/siu-demo.mp4" # Assuming you'll create a demo video
downloadUrl = "https://www.dropbox.com/Link-to-SiU-App-APK" # Updated Dropbox link for SiU App
+++

<style>
  /* Restaurant & Services Theme (Adjusted from Nutrition to fit new context) */
  :root {
    --primary: #FF5722; /* Deep Orange - Energetic, modern */
    --secondary: #795548; /* Brown - Relates to food/hospitality, earthy */
    --dark: #212121; /* Dark Grey */
    --light: #F5F5F5; /* Light Grey */
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
    border: 1px solid #e0e0e0; /* Lighter border for summary */
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
    border: 1px solid #e0e0e0;
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
    color: #424242; /* Darker grey for readability */
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
    border: 1px solid #e0e0e0;
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
    box-shadow: 0 4px 6px -1px rgba(255, 87, 34, 0.3); /* Shadow based on primary color */
  }
  .btn-secondary {
    background: white;
    color: var(--primary);
    border: 2px solid var(--primary);
  }
  .btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 10px 15px -3px rgba(255, 87, 34, 0.4);
  }

  /* Demo Video */
  .demo-video {
    margin: 4rem 0;
    border-radius: 16px;
    overflow: hidden;
    box-shadow: 0 25px 50px -12px rgba(0,0,0,0.1);
    border: 1px solid #e0e0e0;
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

  <div class="project-hero ">
    <img src="/images/siu2.jpg" alt="SiU App interface showing restaurant and hotel services" />
  </div>

  <h1 class="project-title">SiU App (Restaurant & Hotel Aggregator)</h1>

  <div class="project-summary">
    The **SiU App** is a meticulously developed Android application, leveraging **Jetpack Compose**, designed to aggregate and streamline **restaurant and hotel services**. It offers a seamless user experience for functionalities like order management, payments, complaint resolution, and real-time logistics tracking for businesses and customers alike.
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


  <h2>✨ Key Features & Service Enhancements</h2>
  <div class="features-grid">
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M22 17H2a4 4 0 0 1-4-4V3a4 4 0 0 1 4-4h16a4 4 0 0 1 4 4v10a4 4 0 0 1-4 4z"></path><line x1="12" y1="18" x2="12" y2="23"></line><line x1="7" y1="23" x2="17" y2="23"></line></svg> Modular Service Structure</h3>
      <p class="feature-description">Designed with a **modular screen structure** to efficiently handle diverse functionalities, including complaints, delivery settings, payments, and order management.</p>
    </div>
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 21.7C17.3 17 22 13.5 22 10a7 7 0 1 0-14 0c0 3.5 4.7 7 10 11.7zM12 12a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"></path></svg> Integrated Location Services</h3>
      <p class="feature-description">Integrated **Google Play Location Services** and **Accompanist Permissions** for robust, privacy-compliant location tracking, essential for deliveries and services.</p>
    </div>
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M21 12.79A9 9 0 1 1 11.21 3 7 7 0 0 0 21 12.79z"></path></svg> Dynamic Theme Switching</h3>
      <p class="feature-description">Features a user-friendly **dark and light theme switcher**, providing enhanced accessibility and allowing interface customization based on user preference.</p>
    </div>
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M3 3v18h18V3H3zm8 15v-6h2v6h-2zm-4 0V9h2v9H7zm8 0v-9h2v9h-2z"></path></svg> Restaurant Management Interface</h3>
      <p class="feature-description">Developed a comprehensive interface for restaurants to manage menus, reservations, and access **real-time order tracking**, optimizing operations.</p>
    </div>
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M10 18v-6l-2.5 2.5L7 13l5-5 5 5-1.5 1.5L14 12v6"></path></svg> Logistics & Rider Tracking</h3>
      <p class="feature-description">Includes a dedicated **logistics module for efficient rider tracking** and robust supply chain management, ensuring timely deliveries and smooth operations.</p>
    </div>
    <div class="feature-card">
      <h3><svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M2 13.1V7A2 2 0 0 1 4 5h16a2 2 0 0 1 2 2v6.1M22 13.1V17a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2v-3.9"></path><rect x="6" y="8" width="12" height="7" rx="1"></rect></svg> Offline Data Persistence</h3>
      <p class="feature-description">Integrated **Room Database** for seamless offline data persistence, ensuring a smooth and uninterrupted user experience even without network connectivity.</p>
    </div>
  </div>

  <div class="code-block">
    <span class="code-comment">// Kotlin: Example of a Room Database entity for an order</span><br>
    <span class="code-keyword">@Entity</span>(<span class="code-keyword">tableName</span> = <span class="code-string">"orders"</span>)<br>
    <span class="code-keyword">data class</span> <span class="code-type">OrderEntity</span>(<br>
    &nbsp;&nbsp;&nbsp;&nbsp;<span class="code-keyword">@PrimaryKey</span>(<span class="code-keyword">autoGenerate</span> = <span class="code-keyword">true</span>)<br>
    &nbsp;&nbsp;&nbsp;&nbsp;<span class="code-keyword">val</span> orderId: <span class="code-type">Int</span> = <span class="code-number">0</span>,<br>
    &nbsp;&nbsp;&nbsp;&nbsp;<span class="code-keyword">val</span> restaurantName: <span class="code-type">String</span>,<br>
    &nbsp;&nbsp;&nbsp;&nbsp;<span class="code-keyword">val</span> customerName: <span class="code-type">String</span>,<br>
    &nbsp;&nbsp;&nbsp;&nbsp;<span class="code-keyword">val</span> totalAmount: <span class="code-type">Double</span>,<br>
    &nbsp;&nbsp;&nbsp;&nbsp;<span class="code-keyword">val</span> status: <span class="code-type">String</span><br>
    )<br>
    <br>
    <span class="code-comment">// Kotlin: Requesting location permissions with Accompanist</span><br>
    <span class="code-keyword">val</span> locationPermissionState = <span class="code-function">rememberPermissionState</span>(<span class="code-type">Manifest.permission.ACCESS_FINE_LOCATION</span>)<br>
    <span class="code-keyword">if</span> (!locationPermissionState.status.isGranted) {<br>
    &nbsp;&nbsp;&nbsp;&nbsp;<span class="code-function">Button</span>(<span class="code-keyword">onClick</span> = { locationPermissionState.launchPermissionRequest() }) {<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="code-function">Text</span>(<span class="code-string">"Grant Location"</span>)<br>
    &nbsp;&nbsp;&nbsp;&nbsp;}<br>
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
      <p>Accompanist Permissions</p>
    </div>
    <div class="tech-card">
      <h3>Data & Services</h3>
      <p><strong>Room Database</strong> (Offline Data Persistence)</p>
      <p><strong>Google Play Location Services</strong></p>
      <p>Retrofit (for API calls - implied for management features)</p>
      <p>JSON (Data Exchange)</p>
    </div>
    <div class="tech-card">
      <h3>Testing & Performance</h3>
      <p>JUnit</p>
      <p>Espresso</p>
      <p>Compose Test Library</p>
      <p>Optimized for SDK 35</p>
    </div>
    <div class="tech-card">
      <h3>Architecture & UX</h3>
      <p>Clean MVVM Architecture</p>
      <p>Modular Screen Design</p>
      <p>Dark/Light Theme Support</p>
      <p>Material3 Design Guidelines</p>
    </div>
  </div>

  <h2>🎯 Who It's For & Why You'll Love It</h2>
  <ul>
    <li><strong>Restaurant Owners & Managers:</strong> Gain real-time control over menus, reservations, and orders with a dedicated management interface.</li>
    <li><strong>Hotel Service Providers:</strong> Streamline service requests, complaints, and guest interactions efficiently.</li>
    <li><strong>Delivery Riders:</strong> Utilize intuitive logistics and tracking features for optimized routes and timely deliveries.</li>
    <li><strong>Customers:</strong> Enjoy a seamless and intuitive experience for ordering food, booking services, and tracking deliveries.</li>
    <li><strong>Modern & Adaptive:</strong> Benefit from a cutting-edge **Jetpack Compose UI** that adapts to your preferences with dark/light themes and follows the latest Material3 guidelines.</li>
    <li><strong>Reliable & User-Friendly:</strong> With **offline capabilities** and robust testing, the app delivers a smooth and dependable experience.</li>
  </ul>

  <div class="btn-group">
    <a href="https://www.dropbox.com/Link-to-SiU-App-APK" class="btn btn-primary" target="_blank">
      <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" style="margin-right:8px;">
        <path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"></path>
        <polyline points="7 10 12 15 17 10"></polyline>
        <line x1="12" y1="15" x2="12" y2="3"></line>
      </svg>
      Download APK
    </a>
    <a href="/videos/siu-demo.mp4" class="btn btn-secondary" target="_blank">
      <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" style="margin-right:8px;">
        <polygon points="23 7 16 12 23 17 23 7"></polygon>
        <rect x="1" y="5" width="15" height="14" rx="2" ry="2"></rect>
      </svg>
      Watch Demo
    </a>
  </div>

</div>