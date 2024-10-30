import 'package:flutter/material.dart';
import 'package:myapp/Style/style.dart';

class Productcreatescreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProductcreatescreenView();
  }
}

class ProductcreatescreenView extends State<Productcreatescreen> {
  Map<String, String> FormValues = {
    "Img": "",
    "Product Name": "",
    "Product Code": "",
    "Unit Price": "",
    "Total Price": "",
    "Qty": "",
  };

  InputOnChange(MapKey, TextValue) {
    setState(() {
      FormValues.update(MapKey, (TextValue) => TextValue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Product'),
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children: [
          Container(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (TextValue) {
                       InputOnChange("ProductName", TextValue);
                    },
                    decoration: AppInputDecoration('Product Name'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onChanged: (TextValue) {
                      InputOnChange("Productode", TextValue);
                    },
                    decoration: AppInputDecoration('Product Code'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onChanged: (TextValue) {
                      InputOnChange("Img", TextValue);
                    },
                    decoration: AppInputDecoration('Product Image'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onChanged: (TextValue) {
                      InputOnChange("UnitPrice", TextValue);
                    },
                    decoration: AppInputDecoration('Unit price'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onChanged: (TextValue) {
                      InputOnChange("TotalPrice", TextValue);
                    },
                    decoration: AppInputDecoration('Total price'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  AppDropDownStyle(
                    DropdownButton(
                      value:FormValues["Qty"],
                      items: [
                        DropdownMenuItem(
                          child: Text('Select Qt'),
                          value: "",
                        ),
                        DropdownMenuItem(
                          child: Text('1 pcs'),
                          value: "1 pcs",
                        ),
                        DropdownMenuItem(
                          child: Text('2 pcs'),
                          value: "2 pcs",
                        ),
                        DropdownMenuItem(
                          child: Text('3 pcs'),
                          value: "3 pcs",
                        ),
                        DropdownMenuItem(
                          child: Text('4 pcs'),
                          value: "4 pcs",
                        ),
                      ],
                      onChanged: (TextValue) {
                      InputOnChange("Qty", TextValue);

                      },
                      underline: Container(),
                      isExpanded: true,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: ElevatedButton(
                        style: AppButtonStyle(),
                        onPressed: () {},
                        child: SuccessButtonStyle('Submit')),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
