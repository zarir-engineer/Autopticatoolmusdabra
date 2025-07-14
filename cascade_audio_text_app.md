
# 🎧 Cascade Audio-Text Web App

An ADHD-friendly web interface for consuming long-form educational content. Inspired by [Zerodha Varsity](https://zerodha.com/varsity/modules/), this app features collapsible content blocks with integrated audio playback to help users read and listen at their own pace.

---

## 🧠 Problem Statement

Reading dense content can be overwhelming—especially for those with ADHD. It’s hard to stay focused, motivated, or make consistent progress through long educational pages. We need a way to break the content down into smaller, more engaging, and interactive units.

---

## ✅ Solution Overview

A **cascade-style collapsible layout** where:
- Each section is a **toggleable block** (like in Varsity).
- Each block has an **audio player** (e.g., waveform or strip).
- Text content is initially hidden and revealed on user interaction.

This enables dual sensory input—**listening + reading**, while allowing the user to stay in control of the pace.

---

## 🖼️ UI Layout Example

```
[▶️] Chapter 1: Introduction to Options  
     └── 🎧 Audio Strip (with waveform or play button)  
     └── (Collapsed text content — expands on click)

[▶️] Chapter 2: Call Options  
     └── 🎧 Audio Strip  
     └── (Collapsed text content)

[▶️] Chapter 3: Put Options  
     └── 🎧 Audio Strip  
     └── (Collapsed text content)
```

---

## 🧱 Tech Stack

| Component       | Library/Tool              |
|----------------|---------------------------|
| UI Framework    | HTML/CSS or React + Tailwind |
| Collapse Logic  | HTML `<details>` tag or custom toggle |
| Audio Playback  | Native `<audio>` tag or [WaveSurfer.js](https://wavesurfer-js.org/) |
| Styling         | Tailwind CSS or CSS Modules |
| Markdown Support | (optional) Parsed markdown for text content |

---

## ✨ Features

- ✅ Collapsible content blocks with triangular toggles
- ✅ Audio player strip (basic or waveform)
- ✅ Synchronized expand + play interaction
- ✅ Progress indication per block (optional checkboxes)
- ✅ Playback speed control (1x, 1.5x, 2x)
- ✅ Responsive design for mobile and desktop
- ✅ Minimalist layout for distraction-free experience

---

## 💡 Future Enhancements

- [ ] Autoplay next section after audio ends
- [ ] Save listening/reading progress with local storage or backend
- [ ] Dark mode
- [ ] Keyboard navigation (space to play/pause, arrow to expand)

---

## 🔗 Inspiration

- [Zerodha Varsity UI](https://zerodha.com/varsity/modules/)
- SoundCloud audio strips
- ADHD-friendly microlearning design principles

---

## 🧪 Prototype Help

If you want a working version or coded prototype of this UI, reach out or check the `prototype/` folder (to be created).
