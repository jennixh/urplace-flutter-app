import 'package:flutter/material.dart';
import 'package:tcc/pages/login_page.dart';
import 'package:tcc/widgets/helper_widgets.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  final _user = TextEditingController();
  final _email = TextEditingController();
  final _passwd = TextEditingController();
  final _confirmPasswd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  top: size.width * 0.06, 
                  left: size.width * -0.5,
                  child: Container(
                    height:
                        size.width * 3, 
                    width: size.width * 3,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: color.primary,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/logo-white.png',
                                  width: 40, height: 40),
                              Text(
                                'Urplace',
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 28,
                                  color: color.onSecondaryContainer,
                                  shadows: [
                                    Shadow(
                                      blurRadius:
                                          4, 
                                      offset: Offset(
                                          0, 4), 
                                      color: color.surfaceContainer, // Cor da sombra
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          AddVerticalSpace(size.width * 0.05),
                          Text('Vamos Começar!',
                              style: TextStyle(
                                  color: color.onSecondaryContainer,
                                  fontSize: size.width * 0.05,
                                  fontWeight: FontWeight.w600)),
                          AddVerticalSpace(size.width * 0.02),
                          Text('Cadastre-se abaixo',
                              style: TextStyle(
                                  color: color.onSecondaryContainer,
                                  fontSize: size.width * 0.07,
                                  fontWeight: FontWeight.w600)),
                          AddVerticalSpace(size.width * 0.05),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.1),
                      child: Column(
                        children: [
                          InputText("Usuário", _user, false),
                          AddVerticalSpace(size.width * 0.04),
                          InputText("E-Mail", _email, false),
                          AddVerticalSpace(size.width * 0.04),
                          InputText('Senha', _passwd, true),
                          AddVerticalSpace(size.width * 0.04),
                          InputText('Confirme a Senha', _confirmPasswd, true),
                          AddVerticalSpace(size.width * 0.04),
                          SizedBox(
                            width: double.infinity,
                            child: CustomButton(
                                'Criar',
                                color.onSecondaryContainer,
                                color.secondary,
                                context,
                                LoginPage()),
                          ),
                          AddVerticalSpace(size.width * 0.08),
                          AddDividerLine(),
                         AddVerticalSpace(size.width * 0.08),
                          SizedBox(
                            width: double.infinity,
                            child: CustomButton(
                                'Entrar na Conta',
                                color.onPrimaryContainer,
                                color.onSurface,
                                context,
                                LoginPage()),
                          ),
                          AddVerticalSpace(size.height * 0.1),
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
