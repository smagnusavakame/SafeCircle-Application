import 'package:flutter/material.dart';
import 'package:safecircle/constants/constants.dart';

enum MemberType { relative, friend, other }

class Member {
  final String name;
  final MemberType type;
  final String phoneNumber;
  final String address;

  Member(this.name, this.type, this.phoneNumber, this.address);
}

class MemberSelectionPage extends StatefulWidget {
  const MemberSelectionPage({Key? key}) : super(key: key);

  @override
  _MemberSelectionPageState createState() => _MemberSelectionPageState();
}

class _MemberSelectionPageState extends State<MemberSelectionPage> {
  List<Member> members = [
    Member('Alice', MemberType.relative, '1234567890', 'address1'),
    Member('Bob', MemberType.friend, '0987654321', 'address2'),
    Member('Charlie', MemberType.other, '2345678901', 'address3'),
    Member('David', MemberType.relative, '5678901234', 'address4')
  ];

  void _addMember(
      String name, MemberType type, String phoneNumber, String address) {
    setState(() {
      members.add(Member(name, type, phoneNumber, address));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kBlack,
        title: const Text('Select Member'),
        titleTextStyle: const TextStyle(color: kWhite, fontSize: 20),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.0,
            ),
            itemCount: members.length + 1,
            itemBuilder: (context, index) {
              if (index < members.length) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/mapPage');
                  },
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.black,
                          child: Text(members[index].name[0],
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 24)),
                        ),
                        const SizedBox(height: 10),
                        Text(members[index].name,
                            style: const TextStyle(fontSize: 18)),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              members.removeAt(index);
                            });
                          },
                          child: const Text('Delete'),
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                return Card(
                  child: IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          String? name;
                          MemberType? type;
                          String? phoneNumber;
                          String? address;
                          return AlertDialog(
                            title: const Text('Add a new member'),
                            content: Column(
                              children: [
                                TextField(
                                  decoration: const InputDecoration(
                                    labelText: 'Name',
                                  ),
                                  onChanged: (value) => name = value,
                                ),
                                TextField(
                                  decoration: const InputDecoration(
                                    labelText: 'Phone Number',
                                  ),
                                  onChanged: (value) => phoneNumber = value,
                                ),
                                TextField(
                                  decoration: const InputDecoration(
                                    labelText: 'Address',
                                  ),
                                  onChanged: (value) => address = value,
                                ),
                                DropdownButton<MemberType>(
                                  hint: const Text('Select member type'),
                                  onChanged: (MemberType? newValue) {
                                    setState(() {
                                      type = newValue;
                                    });
                                  },
                                  items:
                                      MemberType.values.map((MemberType value) {
                                    return DropdownMenuItem<MemberType>(
                                      value: value,
                                      child: Text(
                                          value.toString().split('.').last),
                                    );
                                  }).toList(),
                                ),
                              ],
                            ),
                            actions: [
                              TextButton(
                                child: const Text('ADD'),
                                onPressed: () {
                                  if (name != null &&
                                      type != null &&
                                      phoneNumber != null &&
                                      address != null) {
                                    _addMember(
                                        name!, type!, phoneNumber!, address!);
                                  }
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
