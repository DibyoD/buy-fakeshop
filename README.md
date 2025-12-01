# 🛍️ FakeShop Provider

A clean & modern Flutter demo app showcasing authentication, secure storage, state management with **Provider**, and a smooth login → home → profile flow.

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-3.35.6-blue?logo=flutter" />
  <img src="https://img.shields.io/badge/Provider-State%20Management-7f52ff" />
  <img src="https://img.shields.io/badge/License-MIT-green" />
  <img src="https://img.shields.io/badge/Platform-Android%20%7C%20iOS-orange" />
</p>

---

## 🧭 Overview

FakeShop Provider is a lightweight Flutter project demonstrating:

- 🔐 Login with API + JWT token
- 🔒 Secure token handling via `flutter_secure_storage`
- 🧩 Global state using **Provider**
- 🧭 Navigation logic using **GoRouter**
- 🧑‍💼 Profile persistence across the app
- 🎨 Simple & clean UI

Perfect for beginners learning Flutter state management, or for devs bootstrapping an app with auth.

---

## 📸 Screenshots

| Login Screen | Home Screen | Profile Screen |
|-------------|-------------|----------------|
| <img src="assets/screens/login.png" width="260"/> | <img src="assets/screens/home.png" width="260"/> | <img src="assets/screens/profile.png" width="260"/> |

> Add your screenshots to `assets/screens/` and they will render above.

---

## 📂 Folder Structure

lib/
│
├─ providers/
│ └─ auth_provider.dart
│
├─ services/
│ └─ api_services.dart
│
├─ screens/
│ ├─ login_screen.dart
│ ├─ home_screen.dart
│ └─ profile_screen.dart
│
└─ main.dart