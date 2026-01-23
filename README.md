
# 🎬 IMDUMB App (Flutter)

Aplicación móvil desarrollada en *Flutter* que consume una API de películas (TMDB) para mostrar listados de películas populares, mejor valoradas.  
La app está construida usando *Clean Architecture, manejo de estado con **Riverpod, **Dio* para networking y *Firebase Remote Config* para configuración dinámica.

---

## 📌 Resumen del proyecto

- Listado de películas populares
- Renderizado de posters y rating con estrellas
- Manejo de errores con Either (dartz)
- Feature flags y mensajes dinámicos desde *Firebase Remote Config*
- Arquitectura escalable, mantenible y testeable

---

## 🏗️ Arquitectura usada

Se utiliza *Clean Architecture*, separando responsabilidades en 3 capas:
presentation
├─ pages
├─ widgets
└─ providers (Riverpod)

domain
├─ entities
├─ repositories (abstract)
└─ usecases

data
├─ datasources (remote / local)
├─ models (DTOs)
└─ repositories (implementations)

### Flujo de datos
UI
↓
StateNotifier (Riverpod)
↓
UseCase
↓
Repository
↓
RemoteDataSource (Dio)
↓
API (TMDB)

## 🧰 Tech stack y dependencias

### Framework
- *Flutter*: >= 3.24.5

### Manejo de estado
- flutter_riverpod: ^2.6.1

### Networking
- dio: ^5.9.0

### Navegación
- go_router: ^15.1.2

### Programación funcional / errores
- dartz: ^0.10.1

### Firebase
- firebase_core: ^4.4.0
- firebase_remote_config: ^6.1.4

### LocalStorage
- shared_preferences: ^2.5.3

---

## ▶️ Cómo correr el proyecto

### 🔹 Versión de Flutter

flutter --version

recomendado
- *Flutter*: >= 3.24.5


### 🔹 Pasos
# 1. Clonar el repositorio
git clone git@github.com:JhonGonzales-dev/imdumb_app.git

# 2. Entrar al proyecto
cd imdumb_app

# 3. Instalar dependencias
flutter pub get

# 4. Ejecutar la app
flutter run

---

### Configuración de Firebase (opcional)

Este proyecto usa Firebase Remote Config para:

- Activar / desactivar show_popular o show_top_rated
- Definir el mensaje inicial de la app

# Parámetros requeridos en remote config

| Key             | Tipo    | Ejemplo       |
| --------------- | ------- | ------------- |
| show_popular    | Boolean | true          |
| show_top_rated  | Boolean | true          |
| initial_message | String  | Bienvenido 🎬 |


---

### Endpoints utilizados
Ejemplo usando TMDB API
- GET /movie/popular
- GET /movie/top_rated

# Base URL
https://api.themoviedb.org/3

# Autenticación 
Se utiliza api_key como query parameter, configurado en DIO

### Documentación de principios solid

- get_popular_movies.dart
- ovie_remote_datasource.dart
- movie_repository.dart


### Captura

![Popular Movies screenshot](assets/screenshot.png)

