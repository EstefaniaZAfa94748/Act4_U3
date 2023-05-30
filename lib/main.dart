import 'package:flutter/material.dart';

void main() {
  runApp(TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const appTitle = 'FORMULARIOS';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: DefaultTabController(
        // La cantidad de pestañas / secciones de contenido que necesitamos mostrar
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              indicatorColor: Color(0xfff8e006),
              indicatorWeight: 10,
              tabs: [
                Tab(icon: Icon(Icons.three_p_outlined)),
                Tab(icon: Icon(Icons.local_pizza)),
                Tab(icon: Icon(Icons.local_convenience_store_rounded)),
                Tab(icon: Icon(Icons.attach_money)),
                Tab(icon: Icon(Icons.person_rounded)),
              ],
            ),
            title: Text('                  FORMULARIOS'),
            backgroundColor: const Color(0xffdc6f3c),
          ),
          body: TabBarView(
            children: [
              //CREACION FORMULARIO CLIENTES
              ListView(
                children: const [
                  Text(
                    "Formulario Clientes",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const MyForm(),
                ],
              ),
              //CREACION FORMULARIO PIZZAS
              ListView(
                children: const [
                  Text(
                    "Formulario Pizzas",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const MyForm2(),
                ],
              ),
              //CREACION FORMULARIO SUCURSALES
              ListView(
                children: const [
                  Text(
                    "Formulario Sucursales",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const MyForm3(),
                ],
              ),
              //CREACION FORMULARIO VENTAS
              ListView(
                children: const [
                  Text(
                    "Formulario Ventas",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const MyForm4(),
                ],
              ),
              //CREACION FORMULARIO EMPLEADOS
              ListView(
                children: const [
                  Text(
                    "Formulario Empleados",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const MyForm5(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// CREACION FORMULARIO CLIENTES
class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  MyFormState createState() {
    return MyFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyFormState extends State<MyForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: NetworkImage(
                'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/clientes.jpg'),
            width: 500,
            height: 170,
            fit: BoxFit.cover,
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Ingrese su ID",
                labelText: "ID",
                prefixIcon: Icon(
                  Icons.verified_user_outlined,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Ingrese su nombre",
                labelText: "Nombre",
                prefixIcon: Icon(
                  Icons.account_box_rounded,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Ingrese su apellido",
                labelText: "Apellido",
                prefixIcon: Icon(
                  Icons.account_box_rounded,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Ingrese su telefono",
                labelText: "Telefono",
                prefixIcon: Icon(
                  Icons.call,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Ingrese su domicilio",
                labelText: "Domicilio",
                prefixIcon: Icon(
                  Icons.add_location_rounded,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Ingrese su correo",
                labelText: "Correo Electronico",
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Enviado')),
                  );
                }
              },
              style: TextButton.styleFrom(
                fixedSize: const Size(90, 50),
                backgroundColor: Color(0xffcb5824), // Background Color
              ),
              child: const Text('Enviar',
                  style: TextStyle(color: Color(0xffffffff), fontSize: 20)),
            ),
          ),
        ],
      ),
    );
  }
}

// CREACION DEL FORMULARIO PIZZAS
class MyForm2 extends StatefulWidget {
  const MyForm2({super.key});

  @override
  MyFormState2 createState() {
    return MyFormState2();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyFormState2 extends State<MyForm2> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: NetworkImage(
                'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/pizzas.jpg'),
            width: 500,
            height: 170,
            fit: BoxFit.cover,
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese ID ",
                labelText: "ID",
                prefixIcon: Icon(
                  Icons.verified_user_outlined,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingredientes",
                labelText: "Ingredientes",
                prefixIcon: Icon(
                  Icons.soap_outlined,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese tamaño",
                labelText: "Tamaño",
                prefixIcon: Icon(
                  Icons.sanitizer,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese forma",
                labelText: "Forma",
                prefixIcon: Icon(
                  Icons.format_align_center,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Precio",
                labelText: "Precio",
                prefixIcon: Icon(
                  Icons.money,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Ingrese ID extras",
                labelText: "Extras",
                prefixIcon: Icon(
                  Icons.verified_user_outlined,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Ingrese orilla",
                labelText: "Orilla",
                prefixIcon: Icon(
                  Icons.food_bank,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Enviado')),
                  );
                }
              },
              style: TextButton.styleFrom(
                fixedSize: const Size(90, 50),
                backgroundColor: Color(0xffcb5824), // Background Color
              ),
              child: const Text('Enviar',
                  style: TextStyle(color: Color(0xffffffff), fontSize: 20)),
            ),
          ),
        ],
      ),
    );
  }
}

// CREACION DEL FORMULARIO SUCURSALES
class MyForm3 extends StatefulWidget {
  const MyForm3({super.key});

  @override
  MyFormState3 createState() {
    return MyFormState3();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyFormState3 extends State<MyForm3> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: NetworkImage(
                'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/sucursal.jpg'),
            width: 500,
            height: 170,
            fit: BoxFit.cover,
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese ID",
                labelText: "ID",
                prefixIcon: Icon(
                  Icons.verified_user_outlined,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese direccion",
                labelText: "Direccion",
                prefixIcon: Icon(
                  Icons.local_activity,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese telefono",
                labelText: "Telefono",
                prefixIcon: Icon(
                  Icons.call,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese CodigoPostal",
                labelText: "CP",
                prefixIcon: Icon(
                  Icons.account_box_rounded,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Ingrese su horario",
                labelText: "Horario",
                prefixIcon: Icon(
                  Icons.timelapse,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Gerente",
                labelText: "Gerente",
                prefixIcon: Icon(
                  Icons.person_add,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Ingrese su municipio",
                labelText: "Municipio",
                prefixIcon: Icon(
                  Icons.local_activity_outlined,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Enviado')),
                  );
                }
              },
              style: TextButton.styleFrom(
                fixedSize: const Size(90, 50),
                backgroundColor: Color(0xffcb5824), // Background Color
              ),
              child: const Text('Enviar',
                  style: TextStyle(color: Color(0xffffffff), fontSize: 20)),
            ),
          ),
        ],
      ),
    );
  }
}

// CREACION DEL FORMULARIO VENTAS
class MyForm4 extends StatefulWidget {
  const MyForm4({super.key});

  @override
  MyFormState4 createState() {
    return MyFormState4();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyFormState4 extends State<MyForm4> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: NetworkImage(
                'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/ventas.jpg'),
            width: 500,
            height: 170,
            fit: BoxFit.cover,
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese ID empleado",
                labelText: "ID",
                prefixIcon: Icon(
                  Icons.verified_user_outlined,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese pizzas vendidas",
                labelText: "Pizzas Vendidas",
                prefixIcon: Icon(
                  Icons.local_pizza_outlined,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese su ID",
                labelText: "ID Cliente",
                prefixIcon: Icon(
                  Icons.person,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese su metodo de pago",
                labelText: "Metodo de pago",
                prefixIcon: Icon(
                  Icons.local_attraction,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Ingrese su cantidad",
                labelText: "Cantidad",
                prefixIcon: Icon(
                  Icons.family_restroom_rounded,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Su total a pagar",
                labelText: "Total a pagar",
                prefixIcon: Icon(
                  Icons.insert_invitation_outlined,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Ingrese su fecha de orden",
                labelText: "Orden",
                prefixIcon: Icon(
                  Icons.insert_invitation_outlined,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Enviado')),
                  );
                }
              },
              style: TextButton.styleFrom(
                fixedSize: const Size(90, 50),
                backgroundColor: Color(0xffcb5824), // Background Color
              ),
              child: const Text('Enviar',
                  style: TextStyle(color: Color(0xffffffff), fontSize: 20)),
            ),
          ),
        ],
      ),
    );
  }
}

// CREACION DEL FORMULARIO EMPLEADOS
class MyForm5 extends StatefulWidget {
  const MyForm5({super.key});

  @override
  MyFormState5 createState() {
    return MyFormState5();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyFormState5 extends State<MyForm5> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: NetworkImage(
                'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/empleados.jpg'),
            width: 500,
            height: 170,
            fit: BoxFit.cover,
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese su ID",
                labelText: "ID",
                prefixIcon: Icon(
                  Icons.verified_user_outlined,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese su nombre",
                labelText: "Nombre",
                prefixIcon: Icon(
                  Icons.person_add,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese su apellido paterno",
                labelText: "Apellido Paterno",
                prefixIcon: Icon(
                  Icons.person_add,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese su apellido materno",
                labelText: "Apellido Materno",
                prefixIcon: Icon(
                  Icons.person_add,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Ingrese su puesto",
                labelText: "Puesto",
                prefixIcon: Icon(
                  Icons.store,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Ingrese su correo",
                labelText: "Correo",
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Ingrese su fecha de ingleso",
                labelText: "Fecha de Ingreso",
                prefixIcon: Icon(
                  Icons.insert_invitation_outlined,
                  color: Color(0xff15078e),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduzca un texto';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Enviado')),
                  );
                }
              },
              style: TextButton.styleFrom(
                fixedSize: const Size(90, 50),
                backgroundColor: Color(0xffcb5824), // Background Color
              ),
              child: const Text('Enviar',
                  style: TextStyle(color: Color(0xffffffff), fontSize: 20)),
            ),
          ),
        ],
      ),
    );
  }
}
