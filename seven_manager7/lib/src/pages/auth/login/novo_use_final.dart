import 'package:flutter/material.dart';
import '../../../core/theme/seven_manager_theme.dart';
class NovoUserFinal extends StatefulWidget {
  const NovoUserFinal({super.key});

  @override
  _NovoUserFinalState createState() => _NovoUserFinalState();
}

class _NovoUserFinalState extends State<NovoUserFinal> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final List<String> habilidades = [
    'Pregar',
    'Cantar',
    'Tocar',
    'Ensinar',
    'Evangelizar',
    'Som e Imagem',
    'Recepção',
    'Outros',
  ];

  final Map<String, bool> habilidadesSelecionadas = {
    'Pregar': false,
    'Cantar': false,
    'Tocar': false,
    'Ensinar': false,
    'Evangelizar': false,
    'Som e Imagem': false,
    'Recepção': false,
    'Outros': false,
  };

  final TextEditingController _controllerOutrasHabilidades = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: SevenManagerTheme.tealBlue,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
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
                            'Finalizar Perfil',
                            style: TextStyle(
                                color: SevenManagerTheme.tealBlue,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Stack(
                              children: [
                                Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    color: SevenManagerTheme.lightCyan,
                                    border: Border.all(
                                      color: SevenManagerTheme.tealBlue,
                                      width: 5.0,
                                    ),
                                    borderRadius: BorderRadius.circular(100.0),
                                  ),
                                  child: const Icon(
                                    Icons.person,
                                    size: 140,
                                    color: SevenManagerTheme.tealBlue,
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: SevenManagerTheme.tealBlue,
                                      ),
                                      color: SevenManagerTheme.greenYellow,
                                      shape: BoxShape.circle,
                                    ),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.camera_alt,
                                        color: SevenManagerTheme.tealBlue,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Text(
                          'Quais são suas habilidades?',
                          style: TextStyle(
                            color: SevenManagerTheme.tealBlue,
                            fontSize: 25,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Primeira coluna de habilidades
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: habilidades
                                    .sublist(0, habilidades.length ~/ 2)
                                    .map(
                                      (habilidade) => Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Checkbox(
                                              value: habilidadesSelecionadas[habilidade],
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  habilidadesSelecionadas[habilidade] =
                                                      value ?? false;

                                                  // Limpar o campo de texto se "Outros" for desmarcado
                                                  if (habilidade == 'Outros' && !(value ?? false)) {
                                                    _controllerOutrasHabilidades.clear();
                                                  }
                                                });
                                              },
                                              activeColor: SevenManagerTheme.tealBlue,
                                            ),
                                            Text(
                                              habilidade,
                                              style: const TextStyle(fontSize: 18),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                              const SizedBox(width: 20), // Espaço entre as duas colunas
                              // Segunda coluna de habilidades
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: habilidades
                                    .sublist(habilidades.length ~/ 2)
                                    .map(
                                      (habilidade) => Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Checkbox(
                                              value: habilidadesSelecionadas[habilidade],
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  habilidadesSelecionadas[habilidade] =
                                                      value ?? false;

                                                  // Limpar o campo de texto se "Outros" for desmarcado
                                                  if (habilidade == 'Outros' && !(value ?? false)) {
                                                    _controllerOutrasHabilidades.clear();
                                                  }
                                                });
                                              },
                                              activeColor: SevenManagerTheme.tealBlue,
                                            ),
                                            Text(
                                              habilidade,
                                              style: const TextStyle(fontSize: 18),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: TextFormField(
                            controller: _controllerOutrasHabilidades,
                            enabled: habilidadesSelecionadas['Outros'] ?? false,
                            
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.edit,
                                size: 30,
                                color: SevenManagerTheme.tealBlue,
                              ),
                              labelText: 'Outras Habilidades',
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
                                  Navigator.of(context).pushNamed('/');
                                } else {
                                  // Ação para caso a validação falhe
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
