<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="SignupLogin_ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BookBD forgot password page</title>
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
        <div class="card-header">Reset Password</div>
        <div class="card-body">
          <div class="text-center mb-4">
            <h4>Forgot your password?</h4>
            <p>Enter your email address and we will send you instructions on how to reset your password.</p>
          </div>
          
            <div class="form-group">
              <div class="form-label-group">
                  <asp:TextBox ID="txtForgotEmail" class="form-control"  runat="server" TextMode="Email"></asp:TextBox>
                <label for="inputEmail">Enter email address</label>
                  <br />
                  <asp:Literal ID="Literal1" runat="server"></asp:Literal>
              </div>
            </div>
            
         
            <asp:Button ID="btnReset" class="btn btn-primary btn-block" runat="server" OnClick="btnReset_Click" Text="Reset" />
            
         
          <div class="text-center">
            <asp:LinkButton class="d-block small mt-3" ID="LinkButtonRegister" runat="server" href="SignUp.aspx">Register an Account</asp:LinkButton>
            <asp:LinkButton class="d-block small mt-3" ID="LinkButton1" runat="server" href="SignIn.aspx">Go to login Page</asp:LinkButton>
          </div>
        </div>
      </div>
    </div>
    </form>
</body>
</html>
