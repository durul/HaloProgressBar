# HaloProgress

A fully SwiftUI-native, customizable, and animated circular progress bar.



![Simulator Screenshot - iPhone 16 - 2025-05-05 at 15 32 24](https://github.com/user-attachments/assets/f2d7f85e-0d00-4476-b3f8-6a56852b096a)




## 🚀 Features

- 100% SwiftUI – no UIKit dependency
- Smooth animation with value binding
- Multiple appearance styles:
  - `overlaysEmptyLine`
  - `aboveEmptyLine`
  - `underEmptyLine`
- Fully customizable:
  - Line width
  - Colors
  - Font
  - Max value
  - Show/hide progress label

# Why HaloProgressBar

Swift Charts currently does not directly support circular/radial progress bars.

⸻

📊 Swift Charts and Circular Visualization

Apple's Swift Charts framework (iOS 16+, macOS 13+) primarily supports Cartesian-based 2D data visualization types like bar, line, area, and point charts. It supports the following:

| Feature                   | Swift Charts | Description           |
| ------------------------- | ------------ | --------------------- |
| Bar Chart                 | ✅           | Vertical / horizontal |
| Line Chart                | ✅           | Time series           |
| Area Chart                | ✅           | Filled area           |
| Scatter Chart             | ✅           | Point-based           |
| Pie Chart                 | ❌           | Not supported         |
| Circular Progress / Gauge | ❌           | Not supported         |

⸻

🌀 What Kinds of Circular Solutions Exist?

| Method                                 | Circular View | SwiftUI Implementation                        |
| -------------------------------------- | ------------- | --------------------------------------------- |
| Shape + trim + rotationEffect          | ✅            | Our implemented solution                      |
| Canvas / Path                          | ✅            | Lower-level drawing                           |
| Gauge (iOS 16+)                        | ⚠️            | Only iOS 16+, supports linear and semi-circle |
| 3rd-party chart library (e.g., Charts) | ✅            | Mixed UIKit/SwiftUI, complex                  |

⸻

🔎 Summary

Swift Charts:
* 🎯 Great for data series
* 🚫 But does not support circular indicators, progress bars, or pie charts

My # HaloProgress solution:
* ✅ 100% compatible with SwiftUI
* ✅ Full circular progress control
* ✅ Customization for animation, gradient, text, visuals

⸻
