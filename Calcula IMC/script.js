function calcularIMC(){
    var formulario = document.getElementById("formulario");
    
    var peso = +formulario.peso.value;
    var metros = +formulario.metros.value;
    var centimetros = +formulario.centimetros.value;
    var altura = (metros * 100 + centimetros)/100;
    var imc = peso / (altura * altura);

    if (imc < 17) {
        alert("Muito abaixo do peso");
    }
    else if (imc >= 17 && imc <= 18.4){
        alert("Abaixo do peso");
    }
    else if (imc > 18.4 && imc <= 24.9){
        alert("Peso normal");
    }
    else if (imc > 24.9 && imc <= 29.9){
        alert("Acima do peso");
    }
    else if (imc > 29.9 && imc <= 34.9){
        alert("Obesidade Grau 1");
    }
    else if (imc > 34.9 && imc <= 40){
        alert("Obesidade Grau 2");
    }
    else if (imc > 40) {
        alert("Obesidade Grau 3");
    }
    formulario.imc.value = imc.toFixed(2);

    
  }