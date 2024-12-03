import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String gender = 'Female';
  String status = 'Single';
  double age = 18;
  bool receiveNotifications = false;
  bool agreeToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Sign Up',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 16.0),
            Image.asset(
              'assets/Logo.jpg',
              height: 100.0,
            ),
            const SizedBox(height: 16.0),
            const Center(
              child: Text(
                'Volkswagen',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                const Text('Gender'),
                const SizedBox(width: 10),
                Expanded(
                  child: RadioListTile<String>(
                    title: const Text('Male'),
                    value: 'Male',
                    groupValue: gender,
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<String>(
                    title: const Text('Female'),
                    value: 'Female',
                    activeColor: Colors.blue,
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            DropdownButtonFormField<String>(
              value: status,
              decoration: const InputDecoration(
                labelText: 'Status',
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
              ),
              items: const [
                DropdownMenuItem(
                  value: 'Single',
                  child: Text('Single'),
                ),
                DropdownMenuItem(
                  value: 'Married',
                  child: Text('Married'),
                ),
                DropdownMenuItem(
                  value: 'Divorced',
                  child: Text('Divorced'),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  status = value!;
                });
              },
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                Text('Age: ${age.toInt()}'),
                const SizedBox(width: 10),
                Expanded(
                  child: Slider(
                    value: age,
                    min: 0,
                    max: 100,
                    divisions: 100,
                    activeColor: Colors.blue,
                    label: age.toInt().toString(),
                    onChanged: (value) {
                      setState(() {
                        age = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            SwitchListTile(
              title: const Text('Receive Notifications'),
              value: receiveNotifications,
              activeColor: Colors.blue,
              onChanged: (value) {
                setState(() {
                  receiveNotifications = value;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('I agree to the Terms and Conditions'),
              value: agreeToTerms,
              activeColor: Colors.blue,
              onChanged: (value) {
                setState(() {
                  agreeToTerms = value!;
                });
              },
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              maxLines: 3,
              decoration: const InputDecoration(
                labelText: 'Notes',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: InkWell(
                  onTap: () {},
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
