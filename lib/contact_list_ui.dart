import 'package:flutter/material.dart';

import 'contact.dart';

class ContactListUI extends StatefulWidget {
  const ContactListUI({super.key});

  @override
  State<ContactListUI> createState() => _ContactListUIState();
}

class _ContactListUIState extends State<ContactListUI> {
  final TextEditingController _nameTEController = TextEditingController();
  final TextEditingController _numberTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  List<Contact> contacts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact List'),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              _buildForm(),
              _buildListTile()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListTile() {
    return ListView.separated(
              primary: false,
              shrinkWrap: true,
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onLongPress: () {
                    myAlertDialog(context: context, index: index);
                  },
                  child: ListTile(
                    leading: const Icon(Icons.person),
                    title: Text(contacts[index].name),
                    titleTextStyle: const TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold),
                    tileColor: Colors.white60,
                    subtitle: Text(contacts[index].number),
                    trailing: const Icon(
                      Icons.phone,
                      color: Colors.blue,
                    ),
                  ),
                );
              },
              separatorBuilder: (_, __) => const Divider(),
            );
  }

  Widget _buildForm() {
    return Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _nameTEController,
                    autovalidateMode: AutovalidateMode.disabled,
                    decoration: const InputDecoration(
                        labelText: 'Name', hintText: 'Name'),
                    validator: (String? value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Write Your Contact Name';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: _numberTEController,
                    autovalidateMode: AutovalidateMode.disabled,
                    decoration: const InputDecoration(
                        labelText: 'Number ', hintText: 'Number'),
                    validator: (String? value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Write Your Contact Number';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _addContact();
                      }
                    },
                    child: const Text('Add'),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            );
  }

  myAlertDialog({required context, required index}) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            title: const Text('Confirmation'),
            content: const Text('Are you sure for Delete?'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.sd_card_alert,
                    color: Colors.blue,
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    _deleteContact(index: index);
                  },
                  child: const Icon(
                    Icons.delete_outline,
                    color: Colors.blue,
                  )),
            ],
          );
        });
  }

  _addContact() {
    String name = _nameTEController.text.trim();
    String number = _numberTEController.text.trim();
    Contact contact = Contact(name: name, number: number);
    contacts.add(contact);
    _numberTEController.clear();
    _nameTEController.clear();
    setState(() {});
  }

  _deleteContact({required index}) {
    contacts.removeAt(index);
    setState(() {});
  }

  @override
  void dispose() {
    _nameTEController.dispose();
    _numberTEController.dispose();
    super.dispose();
  }
}
