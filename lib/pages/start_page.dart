import 'package:flutter/material.dart';
import 'package:tcc/main.dart';
import 'package:tcc/pages/login_page.dart';
import 'package:tcc/widgets/helper_widgets.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  MyAppState appState = MyAppState();

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: Center(
      child: Stack(
        children: [
          Positioned(
            top: size.width * - 0.1,
            left: size.width * - 0.2,
            child: Container(
              height: size.width * 0.5,
              width: size.width * 0.5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color.primary, //definir paleta
              ),
            ),
          ),
          Positioned(
            top: size.width * - 0.3,
            left: size.width * 0.1,
            child: Container(
              height: size.width * 0.5,
              width: size.width * 0.5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color.tertiary, //definir paleta
              ),
            ),
          ),
          Positioned(
            top: size.width * 0.6,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Image.asset('assets/images/start-page.png', width: size.width * 0.8, height: size.width * 0.8),
                Text(
                  'Não esqueça de nada com UrPlace',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: size.width * 0.04,
                    color: color.onPrimaryContainer,
                  ),
                  textAlign: TextAlign.center,
                ),
                AddVerticalSpace(size.height * 0.02),
                SizedBox(
                  width: size.width * 0.7,
                  child: Text(
                    'Vamos cuidar das suas reuniões, necessidades e tudo que precisar de um lembrete.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: size.width * 0.03,
                      fontWeight: FontWeight.w400,
                      color: color.onPrimaryContainer,
                    ),
                  ),
                ),
                AddVerticalSpace(size.height * 0.05),
                SizedBox(
                  width: size.width * 0.8,
                  height: size.width * 0.12,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                      backgroundColor: color.primary,
                      foregroundColor: color.onSecondaryContainer,
                    ),
                    onPressed: () => {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()
                        ),
                      ),
                    },
                    child: Text(
                      'Começar',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}