import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/internet_bloc/internet_bloc.dart';
import '../blocs/internet_bloc/internet_state.dart';

class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
    child: Center(
      child : BlocBuilder<InternetBloc, InternetState>(
        builder: (context, state) {

    if(state is InternetGainedState) {
      return Text("Connected!");
    }
    else if(state is InternetLostState) {
      return Text("Not Connected");
    }
    else{
        return Text("Loading..");
    }


    },
      ),
    ),
    ),
    );
}
}
