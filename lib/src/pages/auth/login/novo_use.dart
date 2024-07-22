import 'package:flutter/material.dart';
import '../../../core/theme/seven_manager_theme.dart';
import 'package:validatorless/validatorless.dart';

class NovoUser extends StatelessWidget {
  const NovoUser({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final TextEditingController _controllerNome = TextEditingController();
    final TextEditingController _controllerTelefone = TextEditingController();
    final TextEditingController _controllerNascimento = TextEditingController();
    final TextEditingController _controllerEmail = TextEditingController();
    final TextEditingController _controllerCriarSenha = TextEditingController();
    final TextEditingController _controllerRepetirSenha = TextEditingController();



    return Scaffold(
      appBar: AppBar(
        backgroundColor: SevenManagerTheme.tealBlue,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 715,
                      width: double.infinity,
                      decoration: const ShapeDecoration(
                        color: SevenManagerTheme.whiteColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        const Center(
                          child: Text(
                            'Criar Usuário',
                            style: TextStyle(
                                color: SevenManagerTheme.tealBlue,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: TextFormField(
                            controller: _controllerNome,
                            validator: Validatorless.multiple([
                              Validatorless.required('Campo obrigatório'),
                              Validatorless.min(3, 'Nome muito pequeno'),
                            ]),
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.person,
                                size: 30,
                                color: SevenManagerTheme.tealBlue,
                              ),
                              labelText: 'Nome:',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: TextFormField(
                            controller: _controllerTelefone,
                            validator: Validatorless.multiple([
                              Validatorless.required('Campo obrigatório'),
                              Validatorless.min(3, 'Número invalido'),
                            ]),
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.phone,
                                size: 30,
                                color: SevenManagerTheme.tealBlue,
                              ),
                              labelText: 'Telefone:',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: TextFormField(
                            controller: _controllerNascimento,
                            validator: Validatorless.multiple([
                              Validatorless.required('Campo obrigatório'),
                              Validatorless.min(3, 'Data de Nascimento invalida'),
                            ]),
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.calendar_today,
                                size: 30,
                                color: SevenManagerTheme.tealBlue,
                              ),
                              labelText: 'Nascimento:',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: TextFormField(
                            controller: _controllerEmail,
                            validator: Validatorless.multiple([
                              Validatorless.required('Campo obrigatório'),
                              Validatorless.min(8, 'E-mail invalida'),
                            ]),
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.email,
                                size: 30,
                                color: SevenManagerTheme.tealBlue,
                              ),
                              labelText: 'E-mail:',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: TextFormField(
                            controller: _controllerCriarSenha,
                            validator: Validatorless.multiple([
                              Validatorless.required('Campo obrigatório'),
                              Validatorless.min(3, 'A senha deve conter 6 caracteres'),
                            ]),
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.key,
                                size: 30,
                                color: SevenManagerTheme.tealBlue,
                              ),
                              labelText: 'Criar Senha',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: TextFormField(
                            controller: _controllerRepetirSenha,
                            validator: Validatorless.multiple([
                              Validatorless.required('Campo obrigatório'),
                              Validatorless.min(
                                  3, 'A senha deve conter 6 caracteres'),
                                  Validatorless.compare(_controllerCriarSenha, 'As senhas não correspondem. Tente novamente')
                            ]),
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.key,
                                size: 30,
                                color: SevenManagerTheme.tealBlue,
                              ),
                              labelText: 'Repitir Senha',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                if (formKey.currentState?.validate() == true) {
                                  Navigator.of(context).pushNamed('/novoUserFinal');
                                } else {
                                  print('E-mail ou Senha Invalida');
                                }
                              },
                              child: const Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Text('Avançar'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
