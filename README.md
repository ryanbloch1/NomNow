# NomNow 🍽️

A Flutter-based food delivery platform connecting customers with local home chefs.

> **Note: This is currently in a work-in-progress POC (Proof of Concept) phase. Features and architecture are subject to change as the project evolves.**

## About

NomNow is a modern food delivery application that brings the authentic taste of home-cooked meals to your doorstep. Unlike traditional delivery apps, NomNow connects you with local home chefs who prepare fresh, personalized meals in their own kitchens.

## Upcoming Features:

### For Customers 🛒

- **Browse Local Chefs**: Discover talented home chefs in your area
- **View Menus**: Explore diverse cuisines and homemade specialties
- **Real-time Order Tracking**: Follow your order from kitchen to doorstep
- **Secure Payments**: Safe and reliable payment processing
- **Ratings & Reviews**: Make informed decisions based on community feedback
- **Favorites**: Save your preferred chefs and dishes

### For Chefs 👨‍🍳

- **Profile Management**: Showcase your culinary expertise
- **Menu Creation**: Upload photos and descriptions of your dishes
- **Order Management**: Track and manage incoming orders
- **Earnings Dashboard**: Monitor your income and performance
- **Flexible Scheduling**: Set your own availability and working hours

## Tech Stack

- **Frontend**: Flutter (Dart)
- **State Management**: GetIt + Injectable
- **Navigation**: Auto Route
- **Backend**: Supabase (PostgreSQL + Real-time + Auth)
- **Storage**: Flutter Secure Storage
- **Error Handling**: fpdart (Either pattern)
- **Architecture**: Clean Architecture with Domain-Driven Design

## Getting Started

### Prerequisites

- Flutter SDK (>=3.2.3)
- Dart SDK (>=3.2.3)
- Android Studio / VS Code
- iOS Simulator (for iOS development)
- Android Emulator (for Android development)

### Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/ryanbloch1/NomNow.git
   cd NomNow
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Set up Supabase** (Optional for development)

   - Create a Supabase project at [supabase.com](https://supabase.com)
   - Add your Supabase URL and anon key to the configuration

4. **Run the app**
   ```bash
   flutter run
   ```

## Project Structure

```
lib/
├── app/                    # App configuration
│   ├── router.dart        # Auto route configuration
│   └── router.gr.dart     # Generated routes
├── domain/                # Business logic layer
│   ├── models/           # Domain models
│   ├── repositories/     # Repository interfaces
│   └── services/         # Service interfaces
├── infrastructure/        # External dependencies
│   ├── repositories/     # Repository implementations
│   ├── services/         # Service implementations
│   └── di/              # Dependency injection
├── presentation/          # UI layer
│   ├── ui/              # Screens and widgets
│   │   ├── onboarding/  # Welcome and role selection
│   │   ├── registration/ # User registration flows
│   │   └── screens/     # Main app screens
│   └── common/          # Shared UI components
└── core/                # Core utilities
    ├── error/           # Error handling
    └── result/          # Result/Either patterns
```

## Key Features Implemented

- ✅ **User Authentication & Registration**
- ✅ **Role-based Navigation** (Customer/Chef)
- ✅ **Responsive UI Design**
- ✅ **Clean Architecture Setup**
- ✅ **Dependency Injection**
- ✅ **Error Handling with fpdart**
- ✅ **Chef Profile Screen**
- ✅ **Customer Registration Form**

## Development

### Code Generation

This project uses code generation for routes and dependency injection. Run the following command after making changes:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

### Architecture

The app follows Clean Architecture principles:

- **Domain Layer**: Contains business logic and entities
- **Infrastructure Layer**: Implements external dependencies
- **Presentation Layer**: Handles UI and user interactions

### State Management

- **GetIt**: Service locator for dependency injection
- **Injectable**: Code generation for dependency injection
- **fpdart**: Functional programming utilities for error handling

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support

For support, email support@nomnow.com or create an issue in this repository.

---

**Built with ❤️ using Flutter**
