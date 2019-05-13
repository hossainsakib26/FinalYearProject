<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignupLogin_SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book BD Signin</title>

    <link href="../Users/Admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Users/Admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" />
    <link href="css/sb-admin.css" rel="stylesheet" />

    <!-- Bootstrap core JavaScript-->
    <script src="../Users/Admin/vendor/jquery/jquery.min.js"></script>
    <script src="../Users/Admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../Users/Admin/vendor/jquery-easing/jquery.easing.min.js"></script>
</head>
<body>
    <form class="bg-white" id="form1" runat="server">
        <div class="container">
      <div class="card card-login mx-auto mt-5">
        <div class="card-header">Login</div>
        <div class="card-body">
          
            <div class="form-group">
              <div class="form-label-group">
                  <asp:TextBox ID="txtEmail" class="form-control" runat="server" TextMode="Email"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Text" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                <label for="inputEmail">Email address</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <asp:TextBox ID="txtPassword" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Password" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                  <label for="inputPassword">Password</label>
              </div>
            </div>
            <asp:Button class="btn btn-primary btn-block" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
          <div class="text-center">
              <asp:LinkButton class="d-block small mt-3" ID="LinkButtonRegister" href="SignUp.aspx" runat="server">Register an Account</asp:LinkButton>
              <asp:LinkButton class="d-block small" ID="LinkButtonForgotPass" href="ForgotPassword.aspx" runat="server">Forgot Password?</asp:LinkButton>
            
          </div>
        </div>
      </div>
    </div>
    </form>
</body>
</html>
