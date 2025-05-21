+++
title = "AIZeroTrust – Cybersecurity Dashboard"
slug = "project-three"
date = 2024-11-15
description = "AI-powered Zero Trust security platform with real-time threat detection"
featuredImage = "/images/zerotrust.jpeg"
demoVideo = "/videos/zerotrust-demo.mp4"
websiteUrl = "https://zerotrustappazadxx77.netlify.app/"
+++

<style>
  /* Security-Focused Theme */
  :root {
    --primary: #8b5cf6;
    --secondary: #ec4899;
    --danger: #ef4444;
    --dark: #1e293b;
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
    background: #f8fafc;
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

  /* Threat Level Indicator */
  .threat-level {
    display: flex;
    align-items: center;
    margin: 1.5rem 0;
  }
  .threat-meter {
    height: 10px;
    border-radius: 5px;
    background: linear-gradient(90deg, #10b981, #f59e0b, var(--danger));
    flex-grow: 1;
    margin: 0 1rem;
    position: relative;
  }
  .threat-pointer {
    position: absolute;
    width: 2px;
    height: 16px;
    background: var(--dark);
    top: -3px;
    left: 30%; /* Dynamic value */
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
    border-radius: 50px;
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
    box-shadow: 0 25px 50px -12px rgba(0,0,0,0.15);
    border: 1px solid #e2e8f0;
  }

  /* Responsive */
  @media (max-width: 768px) {
    .project-title { font-size: 2.25rem; }
    .tech-grid { grid-template-columns: 1fr; }
    .btn-group { flex-direction: column; }
  }
</style>

<div class="project-detail">

  

  <h1 class="project-title">Tech Talk</h1>

  <div class="project-summary">
    AIZeroTrust redefines cybersecurity with real-time threat analysis and Zero Trust architecture, combining AI-driven detection with intuitive visualization for enterprise-grade protection.
  </div>
  <div class="project-hero">
    <img src="/images/zerotrust1.jpeg" alt="AIZeroTrust security dashboard interface" />
  </div>

  <div class="threat-level">
    <span>Current Threat Level:</span>
    <div class="threat-meter">
      <div class="threat-pointer"></div>
    </div>
    <strong>Medium Risk</strong>
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


  <h2>🔒 Core Security Features</h2>
  <ul>
    <li><strong>Real-Time Threat Detection:</strong> AI-driven analysis of network activities and potential breaches</li>
    <li><strong>Threat Timeline Visualization:</strong> Interactive Chart.js timelines of security events</li>
    <li><strong>API Integrations:</strong> AbuseIPDB and Safe Browsing Checker for malicious activity prevention</li>
    <li><strong>VirusTotal Scanner:</strong> Seamless malware analysis integration</li>
    <li><strong>Zero Trust Architecture:</strong> Strict authentication and session validation protocols</li>
  </ul>

  <h2>🖥 User Experience Components</h2>
  <ul>
    <li><strong>Real-Time Activity Feed:</strong> Live updates of system events and alerts</li>
    <li><strong>Analytics Dashboard:</strong> Comprehensive metrics visualization with Chart.js</li>
    <li><strong>AI Assistants:</strong> ChatGPT and HuggingFace bots for automated support</li>
    <li><strong>Modular UI:</strong> Custom carousels, modals, and breadcrumbs for navigation</li>
    <li><strong>Personalized Settings:</strong> Configurable notification and security preferences</li>
  </ul>

  <h2>🛠 Technology Implementation</h2>
  <div class="tech-grid">
    <div class="tech-card">
      <h3>Frontend</h3>
      <p>React + Redux with Vite optimization</p>
    </div>
    <div class="tech-card">
      <h3>Visualization</h3>
      <p>Chart.js and Framer Motion animations</p>
    </div>
    <div class="tech-card">
      <h3>Backend</h3>
      <p>Express.js API services</p>
    </div>
    <div class="tech-card">
      <h3>Security APIs</h3>
      <p>AbuseIPDB + VirusTotal integration</p>
    </div>
    <div class="tech-card">
      <h3>AI Components</h3>
      <p>ChatGPT and HuggingFace bots</p>
    </div>
    <div class="tech-card">
      <h3>Quality Assurance</h3>
      <p>Jest + React Testing Library</p>
    </div>
  </div>

  <h2>🛡️ Security Challenges</h2>
  <ul>
    <li><strong>Real-Time Threat Processing:</strong> Optimized event processing pipelines</li>
    <li><strong>Data Sensitivity:</strong> Implemented strict Zero Trust data access protocols</li>
    <li><strong>API Rate Limiting:</strong> Managed third-party API quotas effectively</li>
    <li><strong>User Authentication:</strong> Developed secure session management</li>
  </ul>

  <div class="btn-group">
    <a href="https://github.com/ReyXX777/ZeroTrustApp" class="btn btn-primary" target="_blank">
      <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" style="margin-right:8px;">
        <path d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 0 0-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0 0 20 4.77 5.07 5.07 0 0 0 19.91 1S18.73.65 16 2.48a13.38 13.38 0 0 0-7 0C6.27.65 5.09 1 5.09 1A5.07 5.07 0 0 0 5 4.77a5.44 5.44 0 0 0-1.5 3.78c0 5.42 3.3 6.61 6.44 7A3.37 3.37 0 0 0 9 18.13V22"></path>
      </svg>
      View Source Code
    </a>
    <a href="{{ .Params.websiteUrl }}" class="btn btn-secondary" target="_blank">
      <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" style="margin-right:8px;">
        <path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path>
        <polyline points="15 3 21 3 21 9"></polyline>
        <line x1="10" y1="14" x2="21" y2="3"></line>
      </svg>
      Live Demo
    </a>
  </div>
  

</div>

<script>
  // Animate threat level indicator
  document.addEventListener('DOMContentLoaded', () => {
    const threatPointer = document.querySelector('.threat-pointer');
    // Simulate threat level change (30% = low, 60% = medium, 90% = high)
    threatPointer.style.left = '65%';
    
    // Dynamic threat level text
    const threatText = document.querySelector('.threat-level strong');
    threatText.textContent = 'Medium Risk';
    threatText.style.color = '#f59e0b';
  });
</script>