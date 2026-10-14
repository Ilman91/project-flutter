import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  //Kunci global form
  final _formKey = GlobalKey<FormState>();
  //Variable textbox
  final TextEditingController _nameController = TextEditingController();
  var _outputName = '';

  @override
  void dispose() {
    //Menghapus inputan yang sudah diisi
    _nameController.dispose();
    //Mengeksekusi method dispose
    super.dispose();
  }

  void _submitForm() {
    setState(() {
      _outputName = _nameController.text;
    });
    _outputName = _nameController.text;
    print("Nama Lengkap: ${_nameController.text}");
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Nama Lengkap: ${_nameController.text}')),
    );

    //Memangggil method clear
    _clearInput();
  }

  void _clearInput() {
    //Membersihkan isi textbox
    _nameController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Form Page')),
        body: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      labelText: 'Enter your name',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Nama tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 10),
                OutlinedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _submitForm();
                    }
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.teal, width: 2),
                  ),
                  child: Text('Simpan'),
                ),
                Text(
                  'Nama Lengkap: ${_outputName.isEmpty ? "" : _outputName}',
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
