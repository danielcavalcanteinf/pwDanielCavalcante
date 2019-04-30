<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Calculadora de IMC</title>
    
  </head>
  <body>
      
    <h1>Cálculo de IMC</h1>
    <form action ="calculo-imc.jsp" class="container" id="formulario">
        <div class="col-md-5">
         
            <legend>Verifique seu IMC preenchendo as informações abaixo</legend>
            <label for="peso">Peso:</label>
            <input type="text" name="peso" value ="" class="form-control"  />
            
            <label for="metros">Metros:</label>
            <input type="text" name="metros" value ="" class="form-control"  />
            
            <label for="centimetros">Centímetros:</label>
            <input type="text" name="centimetros" value="" class="form-control" />
            
            <label for="imc">IMC:</label>
            <input type="text" name="imc" class="form-control" disabled="" />
            
            <p></p><input type="submit">
            
          
        </div>
      </form>
      

  </body>
</html>