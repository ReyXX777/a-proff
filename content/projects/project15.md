+++
title = "More Projects"
slug = "project15"
date = 2025-05-01
description = "A collection of additional innovative projects showcasing diverse technical skills and applications, from quantum computing to AI and logistics."
featuredImage = "/images/more2.jpeg" # You might want a generic "portfolio" image here
+++

<style>
  /* General Project List Theme */
  :root {
    --primary: #673AB7; /* Deep Purple */
    --secondary: #9C27B0; /* Violet */
    --dark: #212121; /* Dark Grey */
    --light: #F5F5F5; /* Light Grey */
    --card-bg: #FFFFFF; /* White for cards */
    --border-color: #E0E0E0; /* Light border */
  }

  body {
    background-color: var(--light);
  }

  .project-list-detail {
    max-width: 1200px;
    margin: 0 auto;
    padding: 2rem 1.5rem;
    font-family: 'Inter', -apple-system, sans-serif;
    color: var(--dark);
    line-height: 1.6;
  }

  .page-title {
    font-size: 3rem;
    font-weight: 800;
    background: linear-gradient(90deg, var(--primary), var(--secondary));
    -webkit-background-clip: text;
    background-clip: text;
    color: transparent;
    margin-bottom: 1.5rem;
    line-height: 1.2;
    text-align: center;
  }

  .project-list-summary {
    font-size: 1.25rem;
    padding: 1.5rem;
    background: var(--card-bg);
    border-left: 4px solid var(--primary);
    border-radius: 0 8px 8px 0;
    margin-bottom: 3rem;
    border: 1px solid var(--border-color);
    text-align: center;
  }

  .project-repo-link {
    display: block;
    text-align: center;
    margin: 2rem 0;
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

  .btn-repo {
    display: inline-flex;
    align-items: center;
    padding: 0.75rem 1.75rem;
    border-radius: 8px;
    text-decoration: none;
    font-weight: 600;
    background: linear-gradient(90deg, var(--primary), var(--secondary));
    color: white;
    box-shadow: 0 4px 6px -1px rgba(103, 58, 183, 0.3);
    transition: all 0.3s ease;
  }
  .btn-repo:hover {
    transform: translateY(-2px);
    box-shadow: 0 10px 15px -3px rgba(103, 58, 183, 0.4);
  }


  h2 {
    font-size: 2rem;
    margin: 2.5rem 0 1.5rem;
    position: relative;
    display: inline-block;
    text-align: center;
    width: 100%; /* Center the pseudo-element */
  }
  h2:after {
    content: '';
    position: absolute;
    bottom: -8px;
    left: 50%; /* Center the pseudo-element */
    transform: translateX(-50%); /* Adjust for perfect centering */
    width: 80px;
    height: 4px;
    background: linear-gradient(90deg, var(--primary), var(--secondary));
    border-radius: 2px;
  }

  /* Projects Grid */
  .projects-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 1.5rem;
    margin: 2rem 0;
  }
  .project-card {
    background: var(--card-bg);
    border-radius: 8px;
    padding: 1.5rem;
    box-shadow: 0 4px 8px rgba(0,0,0,0.08);
    border: 1px solid var(--border-color);
    transition: all 0.3s ease;
    display: flex;
    flex-direction: column;
  }
  .project-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 12px 20px rgba(0,0,0,0.15);
    border-color: var(--primary);
  }
  .project-card h3 {
    margin-top: 0;
    color: var(--primary);
    font-size: 1.4rem;
    margin-bottom: 0.75rem;
  }
  .project-card p {
    font-size: 1rem;
    color: #424242;
    flex-grow: 1; /* Allows description to take up available space */
  }
  .project-card .project-date {
    font-size: 0.85rem;
    color: #757575;
    text-align: right;
    margin-top: 1rem;
  }

  /* Responsive */
  @media (max-width: 768px) {
    .page-title { font-size: 2.5rem; }
    .project-list-summary { font-size: 1.1rem; }
    .projects-grid { grid-template-columns: 1fr; }
  }
</style>

<div class="project-list-detail">

  <h1 class="page-title">More Projects</h1>

  <div class="project-list-summary">
    This section showcases a diverse portfolio of additional projects, highlighting a broad range of skills in quantum computing, AI, logistics, and API development. Each project represents a unique challenge and solution.
  </div>

  <div class="project-repo-link">
    <a href="https://www.dropbox.com/Link-Attached" class="btn-repo" target="_blank">
      <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="margin-right:8px;">
        <path d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 0 0-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0 0 20 4.77 5.07 5.07 0 0 0 19.91 3M12 17.25V21"></path>
        <path d="M12 3a5.44 5.44 0 0 0-4.77 2.45A5.07 5.07 0 0 0 5 3.09C4.9 3.09 3.5 3.5 2.5 3.5c-.75.75-.75 1.25-.75 2.25L1.5 17c0 2 1 4 4 4h13c3 0 4-2 4-4V5c0-1-.25-1.5-.75-2.25-.5-.5-1.5-1-2.25-1"></path>
      </svg>
      View All Projects on Dropbox
    </a>
  </div>

  <h2>💡 Project Highlights</h2>

  <div class="projects-grid">
    <div class="project-card">
      <h3>Quantum Cross-Scripting</h3>
      <p>Developed an experimental cross-scripting model to analyze **potential vulnerabilities in quantum computing frameworks**, exploring novel security challenges in this emerging field.</p>
      <p class="project-date">2024</p>
    </div>
    <div class="project-card">
      <h3>AI Gambling Prevention Backend</h3>
      <p>Engineered a robust backend system utilizing **machine learning algorithms to identify and prevent compulsive gambling behaviors**, promoting responsible online practices.</p>
      <p class="project-date">2024</p>
    </div>
    <div class="project-card">
      <h3>Chalak Suvidha Transportation</h3>
      <p>Created an application to **optimize transportation services for small businesses**, featuring dynamic route planning, efficient vehicle management, and real-time tracking.</p>
      <p class="project-date">2023</p>
    </div>
    <div class="project-card">
      <h3>ZephyrNet Humanoid Chat</h3>
      <p>Developed an **AI-powered humanoid chatbot** capable of real-time conversation, demonstrating advanced natural language understanding and emotional context interpretation.</p>
      <p class="project-date">2023</p>
    </div>
    <div class="project-card">
      <h3>AiRpower Stack</h3>
      <p>Engineered a high-efficiency **AI stack for air traffic control**, leveraging deep learning for precise flight path predictions and proactive anomaly detection to enhance safety.</p>
      <p class="project-date">2024</p>
    </div>
    <div class="project-card">
      <h3>TrainFood Logistics Stack</h3>
      <p>Designed a comprehensive **food delivery system specifically for trains**, ensuring real-time order tracking, optimized logistics, and efficient meal distribution onboard.</p>
      <p class="project-date">2022</p>
    </div>
    <div class="project-card">
      <h3>Hotel CRS Flex Features API</h3>
      <p>Created a **flexible API for hotel Centralized Reservation Systems (CRS)**, enabling seamless integration of real-time booking, inventory management, and guest services.</p>
      <p class="project-date">2022</p>
    </div>
    <div class="project-card">
      <h3>AI Quality Control Industry Standard</h3>
      <p>Implemented **AI-based quality control mechanisms for manufacturing workflows**, rigorously adhering to international ISO standards to ensure product excellence.</p>
      <p class="project-date">2025</p>
    </div>
  </div>

</div>