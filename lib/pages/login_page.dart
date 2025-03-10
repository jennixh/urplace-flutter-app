import 'package:flutter/material.dart';
import 'package:tcc/pages/app_page.dart';
import 'package:tcc/pages/register_page.dart';
import 'package:tcc/widgets/helper_widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _user = TextEditingController();
  final _passwd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 0,
                  child: Image.asset(
                    'assets/images/login-page.png',
                    width: size.width * 0.8,
                  ),
                ),
                Positioned(
                  top: size.width * 0.6,
                  left: size.width * -0.5,
                  child: Container(
                    height: size.width * 2,
                    width: size.width * 2,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: color.primary,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: size.width * 0.1,
                          right: size.width * 0.1,
                          top: size.width * 0.7),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AddVerticalSpace(20),
                          Text(
                            'Bem Vindo de Volta!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: color.onSecondaryContainer,
                              fontSize: size.width * 0.05,
                            ),
                          ),
                          AddVerticalSpace(10),
                          Text(
                            'Por favor, faça o Login',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: color.onSecondaryContainer,
                              fontSize: size.width * 0.06,
                            ),
                          ),
                          AddVerticalSpace(size.width * 0.1),
                          InputText("Usuário", _user, false),
                          AddVerticalSpace(size.width * 0.05),
                          InputText('Senha', _passwd, true),
                          AddVerticalSpace(size.width * 0.05),
                          CustomButton('Entrar', color.onSecondaryContainer,
                              color.secondary, context, AppPage()),
                          AddVerticalSpace(size.width * 0.08),
                          AddDividerLine(),
                          AddVerticalSpace(size.width * 0.08),
                          CustomButton(
                            'Crie uma Conta',
                            color.onPrimaryContainer,
                            color.onSecondaryContainer,
                            context,
                            RegisterPage(),
                          ),
                          AddVerticalSpace(size.width * 0.24),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
