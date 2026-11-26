import 'package:flutter/material.dart';
import 'package:notely_app/features/auth/otp_screen.dart';

class EmailLoginScreen extends StatefulWidget {
  EmailLoginScreen({super.key});

  @override
  State<EmailLoginScreen> createState() => _EmailLoginScreenState();
}

class _EmailLoginScreenState extends State<EmailLoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter an Email address';
                  }
                  if (!value.contains('@')) {
                    return 'Please Enter Valid email address';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  label: Text('Email'),
                  hintText: 'mail@mail.com',
                ),
              ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            OtpScreen(email: _emailController.text.trim()),
                      ),
                    );
                  }
                },
                child: const Text('Send Code'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
