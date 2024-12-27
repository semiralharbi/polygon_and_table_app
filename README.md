## How to Run the App

### Android

1. Open the `local.properties` file located in the `android` directory.
2. Add your Google API Key to the file:
    ```
    googleMapsApiKey=YOUR_GOOGLE_MAPS_API_KEY_STRING_VALUE
    ```
   Replace `YOUR_GOOGLE_MAPS_API_KEY_STRING_VALUE` with your actual Google Maps API key.

### iOS

1. Copy the template configuration files to create your own `Release.xcconfig` and `Debug.xcconfig` files:
    ```sh
    cp ios/Flutter/Release.xcconfig.template ios/Flutter/Release.xcconfig
    cp ios/Flutter/Debug.xcconfig.template ios/Flutter/Debug.xcconfig
    ```

2. Open the `ios/Flutter/Release.xcconfig` and `ios/Flutter/Debug.xcconfig` files and add your Google Maps API key:
    ```xcconfig
    GOOGLE_MAPS_API_KEY=YOUR_GOOGLE_MAPS_API_KEY_STRING_VALUE
    ```
   Replace `YOUR_GOOGLE_MAPS_API_KEY_STRING_VALUE` with your actual Google Maps API key.
   
### Running the App

- **Android**: Use the following command to run the app on an Android device or emulator:
    ```sh
    flutter pub get
    dart run build_runner build -d 
    flutter run
    ```

- **iOS**: Use the following command to run the app on an iOS device or simulator:
    ```sh
    flutter pub get
    dart run build_runner build -d 
    flutter run
    ```
