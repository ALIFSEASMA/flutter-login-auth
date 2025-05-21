plugins {
    id("com.android.application")
    id("kotlin-android")
    id("com.google.gms.google-services") // ✅ Added for Firebase
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.flutterfinal"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.example.flutterfinal"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}

dependencies {
    implementation("com.google.firebase:firebase-analytics:21.5.0") // ✅ Example Firebase dependency
}
