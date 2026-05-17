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

// ================= BMI FORM VALIDATION =================

const bmiForm = document.querySelector('.bmi-form');

if (bmiForm) {
  bmiForm.addEventListener('submit', function (event) {
    const height = document.getElementById('height').value;
    const weight = document.getElementById  ('weight').value;

    // HEIGHT VALIDATION
    if (height < 50 || height > 300) {
      alert('Please enter valid height between 50 cm and 300 cm.');
      event.preventDefault();
      return;
    }

    // WEIGHT VALIDATION
    if (weight < 10 || weight > 500) {
      alert('Please enter valid weight between 10 kg and 500 kg.');
      event.preventDefault();
      return;
    }
  });
}

// ================= CLEAR INPUT =================

window.clearInput = function(inputId){
    const inputField = document.getElementById(inputId);
    if(inputField){
        inputField.value = "";
        inputField.focus();
    }
}