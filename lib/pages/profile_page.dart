import 'package:flutter/material.dart';
import 'package:tcc/pages/login_page.dart';
import 'package:tcc/widgets/helper_widgets.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;

    final List<Widget> list = <Widget>[
      ProfileContainer(
          context, LoginPage(), "Loja", Icons.shopping_bag_outlined, color),
      ProfileContainer(context, LoginPage(), "Empresas Parceiras",
          Icons.store_mall_directory_outlined, color),
      ProfileContainer(context, LoginPage(), "Suporte", Icons.question_mark, color),
      ProfileContainer(
          context, LoginPage(), "Configurações", Icons.settings_outlined, color),
      ProfileContainer(context, LoginPage(), "Sair", Icons.logout_outlined, color),
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AddVerticalSpace(size.width * 0.2),
            ProfilePhoto(context, color),
            AddVerticalSpace(size.width * 0.02),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: List.generate(
                  list.length,
                  (index) {
                    return SizedBox(
                      height: 95,
                      child: Center(
                        child: list[index],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget ProfilePhoto(BuildContext context, final color) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      CircleAvatar(
        radius: 74,
        backgroundImage: NetworkImage(
            'https://images.pexels.com/photos/4323330/pexels-photo-4323330.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
      ),
      const SizedBox(height: 12),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Nome',
            style: TextStyle(
              fontWeight: FontWeight.w400,
                fontSize: 16, color: color.onPrimaryContainer)
          ),
          const SizedBox(width: 4),
          InkWell(
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ));
            },
            child: Icon(
              Icons.edit_outlined,
              color: color.primary,
              size: 18,
            ),
          ),
        ],
      ),
    ],
  );
}
