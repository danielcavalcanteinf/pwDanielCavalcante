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
    <form class="container" id="formulario">
        <div class="col-md-5">
         
            <legend>Verifique seu IMC preenchendo as informações abaixo</legend>
            <label for="peso">Peso:</label>
            <input type="text" name="peso" value ="" class="form-control"  />
            
            <label for="metros">Metros:</label>
            <input type="text" name="metros" value ="" class="form-control"  />
            
            <label for="centimetros">Centímetros:</label>
            <input type="text" name="centimetros" value="" class="form-control" />
            
            
            <p></p><input type="submit">
            
            <%
            String pesoStr = request.getParameter("peso");
            String metrosStr = request.getParameter("metros");
            String centimetrosStr = request.getParameter("centimetros");
            String imcStr = request.getParameter("imc");
            
        
            if (pesoStr != null && metrosStr != null && centimetrosStr != null) {
                float peso = Float.parseFloat(pesoStr);
                int metros = Integer.parseInt(metrosStr);
                int centimetros = Integer.parseInt(centimetrosStr);
                float altura = (((metros * 100) + centimetros)/100);
                float imc = (peso)/(altura*altura);
        
        
            %>
            <%
            if (imc < 17) {
                
                out.print("Muito abaixo do peso");
                        
            }
            
            else if (imc >= 17 && imc <= 18.4){
                
                out.print("Abaixo do peso");
                
            }
            else if (imc > 18.4 && imc <= 24.9){
                
                out.print("Peso normal");
                
            }
            else if (imc > 24.9 && imc <= 29.9){
                
                out.print("Acima do peso");
                
            }
            else if (imc > 29.9 && imc <= 34.9){
                
                out.print("Obesidade Grau 1");
                
            }
            else if (imc > 34.9 && imc <= 40){
                
                out.print("Obesidade Grau 2");
                
            }
            else if (imc > 40) {
                
                out.print("Obesidade Grau 3");
                
            }
            
        }
        %>
        </div>
      </form>
      

  </body>
</html>