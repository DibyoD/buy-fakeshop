📦 FakeShop Provider

A modern Flutter e-commerce demo app built with provider for state management, GoRouter navigation, and clean architectural practices.
Features include authentication, product listing, categories, cart, and user profile — using a fake shop API.

🚀 Features
👤 Authentication

Email & password login

Secure token storage (flutter_secure_storage)

Auto-login on app restart

🏠 Home

Product highlights

Category browsing

Personalized welcome header

🛍 Products

All Products screen

Product card UI

Add to Cart

🛒 Cart

Cart state managed using Provider

Update quantities

Remove items

🎭 Profile

Dating-app–style minimalist profile design

Avatar, name, email, role

Logout functionality

🎨 UI/UX

Modern, clean layout

Floating bottom navigation bar

Smooth transitions using GoRouter

🧱 Tech Stack
Technology	Purpose
Flutter	Core framework
Provider	State management
GoRouter	Navigation and routing
Flutter Secure Storage	Persisting tokens securely
HTTP package	API calls
Fake Shop API	Data source
📱 Screenshots

Add your screenshots here

/assets/screenshots/home.png  
/assets/screenshots/profile.png  
/assets/screenshots/products.png

📂 Project Structure
lib/
├── models/
├── providers/
├── services/
├── screens/
├── utils/
└── main.dart

🔌 API Endpoints

FakeShop API (example):

POST /auth/login

GET /auth/profile

GET /products

GET /products/categories

🔧 Installation & Setup
1️⃣ Clone the repository
git clone https://github.com/<your-username>/fakeshop_provider.git
cd fakeshop_provider

2️⃣ Install dependencies
flutter pub get

3️⃣ Run the app
flutter run

🔐 Environment Setup

Create a .env (optional if needed):

API_BASE_URL=https://fakestore.com/api

🏗 Architecture

This project follows a lightweight architecture:

Providers for app-wide reactive data

Services handle API logic

Models map JSON responses

GoRouter manages all navigation logic

Clean, scalable, easy to expand.

🧪 Roadmap

Theme switch (dark/light mode)

Add real payment gateway

Wishlist feature

Search with filters

Animations for products

🤝 Contributing

Contributions are welcome!

Fork repo

Create a branch

Commit changes

Open Pull Request

📄 License

This project is open-source under the MIT License.

⭐ Show Your Support

If you like this project, please star⭐⭐⭐ the repo — it means a lot ❤️