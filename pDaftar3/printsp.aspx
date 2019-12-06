<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="printsp.aspx.cs" Inherits="pDaftar3.printsp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <h4>Daftar</h4>
    <br />

    <div style="height: 40px">
    </div>

    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" GridLines="none"
        Width="100%" ShowHeaderWhenEmpty="True" DataKeyNames="no_daftar" OnRowDataBound="GridView1_RowDataBound"
        CssClass="table table-responsive table-striped table-hover">
   
        <Columns>
            <asp:TemplateField HeaderText="No" SortExpression="No">
                <ItemTemplate>
                    <%# Container.DataItemIndex + 1 %>
                </ItemTemplate>
                <HeaderStyle CssClass="tableHeaderLeft" Width="3%" />
                <ItemStyle CssClass="itemGridLeft" />
            </asp:TemplateField>
            <asp:BoundField HeaderText="No Daftar" DataField="No_daftar">
                <HeaderStyle CssClass="tableHeaderLeft" Width="7%" />
                <ItemStyle CssClass="itemGridLeft" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Tanggal" DataField="tgl_daftar" DataFormatString="{0:dd/MM/yyyy}">
                <HeaderStyle CssClass="tableHeaderLeft" Width="7%" />
                <ItemStyle CssClass="itemGridLeft" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Nama PU" DataField="nama_pu">
                <HeaderStyle CssClass="tableHeaderLeft" Width="18%" />
                <ItemStyle CssClass="itemGridLeft" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Kota" DataField="kota_pu">
                <HeaderStyle CssClass="tableHeaderLeft" Width="15%" />
                <ItemStyle CssClass="itemGridLeft" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Jenis Usaha" DataField="Jenis_Usaha">
                <HeaderStyle CssClass="tableHeaderLeft" Width="10%" />
                <ItemStyle CssClass="itemGridLeft" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Jenis Daftar" DataField="jenis_daftar">
                <HeaderStyle CssClass="tableHeaderLeft" Width="10%" />
                <ItemStyle CssClass="itemGridLeft" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Email" DataField="email">
                <HeaderStyle CssClass="tableHeaderLeft" Width="20%" />
                <ItemStyle CssClass="itemGridLeft" />
            </asp:BoundField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="lbView" runat="server" CommandName="lihat">view</asp:LinkButton>&nbsp;&nbsp;<asp:LinkButton
                        ID="lbHapus" runat="server" CommandName="hapus">hapus</asp:LinkButton>
                </ItemTemplate>
                <HeaderStyle CssClass="tableHeaderLeft" Width="10%" />
                <ItemStyle CssClass="itemGridLeft" />
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            Tidak ada data ditemukan
        </EmptyDataTemplate>
        <EmptyDataRowStyle CssClass="itemEmpty" />
        <RowStyle CssClass="tableRowOdd" />
    </asp:GridView>
</asp:Content>
