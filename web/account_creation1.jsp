<%@page contentType="text/html" pageEncoding="UTF-8"%>s
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>BVICAM | Where we turn you into a force</title>
   <style>

@import url("https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400&display=swap");

*,
*::before,
*::after {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}

html {
  font-size: 62.5%;
}
body {
  font-family: "Open Sans", sans-serif;
  background:aliceblue;
  font-size: 1.8rem;
}

.container {
  background: rgba(43, 43, 43, 0.8);
  width: 100%;
  height: 35rem;
  margin: 0 auto;
  margin-top: 20rem;
  display: flex;
  align-items: center;
  position: relative;
}

.signup-container,
.signin-container {
  padding: 5rem;
}
.signin-container {
  text-align: right;
}
h2 {
  color: #fff;
  margin: 1rem 0;
}

p {
  color: #ddd;
  font-size: 1.3rem;
  margin: 1rem 0;
}

.forgot__password-container {
  margin-bottom: 1rem;
  font-size: 1.3rem;
}
button {
  padding: 1rem 2rem;
  border: none;
  color: rgb(24, 24, 24);
  background: #ddd;
  cursor: pointer;
  border-radius: 2px;
  outline: none;
  transition: all 0.3s;
}

button:hover {
  background: #fff;
}

button:active {
  transform: translatey(2px);
}

.overlay {
  position: absolute;
  top: -2rem;
  left: 0;
  width: 50%;
  transition: all 1s;
}

.form-container {
  background: #fff;
  padding: 5rem;
  height: 40rem;
  border-radius: 4px;
  width: 100%;
  transition: all 1s;
}

h3 {
  color: rgb(65, 65, 65);
  font-size: 2.5rem;
  margin-bottom: 1rem;
  text-align: center;
}

a {
  text-decoration: none;
  color: #1ec47b;
}

a:hover {
  color: #0fb66e;
}
.input-container {
  margin: 1.5rem 0;
}
input {
  padding: 1rem 2.4rem;
  border-radius: 2px;
  border: 1px solid rgb(128, 128, 128);
  outline: none;
  width: 100%;
}

.form-button {
  background: #96c8fa;
  color: #000000;
  outline: none;
  box-shadow: 0 4px 4px rgba(0, 0, 0, 0.22);
}
.form-button:hover {
  background: #96c8fa;
}
.signup-form {
  display: flex;
  flex-direction: column;
  justify-content: center;
}
.signin-form {
  position: absolute;
  top: 0;
  display: flex;
  flex-direction: column;
  justify-content: center;
  z-index: -1;
  opacity: 0;
}

.slide-right {
  left: 50%;
}

.slide-left {
  left: 0;
}

.social-container {
  text-align: center;
}

.social-container a {
  border: 1px solid #dddddd;
  border-radius: 50%;
  display: inline-flex;
  justify-content: center;
  align-items: center;
  margin: 0 5px;
  height: 4rem;
  width: 4rem;
}

   </style>
    
  </head>
  <body>


    <div class="small">    

      <div include-html="header.html" id="header"></div>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script>
    $(function() {
      $('#header').load('header.html');
    });
  </script>
  
  </div>






    <div class="container">
      <div class="signup-container">
        <h2>Don't Have a account</h2>
        <p>
         Here you can create an account for BVICAM Admin features. This is allocated by BVICAM for official purposes only.         
        </p>
        <button id="signup">Create account</button>
      </div><p><p></p></p>
      <div class="signin-container">
        <h2>Already have an account?</h2>
        <p>
          Here you can login for BVICAM Admin features.
        </p>
        <button id="login">Login</button>
      </div>
      <div class="overlay" id="slide">
        <div class="form-container signup-form">
          <form action="">
            <h3>Create account</h3>
           
            <div class="input-container">
              <input type="text" placeholder="Email...." />
            </div>
            <div class="input-container">
              <input type="text" placeholder="Password...." />
            </div>
            <div class="input-container">
              <input type="text" placeholder="Confirm password..." />
            </div>

            <button class="form-button">
              Create account
            </button>
          </form>
        </div>

        <div class="form-container signin-form">
          <form action="Login" method ="post">
            <h3>Login</h3>
            <div class="social-container">
              <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
              <a href="#" class="social"
                ><i class="fab fa-google-plus-g"></i
              ></a>
              <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
            </div>
            <div class="input-container">
              <input type="email" name="user_email" placeholder="Enter your email" />
            </div>
            <div class="input-container">
              <input type="password" name="user_password" placeholder="Enter your password" />
            </div>
            <div class="forgot__password-container">
              <a href="#">Forgot password? </a>
            </div>

            <button class="form-button">Login</button>
          </form>
        </div>
      </div>
    </div>
  </body>
  <script>
    let login = document.getElementById("login");
let signup = document.getElementById("signup");
let slide = document.getElementById("slide");
let signinForm = document.querySelector(".signin-form");
let signupForm = document.querySelector(".signup-form");

login.addEventListener("click", () => {
  slide.classList.add("slide-right");
  slide.classList.remove("slide-left");
  signinForm.style.zIndex = "2";
  signinForm.style.opacity = "1";
});

signup.addEventListener("click", () => {
  slide.classList.add("slide-left");
  slide.classList.add("slide-right");
  signinForm.style.zIndex = "-1";
  signinForm.style.opacity = "0";
});

  </script>

  <div include-html="footer.html" id="footer"></div>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>s
  <script>
    $(function() {
      $('#footer').load('footer.html');
    });
  </script>


</html>
