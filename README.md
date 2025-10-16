# Rehber App (Contact App Flutter)

A Flutter contacts application using **BLoC (Cubit)** architecture and **SQLite** for local data persistence.  
Clean architecture with clear separation between data, logic, and UI layers.

---

## Repository

[GitHub – noirys-dev/rehber-app](https://github.com/noirys-dev/rehber-app.git)

---

## Features

- State management with **Cubit** (from flutter_bloc)  
- Local data storage via **SQLite** (`sqflite` package)  
- Add, edit, delete, search list contacts  
- Simple, maintainable, modular architecture  
- Responsive UI  

---

## Project Structure

```
lib/
├── data/
│   ├── entity/
│   │   └── kisiler.dart
│   ├── repo/
│   │   └── kisilerdao_repository.dart
│   └── sqlite/
│       └── veritabani_yardimcisi.dart
│
├── ui/
│   ├── cubit/
│   │   ├── anasayfa_cubit.dart
│   │   ├── detay_sayfa_cubit.dart
│   │   └── kayit_sayfa_cubit.dart
│   └── views/
│       ├── anasayfa.dart
│       ├── detay_sayfa.dart
│       └── kayit_sayfa.dart
│
└── main.dart
```

---

## Getting Started

1. **Clone the repo**  
   ```bash
   git clone https://github.com/noirys-dev/rehber-app.git
   ```

2. **Install dependencies**  
   ```bash
   flutter pub get
   ```

3. **Run the app**  
   ```bash
   flutter run
   ```

---

## Architecture Overview

This app follows a layered approach:

- **Data Layer**  
  Handles interactions with SQLite, data models, data access (repository).  

- **Business Logic Layer (Cubit)**  
  Manages states, handles user actions, communicates between UI and data.  

- **UI Layer**  
  Displays data and responds to user input, organized in views/screens.  

This separation makes the code more testable, maintainable, and scalable.

---

## Future Improvements

- Synchronization with cloud (e.g. Firebase)  
- Contact image/avatar support  
- More polished UI, animations, theming  
- Unit & widget tests  

---

## License & Credits

This project was developed by **noirys-dev**.  
Feel free to use, modify, and contribute.
