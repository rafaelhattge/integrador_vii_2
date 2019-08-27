function mostrarFormulario() {
    const cartao = document.getElementById("cadastrar-requisito");
    const botao = document.getElementById("botao-cadastrar");
    if (cartao.style.display === "none") {
        cartao.style.display = "block";
        botao.style.display = "none";
    } else {
        cartao.style.display = "none";
        botao.style.display = "block";
    }
}

function esconderFormulario() {
    const cartao = document.getElementById("cadastrar-requisito");
    const botao = document.getElementById("botao-cadastrar");
    botao.style.display = "block";
    cartao.style.display = "none";
}