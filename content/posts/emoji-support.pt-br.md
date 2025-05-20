+++
authors = ["Lone Coder"]
title = "DOOM The Dark Ages Tested: 13 GPUs Benchmarked To Hell And Back"
date = "2025-05-16"
description = "We test DOOM The Dark Ages on 13 GPUs, from mid-range to flagship, and reveal performance metrics across 1080p and 4K."
tags = [
    "DOOM",
    "benchmark",
    "gaming",
    "GPUs",
    "performance",
]
categories = [
    "hardware",
    "game performance",
]
series = ["GPU Benchmarks"]
featuredImage = "/images/doompost.webp" # <--- Added this line

+++

DOOM is back—and it's never looked meaner. **DOOM The Dark Ages** is the latest installment in Id Software's iconic franchise, bringing a brutal blend of medieval mayhem and modern firepower. Powered by the **id Tech 8 engine**, this entry trades Mars for dark fantasy while keeping the brutal combat, metal soundtrack, and silky-smooth performance that DOOM is known for.

Naturally, we had to see how it runs.

<!--more-->

## Test Setup

**Hardware Used:**

- **CPU:** Intel Core Ultra 9 285K (Arrow Lake, 5.7 GHz, 8P+16e-Core)  
- **Motherboard:** MSI MEG Z890 ACE  
- **Memory:** 2x 24GB Kingston DDR5-8666 MT/s CUDIMMs  
- **Storage:** Toshiba RD400 512GB NVMe SSD

**Software Environment:**

- Windows 11 Pro x64 (24H2)  
- AMD Radeon Software (25.5.1)  
- NVIDIA GeForce Drivers v576.40  
- Intel Arc Drivers 101.6793  

**Graphics Cards Tested:**

- AMD: RX 7800 XT, RX 7700 XT, RX 7600, RX 6800 XT, RX 6750 XT  
- Intel: Arc B580, Arc B570, Arc A770, Arc A750  
- NVIDIA: RTX 4080, RTX 4060 Ti, RTX 3080, RTX 3070 Ti  

## Methodology

We benchmarked using a consistent scene from **Chapter 6**, featuring a large-scale outdoor battle in daylight with heavy enemy spawn. This area proved to be the most demanding during gameplay.

### Testing Details:

- **Lower-end GPUs**: 1080p @ Medium preset (no upscaling)  
- **High-end GPUs**: 4K @ High preset + "Quality" upscaling (DLSS 4 or XeSS)  
- Frametime data captured via **CapFrameX**  
- Three consistent test runs for accuracy  

---

## 1080p Medium Benchmarks

Despite DOOM: The Dark Ages being **ray tracing mandatory**, even mid-range GPUs perform well at 1080p Medium settings.

Every card achieved **40+ FPS** averages with solid frametime consistency. Notably, the **RX 6800 XT** kept pace with the **RTX 3080**, showcasing impressive performance in this RT-heavy title.

⚠️ *Note:* Ultra and Nightmare settings are not currently functional in this pre-release. Path tracing support is planned for future updates.

---

## 4K "Quality" Upscaling Benchmarks

At 4K with upscaling from 1440p:

- The **RTX 4080** leads the pack, delivering stunning visuals and high frame rates.
- **RX 7800 XT** and **Intel Arc B580** offered nearly 40 FPS—great for their price class.
- GPUs with **8GB VRAM or less** struggled. Texture pool tuning helps, but drops below 2048MB hurt texture quality.

📉 Some cards (especially with 8GB VRAM) suffer at 4K due to memory constraints.

---

## Frametime Consistency

Even at 30 FPS on lower-end cards, the frametime graph remained **remarkably flat**, indicating **smooth, stutter-free gameplay**—a testament to the game's optimization and pacing.

> "The Dark Ages plays great even when the framerate dips. It's not DOOM Eternal-fast, but it’s silky nonetheless."

---

## Power Efficiency Insights

- **Intel Arc (Alchemist)**: Still power inefficient  
- **NVIDIA Ada (RTX 40 series)**: Most efficient  
- **AMD RDNA 2 & 3**: Middle ground  
- **Battlemage (Intel Arc B-series)**: Underperforms power-wise, possibly due to driver limitations—but shows promise  

📈 Battlemage GPUs like the **B570/B580** ran ~15% below their power limit, signaling potential gains from future driver updates.

---

## CPU Usage & Scaling

Surprisingly, the game is **incredibly light on CPU usage**:

> Even a **Ryzen 5 3600** can sustain 60 FPS comfortably.

Tests on both Intel and AMD platforms showed no significant performance differences. It's safe to say **your GPU matters much more than your CPU** here.

---

## Conclusion

DOOM The Dark Ages is a **brutally gorgeous game** that scales well across modern GPUs. Whether you're running a **$250 mid-range card or a $1200 flagship**, you'll get a smooth and cinematic experience—especially at 1080p or with upscaling.

### Highlights:

- ✅ Excellent 1080p performance even with ray tracing
- 🎯 Solid 4K visuals using AI upscaling (DLSS, XeSS)
- 💡 CPU-light, GPU-heavy title
- 🔋 Efficiency varies widely by vendor

Stay tuned as future patches add path tracing and unlock "Ultra Nightmare" settings.

> *“Even on Medium, DOOM looks mean.”*

---

🕹️ *Have you played DOOM The Dark Ages yet? Let us know your experience with your GPU setup in the comments!*

---
