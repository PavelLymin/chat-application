import 'package:auto_route/auto_route.dart';
import 'package:client/common/blocs/login_bloc/login_bloc.dart';
import 'package:client/common/router/router.gr.dart';
import 'package:client/common/widgets/switch_theme.dart';
import 'package:client/common/widgets/text_form_field.dart';
import 'package:client/core/validator.dart';
import 'package:client/domain/entities/auth_entity/auth_entity.dart';
import 'package:client/presentation/auth/widgets/button_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        switch (state) {
          case Failure(:final message):
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message, style: TextStyle(color: Colors.white)),
              ),
            );
          case Success():
            context.router.replace(const Chat());
          case Loading():
          case Initial():
        }
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [BasicSwitchTheme()],
                  ),
                ),
                Expanded(
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BaseTextFormField(
                            controller: _usernameController,
                            hintText: 'Имя',
                            validator: (value) => Validator.emptyCheck(value!),
                          ),
                          const SizedBox(height: 10),
                          BaseTextFormField(
                            controller: _emailController,
                            hintText: 'E-mail адрес',
                            validator: (value) => Validator.emailCheck(value!),
                          ),
                          const SizedBox(height: 10),
                          BaseTextFormField(
                            controller: _passwordController,
                            hintText: 'Пароль',
                            validator: (value) =>
                                Validator.passwordCheck(value!),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(50),
                  child: Column(
                    children: [
                      ByttonAuth(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            context.read<LoginBloc>().add(
                              LoginEvent.signUp(
                                authModel: AuthEntity(
                                  email: _emailController.text,
                                  password: _passwordController.text,
                                ),
                              ),
                            );
                          }
                        },
                        text: 'Зарегистрироваться',
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          context.router.replace(const Signin());
                        },
                        child: const Text('У вас есть аккаунт? Войти'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
