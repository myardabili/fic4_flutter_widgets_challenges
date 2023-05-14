import 'package:flutter/material.dart';

class FICFormWidget extends StatefulWidget {
  const FICFormWidget({super.key});

  @override
  State<FICFormWidget> createState() => _FICFormWidgetState();
}

class _FICFormWidgetState extends State<FICFormWidget> {
  bool isOn = false;

  var selected = "Flutter";
  final dropdownList = <String>["Flutter", "Dart", "Java", "Kotlin", "Python"];

  var sex = "male";
  var isChecked = false;
  TextEditingController textController = TextEditingController(text: "sabrina");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Form Widget'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              maxLength: 20,
              decoration: const InputDecoration(
                label: Text('Name'),
                labelStyle: TextStyle(
                  color: Colors.blueGrey,
                ),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.blueGrey,
                )),
                helperText: "What's your name?",
              ),
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Your favorite languange: "),
                const SizedBox(
                  width: 8,
                ),
                DropdownButton(
                  value: selected,
                  icon: const Icon(Icons.arrow_downward),
                  iconSize: 20,
                  style: TextStyle(color: Colors.blue[600]),
                  underline: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey,
                          width: 3,
                        ),
                      ),
                    ),
                  ),
                  items: dropdownList
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (String? val) {
                    setState(() {
                      if (val != null) selected = val;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            LayoutBuilder(
              builder: (context, constraint) {
                List<String> itemStringList = ["Female", "Male"];

                return FormField(
                  initialValue: false,
                  enabled: true,
                  builder: (FormFieldState<bool> field) {
                    return InputDecorator(
                      decoration: InputDecoration(
                        labelText: "Gender",
                        errorText: field.errorText,
                        helperText: "Your Gender",
                      ),
                      child: DropdownButtonHideUnderline(
                        child: ButtonTheme(
                          alignedDropdown: true,
                          child: DropdownButton<String>(
                            isExpanded: true,
                            value: "Female",
                            icon: Padding(
                              padding: const EdgeInsets.only(
                                right: 10,
                              ),
                              child: Icon(
                                Icons.arrow_drop_down_outlined,
                                size: 24,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              ),
                            ),
                            iconSize: 16,
                            elevation: 16,
                            style: TextStyle(
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .fontSize,
                              fontFamily: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .fontFamily,
                              color:
                                  Theme.of(context).textTheme.bodyText2!.color,
                            ),
                            underline: Container(
                              height: 0,
                              color: Colors.grey[300],
                            ),
                            onChanged: (String? newValue) {},
                            items: itemStringList
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: Text(
                                    value,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                const Text("Connect Instagram"),
                const SizedBox(
                  width: 8,
                ),
                Switch(
                  value: isOn,
                  onChanged: (bool? val) {
                    if (val != null) {
                      setState(() {
                        isOn = val;
                      });
                    }
                  },
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                const Text("Gender: "),
                const SizedBox(
                  width: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                      value: "male",
                      groupValue: sex,
                      onChanged: (String? val) {
                        setState(() {
                          if (val != null) {
                            sex = val;
                          }
                        });
                      },
                    ),
                    const Text("Male"),
                  ],
                ),
                const SizedBox(
                  width: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                      value: "female",
                      groupValue: sex,
                      onChanged: (String? val) {
                        setState(() {
                          if (val != null) {
                            sex = val;
                          }
                        });
                      },
                    ),
                    const Text("Female"),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (val) {
                    setState(() {
                      if (val != null) {
                        isChecked = val;
                      }
                    });
                  },
                ),
                const SizedBox(
                  width: 4,
                ),
                const Text(
                  "Agree Term and Condition",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            InkWell(
              onTap: () async {
                DateTime? pickDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                );
                debugPrint("pickedDate: $pickDate");
              },
              child: TextFormField(
                initialValue: "2020-08-01",
                maxLength: 20,
                enabled: false,
                decoration: const InputDecoration(
                  labelText: "Birth Day",
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  suffixIcon: Icon(Icons.date_range),
                  helperText: "What's your birth date?",
                ),
                onChanged: (value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
