import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  const Formulario({Key? key}) : super(key: key);

  @override
  State<Formulario> get createState => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulario App Pueblo Bello'),
      ),
      body: SingleChildScrollView(
        child: Container(
          //decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
          padding: const EdgeInsets.all(10),
          child: const SubFormulario(),
        ),
      ),
    );
  }
}

class SubFormulario extends StatefulWidget {
  const SubFormulario({Key? key}) : super(key: key);

  @override
  State<SubFormulario> get createState => _SubFormularioState();
}

class _SubFormularioState extends State<SubFormulario> {
  late String razonSocial;
  late String nombreEmp;
  late int capacidad;
  late String tipoTurismo;
  final lista = ["Cultural", "Rural", "Ecoturismo", "Bienestar"];
  //String? vista = 'Seleccione Un Tipo de Turismo';
  late int selectedValue = 0;

  final GlobalKey formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.business_center),
                labelText: 'Razón Social o Nit',
                border: OutlineInputBorder()),
            /* onSaved: (value) {
              razon_Social = value!;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return "Digite una Razón Social o Nit";
              }
            },*/
          ),
          Row(children: [
            const Padding(padding: EdgeInsets.all(10)),
            Radio(value: 1, 
            groupValue: selectedValue, 
            onChanged: (value)=> setState(() => selectedValue = 1)
            ),
            const Text('Persona Natural'),
            const Padding(padding: EdgeInsets.all(8)),
            Radio(value: 2, 
            groupValue: selectedValue, 
            onChanged: (value)=> setState(() => selectedValue = 2)
            ),
             const Text('Persona Jurídica'),
          ],
          
          ),

          const SizedBox(height: 10),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.business),
                labelText: 'Nombre de la Empresa',
                border: OutlineInputBorder()),
            /* onSaved: (value) {
              nombre_Emp = value!;
            },
             validator: (value) {
              if (value!.isEmpty) {
                return "Digite Nombre de la Empresa";
              }
            },*/
          ),
          const SizedBox(height: 10),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.groups),
                labelText: 'Capacidad',
                border: OutlineInputBorder()),
            /* onSaved: (value) {
              nombre_Emp = value!;
            },
             validator: (value) {
              if (value!.isEmpty) {
                return "Digite Nombre de la Empresa";
              }
            },*/
          ),
          const SizedBox(height: 15),
          const Text('Tipo de Turismo'),
          const SizedBox(height: 10),
          /*DropdownButtonFormField(
            children: listaOpciones.map((e){
              return DropdownMenuItem(
                value: e,
                child: Text(e) 
                );
            }).toList(), 
            onChanged: (value){}),*/
          DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.input),
              border: OutlineInputBorder(),
            ),
            //isExpanded: true,
            items: lista.map((lista) {
              return DropdownMenuItem(
                  value: lista, child: Text('Turismo $lista'));
            }).toList(),
            onChanged: (value) => setState(() {}),
            hint: const Text('Seleccione Un Tipo de Turismo'),
          ),
          const SizedBox(height: 10),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.location_on),
                labelText: 'Ubicacion',
                border: OutlineInputBorder()),
            /* onSaved: (value) {
               = value!;
            },
             validator: (value) {
              if (value!.isEmpty) {
                return "Digite Nombre de la Empresa";
              }
            },*/
          ),
          const SizedBox(height: 10),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.business_center_rounded),
                labelText: 'Tipo de Empresa',
                border: OutlineInputBorder()
                /* onSaved: (value) {
               = value!;
            },
             validator: (value) {
              if (value!.isEmpty) {
                return "Digite Nombre de la Empresa";
              }
            },*/
                ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            child: const Text("Guardar"),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  /* void _validarOnsave(BuildContext context){
  if (formKey.currentState.validete()) {
    formKey.currentState.save();
    
  }*/

}
