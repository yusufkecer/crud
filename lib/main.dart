import 'package:flutter/material.dart';
import 'package:untitled2/addEmployee.dart';
import 'package:untitled2/emloyeClass.dart';

void main() {
  runApp(
    MaterialApp(
      home: Myapp(),
    ),
  );
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);
  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {

  List <employee>employeList = [
    employee.withName(
      name: "Veli Bacik",
      age: 25,
      TC: "12323",
    ),
    employee.withName(
      name: "Cem Karaca",
      age: 23,
      TC: "12321233",
    ),
    employee.withName(
      name: "Sinan Oktay",
      age: 19,
      TC: "12323",
    )
  ];

  employee selectEmployee = employee.withName(name: "", age: 23, TC: "");
  String? selectEmployees;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Personel Sayfası"),
      ),
      body: Column(children: [
        Expanded(
          child: ListView.builder(
            itemCount: employeList.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(employeList[index].name.toString()),
                subtitle: Text(employeList[index].TC.toString()),
                trailing: Text(employeList[index].age.toString()),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(employee.imageObject.image),
                ),
                onTap: () {
                  selectEmployees = employeList[index].name;
                  selectEmployee = employeList[index];
                  setState(() {

                    employeList.remove(selectEmployee);

                  });
                  print(employeList.length);
                },
              );
            },
          ),
        ),
        Text("Secili Personel: ${selectEmployees}"),
        ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => addEmloyee(employeList),)).then((value) {setState(() {});});
            },
            icon: Icon(Icons.abc),
            label: Text("Personel EKle")),
        SizedBox(
          height: 60,
        )
      ]),
    );
  }
}
