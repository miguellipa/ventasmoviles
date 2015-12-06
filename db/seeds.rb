# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


  
Cliente.create(nombre: "METROPOLIS S.A ", provincia: "Lima", distrito: "Breña", direccion: "Jr. Iquique No 58" , telefono: "332-3271" , ruc: "2056343434")
Cliente.create(nombre: "AMV S.A.C", provincia: "Lima", distrito: "VMT", direccion:  "JR. JOSE SANTOS CHOCANO 156." , telefono: "" , ruc: "")
Cliente.create(nombre: "POWERTEK EIRL", provincia: "Lima", distrito: "Lince", direccion: "av. 123" , telefono: "343-5684" , ruc: "10343434333")


Cliente.create(nombre: "Mayoristas Descartables S.A.C", provincia: "Lima", distrito: "Lima", direccion: "AV LA CULTURA S/N " , telefono: "332-3271" , ruc: "2056343434")
Cliente.create(nombre: "Terrano EIRL", provincia: "Lima", distrito: "VMT", direccion: "AV. 123.", telefono: "" , ruc: "")
Cliente.create(nombre: "geograf publicidad", provincia: "Lima", distrito: "Chorrillos", direccion: "av. 123" , telefono: "343-5684" , ruc: "10343434333")


Tipo.create(tipo: "Administrador", descripcion: "Usuario administrador")
Tipo.create(tipo: "Ejecutivo de Venta", descripcion: "Usuario EJECUTIVO DE VENTA")
Tipo.create(tipo: "Soporte", descripcion: "soporte")


Usuario.create(nombre: "Administrador", usuario: "admin", password: "admin", tipo_id: 1 ,provincia: "Lima", distrito: "Lima", direccion: "Jr. S/N" )
Usuario.create(nombre: "Weninger Garcia", usuario: "weninger", password: "12345", tipo_id: 2 ,provincia: "Lima", distrito: "Chorrillos", direccion: "av. huaylas" )
Usuario.create(nombre: "Miguel Lipa", usuario: "Miguel", password: "12345", tipo_id: 2 ,provincia: "Lima", distrito: "VMT", direccion: "av. Separadora industrial" )

