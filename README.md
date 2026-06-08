

# 🚀 LearnX

> **An Interactive Learning App for Flutter** providing engaging fill-in-the-blank quizzes with seamless drag-and-drop functionality.

---

### 🔑 Quick Test Access

To test the application quickly, use the following administrator credentials:

* **Email:** `admin@gmail.com`
* **Password:** `admin123`

---

## 🎥 App Showcase & Screenshots

### Screenshots
<table>
  <tr>
     <td align="center" width="33%">
      <img src="https://github.com/user-attachments/assets/c1cfe6d9-28fd-421d-8dcb-a760e0f8a4a3" alt="Redbull Screen 2" width="100%"/>
    </td>
      <td align="center" width="33%">
      <img src="https://github.com/user-attachments/assets/d33c116b-4de7-4ce7-97e0-fb2102e29198" alt="Redbull Screen 4" width="100%"/>
    </td>
     <td align="center" width="33%">
      <img src="https://github.com/user-attachments/assets/d60bbcd6-4ded-41ee-99bf-18f51ef92ced" alt="Redbull Screen 3" width="100%"/>
    </td>
    <td align="center" width="33%">
      <img src="https://github.com/user-attachments/assets/43817234-2ac9-49cd-990f-56f96c074af6" alt="Redbull Screen 1" width="100%"/>
    </td>
  </tr>
  <tr>
    <td align="center" width="33%">
      <img src="https://github.com/user-attachments/assets/284d3c50-d723-45a9-b1ed-bcd229a117e7" alt="Redbull Screen 6" width="100%"/>
    </td>
  </tr>
</table>

### Demo Video

<table>
  <tr>
<p align="center">
  <video src="https://github.com/user-attachments/assets/4cb5fd36-855e-4a22-be41-32cd76b8940d" width="400" controls></video>
</p>
  </tr>
</table>

---

## ✨ Features

* **Interactive Quizzes:** Engaging fill-in-the-blank questions utilizing a smooth drag-and-drop interface.
* **Multiple Quiz Categories:** Test your knowledge across Grammar Skills, Animal Facts, the Solar System, and more.
* **Real-time Scoring:** Instantly track your progress and performance as you play.
* **Achievement System:** Unlock dynamic achievements based on your quiz performance.
* **Firebase Authentication:** Secure and reliable user login and registration.
* **Responsive Design:** Fully optimized for seamless use across different screen sizes.
* **Dynamic Theming:** Automatic Dark/Light theme switching based on system preferences.

---

## 🏗️ Architecture

LearnX follows a strict **MVC (Model-View-Controller)** pattern combined with **GetX** state management. This approach guarantees a clean, maintainable, and highly scalable codebase.

### Directory Structure

```text
lib/ 
├── core/                        # Core configuration 
│   ├── theme.dart               # App theming 
│   ├── routes.dart              # Navigation routes 
│   └── firebase_options.dart    # Firebase Options
│
├── model/                       # Data models and business logic 
│   ├── questionModel.dart       # Quiz data structure 
│   ├── quiz_model.dart          # Quiz UI model 
│   ├── loginmodel.dart          # Authentication UI model 
│   ├── achievements.dart        # Achievement UI model
│   └── OverallScore.dart        # OverallScore UI model
│
├── view/                        # User Interface (Screens) 
│   ├── Auth.dart                # Authentication screen 
│   ├── quiz.dart                # Quiz interface 
│   ├── splashScreen.dart        # App startup 
│   └── home/                    # Home section screens 
│
├── controller/                  # Business logic and state management 
│   ├── quizController.dart      # Quiz state management 
│   ├── HomeScreenController.dart# Home navigation 
│   └── auth controllers/        # Authentication logic 
│
├── components/                  # Reusable UI components 
│   ├── button/                  # Custom buttons 
│   ├── hint/                    # Quiz hint components 
│   ├── score/                   # Score display components 
│   ├── text field/              # Input components 
│   ├── container/               # User information displays
│   ├── divider/                 # Basic dividers
│   ├── icons/                   # Logo & basic icons
│   └── lottie/                  # Loading and state animations
│
└── data/                        # Static data and question banks 
    └── questions.dart           # Quiz questions database

```

### Key Architecture Patterns

1. **MVC Pattern:**
* **Model:** Defines data structures and business logic (`lib/model/`).
* **View:** Renders the UI screens and components (`lib/view/`).
* **Controller:** Handles state management and complex business logic (`lib/controller/`).


2. **GetX State Management:**
* **Reactive Programming:** Utilizes `Rx` variables for real-time, reactive UI updates.
* **Dependency Injection:** Controllers are efficiently injected using `Get.put()` and `Get.find()`.
* **Navigation:** Centralized route management located in `lib/core/routes.dart`.


3. **Component-Based Architecture:**
* Reusable UI components are housed in `lib/components/`.
* The modular design heavily promotes maintainability and UI consistency across the app.


4. **Firebase Integration:**
* Authentication logic is handled in `lib/controller/auth controllers/auth_controller.dart`.
* Core configuration is stored securely in `lib/core/firebase_options.dart`.



### State Management Flow

```text
 ┌────────────────────────────────────────┐
 │  User → Interaction → Controller       │
 │                            ↓           │
 │  View Update ← Model ←─────┘           │
 │       ↑                                │
 │       └──────── Reactive Updates ──────┘

```

---

## 🛠️ Getting Started

### Prerequisites

Before you begin, ensure you have the following installed:

* **Flutter SDK:** `>=3.0.0`
* **Dart SDK:** `>=3.0.0`
* A **Firebase account** (required for authentication features)

### Installation

1. **Clone the repository:**
```bash
git clone <repository-url>
cd learnx

```


2. **Install dependencies:**
```bash
flutter pub get

```


3. **Configure Firebase:**
* Create a new Firebase project in the console.
* Add your Flutter app to the Firebase project.
* Download the generated configuration and replace the existing `firebase_options.dart` file.


4. **Run the app:**
```bash
flutter run

```



---

## 📦 Dependencies

Key packages powering this application:

* **GetX:** For state management, dependency injection, and navigation.
* **Firebase Auth:** For robust user authentication.
* **Lottie:** For smooth, high-quality vector animations.
* **Shared Preferences:** For local data storage *(Note: Set up for the "remember me" function; pending full implementation alongside the logout function).*

> *See `pubspec.yaml` for the complete list of dependencies.*

---

## 🧠 My Learning Journey

LearnX was built as a personal playground to level up my Flutter skills rather than a production-scale application. Building this app was a fantastic hands-on experience! You can clone this repository, and use this project as you like...

Here are the biggest takeaways from this project:

* **Mastering Drag and Drop:** Implementing the core fill-in-the-blank feature taught me how to effectively use Flutter's `Draggable` and `DragTarget` widgets to create smooth, interactive UI components. This was the primary catalyst for the project!
* **State Management with GetX:** I learned how to successfully decouple business logic from the UI to keep the app's state reactive and manageable.
* **Structuring a Scalable App:** Transitioning into a clean MVC architecture made a massive difference in how I approach folder structure and maintainability.

*(Note: Because this is a personal learning project, I am not actively looking for external contributions at the moment, but feel free to fork the repository and experiment with the code yourself!)*

---

## 📄 License

This project is licensed under **Community Common Attribution**.
© 2025 LearnX. All rights reserved.
