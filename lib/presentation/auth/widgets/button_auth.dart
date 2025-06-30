import 'package:client/common/blocs/login_bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ByttonAuth extends StatelessWidget {
  const ByttonAuth({super.key, required this.onPressed, required this.text});
  final Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 200,
      child: ElevatedButton(
        onPressed: onPressed,
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            switch (state) {
              case Success():
              case Failure():
              case Initial():
                return Text(text);
              case Loading():
                return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
