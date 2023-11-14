
   




<!DOCTYPE html>
<html lang="en">
<head>
    <title>Manager Space</title>
   
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
    <!-- NAVBAR CREATION -->
  <!--  <header class="header">
    <nav class="navbar">
        <a href="#">Home</a>
        <a href="#">Portfolio</a>
          <a href="#">About</a>
          <a href="#">Contact</a>
          <a href="#">Help</a>
    </nav>
     
    <form action="" class="search-bar">
       <input type="text" placeholder="Search...">
       <button><i class='bx bx-search'></i></button>
    </form>
   </header> -->
    <!-- LOGIN FORM CREATION -->
    <div class="background"></div>
    <div class="container">
        <div class="item">
            <h2 class="logo"><i class='bx bxl-xing'></i>Hash Techie</h2>
            <div class="text-item">
                <h2>Welcome! <br><span>
                    To Our Channel
                </span></h2>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Odit, repellendus?</p>
                <div class="social-icon">
                    <a href="#"><i class='bx bxl-facebook'></i></a>
                    <a href="#"><i class='bx bxl-twitter'></i></a>
                    <a href="#"><i class='bx bxl-youtube'></i></a>
                    <a href="#"><i class='bx bxl-instagram'></i></a>
                    <a href="#"><i class='bx bxl-linkedin'></i></a>
                </div>
            </div>
        </div>
        
        <div class="login-section">
      <%--    <% String errorMessage = (String) request.getAttribute("errorMessage");
    if (errorMessage != null) { %>
        <p style="color: red;"><%= errorMessage %></p>
    <% } %> --%>
            <div class="form-box login">
                  <form action="/LocationVoiture/LoginManager" method="post">
                    <h2>Sign In</h2>
                    <div class="input-box">
                        <span class="icon"><i class='bx bxs-envelope'></i></span>
                        <input type="email" name="email" required>
                        <label >Email</label>
                    </div>
                    <div class="input-box">
                        <span class="icon"><i class='bx bxs-lock-alt' ></i></span>
                        <input type="password" name="password" required>
                        <label>Password</label>
                    </div>
                    <div class="remember-password">
                        <label for=""><input type="checkbox">Remember Me</label>
                        <a href="#">Forget Password</a>
                    </div>
                    <button class="btn">Login In</button>
                    <div class="create-account">
                        <p>Create A New Account? <a href="#" class="register-link">Sign Up</a></p>
                    </div>
                </form>
            </div>
            <div class="form-box register">
                <form action="">

                    <h2>Sign Up</h2>

                    <!-- <div class="input-box">
                        <span class="icon"><i class='bx bxs-user'></i></span>
                        <input type="text" required>
                        <label >Username</label>
                    </div> -->
                    <div class="input-box">
                        <span class="icon"><i class='bx bxs-envelope'></i></span>
                        <input type="email" required>
                        <label >Email</label>
                    </div>
                    <div class="input-box">
                        <span class="icon"><i class='bx bxs-lock-alt' ></i></span>
                       <input type="password" name="password" placeholder="Mot de passe" required>
                        <label>Password</label>
                    </div>
                    <div class="remember-password">
                        <label for=""><input type="checkbox">I agree with this statment</label>
                    </div>
                    <button class="btn">Login In</button>
                    <div class="create-account">
                        <p>Already Have An Account? <a href="#" class="login-link">Sign In</a></p>
                    </div>
                </form>
            </div>
        </div>
    </div>
     <!-- SIGN UP FORM CREATION -->

    <script>
    const loginsec=document.querySelector('.login-section')
    const loginlink=document.querySelector('.login-link')
    const registerlink=document.querySelector('.register-link')
    registerlink.addEventListener('click',()=>{
        loginsec.classList.add('active')
    })
    loginlink.addEventListener('click',()=>{
        loginsec.classList.remove('active')
    })
    
    </script>
</body>

</html>



<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,500;1,500&display=swap');
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "poppins",sans-serif;
}
body{
    height: 100vh;
    width: 100%;
    background: #000;
  
}
.background{
    background: url(./images/backgroun3.jpg) no-repeat;
    background-position: center;
    background-size:cover ;
    height: 100vh;
    width: 100%;
    filter: blur(10px);
}

