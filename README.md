# Animal Plant App 🦁 🌿

A beautiful Flutter application showcasing animals and plants with a modern, elegant UI design. The app features a subscription-based model with different pricing plans and a seamless user experience.

## Features

- 📱 Modern and elegant UI design
- 🎯 Landing page with captivating animal imagery
- 💰 Multiple subscription plans
  - Weekly plan
  - 3-week plan
  - 6-week plan
  - Monthly plan
- 🏠 Dashboard with curated content
- 🎨 Custom fonts (Ubuntu) integration
- 📸 Rich media assets

## Screenshots

The app includes several key screens:

1. **Landing Screen** - Features a stunning elephant background with welcome message
2. **Subscription Screen** - Displays various subscription plans with pricing
3. **Dashboard** - Shows related content and animal categories

## Tech Stack

- Flutter SDK (>=2.18.0-241.0.dev <3.0.0)
- Dart
- Material Design

## Dependencies

- `cupertino_icons: ^1.0.2`
- `flutter_lints: ^2.0.0` (dev dependency)

## Project Structure

```
lib/
├── common/
│   ├── custom_appBar.dart
│   ├── neivigation_button.dart
│   └── subscription_container.dart
├── screen/
│   ├── screen_choosPlan.dart
│   ├── screen_dashboard.dart
│   └── screen_landing.dart
├── utills/
│   ├── Strings.dart
│   └── text_style.dart
└── main.dart
```

## Getting Started

1. **Prerequisites**
   - Flutter SDK
   - Android Studio/VS Code
   - Android Emulator/iOS Simulator

2. **Installation**
   ```bash
   # Clone the repository
   git clone [repository-url]

   # Navigate to project directory
   cd Animal_plant_App

   # Install dependencies
   flutter pub get

   # Run the app
   flutter run
   ```

## Assets

The project includes various assets:
- Animal images (elephant, tiger, etc.)
- Subscription plan images
- Ubuntu font family

## Contributing

Feel free to submit issues and enhancement requests.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

