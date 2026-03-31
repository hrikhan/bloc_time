# bloc_concept

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:


## features based structure with bloc


lib/
│
├── core/                          # Global shared resources
│   ├── constants/                 # App constants, enums
│   ├── error/                     # Exceptions, failures
│   ├── network/                   # API client, connectivity info
│   ├── utils/                     # Helpers, validators
│   └── theme/                     # Theme, colors, fonts
│
├── features/                      # Feature-based modules
│   ├── auth/                      
│   │   ├── data/                  
│   │   │   ├── models/            # UserModel, etc.
│   │   │   ├── datasources/       # Remote & local
│   │   │   └── repositories/      # Implementation of repo interface
│   │   │
│   │   ├── domain/                
│   │   │   ├── entities/          # User entity
│   │   │   ├── repositories/      # Abstract AuthRepository
│   │   │   └── usecases/          # LoginUser, RegisterUser
│   │   │
│   │   ├── presentation/          
│   │   │   ├── bloc/              # Bloc/Cubit for state management
│   │   │   ├── pages/             # Screens
│   │   │   └── widgets/           # Small reusable widgets
│   │   │
│   │   └── auth_injection.dart    # Feature-level DI
│   │
│   ├── home/                      
│   │   └── ... same structure as auth ...
│   │
│   └── ... other features ...     
│
├── presentation/                  # Global UI and configuration
│   ├── app/                       
│   │   ├── app.dart                # MaterialApp
│   │   └── app_routes.dart         # Named routes / onGenerateRoute
│   ├── global_widgets/             # Widgets reused across features
│   └── localization/               # Multi-language support
│
├── injection_container.dart        # Global DI (get_it)
│
├── services/                       # Cross-feature services
│   ├── auth_service.dart
│   ├── notification_service.dart
│   └── logging_service.dart
│
├── repository_providers/           # Optional: DI for multiple features
│
└── main.dart                       # App entry point
