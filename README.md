# Shop App

Welcome to the Shop App! This is a mobile application designed to interact with a shop API. The app allows users to register, log in, view products on the main page, explore categories, and manage their favorite items. This app is a demonstration of clean architecture principles, API integration, and the use of animations for an engaging user experience.

## Table of Contents

- [Features](#features)
- [Dependencies](#dependencies)
- [Getting Started](#getting-started)
- [Architecture](#architecture)
- [API Integration](#api-integration)
- [Animations](#animations)
- [Screenshots](#screenshots)
- [Contributing](#contributing)
- [Contact](#contact)

## Features

The Flutter Shop App offers the following key features:

- **User Registration and Login**: Users can create an account and log in securely.
- **Main Product Page**: Displays a list of available products.
- **Category Page**: Allows users to explore products by categories.
- **Favorites Page**: Users can add and remove products from their favorites list.
- **Clean Architecture**: Utilizes a clean architecture approach for maintainability and scalability.
- **API Integration**: Connects to a shop API for fetching product data.
- **Login Screen Animation**: Utilizes animations to create an engaging login experience.

## Dependencies

The app uses the following dependencies to function:

- **flutter**: The Flutter SDK.
- **cupertino_icons**: Provides Cupertino-style icons for the app.
- **smooth_page_indicator**: A package for smooth page indicators.
- **bloc**: State management library.
- **flutter_bloc**: Provides widgets and classes for building Flutter applications with the BLoC architecture.
- **freezed**: A code generation package for immutable classes.
- **freezed_annotation**: Annotations for generating freezed classes.
- **get_it**: A simple Service Locator.
- **retrofit**: A type-safe HTTP client for Dart.
- **dio**: HTTP client for making network requests.
- **shared_preferences**: A package for storing simple data types.
- **flutter_native_splash**: Generates native code for adding a splash screen to your Flutter app.
- **fluttertoast**: A toast package for showing customizable toast messages.
- **carousel_slider**: A carousel slider widget.
- **auto_size_text**: A Flutter widget that automatically resizes text to fit perfectly within its bounds.
- **rive**: A runtime for the Rive file format.

Please ensure you have these dependencies installed and properly configured in your Flutter project.

## Getting Started

To run this app on your local development environment, follow these steps:

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/flutter-shop-app.git
2. Navigate to the project directory:
   ```bash
   cd flutter-shop-app  
3. Install the dependencies:
   ```bash
   flutter pub get
4. Run the app on an emulator or physical device:
   ```bash
   flutter run
Make sure you have a Flutter development environment set up on your machine before proceeding.


## Architecture
The Flutter Shop App is built following clean architecture principles, which means it's divided into distinct layers:

- **Presentation Layer**: Responsible for the user interface and handling user input. Uses the BLoC (Business Logic Component) pattern for state management.
- **Domain Layer**: Contains the business logic and domain models.
- **Data Layer**: Manages data sources, including API calls and local storage.
- This separation of concerns makes the app maintainable and testable.

## API Integration

The app communicates with a shop API to fetch product data. The integration is handled using the Retrofit and Dio packages, ensuring type-safe and efficient network requests. API endpoints and models are defined in the data and domain layers.

## Animations
One of the standout features of this app is the use of animations, particularly in the login screen. Animations are implemented using the Rive package to create a visually appealing and engaging user experience.
this idea from Omar Ahmed [animation tutorial](https://github.com/omarahmedx14/Flutter-Animated-Login)

## Screenshots
Here are some screenshots of the Flutter Shop App:
### First Open Page
<p align="center">
<img src="https://github.com/xXhalemXx/Shop_app/blob/master/projectImages/image1.jpg"  width="300" height="600"> <br />

###  Login Page
<p align="center">
<img src="https://github.com/xXhalemXx/Shop_app/blob/master/projectImages/image2.gif"  width="300" height="600"> <br />

### Register Screen
<p align="center">
<img src="https://github.com/xXhalemXx/Shop_app/blob/master/projectImages/image3.jpg"  width="300" height="600"> <br />

### Loading Page
<p align="center">
<img src="https://github.com/xXhalemXx/Shop_app/blob/master/projectImages/image4.jpg"  width="300" height="600"> <br />
  
### Home Page
<p align="center">
<img src="https://github.com/xXhalemXx/Shop_app/blob/master/projectImages/image5.jpg"  width="300" height="600"> <br />

### Category Page
<p align="center">
<img src="https://github.com/xXhalemXx/Shop_app/blob/master/projectImages/image6.jpg"  width="300" height="600"> <br />

### Favuriout Page 
<p align="center">
<img src="https://github.com/xXhalemXx/Shop_app/blob/master/projectImages/image7.jpg"  width="300" height="600"> <br />

### Settings Page
<p align="center">
<img src="https://github.com/xXhalemXx/Shop_app/blob/master/projectImages/image8.jpg"  width="300" height="600"> <br />

## Contributing
Contributions to this project are welcome. If you'd like to contribute, please fork the repository, create a new branch, make your changes, and submit a pull request. Please ensure your code follows best practices and includes relevant tests.

## Contact

If you have any questions or feedback, please feel free to contact me at mohamedhalem909@gmail.com.

