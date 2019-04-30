<html>
<body>
<%
    String peso = request.getParameter("peso");
    String metros = request.getParameter("metros");
    String centimetros = request.getParameter("centimetros");
    double altura = (metros * 100 + centimetros)/100;
    double imc = peso / (altura * altura);
    if (peso != null && metros != null && centimetros != null) {
        int peso = Integer.parseInt(peso);
        int metros = Integer.parseInt(metros);
        int centimetros = Integer.parseInt(centimetros);
%>
<br>
<%
    if (imc < 17) {
        %>
        alert("Muito abaixo do peso");
        <%
        
    }
    %>
    else if (imc >= 17 && imc <= 18.4){
        
    }
    else if (imc > 18.4 && imc <= 24.9){
        
    }
    else if (imc > 24.9 && imc <= 29.9){
        
    }
    else if (imc > 29.9 && imc <= 34.9){
       
    }
    else if (imc > 34.9 && imc <= 40){
        
    }
    else if (imc > 40) {
       
    }
}
%>
</body>
</html>