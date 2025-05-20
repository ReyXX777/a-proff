+++
title = "KafkaPro – AI-Powered Chatbot"
slug = "project-two"
date = 2024-12-01
description = "Enterprise-grade chatbot with semantic search and real-time processing"
featuredImage = "/images/kafkalink.jpeg"
demoVideo = "/videos/kafkapro-demo.mp4"
+++

<style>
  /* Modern Base Styles */
  .project-detail {
    max-width: 1200px;
    margin: 0 auto;
    padding: 2rem 1.5rem;
    font-family: 'Inter', -apple-system, sans-serif;
    color: #2d3748;
    line-height: 1.6;
  }

  /* Hero Section */
  .project-hero {
    border-radius: 16px;
    overflow: hidden;
    box-shadow: 0 20px 40px -10px rgba(0,0,0,0.15);
    margin-bottom: 3rem;
    transition: transform 0.3s ease;
  }
  .project-hero:hover {
    transform: translateY(-5px);
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

  /* Typography */
  .project-title {
    font-size: 3rem;
    font-weight: 800;
    background: linear-gradient(90deg, #10b981, #3b82f6);
    -webkit-background-clip: text;
    background-clip: text;
    color: transparent;
    margin-bottom: 1.5rem;
    line-height: 1.2;
  }

  .project-summary {
    font-size: 1.25rem;
    padding: 1.5rem;
    background: #f8fafc;
    border-left: 4px solid #10b981;
    border-radius: 0 8px 8px 0;
    margin-bottom: 3rem;
  }

  /* Section Styling */
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
    background: linear-gradient(90deg, #10b981, #3b82f6);
    border-radius: 2px;
  }

  /* Lists */
  ul {
    padding-left: 1.25rem;
    margin-bottom: 2rem;
  }
  li {
    margin-bottom: 0.75rem;
    position: relative;
    padding-left: 1.5rem;
  }
  li:before {
    content: '•';
    color: #10b981;
    font-weight: bold;
    position: absolute;
    left: 0;
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
    border-color: #a7f3d0;
  }
  .tech-card h3 {
    margin-top: 0;
    color: #10b981;
  }

  /* Button */
  .btn-primary {
    display: inline-block;
    background: linear-gradient(90deg, #10b981, #3b82f6);
    color: white;
    padding: 0.75rem 1.75rem;
    border-radius: 50px;
    text-decoration: none;
    font-weight: 600;
    margin: 2rem auto;
    box-shadow: 0 4px 6px -1px rgba(16, 185, 129, 0.3);
    transition: all 0.3s ease;
  }
  .btn-primary:hover {
    transform: translateY(-2px);
    box-shadow: 0 10px 15px -3px rgba(16, 185, 129, 0.4);
  }

  /* Demo Video Section */
  .demo-video {
    margin: 4rem 0;
    position: relative;
    border-radius: 16px;
    overflow: hidden;
    box-shadow: 0 25px 50px -12px rgba(0,0,0,0.15);
    transform: translateY(0);
    transition: transform 0.4s cubic-bezier(0.34, 1.56, 0.64, 1), box-shadow 0.4s ease;
  }
  .demo-video:hover {
    transform: translateY(-8px);
    box-shadow: 0 32px 64px -12px rgba(0,0,0,0.2);
  }
  .video-container {
    position: relative;
    padding-bottom: 56.25%;
    height: 0;
    background: #000;
  }
  .video-container video {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
    cursor: pointer;
  }
  .play-button {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 80px;
    height: 80px;
    background: rgba(255,255,255,0.9);
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    transition: all 0.3s ease;
    z-index: 2;
  }
  .play-button:hover {
    background: white;
    transform: translate(-50%, -50%) scale(1.05);
  }
  .play-button:before {
    content: "";
    display: block;
    width: 0;
    height: 0;
    border-top: 15px solid transparent;
    border-bottom: 15px solid transparent;
    border-left: 25px solid #10b981;
    margin-left: 5px;
  }
  .video-caption {
    text-align: center;
    margin-top: 1.5rem;
    font-size: 0.95rem;
    color: #64748b;
  }

  /* Timeline */
  .project-timeline {
    font-size: 1rem;
    color: #64748b;
    margin-bottom: 2rem;
    padding: 0.5rem 1rem;
    background: #f1f5f9;
    border-radius: 6px;
    display: inline-block;
  }

  /* Responsive */
  @media (max-width: 768px) {
    .project-title {
      font-size: 2.25rem;
    }
    .project-summary {
      font-size: 1.1rem;
    }
    .tech-grid {
      grid-template-columns: 1fr;
    }
  }
</style>

<div class="project-detail">

  

  <h1 class="project-title">{{ .Title }}</h1>

  <div class="project-summary">
    KafkaPro revolutionizes enterprise communication by combining cutting-edge NLP with real-time processing, delivering instant, context-aware responses for technical teams.
  </div>
  <div class="project-hero">
    <img src="/images/kafkachat.jpeg" alt="KafkaPro Chatbot interface screenshot" />
  </div>

  <div class="project-timeline">
    <strong>Project Duration:</strong> Dec 2024 – Jan 2025
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
    <li><strong>AI-Powered Chat:</strong> Leverages Hugging Face Transformers for natural conversations</li>
    <li><strong>Semantic Search:</strong> Sentence Transformers + Faiss for vector similarity matching</li>
    <li><strong>Real-Time Processing:</strong> PyTorch-optimized neural computations</li>
    <li><strong>Enterprise Auth:</strong> GitHub OAuth for secure repository-based insights</li>
    <li><strong>Data Visualization:</strong> NetworkX-powered relationship graphs</li>
  </ul>

  <h2>🛠 Technology Stack</h2>
  <div class="tech-grid">
    <div class="tech-card">
      <h3>Backend</h3>
      <p>FastAPI for high-performance RESTful APIs</p>
    </div>
    <div class="tech-card">
      <h3>AI Engine</h3>
      <p>Hugging Face + PyTorch for NLP</p>
    </div>
    <div class="tech-card">
      <h3>Database</h3>
      <p>PostgreSQL with optimized indexing</p>
    </div>
    <div class="tech-card">
      <h3>Frontend</h3>
      <p>React with real-time chat interface</p>
    </div>
    <div class="tech-card">
      <h3>Infrastructure</h3>
      <p>Dockerized microservices</p>
    </div>
    <div class="tech-card">
      <h3>Async Processing</h3>
      <p>Celery + Redis pipelines</p>
    </div>
  </div>

  <h2>🎯 Technical Challenges</h2>
  <ul>
    <li><strong>Low-Latency NLP:</strong> Optimized transformer models with quantization</li>
    <li><strong>Vector Search Scale:</strong> Implemented Faiss indexing for 1M+ embeddings</li>
    <li><strong>Real-Time Sync:</strong> WebSocket-based chat with message queues</li>
    <li><strong>Enterprise Security:</strong> OAuth integration with fine-grained permissions</li>
  </ul>

  <div style="text-align:center;">
    <a class="btn-primary" href="https://github.com/yourusername/kafka-pro" target="_blank" rel="noopener" aria-label="View KafkaPro on GitHub">
      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="vertical-align:middle;margin-right:8px;">
        <path d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 0 0-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0 0 20 4.77 5.07 5.07 0 0 0 19.91 1S18.73.65 16 2.48a13.38 13.38 0 0 0-7 0C6.27.65 5.09 1 5.09 1A5.07 5.07 0 0 0 5 4.77a5.44 5.44 0 0 0-1.5 3.78c0 5.42 3.3 6.61 6.44 7A3.37 3.37 0 0 0 9 18.13V22"></path>
      </svg>
      Explore the Code
    </a>
  </div>
  

</div>

<script>
  // Video Player Controls
  const video = document.getElementById('demoVideo');
  const playButton = document.getElementById('playButton');
  const videoContainer = document.getElementById('videoContainer');

  playButton.addEventListener('click', () => {
    video.play();
    playButton.style.opacity = '0';
    playButton.style.pointerEvents = 'none';
  });

  video.addEventListener('click', () => {
    if (video.paused) {
      video.play();
      playButton.style.opacity = '0';
    } else {
      video.pause();
      playButton.style.opacity = '1';
    }
  });

  video.addEventListener('ended', () => {
    playButton.style.opacity = '1';
    playButton.style.pointerEvents = 'auto';
  });
</script>