.header{
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    padding: 25px 13%;
    background: transparent;
    display: flex;
    justify-content: space-between;
    align-items: center;
    z-index: 100;

}
.navbar a{
    position: relative;
    font-size: 16px;
    color: #fff;
    margin-right: 30px;
    text-decoration: none;
}
.navbar a::after{
    content: "";
    position: absolute;
    left: 0;
    width: 100%;
    height: 2px;
    background: #fff;
    bottom: -5px;
    border-radius: 5px;
    transform: translateY(10px);
    opacity: 0;
    transition: .5s ease;
}
.navbar a:hover:after{
    transform: translateY(0);
    opacity: 1;
}
.search-bar{
    width: 250px;
    height: 45px;
    background-color: transparent;
    border: 2px solid #fff;
    border-radius: 6px;
    display: flex;
    align-items: center;
}
.search-bar input{
    width: 100%;
    background-color: transparent;
    border: none;
    outline: none;
    color: #fff;
    font-size: 16px;
    padding-left: 10px;
}
.search-bar button{
    width: 40px;
    height: 100%;
    background: transparent;
    outline: none;
    border: none;
    color: #fff;
    cursor: pointer;
}
.search-bar input::placeholder{
    color: #fff;
}
.search-bar button i{
    font-size: 22px;
}
.container{
    position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%,-50%);
    width: 75%;
    height: 550px;
    margin-top: 20px;
    background: url(./images/backgroun3.jpg) no-repeat;
    background-position: center;
    background-size:cover ;
    border-radius: 20px;
    overflow: hidden;
    
    
}
.item{
    position: absolute;
    top: 0;
    left: 0;
    width: 58%;
    height: 100%;
    color: #fff;
    background: transparent;
    padding: 80px;
    display: flex;
    justify-content: space-between;
    flex-direction: column;
    


}
.item .logo{
    color: #fff;
    font-size: 30px;

}
.text-item h2{
    font-size: 40px;
    line-height: 1;
}
.text-item p{
    font-size: 16px;
    margin: 20px 0;
}
.social-icon a i{
    color: #fff;
    font-size: 24px;
    margin-left: 10px;
    cursor: pointer;
    transition: .5s ease;
}
.social-icon a:hover i{
    transform: scale(1.2);
}
.container .login-section{
    position: absolute;
    top: 0;
    right: 0;
    width: calc(100% - 58%);
    height: 100%;
    color: #fff;
    backdrop-filter: blur(10px);
}

.login-section .form-box{
    position: absolute;
    display: flex;
    justify-content: center;
    align-items: center;
    width: 100%;
    height: 100%;
    
}
.login-section .form-box.register{
    transform: translateX(430px);
    transition: transform .6s ease;
    transition-delay: 0s;
}
.login-section.active .form-box.register{
    transform: translateX(0px);
    transition-delay: .7s;
}

.login-section .form-box.login{
    transform: translateX(0px);
    transition: transform .6s ease;
    transition-delay: 0.7s;
}
.login-section.active .form-box.login{
    transform: translateX(430px);
    transition-delay: 0s;
}



.login-section .form-box h2{
    text-align: center;
    font-size: 25px;
}

.form-box .input-box{
    width: 340px;
    height: 50px;
    border-bottom: 2px solid#fff;
    margin: 30px 0;
    position: relative;
}
.input-box input{
    width: 100%;
    height: 100%;
    background: transparent;
    border: none;
    outline: none;
    font-size: 16px;
    padding-right: 28px;


}
.input-box label{
    position: absolute;
    top: 50%;
    left: 0;
    transform: translateY(-50%);
    font-size: 16px;
    font-weight: 600px;
    pointer-events: none;
    transition: .5s ease;

}
.input-box .icon{
    position: absolute;
    top: 13px;
    right: 0;
    font-size: 19px;
}
.input-box input:focus~ label,
.input-box input:valid~ label{
    top: -5px;
}
.remember-password{
    font-size: 14px;
    font-weight: 500;
    margin: -15px 0 15px ;
    display: flex;
    justify-content: space-between;
}
.remember-password label input{
    accent-color: #fff;
    margin-right: 3px;

}
.remember-password a{
    color: #fff;
    text-decoration: none;
}
.remember-password a:hover{
    text-decoration: underline;
}
.btn{
    background: #fff;
    width: 100%;
    height: 45px;
    outline: none;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    background: #ff8c00;
    font-size: 16px;
    color: #fff;
    box-shadow: rgba(0,0,0,0.4);

}
.create-account{
    font-size: 14.5px;
    text-align: center;
    margin: 25px;
}
.create-account p a{
    color: #fff;
    font-weight: 600px;
    text-decoration: none;
}
.create-account p a:hover{
    text-decoration: underline;
}


</style>




