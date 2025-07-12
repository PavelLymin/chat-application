import 'package:auto_route/auto_route.dart';
import 'package:client/common/blocs/login_bloc/login_bloc.dart';
import 'package:client/common/router/router.gr.dart';
import 'package:client/common/widgets/checkbox.dart';
import 'package:client/common/widgets/switch_theme.dart';
import 'package:client/common/widgets/text_form_field.dart';
import 'package:client/core/validator.dart';
import 'package:client/domain/entities/auth_entity/auth_entity.dart';
import 'package:client/presentation/auth/widgets/button_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _obscureText = true;

  @override
  void dispose() {
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BasicTextFormField(
                            controller: _emailController,
                            hintText: 'E-mail адрес',
                            validator: (value) => Validator.emailCheck(value!),
                          ),
                          const SizedBox(height: 10),
                          BasicTextFormField(
                            controller: _passwordController,
                            obscureText: _obscureText,
                            hintText: 'Пароль',
                            validator: (value) =>
                                Validator.passwordCheck(value!),
                          ),
                          Row(
                            children: [
                              const Text('Показать пароль'),
                              BasicCheckbox(
                                value: !_obscureText,
                                onChanged: (_) {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ByttonAuth(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            context.read<LoginBloc>().add(
                              LoginEvent.signIn(
                                authModel: AuthEntity(
                                  email: _emailController.text,
                                  password: _passwordController.text,
                                ),
                              ),
                            );
                          }
                        },
                        text: 'Войти',
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          context.router.replace(const Signup());
                        },
                        child: const Text(
                          'У вас нет аккаунта? Зарегистрироваться',
                        ),
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
