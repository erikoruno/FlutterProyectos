void main(List<String> args) {
  
  DateTime fechaActual = DateTime.now();


  print(fechaActual);

  print(fechaActual.year);
  print(fechaActual.month);
  print(fechaActual.day);
  print(fechaActual.hour);
  print(fechaActual.minute);

  String fecha = "2020-07-20 20:15:23";

  DateTime fechaPasada = DateTime.parse(fecha);
  print(fechaPasada);

  DateTime dt1 = DateTime.parse("2020-07-20 20:15:23");
  DateTime dt2 = DateTime.parse("2021-05-10 10:15:23");

  Duration diferencia = dt2.difference(dt1);

  print(diferencia.inDays);
  print(diferencia.inHours);
  print(diferencia.inMinutes);


}