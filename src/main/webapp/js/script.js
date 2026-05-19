// OPEN LOGIN MODAL
function openLoginModal() {
  document.getElementById('loginModal').classList.add('active');
}

// CLOSE LOGIN MODAL
function closeLoginModal() {
  document.getElementById('loginModal').classList.remove('active');
}

// OPEN REGISTER MODAL
function openRegisterModal() {
  document.getElementById('registerModal').classList.add('active');
}

// CLOSE REGISTER MODAL
function closeRegisterModal() {
  document.getElementById('registerModal').classList.remove('active');
}

// SWITCH REGISTER -> LOGIN
function switchToLogin() {
  closeRegisterModal();
  openLoginModal();
}

// SWITCH LOGIN -> REGISTER
function switchToRegister() {
  closeLoginModal();
  openRegisterModal();
}

// ================= EMAIL MODAL =================

// OPEN EMAIL MODAL
function openEmailModal() {
  document.getElementById('emailModal').classList.add('active');
}

// CLOSE EMAIL MODAL
function closeEmailModal() {
  document.getElementById('emailModal').classList.remove('active');
}

// ================= CLEAR INPUT =================

window.clearInput = function(inputId){
    const inputField = document.getElementById(inputId);
    if(inputField){
        inputField.value = "";
        inputField.focus();
    }
}