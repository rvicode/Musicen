import 'package:flutter/material.dart';
import 'package:musicen/components/colors.dart';
import 'package:musicen/gen/fonts.gen.dart';
import 'package:musicen/screens/home_screen/home.screen.dart';
import 'package:musicen/screens/play_list/play.list.screen.dart';
import 'package:musicen/screens/widgets/bottom.navigation.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var fontFamily = FontFamily.roboto;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontFamily: fontFamily,
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: TextThemeColor.mainTextColor,
          ),
          headlineMedium: TextStyle(
            fontFamily: fontFamily,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          bodyLarge: TextStyle(
            fontFamily: fontFamily,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          bodyMedium: TextStyle(
            fontFamily: fontFamily,
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
          bodySmall: TextStyle(
            fontFamily: fontFamily,
            fontSize: 14,
            color: Colors.white70,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

const int homeIndex = 0;
const int searchIndex = 1;
const int libIndex = 2;

class _MainScreenState extends State<MainScreen> {
  int selectedScreenIndex = homeIndex;

  final List<int> _history = [];

  final GlobalKey<NavigatorState> _homeKey = GlobalKey();
  final GlobalKey<NavigatorState> _searchKey = GlobalKey();
  final GlobalKey<NavigatorState> _libKey = GlobalKey();

  late final map = {
    homeIndex: _homeKey,
    searchIndex: _searchKey,
    libIndex: _libKey,
  };

  Future<bool> _onWillPop() async {
    final NavigatorState currentSelectedTapNavigatorState =
        map[selectedScreenIndex]!.currentState!;

    if (currentSelectedTapNavigatorState.canPop()) {
      currentSelectedTapNavigatorState.pop();
      return false;
    } else if (_history.isNotEmpty) {
      setState(() {
        selectedScreenIndex = _history.last;
        _history.removeLast();
      });
      return false;
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: _onWillPop,
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Positioned.fill(
                child: IndexedStack(
                  index: selectedScreenIndex,
                  children: [
                    _navigator(_homeKey, homeIndex, HomeScreen()),
                    _navigator(_searchKey, searchIndex, PlayList()),
                    _navigator(_libKey, libIndex, Placeholder()),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: BottomNavigation(
                  onTap: (int index) {
                    setState(
                      () {
                        _history.remove(selectedScreenIndex);
                        _history.add(selectedScreenIndex);
                        selectedScreenIndex = index;
                      },
                    );
                  },
                  selectedIndex: selectedScreenIndex,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _navigator(GlobalKey key, int index, Widget child) {
    return key.currentState==null && selectedScreenIndex!=index?Container(): Navigator(
      key: key,
      onGenerateRoute: (settings) => MaterialPageRoute(
          builder: (context) => Offstage(
              offstage: selectedScreenIndex != index, child: child)),
    );
  }
}
