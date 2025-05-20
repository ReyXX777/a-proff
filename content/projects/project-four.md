+++
title = "SouLana – Solana Blockchain Platform"
slug = "project-four"
date = 2025-01-01
description = "The flattest Solana ecosystem for NFT auctions, token swaps, and real estate tokenization"
featuredImage = "/images/soulana.jpeg"
demoVideo = "/videos/soulana-demo.mp4"
websiteUrl = "https://soulana-azadxx77.netlify.app/"
+++

<style>
  /* Blockchain Theme */
  :root {
    --primary: #00ffbd; /* Solana teal */
    --secondary: #9945ff; /* Solana purple */
    --dark: #0f0f1a;
    --light: #f8f9ff;
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
    text-shadow: 0 2px 10px rgba(0, 255, 189, 0.15);
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
    background: rgba(0, 0, 0, 0.03);
    border-left: 4px solid var(--primary);
    border-radius: 0 8px 8px 0;
    margin-bottom: 3rem;
    border: 1px solid rgba(0, 0, 0, 0.05);
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

  /* Blockchain Activity Indicator */
  .blockchain-activity {
    display: flex;
    align-items: center;
    margin: 1.5rem 0;
    padding: 1rem;
    background: rgba(0, 0, 0, 0.02);
    border-radius: 8px;
  }
  .activity-meter {
    height: 8px;
    border-radius: 4px;
    background: linear-gradient(90deg, var(--primary), var(--secondary));
    flex-grow: 1;
    margin: 0 1rem;
    position: relative;
    overflow: hidden;
  }
  .activity-bar {
    position: absolute;
    width: 100%;
    height: 100%;
    background: linear-gradient(90deg, 
      rgba(255,255,255,0.8), 
      rgba(255,255,255,0.2));
    animation: blockchainPulse 2s infinite;
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
    box-shadow: 0 4px 20px -5px rgba(0,0,0,0.05);
    border: 1px solid rgba(0, 0, 0, 0.05);
    transition: all 0.3s ease;
    position: relative;
    overflow: hidden;
  }
  .tech-card:before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 3px;
    height: 100%;
    background: linear-gradient(to bottom, var(--primary), var(--secondary));
  }
  .tech-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 15px 30px -5px rgba(0,0,0,0.1);
  }
  .tech-card h3 {
    margin-top: 0;
    color: var(--dark);
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
    padding: 0.75rem 2rem;
    border-radius: 8px;
    text-decoration: none;
    font-weight: 600;
    transition: all 0.3s cubic-bezier(0.34, 1.56, 0.64, 1);
  }
  .btn-primary {
    background: linear-gradient(90deg, var(--primary), var(--secondary));
    color: white;
    box-shadow: 0 4px 15px rgba(153, 69, 255, 0.3);
  }
  .btn-secondary {
    background: white;
    color: var(--secondary);
    border: 2px solid var(--secondary);
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05);
  }
  .btn:hover {
    transform: translateY(-3px);
    box-shadow: 0 10px 25px rgba(153, 69, 255, 0.4);
  }

  /* Demo Video */
  .demo-video {
    margin: 4rem 0;
    border-radius: 16px;
    overflow: hidden;
    box-shadow: 0 25px 50px -12px rgba(0,0,0,0.1);
    border: 1px solid rgba(0, 0, 0, 0.05);
    background: black;
  }

  /* Blockchain Animation */
  @keyframes blockchainPulse {
    0% { transform: translateX(-100%); }
    100% { transform: translateX(100%); }
  }

  /* Responsive */
  @media (max-width: 768px) {
    .project-title { font-size: 2.25rem; }
    .tech-grid { grid-template-columns: 1fr; }
    .btn-group { flex-direction: column; }
  }
</style>

<div class="project-detail">

  

  <h1 class="project-title">{{ .Title }}</h1>

  <div class="project-summary">
    SouLana delivers the flattest Solana ecosystem experience with NFT auctions, token swaps, and real estate tokenization - all powered by lightning-fast blockchain technology and intuitive interfaces.
  </div>
  <div class="project-hero">
    <img src="/images/soulanamarket.png" alt="SouLana Platform interface showing NFT marketplace" />
  </div>

  <div class="blockchain-activity">
    <span>Network Activity:</span>
    <div class="activity-meter">
      <div class="activity-bar"></div>
    </div>
    <strong>High Volume</strong>
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


  <h2>🚀 Core Features</h2>
  <ul>
    <li><strong>NFT Auction Platform:</strong> Minting, listing, and bidding with Solana wallet integration</li>
    <li><strong>Real Estate Tokenization:</strong> Fractional ownership and trading of property assets</li>
    <li><strong>Token Swap Interface:</strong> Seamless cryptocurrency exchanges with minimal fees</li>
    <li><strong>Gamification System:</strong> Points, leaderboards, and marketplace incentives</li>
    <li><strong>Community Tools:</strong> Spotlight sections, voting systems, and support chat</li>
  </ul>

  <h2>🔗 Blockchain Integrations</h2>
  <ul>
    <li><strong>Solana SDK:</strong> Custom APIs for transactions and validator interactions</li>
    <li><strong>Web3.js:</strong> Secure wallet connections and blockchain operations</li>
    <li><strong>Smart Contracts:</strong> On-chain logic for auctions and tokenization</li>
    <li><strong>Mobile Wallet Support:</strong> Cross-platform compatibility</li>
  </ul>

  <h2>🛠 Technology Stack</h2>
  <div class="tech-grid">
    <div class="tech-card">
      <h3>Frontend</h3>
      <p>React with Material-UI</p>
      <p>Vite build optimization</p>
    </div>
    <div class="tech-card">
      <h3>Blockchain</h3>
      <p>Solana SDK + Web3.js</p>
      <p>Smart Contracts</p>
    </div>
    <div class="tech-card">
      <h3>Backend</h3>
      <p>GraphQL + Apollo Client</p>
      <p>Node.js services</p>
    </div>
    <div class="tech-card">
      <h3>Infrastructure</h3>
      <p>Docker + Kubernetes</p>
      <p>Terraform provisioning</p>
    </div>
    <div class="tech-card">
      <h3>Data</h3>
      <p>ElasticSearch + Redis</p>
      <p>RabbitMQ messaging</p>
    </div>
    <div class="tech-card">
      <h3>Monitoring</h3>
      <p>Prometheus + Grafana</p>
      <p>Nginx load balancing</p>
    </div>
  </div>
  

  <h2>⚡ Performance Highlights</h2>
  <ul>
    <li><strong>Sub-second transactions:</strong> Optimized Solana network calls</li>
    <li><strong>Modular architecture:</strong> Scalable component design</li>
    <li><strong>Efficient state management:</strong> Global store optimizations</li>
    <li><strong>Lightning-fast builds:</strong> Vite + PostCSS pipeline</li>
  </ul>

  <div class="btn-group">
    <a href="https://github.com/ReyXX777/SouLana" class="btn btn-primary" target="_blank">
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
      Live Platform
    </a>
  </div>

</div>

<script>
  // Simulate blockchain activity
  document.addEventListener('DOMContentLoaded', () => {
    const activityBar = document.querySelector('.activity-bar');
    setInterval(() => {
      activityBar.style.animation = 'none';
      void activityBar.offsetWidth; // Trigger reflow
      activityBar.style.animation = 'blockchainPulse 1.5s infinite linear';
    }, 3000);
  });
</script>