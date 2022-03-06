Sample Code

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Responsive Builder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ResponsiveBuilder(
        mobile: Container(), // Write code for Mobile view (Its Required)
        web: Container(),    // Write code for Web view (Its Required)
        desktop: Container(),// Write code for Destop view
        tablet: Container(), // Write code for Tablet view
      ),
    );
  }
}