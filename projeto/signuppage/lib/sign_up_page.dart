import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isHover = false;
  bool _obscureText = true;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 440,
              width: 440,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 400),
              top: _isHover ? -8 : 0,
              right: _isHover ? 8 : 0,
              child: InkWell(
                onTap: () {},
                onHover: (hover) {
                  setState(() {
                    _isHover = hover;
                  });
                },
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                borderRadius: BorderRadius.all(Radius.circular(12)),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  height: 440,
                  width: 440,
                  decoration: BoxDecoration(
                    color: _isHover ? Color.fromARGB(255, 148, 26, 138) : Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    border: _isHover ? Border.all(color: Colors.transparent) : Border.all(color: Colors.transparent),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AnimatedOpacity(
                          opacity: _isHover ? 1.0 : 0.0,
                          duration: Duration(milliseconds: 200),
                          child: Text(
                            'Olá, eu estava escondido',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey), // Alterando a cor da linha de foco para cinza
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          controller: _passwordController,
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            labelText: 'Senha',
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey), // Alterando a cor da linha de foco para cinza
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Esqueceu sua senha?'),
                            ElevatedButton(
                              onPressed: () {
                                // TODO: Implementar ação do botão
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent, // Alterando a cor do botão para transparente
                              ),
                              child: Text('Entrar'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
