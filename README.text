# 🚀 LearnX

> **An Interactive Learning App for Flutter** providing engaging fill-in-the-blank quizzes with seamless drag-and-drop functionality.

---

### 🔑 Quick Test Access

To test the application quickly, use the following administrator credentials:

* **Email:** `admin@gmail.com`
* **Password:** `admin123`

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

* **Controllers** manage application state using GetX reactive variables.
* **Models** define data structures and strict business rules.
* **Views** automatically and efficiently update whenever observable state changes.
* **Components** remain reusable across entirely different screens.

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

## 🔍 Deep Dive: Project Structure & Implementation

**Core Components:**

* `main.dart`: The main app entry point, including Firebase initialization.
* `theme.dart`: Handles the responsive theming system.
* `routes.dart`: The central hub for navigation configuration.

**Controllers:**

* `QuizController`: The brain behind quiz state, scoring math, and quiz navigation.
* `HomeController`: Directs traffic and navigation on the main home screen.
* `LoginController`: Manages user authentication flows.

**Key Features Implementation Highlights:**

* **Drag & Drop:** Custom logic implemented within the `HintButton` and `HintTarget` components.
* **Quiz Logic:** Entirely centralized inside the `QuizController` to separate UI from business logic.
* **Responsive UI:** Managed globally by `AppTheme.responsiveTextTheme()`.

---

## 🤝 Contributing

We welcome contributions! If you'd like to help improve LearnX, please follow these steps:

1. Fork the repository.
2. Create a new feature branch.
3. Adhere to the existing MVC + GetX architecture patterns.
4. Add any new UI elements to their appropriate `components/` directories.
5. Submit a pull request with a detailed description of your changes.

---

## 📄 License

This project is licensed under **Community Common Attribution**.
© 2025 LearnX. All rights reserved.
