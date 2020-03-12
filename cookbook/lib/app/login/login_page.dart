import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  List names = new List();
  List filteredNames = new List(); // names filtered by search text
  Widget _appBarTitle = new Text('Login');
  final _formKey = GlobalKey<FormState>();
  bool submitted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFFCE6),
        appBar: _buildBar(context),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Image.asset(
                    'assets/images/flutter.png',
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(
                        left: 24.0, right: 24.0, bottom: 24.0),
                    color: Colors.transparent,
                    child: new Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.all(
                              const Radius.circular(15.0))),
                      child: Center(
                          child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(
                                  bottom: 10.0, top: 10.0),
                              child: TextFormField(
                                style: TextStyle(fontSize: 16.0),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  labelStyle: TextStyle(fontSize: 16.0),
                                  border: OutlineInputBorder(),
                                  labelText: 'E-mail',
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  bottom: 10.0, top: 10.0),
                              child: TextFormField(
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter some text';
                                  } else if (value != '123' && submitted) {
                                    return 'Incorrect Password';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  if (value.contains('123')) {
                                    print('123');
                                    return 'Text';
                                  }
                                  return null;
                                },
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelStyle: TextStyle(fontSize: 16.0),
                                  border: OutlineInputBorder(),
                                  labelText: 'Password',
                                ),
                              ),
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16.0),
                                child: ButtonTheme(
                                  minWidth: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  child: RaisedButton(
                                    padding: const EdgeInsets.only(top: 12, bottom: 12),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(5),
                                        side: BorderSide(color: Colors.red)),
                                    elevation: 10,
                                    color: Colors.red,
                                    onPressed: () {
                                      // Validate returns true if the form is valid, or false
                                      // otherwise.
                                      submitted = true;
                                      if (_formKey.currentState.validate()) {
                                        _formKey.currentState.save();
                                        // If the form is valid, display a Snackbar.
/*                       Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text('Processing Data'))); */

                                        Navigator.pushNamed(context, '/second');
                                      }
                                    },
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      )),
                    )),
              ],
            ),
          ),
        ));
  }

  Widget _buildBar(BuildContext context) {
    return new AppBar(
      backgroundColor: Colors.red,
      centerTitle: true,
      title: _appBarTitle,
    );
  }
}
