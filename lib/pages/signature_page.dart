import 'package:flutter/material.dart';
import 'package:tcc/widgets/helper_widgets.dart';

class SignaturePage extends StatelessWidget {
  const SignaturePage({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: color.surfaceTint,
      body: Center(
        child: Column(
          children: [
            AddVerticalSpace(size.width * 0.3),
            HoverableCard(),
            AddVerticalSpace(size.width * 0.2),
            vipDescription(context, color),
          ],
        ),
      ),
    );
  }

  Widget vipDescription(BuildContext context, final color) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: Image.asset('assets/images/crown-icon.png', width: 30),
            ),
            AddHorizontalSpace(8),
            Text(
              'O que está incluido no VIP',
              style: TextStyle(
                color: color.onPrimaryContainer,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            AddHorizontalSpace(8),
            Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: Image.asset('assets/images/crown-icon.png', width: 30),
            ),
          ],
        ),
        AddVerticalSpace(24),
        Container(
          width: 320,
          height: 250,
          decoration: BoxDecoration(
              color: color.onSecondaryContainer,
              borderRadius: BorderRadius.circular(20.0),
              border:  Border.all(color: color.tertiary, width: 2),
              boxShadow: [
                BoxShadow(
                  color: color.surfaceContainer,
                  offset: Offset(0, 4),
                  blurRadius: 4,
                ),
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                leading: Icon(Icons.check, size: 20),
                iconColor: color.primary,
                title: Text('300 pontos diariamente',
                    style: TextStyle(
                        fontSize: 14, color: color.onPrimaryContainer, fontWeight: FontWeight.w500)),
              ),
              ListTile(
                leading: Icon(Icons.check, size: 20),
                iconColor: color.primary,
                title: Text('Sem limite de lembretes',
                    style: TextStyle(
                        fontSize: 14, color: color.onPrimaryContainer, fontWeight: FontWeight.w500)),
              ),
              ListTile(
                leading: Icon(Icons.check, size: 20),
                iconColor: color.primary,
                title: Text('Cupons e promoções',
                    style: TextStyle(
                        fontSize: 14, color: color.onPrimaryContainer, fontWeight: FontWeight.w500)),
              ),
              ListTile(
                leading: Icon(Icons.check, size: 20),
                iconColor: color.primary,
                title: Text('Sem anúncios',
                    style: TextStyle(
                        fontSize: 14, color: color.onPrimaryContainer, fontWeight: FontWeight.w500)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class HoverableCard extends StatefulWidget {
  const HoverableCard({super.key});

  @override
  State<HoverableCard> createState() => _HoverableCardState();
}

class _HoverableCardState extends State<HoverableCard> {
  bool _isHover = false;
  bool _isHover2 = true;
  bool _isHover3 = false;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTapDown: (_) {
            setState(() {
              _isHover = true;
              _isHover2 = false;
              _isHover3 = false;
            });
          },
          onTapUp: (_) {
            setState(() {
              _isHover = true;
              _isHover2 = false;
              _isHover3 = false;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
            width: _isHover ? 139 : 111,
            height: _isHover ? 185 : 162,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: color.onSurface,
                border: _isHover
                    ? Border.all(color: color.tertiary, width: 2)
                    : Border.all(color: color.surface, width: 2),
                boxShadow: [
                  BoxShadow(
                    color: color.surfaceContainer,
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  ),
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Mensal',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: color.surface)),
                SizedBox(height: 24),
                Text('R\$ 15,99',
                    style: TextStyle(
                        fontSize: 12, color: color.onPrimaryContainer, fontWeight: FontWeight.w600)),
                Text('/mensal',
                    style: TextStyle(
                        fontSize: 12, color: color.onPrimaryContainer, fontWeight: FontWeight.w600)),
                SizedBox(height: 24),
                Text('Pagamento',
                    style: TextStyle(
                        fontSize: 9, color: color.onPrimaryContainer, fontWeight: FontWeight.w500)),
                Text('Mensal',
                    style: TextStyle(
                        fontSize: 9, color: color.onPrimaryContainer, fontWeight: FontWeight.w500)),
              ],
            ),
          ),
        ),
        AddHorizontalSpace(12),
        GestureDetector(
          onTapDown: (_) {
            setState(() {
              _isHover = false;
              _isHover2 = true;
              _isHover3 = false;
            });
          },
          onTapUp: (_) {
            setState(() {
              _isHover = false;
              _isHover2 = true;
              _isHover3 = false;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
            width: _isHover2 ? 139 : 111,
            height: _isHover2 ? 185 : 162,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                border: _isHover2
                    ? Border.all(color: color.tertiary, width: 2)
                    : Border.all(color: color.surface, width: 2),
                boxShadow: [
                  BoxShadow(
                    color: color.surfaceContainer,
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  ),
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Anual',
                    style: TextStyle(fontSize: 14, color: color.surface, fontWeight: FontWeight.w700)),
                SizedBox(height: 24),
                Text('R\$ 119,99',
                    style: TextStyle(
                        fontSize: 12, color: color.onPrimaryContainer, fontWeight: FontWeight.w600)),
                Text('/anual',
                    style: TextStyle(
                        fontSize: 12, color: color.onPrimaryContainer, fontWeight: FontWeight.w600)),
                SizedBox(height: 24),
                Text('Pagamento',
                    style: TextStyle(
                        fontSize: 9, color: color.onPrimaryContainer, fontWeight: FontWeight.w500)),
                Text('Anual',
                    style: TextStyle(
                        fontSize: 9, color: color.onPrimaryContainer, fontWeight: FontWeight.w500)),
              ],
            ),
          ),
        ),
        AddHorizontalSpace(12),
        GestureDetector(
          onTapDown: (_) {
            setState(() {
              _isHover = false;
              _isHover2 = false;
              _isHover3 = true;
            });
          },
          onTapUp: (_) {
            setState(() {
              _isHover = false;
              _isHover2 = false;
              _isHover3 = true;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
            width: _isHover3 ? 139 : 111,
            height: _isHover3 ? 185 : 162,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
               border: _isHover3
                    ? Border.all(color: color.tertiary, width: 2)
                    : Border.all(color: color.surface, width: 2),
                boxShadow: [
                  BoxShadow(
                    color: color.surfaceContainer,
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  ),
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Semanal',
                    style: TextStyle(
                        fontSize: 14,
                        color: color.surface,
                        fontWeight: FontWeight.w700)),
                SizedBox(height: 24),
                Text('R\$ 5,99',
                    style: TextStyle(
                        fontSize: 12, color: color.onPrimaryContainer, fontWeight: FontWeight.w600)),
                Text('/mensal',
                    style: TextStyle(
                        fontSize: 12, color: color.onPrimaryContainer, fontWeight: FontWeight.w600)),
                SizedBox(height: 24),
                Text('Pagamento',
                    style: TextStyle(
                        fontSize: 9, color: color.onPrimaryContainer, fontWeight: FontWeight.w500)),
                Text('Semanal',
                    style: TextStyle(
                        fontSize: 9, color: color.onPrimaryContainer, fontWeight: FontWeight.w500)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
