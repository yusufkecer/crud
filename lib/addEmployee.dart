import 'package:flutter/material.dart';
import 'package:untitled2/validator.dart';
import 'emloyeClass.dart';

class addEmloyee extends StatefulWidget {
  List<employee> employeeList = [];
  addEmloyee(List<employee> employeeList) {
    this.employeeList = employeeList;
  }

  @override
  State<addEmloyee> createState() => _addEmloyeeState(employeeList);
}

class _addEmloyeeState extends State<addEmloyee> with validator {
  employee addEmployes = employee.withName();
  List<employee> employeeList = [];
  _addEmloyeeState(List<employee> employeeList) {
    this.employeeList = employeeList;
  }
  final formKey = GlobalKey<FormState>();

  String? isimtut;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      appBar: AppBar(
        title: Text("Personel Ekle"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Theme(
                data: ThemeData(
                    colorScheme: ThemeData()
                        .colorScheme
                        .copyWith(primary: Colors.white)),
                child: TextFormField(
                  onSaved: (String? value) {
                    addEmployes.name = value;
                  },
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    prefixIcon: Icon(
                      Icons.password_rounded,
                      size: 20,
                    ),
                    filled: true,
                    fillColor: Colors.black26,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    labelText: "AdSoyad",
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    floatingLabelStyle: const TextStyle(color: Colors.white),
                  ),
                  validator: name,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Theme(
                data: ThemeData(
                    colorScheme: ThemeData()
                        .colorScheme
                        .copyWith(primary: Colors.white)),
                child: TextFormField(
                  onSaved: (String? value) {
                    addEmployes.TC = value;
                  },
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    prefixIcon: Icon(
                      Icons.password_rounded,
                      size: 20,
                    ),
                    filled: true,
                    fillColor: Colors.black26,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    labelText: "TC",
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    floatingLabelStyle: const TextStyle(color: Colors.white),
                  ),
                  validator: tc,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Theme(
                data: ThemeData(
                    colorScheme: ThemeData()
                        .colorScheme
                        .copyWith(primary: Colors.white)),
                child: TextFormField(
                  onSaved: (String? value) {
                   try{value != ""
                       ? addEmployes.age = int.parse(value!)
                       : addEmployes.age = null;}
                       catch(hata){print("Geçerli Yaş Giriniz");}
                  },
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    prefixIcon: Icon(
                      Icons.password_rounded,
                      size: 20,
                    ),
                    filled: true,
                    fillColor: Colors.black26,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    labelText: "Yas",
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    floatingLabelStyle: const TextStyle(color: Colors.white),
                  ),
                  validator: age,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FloatingActionButton(onPressed: () {
                if (formKey.currentState!.validate()) {
                  Navigator.pop(context);
                  formKey.currentState!.save();
                  employeeList.add(addEmployes);
                }
              })
            ],
          ),
        ),
      ),
    );
  }
}
