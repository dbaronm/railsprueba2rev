t = Trabajador.create(nombre: 'panfilo', email: 'panfilo@email.com')
i = Inventario.create(serie: 1, tamano: 1, descripcion: 'esta es una descripcion')
o = Operacion.create(trabajador: t, inventario: i)