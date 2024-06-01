void main() async {
  print('Inicio del programa');
  
  try{
    
  final value = await httpGet('https://adrianaguzman.com');
  print('Éxito:  $value');
  } on Exception catch(error) {
    print('Tenermos una Exception: $error');
  }
  
  catch (error){
    print('Algo terrible paso: $error');
  } finally {
    print( 'Fin del try y catch' );
  }
  
  

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed( const Duration(seconds: 1));
  throw Exception('No hay parametros en el URL');
  //throw 'Error en la petición';
  //return 'Tenemos un valor de la petición';
}
