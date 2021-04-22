<%@ page language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("Input validated");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        NameTextBox.Text = string.Empty;
        AgeTextBox.Text = string.Empty;
        CityTextBox.Text = string.Empty;
    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="head1" runat="server">
  <title>Tell me about you!</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: right;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</head>
<body>
  <form id="form1" runat="server">
  
    <h2 class="auto-style3">Tell me about you!</h2>


      <table class="auto-style1">
          <tr>
              <td class="auto-style2">

    <asp:label id="NameLabel" 
      text="Enter your name:"
      runat="Server"
      AssociatedControlID="NameTextBox">
    </asp:label>
              </td>
              <td>
    
    <asp:textbox id="NameTextBox" 
      runat="Server">
    </asp:textbox>

    <asp:requiredfieldvalidator id="RequiredFieldValidator1"
      controltovalidate="NameTextBox"
      validationgroup="PersonalInfoGroup"
      errormessage="Enter your name."
      runat="Server" ForeColor="#CC3300">
    </asp:requiredfieldvalidator>
    
              </td>
          </tr>
          <tr>
              <td class="auto-style2">
    
    <asp:label id="AgeLabel" 
      text="Enter your age:"
      runat="Server" 
      AssociatedControlID="AgeTextBox">
    </asp:label>

              </td>
              <td>
    
    <asp:textbox id="AgeTextBox" 
      runat="Server">
    </asp:textbox>

    <asp:requiredfieldvalidator id="RequiredFieldValidator2"
      controltovalidate="AgeTextBox"
      validationgroup="PersonalInfoGroup"
      errormessage="Enter your age."
      runat="Server" ForeColor="#CC3300">
    </asp:requiredfieldvalidator>

              </td>
          </tr>
          <tr>
              <td class="auto-style2">
      
    <asp:label id="CityLabel" 
      text="Enter your city of residence:"
      runat="Server" 
      AssociatedControlID="CityTextBox">
    </asp:label>

              </td>
              <td>
    
    <asp:textbox id="CityTextBox" 
      runat="Server">
    </asp:textbox>

    <asp:requiredfieldvalidator id="RequiredFieldValidator3"
      controltovalidate="CityTextBox"
      validationgroup="PersonalInfoGroup"
      errormessage="Enter a city name."
      runat="Server" ForeColor="#CC3300"></asp:requiredfieldvalidator>
    
              </td>
          </tr>
          <tr>
              <td class="auto-style2">
      
                  &nbsp;</td>
              <td>
    
    <asp:button id="Button1" 
      text="Validate" 
      causesvalidation="true"
      validationgroup="PersonalInfoGroup"
      runat="Server" OnClick="Button1_Click" />

                  <asp:button ID="Button2"
                      text="Reset"
                      validationgroup="PersonaInfoGroup"
                      runat="Server" OnClick="Button2_Click" />

              </td>
          </tr>
      </table>

  </form>
</body>
</html>
