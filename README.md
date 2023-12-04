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


# Load More Pagination

```responsive_text_widget```  Extensible and highly customizable package to help you lazily load and display small chunks of items as the user scrolls down the screen. ✨

It's support any type of list view builder with endless scrolling pagination, lazy loading pagination, progressive loading pagination, etc.


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
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pagination Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        platform: TargetPlatform.iOS,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,

  }) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<int> productList = [];
  bool isFinishLoadMore = false;

  @override
  void initState() {
    super.initState();
  }

  void initiateList() {
    productList.addAll(List.generate(10, (v) => v));
    setState(() {});
  }

  Future<bool> _loadMoreData() async {
    await Future.delayed(const Duration(seconds: 2));
    initiateList();
    if(productList.length>=30){
      isFinishLoadMore = true;
    }
    return true;
  }

  Future<void> _refresh() async {
    await Future.delayed(const Duration(seconds: 2));
    productList.clear();
    isFinishLoadMore = false;
    initiateList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Load More List"),
      ),
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: LoadMorePagination(
          isFinish: isFinishLoadMore,
          onLoadMorePagination: _loadMoreData,
          loaderColor: Colors.green,
          whenEmptyLoad: true,
          delegate: const DefaultLoadMorePaginationDelegate(),
          textBuilder: DefaultLoadMorePaginationTextBuilder.english,
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('Product ${index+1}'),
                subtitle: const Text('Subtitle'),
              );
            },
            itemCount: productList.length,
          ),
        ),
      ),
    );
  }


}
```


## Constructor

#### Basic

| Parameter             | Default                                                        | Description                                                    | Required |
|-----------------------|:---------------------------------------------------------------|:---------------------------------------------------------------|:--------:|
| child                 | -                                                              | ListView widget as a child.                                    |   true   |
| onLoadMorePagination  | -                                                              | On load function for handling pagination.                      |   true   |
| loaderColor           | -                                                              | Bottom CircularProgressIndicator loader color.                 |   true   |
| isFinish              | false                                                          | is Finish book for handling load more end functionality.       |  false   |
