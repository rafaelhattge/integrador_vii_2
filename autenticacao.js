/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function autenticarUsuario() {

    const usuario = document.getElementById('usuario');
    const senha = document.getElementById('senha');

    if (usuario.value === 'admin' && senha.value === 'admin') {
        return true;
    } else {
        alert('Usuário ou senha incorretos');
        return false;
    }
}