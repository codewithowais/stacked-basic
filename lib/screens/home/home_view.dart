import 'package:flutter/material.dart';
import 'package:flutterstacked/screens/home/home_viewmodel.dart';
import 'package:flutterstacked/screens/profile/profile_view.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Home View"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  viewModel.counterValue.toString(),
                  style: const TextStyle(fontSize: 40),
                ),
                ElevatedButton(
                  onPressed: () {
                    viewModel.homeAddFunction();
                  },
                  child: const Text("Add"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfileView()),
                    );
                  },
                  child: const Text("Add"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
