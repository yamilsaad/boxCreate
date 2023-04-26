import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  final Function(String) onProveedorSelected;

  const InputWidget({super.key, required this.onProveedorSelected});

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  // Variable para almacenar la opción seleccionada:
  String _selectedOption = 'PROVEEDOR';
  //Opcion menu desplegable:
  List<String> _options = ['PROVEEDOR', 'LISTA'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
              labelText: 'El cliente tiene un recibo de:',
              border: OutlineInputBorder(),
              filled: true,
            ),
            value: _selectedOption,
            items: _options.map((String option) {
              return DropdownMenuItem<String>(
                value: option,
                child: Text(option),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                _selectedOption = newValue!;
                widget.onProveedorSelected(
                    newValue); // llamar al callback con la opción seleccionada
              });
            },
          ),
        )
      ],
    );
  }
}
