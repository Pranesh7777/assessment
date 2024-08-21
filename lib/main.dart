import 'package:assessment/utils/routes/routes.dart';
import 'package:assessment/utils/routes/routesname.dart';
import 'package:assessment/viewmodel/view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ViewModel()),
      ],
      child: MaterialApp(
        // key: navigatorKey,
        navigatorKey: navigatorKey,
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: false,
          primarySwatch: MaterialColor(
            0xFF074890,
            <int, Color>{
              50: Color(0xFF074890),
              100: Color(0xFF074890),
              200: Color(0xFF074890),
              300: Color(0xFF074890),
              400: Color(0xFF074890),
              500: Color(0xFF074890),
              600: Color(0xFF074890),
              700: Color(0xFF074890),
              800: Color(0xFF074890),
              900: Color(0xFF074890),
            },
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF074890)),
        ),
        initialRoute: RoutesName.home,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}
