# Fake Store App

## Overview

This project is an E-Commerce app built with Flutter as part of a developer test task. The application leverages the Fake Store API to showcase an end-to-end shopping experience, including product listing, product details, cart management, and an optional wishlist feature.

## Features

### User Authentication (Login)

- Secure login with field validation and password visibility toggle.

### Product Listing

- Fetches and displays products using lazy loading with infinite scroll.

- Shows product image, name, price, and rating.

### Product Details

- Detailed view of selected products, including full description, category, and rating.

- Add-to-cart functionality.

### Cart Management

- Add or remove products from the cart.

- View cart total price.

### Wishlist (Local Storage)

- Add/remove products to/from the wishlist.

- View wishlist items stored locally using SharedPreferences.

### Tech Stack

- State Management: BLoC

- Dependency Injection: Injectable & Get_it

- API Calls: Dio

- Local Storage: SharedPreferences

- Routing: AutoRoute

## Project Structure

The project follows a modular and scalable architecture, structured as follows:

```
lib/
├── core/               # Core utilities and shared resources
│   ├── constants/      # Constant values and configurations
│   ├── enums/          # Enum definitions
│   ├── error/          # Error handling and exceptions
│   ├── extensions/     # Extension methods for data types
│   ├── helpers/        # Helper functions and classes
│   ├── networking/     # Network-related configurations
│   ├── router/         # App routing setup
│   └── utils/          # General utility functions
├── di/                 # Dependency injection setup
├── services/           # Application-level services
├── shared/             # Shared components and utilities
├── features/           # Feature-based modules
│   └── authentication/ # Authentication feature module
│       ├── data/       # Data layer for authentication
│       │   ├── client/         # API clients
│       │   ├── datasources/   # Remote and local data sources
│       │   ├── models/        # Data models
│       │   └── repositories/  # Data repository implementations
│       ├── domain/    # Domain layer with business logic
│       │   ├── repositories/  # Abstract repository interfaces
│       │   └── usecases/      # Use case definitions
│       └── presentation/ # UI and presentation layer
│           ├── bloc/   # BLoC components for state management
│           ├── pages/  # UI pages and screens
│           └── widgets/ # Reusable UI components

```
The project follows a clean and scalable architecture with separation of concerns:

- lib/core/ - Core utilities, constants, networking, router and base classes.

- lib/features/{feature}/presentation/data/ - Data layer, including API clients and model classes.

- lib/features/{feature}/presentation/domain/ - Business logic interfaces and models.

- lib/features/ - UI components and screens.

- lib/features/{feature}/presentation/bloc/ - BLoC and state management logic.

- lib/di/ - Dependencies injection setup.

## Installation and Setup

1. Clone the repository:
```
git clone [<repo_url>](https://github.com/Williamtobs/fake_store.git)
cd fake_store
```
2. Install dependencies:
```
flutter pub get
```
3. Generate injectable dependencies:
```
flutter pub run build_runner build --delete-conflicting-outputs
```
4. Run the application:
```
flutter run
```
## API Usage

The application uses the [Fake Store API](https://fakestoreapi.com/docs) for authentication, product, and cart data. The login API is used to authenticate users, and product APIs are used to fetch product details and cart APIs are used to fetch cart and manage it.

### How to Use

1. Launch the app and navigate to the login screen.

2. Enter credentials (e.g., username: johnd, password: m38rmF$).

3. Browse products, view details, and add items to your cart.

4. Manage your cart and view the total price.

5. Add and remove products from your wishlist and access them anytime.


## Estimated Time to Complete

The estimated time for completing the project is approximately 11 hours, according to my wakatime.<br>
![Wakatime](https://private-user-images.githubusercontent.com/63688314/424232302-7c4464b6-b1b6-4141-bea7-a327e2a6cd8c.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NDIzNDEzODksIm5iZiI6MTc0MjM0MTA4OSwicGF0aCI6Ii82MzY4ODMxNC80MjQyMzIzMDItN2M0NDY0YjYtYjFiNi00MTQxLWJlYTctYTMyN2UyYTZjZDhjLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNTAzMTglMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjUwMzE4VDIzMzgwOVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTZiM2VkMTE2MzdiYzQ4MTAxM2JlOTdhNmZhMWZkYzBjNjJjYTZjMWQ2MjgzNmFkYjljMDhhYWVlOTM0NTNmNWImWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0In0.c6Io0ANfzDUka9POypIhxwZG2ktqMtplGkUMTsBsepc)

<br>
<br>
License<br>
This project is licensed under the MIT License.

