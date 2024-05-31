<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="AraçGalerisi.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <p>

        <br />
        &nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="İsminiz" CssClass="saydamArkaPlan"></asp:Label>&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" CssClass="saydamArkaPlan"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Bu kısım boş geçilemez." CssClass="saydamArkaPlan"></asp:RequiredFieldValidator>
        <br />

        &nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="Soyisminiz" CssClass="saydamArkaPlan"></asp:Label>&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" CssClass="saydamArkaPlan"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Bu kısım boş geçilemez." CssClass="saydamArkaPlan"></asp:RequiredFieldValidator>
        <br />

        &nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="TC Kimlik Numaranız" CssClass="saydamArkaPlan"></asp:Label>&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" CssClass="saydamArkaPlan"></asp:TextBox>
        <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="Bu kısım boş geçilemez." CssClass="saydamArkaPlan">
        </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorTC" runat="server" 
                ControlToValidate="TextBox3"
                ErrorMessage="11 haneli TC Kimlik Numaranızı giriniz."
                ValidationExpression="^\d{11}$" CssClass="saydamArkaPlan">
        </asp:RegularExpressionValidator>
        <br />

        &nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="Telefon Numaranız" CssClass="saydamArkaPlan"></asp:Label>&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" placeholder="Örnek: 05554443322" CssClass="saydamArkaPlan"></asp:TextBox>
        <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Bu kısım boş geçilemez." CssClass="saydamArkaPlan"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorTelefon" runat="server"
                ControlToValidate="TextBox4"
                ErrorMessage="Geçersiz telefon numarası formatı."
                ValidationExpression="^(05\d{9})$">
        </asp:RegularExpressionValidator>
        <br />

        &nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text="Almak istediğiniz aracı seçiniz" CssClass="saydamArkaPlan"></asp:Label>&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="saydamArkaPlan2">
            <asp:ListItem>Range Rover</asp:ListItem>
            <asp:ListItem>Jeep</asp:ListItem>
            <asp:ListItem>Mercedes</asp:ListItem>
            <asp:ListItem>Porsche</asp:ListItem>
        </asp:DropDownList>
        
        <br /> <br />
        &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="İşlemi Tamamla" CssClass="saydamArkaPlan" OnClick="Button1_Click"/>
        <br /> <br />
        &nbsp;&nbsp;<asp:Label ID="sonLabel" runat="server" Text="İşleminiz başarıyla sonlandırılmıştır. Tarafımızca size ulaşılacaktır." CssClass="saydamArkaPlan" Visible="False"></asp:Label>

    </p>
    
</asp:Content>
