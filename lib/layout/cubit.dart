import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messangerui/layout/states.dart';
import 'package:messangerui/modules/calls.dart';
import 'package:messangerui/modules/chats.dart';
import 'package:messangerui/modules/people.dart';
import 'package:messangerui/modules/status.dart';

class MessangerCubit extends Cubit<MessangerStates> {
  MessangerCubit() : super(InitialState());
  static MessangerCubit get(context) => BlocProvider.of(context);

  List<Widget> homeScreen = [
    ChatsScreen(),
    const CallsScreen(),
    const PeopleScreen(),
    const StatusScreen()
  ];

  List<BottomNavigationBarItem> bottomNavBarItem = [
    const BottomNavigationBarItem(
        icon: Icon(Icons.messenger_rounded), label: 'الدردشات'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.video_call), label: 'المكالمات'),
    const BottomNavigationBarItem(icon: Icon(Icons.people), label: 'الاشخاص'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.amp_stories), label: 'الدردشات'),
  ];

  int bottomNavBarCurrentItem = 0;
  void bottomNavBarChangeItems(int index) {
    bottomNavBarCurrentItem = index;
    emit(BottomNavBarChangeItemState());
  }
}
