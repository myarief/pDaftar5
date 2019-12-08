<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="inquirydata.aspx.cs" Inherits="pDaftar3.inquirydata" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>Inqury Data Pemohonan</h4>
    <br />

    <div class="form-row border-bottom">
        <div class="form-group col-md-2">
            <label for="inputEmail4">Tanggal Daftar</label>
            <input type="tgl_awal" id="inputEmail4" placeholder="tanggal awal" class="form-control my-1 mr-2 " />
            <input type="tgl_akhir" id="inputEmail5" placeholder="tgl akhir" class="form-control my-1 mr-2 " />
        </div>
        <div class="form-group col-md-2">
            <label for="inputState">Status Daftar</label>
            <select id="inputState" class="form-control my-1 mr-2">
                <option selected>Semua</option>
                <option>Terbit Nomor Sertifikasi</option>
                <option>Terbit Surat Pengantar</option>
                <option>Serah Terima SP</option>
            </select>
        </div>
        <div class="form-group col-md-2">
            <label for="inputPassword4">Pelaku Usaha</label>
            <input type="tgl_awal" id="inputEmail4" placeholder="nama pelaku usaha" class="form-control my-1 mr-2 " />
        </div>
    </div>
    <div class="form-row">
        <button type="submit" class="btn btn-primary my-2">Cari</button>
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
            </asp:TemplateField>
            <asp:BoundField HeaderText="No Daftar" DataField="No_daftar">
                <HeaderStyle CssClass="tableHeaderLeft" Width="7%" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Tanggal" DataField="tgl_daftar" DataFormatString="{0:dd/MM/yyyy}">
                <HeaderStyle CssClass="tableHeaderLeft" Width="7%" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Nama PU" DataField="nama_pu">
                <HeaderStyle CssClass="tableHeaderLeft" Width="18%" />
                
            </asp:BoundField>
            <asp:BoundField HeaderText="Kota" DataField="kota_pu">
                <HeaderStyle CssClass="tableHeaderLeft" Width="15%" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Jenis Usaha" DataField="nama_Jenis_Usaha">
                <HeaderStyle CssClass="tableHeaderLeft" Width="10%" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Jenis Daftar" DataField="nama_jenis_daftar">
                <HeaderStyle CssClass="tableHeaderLeft" Width="10%" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Status" DataField="nama_status_reg">
                <HeaderStyle CssClass="tableHeaderLeft" Width="20%" />
            </asp:BoundField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="lbView" runat="server" CommandName="lihat">view</asp:LinkButton>
                </ItemTemplate>
                <HeaderStyle CssClass="tableHeaderLeft" Width="10%" />
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            Tidak ada data ditemukan
        </EmptyDataTemplate>
        <EmptyDataRowStyle CssClass="itemEmpty" />
        <RowStyle CssClass="tableRowOdd" />
    </asp:GridView>
</asp:Content>
