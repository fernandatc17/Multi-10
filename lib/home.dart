import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, String>> peliculas = [
    {'titulo': 'Aquaman', 'imagen': 'assets/images/aquaman.jpg'},
    {'titulo': 'Enviado por nadie', 'imagen': 'assets/images/aquaman.jpg'},
    {'titulo': 'Spiderman', 'imagen': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQmvxsv9WTSQH6GHGPtrqs7wsu8NaFFADr4U2l8waBK1fiuXtwbP4kwVZbcKLk&s=10'},
    {'titulo': 'Aquaman', 'imagen': 'assets/images/aquaman.jpg'},
    {'titulo': 'Enviado por nadie', 'imagen': 'assets/images/aquaman.jpg'},
    {'titulo': 'Spiderman', 'imagen': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQmvxsv9WTSQH6GHGPtrqs7wsu8NaFFADr4U2l8waBK1fiuXtwbP4kwVZbcKLk&s=10'},
    {'titulo': 'Aquaman', 'imagen': 'assets/images/aquaman.jpg'},
    {'titulo': 'Enviado por nadie', 'imagen': 'assets/images/aquaman.jpg'},
    {'titulo': 'Spiderman', 'imagen': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQmvxsv9WTSQH6GHGPtrqs7wsu8NaFFADr4U2l8waBK1fiuXtwbP4kwVZbcKLk&s=10'},
  ];

  final List<Map<String, dynamic>> motivos = [
    {
      'titulo': 'Disfruta en tu TV',
      'descripcion': 'Ve en smart TV, PlayStation, Xbox, Chromecast...',
      'icono': Icons.tv,
    },
    {
      'titulo': 'Descarga tus series',
      'descripcion': 'Guarda tu contenido favorito y míralo offline',
      'icono': Icons.download,
    },
    {
      'titulo': 'Disfruta donde quieras',
      'descripcion': 'Ve desde tu teléfono, tablet o laptop',
      'icono': Icons.phone_android,
    },
    {
      'titulo': 'Crea perfiles para niños',
      'descripcion': 'Perfiles diseñados para los más pequeños',
      'icono': Icons.child_care,
    },
  ];

  final List<Map<String, String>> preguntas = [
    {
      'pregunta': '¿Qué es Netflix?',
      'respuesta':
          'Netflix es un servicio de streaming con una gran variedad de películas, series y más...'
              'Todo lo que quieras ver, sin límites ni comerciales, a un costo muy accesible.',
    },
    {
      'pregunta': '¿Cuánto cuesta Netflix?',
      'respuesta': 'Desde S/ 28.90 al mes. Sin contratos ni cargos extra.',
    },
    {
      'pregunta': '¿Dónde puedo ver Netflix?',
      'respuesta': 'Desde cualquier dispositivo conectado a internet.',
    },
    {
      'pregunta': '¿Cómo cancelo?',
      'respuesta': 'Puedes cancelar en cualquier momento desde tu cuenta.',
    },
    {
      'pregunta': '¿Qué puedo ver en Netflix?',
      'respuesta': 'Miles de títulos incluyendo películas, documentales y más.',
    },
    {
      'pregunta': '¿Es bueno Netflix para los niños?',
      'respuesta':
          'Sí, hay perfiles especiales con contenido exclusivo para niños.',
    },
  ];

  final Set<int> expandIndex = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Image.asset('assets/images/logo.png'),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.language),
            onPressed: () {},
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(foregroundColor: Colors.white),
            child: const Text("Iniciar sesión"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 400,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/fondo.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 400,
                  width: double.infinity,
                  color: Colors.black.withOpacity(0.7),
                ),
                Positioned.fill(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Películas y series ilimitadas y mucho más",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: "arial",
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            "A partir de S/28.90. Cancela cuando quieras.",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: "popins",
                              fontSize: 18,
                              color: Colors.white70,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            "¿Quieres ver Netflix ya? Ingresa tu email para\ncrear una cuenta o reiniciar tu membresía de Netflix.",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: "roboto",
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  style: const TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                    hintText: 'Email',
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: BorderSide.none,
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              ElevatedButton.icon(
                                onPressed: () {},
                                icon: const Icon(Icons.arrow_forward, color: Colors.white),
                                label: const Text("Comenzar", style: TextStyle(color: Colors.white)),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 24),
                  const Text("Tendencias", 
                    style: TextStyle(
                      fontFamily: "roboto",
                      fontSize: 20, 
                      color: Colors.white)),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: peliculas.length,
                      itemBuilder: (context, index) {
                        final peli = peliculas[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            children: [
                              Text('${index + 1}', style: const TextStyle(color: Colors.white, fontSize: 22)),
                              const SizedBox(height: 8),
                              peli['imagen']!.startsWith('http')
                                  ? Image.network(peli['imagen']!, height: 150)
                                  : Image.asset(peli['imagen']!, height: 150),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text("Más motivos para unirte", style: TextStyle(
                      fontFamily: "roboto",fontSize: 20, color: Colors.white)),
                  const SizedBox(height: 12),
                  ...motivos.map((m) => Card(
                        color: Colors.deepPurple.shade800,
                        child: ListTile(
                          title: Text(m['titulo'], style: const TextStyle(color: Colors.white)),
                          subtitle: Text(m['descripcion'], style: const TextStyle(color: Colors.white70)),
                          trailing: Icon(m['icono'], color: Colors.white),
                        ),
                      )),
                  const SizedBox(height: 24),
                  const Text("Preguntas frecuentes", style: TextStyle(
                      fontFamily: "roboto",fontSize: 20, color: Colors.white)),
                  const SizedBox(height: 12),
                  ...preguntas.asMap().entries.map((entry) {
                    final i = entry.key;
                    final p = entry.value;
                    final isExpanded = expandIndex.contains(i);
                    return Card(
                      color: Colors.grey.shade900,
                      child: ExpansionTile(
                        title: Text(p['pregunta']!, style: const TextStyle(color: Colors.white)),
                        trailing: Icon(
                          isExpanded ? Icons.close : Icons.add,
                          color: Colors.white,
                        ),
                        onExpansionChanged: (expanded) {
                          setState(() {
                            if (expanded) {
                              expandIndex.add(i);
                            } else {
                              expandIndex.remove(i);
                            }
                          });
                        },
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(p['respuesta']!, style: const TextStyle(color: Colors.white70)),
                          ),
                        ],
                      ),
                    );
                  })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
