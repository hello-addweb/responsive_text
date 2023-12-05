<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->


# Responsive Text Widget

```responsive_text_widget```  Flutter package to make your texts Responsive. The Package will Assist you to calculate size of texts. Prevents text overflow without explicitly setting a fixed font size. ✨

It's support any type of texts you want to show such as [ headline, bodytext, subtitle text or caption text], etc.


## Installation

Create a new project with the command

```yaml
flutter create MyApp
```

Add

```yaml
responsive_text_widget: ...
```

to your `pubspec.yaml` of your flutter project.
**OR**
run

```yaml
flutter pub add responsive_text_widget
```

in your project's root directory.

In your library add the following import:

```dart
import 'package:responsive_text_widget/responsive_text_widget.dart';
```

For help getting started with Flutter, view the online [documentation](https://flutter.io/).

## Usage

```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Text',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive Text Widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Row(
                children: [
                  Expanded(
                    child: ResponsiveText(
                      text: "Responsive Text",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontFamily: "open sans",
                      ),
                    ),
                  ),
                  Expanded(
                    child: ResponsiveText(
                      text:
                          "Flutter package to make your texts Responsive. The Package will Assist you to calculate size of texts.",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
              TextButton(
                child: const ResponsiveText(
                  text: "Text Button",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                onPressed: () async {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
```


## Constructor

#### Basic

| Parameter    | Default                                                                                          | Description                                        | Required |
|--------------|:-------------------------------------------------------------------------------------------------|:---------------------------------------------------|:--------:|
| text         | -                                                                                                | Text widget required text                          |   True   |
| textStyle    | const TextStyle(color: Colors.black)                                                             | Style properties for text style                    |  false   |
| textAlign    | TextAlign.center                                                                                 | Align the text on the left right, center, top edge |  false   |
| textOverflow | TextOverflow.visible                                                                             | Clip the overflowing text to fix its container.    |  false   |
