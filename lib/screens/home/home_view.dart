import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../chatlist/chatList_view.dart';

class ChatListScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final ValueNotifier<int> selectedIcon = ValueNotifier<int>(0);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.transparent,
          ),
          onPressed: () {},
        ),
      ),
      body: Container(
        color: Color(0xFFFDF8FA),
        child: ValueListenableBuilder<int>(
          valueListenable: selectedIcon,
          builder: (context, index, child) {
            if (index == 0) {
              return ChatList();
            }
            else {
              return ChatList();
            }
          },
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height*0.15,
        color: Colors.white,
        child: ValueListenableBuilder<int>(
          valueListenable: selectedIcon,
          builder: (context, counter, child) {
            return BottomNavigationBar(
              iconSize: 45,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: selectedIcon.value == 0
                      ? Image.asset('assets/custom_icons/icon_talk_pink.png',
                      width: 45, height: 45)
                      : Image.asset('assets/custom_icons/icon_talk.png',
                      width: 45, height: 45),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings), // Replace with your third icon
                  label: '',
                ),
              ],
              currentIndex: selectedIcon.value,
              selectedItemColor: Theme.of(context).colorScheme.primary,
              unselectedItemColor: Colors.pink.shade50,
              // Change the selected icon color here
              onTap: (int index) {
               selectedIcon.value = index;
                switch (index) {
                  case 0:
                    break;
                  case 1:
                    break;
                }
              },
            );
          },
        ),
      ),
    );
  }
}
