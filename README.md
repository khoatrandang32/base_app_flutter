# Base App Flutter
## Getting Started

**Key Libraries:**

- `Dio`, `Retrofit`, `retrofit_generator` – for API layer
- `GoRouter` – for routing
- `GetX` – for state management
- `Logger` – for debugging
- `flutter_easyloading` – for loading UI
- `json_serializable` – for parsing JSON
- `build_runner` – for code generation.

**Project Structure Overview:**

Our project follows a clear and modular directory structure to enhance maintainability and scalability:

* **`lib/`**: The primary source code directory.
    * **`core/`**: Houses essential application-wide components:
        * `constants/`: Application-wide constants.
        * `routes/`: Defines navigation routes.
        * `services/`: Core application services.
        * `theme/`: Theming and styling configurations.
        * `utils/`: General utility functions.
    * **`data/`**: Manages data-related aspects:
        * `models/`: Data models for the application.
        * `services/`: Data fetching and manipulation services.
    * **`ui/`**: User interface components:
        * `controllers/`: Logic controllers for UI.
        * `screens/`: Individual application screens/pages.
        * `widgets/`: Reusable UI components.
