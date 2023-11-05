import 'package:flutter/material.dart';
import 'package:flutterstacked/screens/profile/profile_viewmodel.dart';

import 'package:stacked/stacked.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
      viewModelBuilder: () => ProfileViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Profile View"),
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
                    viewModel.profileAddFunction();
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
