import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messangerui/layout/cubit.dart';
import 'package:messangerui/layout/states.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MessangerCubit, MessangerStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = MessangerCubit.get(context);
        return Scaffold(
          body: cubit.homeScreen[cubit.bottomNavBarCurrentItem],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: cubit.bottomNavBarCurrentItem,
            onTap: (index) {
              cubit.bottomNavBarChangeItems(index);
            },
            items: cubit.bottomNavBarItem,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.blue,
          ),
        );
      },
    );
  }
}
