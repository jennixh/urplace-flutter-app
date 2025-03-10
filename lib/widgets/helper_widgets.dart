import 'package:flutter/material.dart';

Widget AddVerticalSpace(double height) {
  return SizedBox(
    height: height,
  );
}

Widget AddHorizontalSpace(double width) {
  return SizedBox(
    width: width,
  );
}

Widget AddDividerLine() {
  return Center(
    child: SizedBox(
      height: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // Centraliza os textos
        children: [
          Expanded(
            child: Divider(color: Colors.white, thickness: 1), // Linha esquerda
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Ou',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Divider(color: Colors.white, thickness: 1), // Linha direita
          ),
        ],
      ),
    ),
  );
}

Widget InputText(String text, TextEditingController controller, bool hideText) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Color(0x33000000),
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Center(
        child: TextFormField(
          obscureText: hideText,
          controller: controller,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.all(20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50), // Mantém o borderRadius
              borderSide: BorderSide.none, // Remove a borda
            ),
            hintText: text,
          ),
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
    ),
  );
}

Widget CustomButton(String text, Color textColor, Color color,
    BuildContext context, Widget destiny) {
  final colorTheme = Theme.of(context).colorScheme;

  return Center(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 0),
      width: 750,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: colorTheme
                .surfaceContainer, 
            blurRadius: 4, 
            offset: Offset(0, 4), 
          ),
        ],
      ),
      child: ElevatedButton(
          onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => destiny),
                ),
              },
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            foregroundColor: textColor,
            textStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
          child: Text(text)),
    ),
  );
}

Widget ProfileContainer(context, Widget page, String text, IconData icon, final color) {
  return Container(
    width: 380,
    height: 70,
    decoration: BoxDecoration(
        color: color.primaryContainer,
        borderRadius: BorderRadius.circular(20), // Bordas arredondadas
        boxShadow: [
          BoxShadow(
            color: color.surfaceContainer,
            offset: const Offset(0, 4),
            blurRadius: 4,
          ),
        ]),
    child: Center(
      child: ListTile(
        leading: Icon(icon, size: 40),
        iconColor: Theme.of(context).colorScheme.primary,
        title: Text(text,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).colorScheme.onPrimaryContainer)),
        onTap: () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => page,
          ),
        ),
      ),
    ),
  );
}

Widget NavBarIcon(
  BuildContext context,
  IconData icon,
  double borderSize,
  double iconSize,
) {
  final color = Theme.of(context).colorScheme;
  return Stack(
    clipBehavior: Clip.antiAlias,
    children: [
      Container(
        width: borderSize,
        height: borderSize,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Icon(
          icon,
          size: iconSize,
          color: color.primary,
        ),
      ),
    ],
  );
}
