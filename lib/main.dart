import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: CarritoPage(),
      debugShowCheckedModeBanner: false,
    ));

class CarritoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD6D6D6),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- Barra Superior Pastel ---
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                color: Color(0xFFB2EBF2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'OscarMtz',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.menu, size: 28),
                  ],
                ),
              ),

              // --- Título del Carrito ---
              Padding(
                padding: EdgeInsets.all(25.0),
                child: Text(
                  'TU\nCARRITO',
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF757575),
                    height: 1.0,
                  ),
                ),
              ),

              // --- Lista de Productos ---
              _crearItemCarrito(
                'Raton AMD™',
                '79.00',
                'https://raw.githubusercontent.com/OscarinMtz/Ull_act2_cards/refs/heads/main/descarga%20(2).png',
              ),
              _crearItemCarrito(
                'Teclado Logitech',
                '120.00',
                'https://raw.githubusercontent.com/OscarinMtz/Ull_act2_cards/refs/heads/main/descarga%20(1).png',
              ),
              _crearItemCarrito(
                'Monitor Ryzen',
                '120.00',
                'https://raw.githubusercontent.com/OscarinMtz/Ull_act2_cards/refs/heads/main/descarga%20(1)%20(1).png',
              ),

              // --- Sección Final de Pago ---
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    Divider(color: Colors.grey, thickness: 1),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Total: 319',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF424242),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 60, vertical: 12),
                        decoration: BoxDecoration(
                          color: Color(0xFFFFB74D),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black26, width: 1),
                        ),
                        child: Text(
                          'PAGAR',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF757575),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Método reutilizable para las filas de productos
  Widget _crearItemCarrito(String nombre, String precio, String urlImagen) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          // Imagen del producto
          Container(
            height: 85,
            width: 85,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black12, width: 1),
            ),
            child: Image.network(
              urlImagen,
              fit: BoxFit.contain,
              // Evita errores de carga mostrando un placeholder
              errorBuilder: (context, error, stackTrace) => Icon(Icons.computer),
            ),
          ),
          SizedBox(width: 15),
          // Detalles del producto
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nombre,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$$precio',
                  style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                ),
              ],
            ),
          ),
          // Selector de unidades vertical
          Column(
            children: [
              Container(
                width: 50,
                height: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black12),
                ),
                child: Text('1', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Container(
                width: 50,
                height: 30,
                decoration: BoxDecoration(
                  color: Color(0xFFE0F7FA),
                  border: Border.all(color: Colors.black12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('<', style: TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold)),
                    Text('>', style: TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}