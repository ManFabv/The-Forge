# Custom Game Engine

This game engine is a **custom fork of [The Forge Framework](https://github.com/ConfettiFX/The-Forge)**[cite: 1, 2], designed as a high-performance, cross-platform C99/C++ framework focused on rendering efficiency and memory performance[cite: 1, 2].

> For detailed documentation, engine updates, and original licensing information, please refer to **[The Forge's official README](https://github.com/ConfettiFX/The-Forge/blob/master/README.md)**[cite: 2].

---

## 🚀 Architecture & Key Features

This engine is built upon the low-level core modules and infrastructure provided by *The Forge*:

- **Cross-Platform C99**: Lightweight, abstracted layers for the Operating System (`OS`) and Graphics (`Renderer`)[cite: 1, 2].
- **Shading Language (FSL)**: A HLSL superset (*The Forge Shading Language*) that abstracts shader compilation and optimization for Direct3D 12 and Vulkan[cite: 1, 2].
- **Memory & Resource Management**: 
  - Efficient GPU memory allocation via *Vulkan Memory Allocator* / *D3D12 Memory Allocator*[cite: 2].
  - CPU memory management powered by *Fluid Studios Memory Manager*[cite: 2].
  - Asynchronous loading pipeline for textures, buffers, and geometry[cite: 2].
- **Animation & Math**:
  - Skeletal animation system based on [Ozz Animation](https://github.com/guillaumeblanc/ozz-animation)[cite: 2].
  - Optimized math library based on an extended version of [Vectormath](https://github.com/glampert/vectormath) with NEON intrinsics for mobile targets[cite: 2].
- **Game Subsystems & UI**:
  - Fast Entity Component System (ECS) integrated using [flecs](https://github.com/SanderMertens/flecs)[cite: 2].
  - UI layer built on [Dear ImGui](https://github.com/ocornut/imgui) extended with touch input support[cite: 2].
  - Custom C-native input library supporting gesture inputs[cite: 2].
  - Embedded scripting via [Lua](https://www.lua.org/)[cite: 2].

---

## 🛠️ Project Structure

- `Libraries/OS/`: Platform abstraction layer (windowing, inputs, threads, file system)[cite: 1, 2].
- `Libraries/Renderer/`: Low-level graphics API abstraction (DirectX 12 / Vulkan / FSL)[cite: 1, 2].
- `src/`: Core application source files and project code[cite: 1].
- `Common_3/Tools/ForgeShadingLanguage/`: FSL shader compiler tools and target builders[cite: 1, 2].

---

## 📜 License & Credits

- Built upon **[The Forge](https://github.com/ConfettiFX/The-Forge)** by Confetti Interactive Inc. (licensed under Apache License 2.0 for desktop and mobile platforms)[cite: 1, 2].
- Please check [The Forge Original Readme](https://github.com/ConfettiFX/The-Forge/blob/master/README.md) for complete third-party licenses and credits[cite: 2].