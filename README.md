# Sistema de Matrículas de Laboratorios - UNSA

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![FlutterFlow](https://img.shields.io/badge/FlutterFlow-%234285F4.svg?style=for-the-badge&logo=flutter&logoColor=white)
![Android](https://img.shields.io/badge/Android-3DDC84?style=for-the-badge&logo=android&logoColor=white)
![iOS](https://img.shields.io/badge/iOS-000000?style=for-the-badge&logo=ios&logoColor=white)
![Web](https://img.shields.io/badge/web-%23039BE5.svg?style=for-the-badge&logo=html5&logoColor=white)

Sistema de gestión de matrículas para laboratorios de la Universidad Nacional de San Agustín (UNSA). Esta aplicación móvil y web permite a los estudiantes inscribirse en cursos de laboratorio, seleccionar horarios y gestionar sus matrículas de manera eficiente.

## Características Principales

- 🔐 **Sistema de Login**: Autenticación segura para estudiantes
- 📚 **Gestión de Cursos**: Visualización y selección de cursos de laboratorio disponibles
- ⏰ **Turnos de Laboratorio**: Selección de horarios disponibles para cada laboratorio
- ✅ **Confirmación de Matrícula**: Proceso de confirmación y validación de inscripciones
- 📄 **Constancia de Matrícula**: Generación de comprobantes de inscripción
- 🎨 **UI Responsiva**: Interfaz moderna y adaptable para dispositivos móviles y web

## Tecnologías Utilizadas

- **[Flutter](https://flutter.dev/)**: Framework principal para desarrollo multiplataforma
- **[Dart](https://dart.dev/)**: Lenguaje de programación
- **[FlutterFlow](https://flutterflow.io/)**: Herramienta de desarrollo visual para Flutter
- **[Provider](https://pub.dev/packages/provider)**: Gestión de estado
- **[Go Router](https://pub.dev/packages/go_router)**: Navegación y enrutamiento
- **[SQLite](https://pub.dev/packages/sqflite)**: Base de datos local
- **[Google Fonts](https://pub.dev/packages/google_fonts)**: Tipografías personalizadas
- **[Font Awesome](https://pub.dev/packages/font_awesome_flutter)**: Íconos

## Estructura del Proyecto

```
lib/
├── main.dart                    # Punto de entrada de la aplicación
├── app_state.dart              # Estado global de la aplicación
├── components/                 # Componentes reutilizables
│   ├── card_curso/            # Componente para mostrar cursos
│   └── list_turnos/           # Componente para listar turnos
├── pages/                     # Pantallas de la aplicación
│   ├── login/                 # Pantalla de inicio de sesión
│   ├── laboratorios/          # Lista de laboratorios disponibles
│   ├── cursos_laboratorio/    # Cursos por laboratorio
│   ├── laboratorio_turnos/    # Turnos disponibles
│   ├── confirmacion_matricula/ # Confirmación de inscripción
│   └── constancia_matricula/  # Constancia de matrícula
└── flutter_flow/             # Configuraciones y utilidades de FlutterFlow
```

## Requisitos del Sistema

- Flutter SDK: >=3.0.0 <4.0.0
- Dart SDK: Incluido con Flutter
- Android Studio / Xcode (para desarrollo móvil)
- VS Code (recomendado)

## Instalación y Configuración

1. **Clonar el repositorio**
   ```bash
   git clone https://github.com/gaguilarf/SistemaMatriculasLaboratorio.git
   cd lab02_emergentes
   ```

2. **Instalar dependencias**
   ```bash
   flutter pub get
   ```

3. **Ejecutar la aplicación**
   ```bash
   # Para desarrollo web
   flutter run -d chrome
   
   # Para Android
   flutter run -d android
   
   # Para iOS
   flutter run -d ios
   ```

## Desarrollo

Este proyecto utiliza FlutterFlow como herramienta de desarrollo visual, lo que permite:

- Diseño visual de interfaces
- Generación automática de código Flutter
- Integración con bases de datos
- Gestión de estado simplificada

## Plataformas Soportadas

- ✅ **Android** (API 21+)
- ✅ **iOS** (iOS 12+)
- ✅ **Web** (Progressive Web App)

## Contribuir

1. Fork el proyecto
2. Crea una rama para tu feature (`git checkout -b feature/nueva-funcionalidad`)
3. Commit tus cambios (`git commit -m 'Agregar nueva funcionalidad'`)
4. Push a la rama (`git push origin feature/nueva-funcionalidad`)
5. Abre un Pull Request

## Autor

**Gustavo Aguilar**
- GitHub: [@gaguilarf](https://github.com/gaguilarf)
**Anthony Moroccoire**
**Heidi Cordova**
**Anthony Miyo**

## Universidad

**Universidad Nacional de San Agustín de Arequipa (UNSA)**  
Facultad de Ingeniería de Producción y Servicios  
Escuela Profesional de Ingeniería de Sistemas

---

## Getting Started (Para Desarrolladores)

FlutterFlow projects are built to run on the Flutter _stable_ release.
