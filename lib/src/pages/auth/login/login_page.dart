import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../core/constants/app_images.dart';
import '../../../core/theme/seven_manager_theme.dart';
import 'widget/image_logo_widget.dart';
// import '../../../core/constants/app_images.dart';
// import '../../../core/theme/seven_manager_theme.dart';
// import 'package:validatorless/validatorless.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.sizeOf(context);

    return Scaffold(
        body: Center(
            child: Column(
      children: [
        const Expanded(
          flex: 1,
          child: ImageLogoWidget(
            pathImage: AppImages.logoIasd,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            height: sizeOf.height,
            width: double.infinity,
            decoration: const ShapeDecoration(
              color: SevenManagerTheme.whiteColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(60.0),
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(children: [
                const SizedBox(height: 30),
                Image.asset(AppImages.logoGApp),
                const SizedBox(height: 52),
                TextFormField(
                  style: const TextStyle(color: SevenManagerTheme.tealBlue),
                  decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        size: 28,
                      ),
                      label: Text('E-mail')),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  obscureText: !_isVisible,
                  style: const TextStyle(color: SevenManagerTheme.tealBlue),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.key,
                      size: 28,
                    ),
                    label: const Text('Senha'),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(
                          () {
                            _isVisible = !_isVisible;
                          },
                        );
                      },
                      icon: _isVisible
                          ? const Icon(
                              Icons.visibility,
                              size: 28,
                            )
                          : const Icon(
                              Icons.visibility_off,
                              size: 28,
                            ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('routeName');
                        }, child: const Text('Entrar'))
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/recover');
                  },
                  child: const Text('Esqueci minha Senha'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Não tem uma conta?'),
                    TextButton(
                      onPressed: () {Navigator.of(context).pushNamed('/register');},
                      child: const Text('Cadastre-se'),
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ),
      ],
    ))
        //  SingleChildScrollView(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       const SizedBox(height: 50),
        //       Padding(
        //         padding: const EdgeInsets.all(15.0),
        //         child: Align(
        //           alignment: Alignment.bottomCenter,
        //           child: Container(
        //             width: 200,
        //             height: 200,
        //             decoration: BoxDecoration(
        //               border: Border.all(
        //                 color: SevenManagerTheme.greenYellow,
        //                 width: 5.0,
        //               ),
        //               borderRadius: BorderRadius.circular(100.0),
        //             ),
        //             child: Image.asset(
        //               AppImages.logoIasd,
        //               fit: BoxFit.cover,
        //             ),
        //           ),
        //         ),
        //       ),
        //       const SizedBox(height: 33),
        //       Center(
        //         child: Stack(
        //           children: [
        //             Align(
        //               alignment: Alignment.bottomCenter,
        //               child: Container(
        //                 height: 570,
        //                 width: double.infinity,
        //                 decoration: const ShapeDecoration(
        //                   color: SevenManagerTheme.whiteColor,
        //                   shape: RoundedRectangleBorder(
        //                     borderRadius: BorderRadius.only(
        //                       topRight: Radius.circular(60.0),
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.all(12.0),
        //               child: Form(
        //                 key: formKey,
        //                 child: Column(
        //                   children: [
        //                     const SizedBox(height: 20),
        //                     Image.asset(AppImages.logoGApp),
        //                     const SizedBox(height: 50),
        //                     Padding(
        //                       padding: const EdgeInsets.all(12.0),
        //                       child: TextFormField(
        //                         validator: Validatorless.multiple([
        //                           Validatorless.required('O nome é obrigatório'),
        //                           Validatorless.min(3,
        //                               'O nome deve ter pelo menos 3 caracteres'),
        //                         ]),
        //                         keyboardType: TextInputType.emailAddress,
        //                         decoration: const InputDecoration(
        //                           prefixIcon: Icon(
        //                             Icons.email,
        //                             size: 30,
        //                             color: SevenManagerTheme.tealBlue,
        //                           ),
        //                           labelText: 'E-mail:',
        //                         ),
        //                       ),
        //                     ),
        //                     Padding(
        //                       padding: const EdgeInsets.all(12.0),
        //                       child: TextFormField(
        //                         validator: Validatorless.multiple([
        //                           Validatorless.required(
        //                               'Digite uma senha válida'),
        //                           Validatorless.min(
        //                               6, 'A senha deve ter 6 digitos'),
        //                         ]),
        //                         keyboardType: TextInputType.number,
        //                         decoration: const InputDecoration(
        //                           prefixIcon: Icon(
        //                             Icons.key,
        //                             size: 30,
        //                             color: SevenManagerTheme.tealBlue,
        //                           ),
        //                           suffixIcon: IconButton(
        //                               onPressed: null,
        //                               icon: Icon(
        //                                 Icons.visibility,
        //                                 size: 30,
        //                                 color: SevenManagerTheme.tealBlue,
        //                               )),
        //                           labelText: 'Senha:',
        //                         ),
        //                       ),
        //                     ),
        //                     Padding(
        //                       padding: const EdgeInsets.all(12.0),
        //                       child: SizedBox(
        //                         width: double.infinity,
        //                         child: ElevatedButton(
        //                           onPressed: () {
        //                             if (formKey.currentState?.validate() ==
        //                                 true) {
        //                               Navigator.of(context)
        //                                   .pushNamed('/homePage');
        //                             } else {
        //                               print('E-mail ou Senha Invalida');
        //                             }
        //                           },
        //                           child: const Padding(
        //                             padding: EdgeInsets.all(15.0),
        //                             child: Text('Entrar'),
        //                           ),
        //                         ),
        //                       ),
        //                     ),
        //                     const SizedBox(height: 30),
        //                     TextButton(
        //                       onPressed: () {},
        //                       child: const Text('Esqueci minha Senha'),
        //                     ),
        //                     TextButton(
        //                       onPressed: () {Navigator.of(context)
        //                                   .pushNamed('/novoUser');},
        //                       child: const Text('Criar Usuário'),
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        );
  }
}
