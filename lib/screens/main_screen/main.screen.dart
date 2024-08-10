import 'package:flutter/material.dart';
import 'package:musicen/screens/home_screen/home.screen.dart';
import 'package:musicen/screens/library_screen/library.screen.dart';
import 'package:musicen/screens/search_screen/search.screen.dart';
import 'package:musicen/screens/widgets/bottom.navigation.dart';

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
                    _navigator(_homeKey, homeIndex, const HomeScreen()),
                    _navigator(_searchKey, searchIndex, const SearchScreen()),
                    _navigator(_libKey, libIndex, const LibScreen()),
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
    return key.currentState == null && selectedScreenIndex != index
        ? Container()
        : Navigator(
            key: key,
            onGenerateRoute: (settings) => MaterialPageRoute(
                builder: (context) => Offstage(
                    offstage: selectedScreenIndex != index, child: child)),
          );
  }
}
