import 'package:flutter/material.dart';
import 'package:first_app/submitted_data_page.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String name = '';
  String email = '';
  String message = '';
  int messageLength = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Registration Form')),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                    hintText: 'Name',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Provide your name';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    name = value!.trim();
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                    hintText: 'Email',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Provide a valid email';
                    }
                    if (!value.contains('@') || !value.contains('.')) {
                      return 'Provide a valid email';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    email = value!.trim();
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  maxLines: 5,
                  maxLength: 200,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                    hintText: 'Message',
                    counterText: '',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      messageLength = value.trim().length;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Input your message';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    message = value!.trim();
                  },
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '$messageLength/200',
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SubmittedDataPage(
                              name: name,
                              email: email,
                              message: message,
                            ),
                          ),
                        );
                      }
                    },
                    child: const Text('Process'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
