function togglePasswordVisibility() {
  var passwordInput = document.getElementById("password");
  var toggleButton = document.getElementsByClassName("toggle-password")[0];
  if (passwordInput.type === "password") {
      passwordInput.type = "text";
      toggleButton.textContent = "ocultar";
  } else {
      passwordInput.type = "password";
      toggleButton.textContent = "mostrar";
  }
}
