<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="regnew.aspx.cs" Inherits="pDaftar3.regnew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>Pendaftaran Pelaku Usaha</h4>
    <br />

    <div style="height: 40px">
        <asp:Button ID="btnAdd" CssClass="btn btn-primary btn-sm" runat="server" Text="Simpan" OnClick="btnAdd_Click" />
        <asp:Button ID="btnBatal" CssClass="btn btn-primary btn-sm" runat="server" Text="  Batal  " OnClick="btnBatal_Click" />
    </div>
    <hr />
    <div class="form-row ">
        <div class="form-group col-md-4">
            <label for="inputEmail4">Nama Perusahaan</label>
            <input type="email" class="form-control" id="inputEmail4" placeholder="Nama Perusahaan">
        </div>
        <div class="form-group col-md-4">
            <label for="inputState">Skala Usaha</label>
            <select id="inputState" class="form-control">
                <option selected>Mikro</option>
                <option>Kecil</option>
                <option>Menengah</option>
                <option>Besar</option>
            </select>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-4">
            <label for="inputAddress">Alamat</label>
            <input type="text" class="form-control" id="inputAddress" placeholder="jl. sudirman no. 1 ">
        </div>
        <div class="form-group col-md-4">
            <label for="inputAddress2">Kota</label>
            <input type="text" class="form-control" id="inputAddress2" placeholder="jakarta">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-4">
            <label for="inputCity">Email</label>
            <input type="text" class="form-control" id="xxx@yyy.com">
        </div>
        <div class="form-group col-md-2">
            <label for="inputState">No Telpon</label>
            <input type="text" class="form-control" id="0811223344">
        </div>
        <div class="form-group col-md-2">
            <label for="inputZip">Jenis Permohonan</label>
            <select id="inputState" class="form-control">
                <option>Permohonan Baru</option>
                <option>Pengembangan</option>
                <option>Pembaruan</option>
            </select>
        </div>
    </div>
    <hr />
    <div class="form-row">
        <div class="form-group col-md-4">
            <label for="inputAddress">Verifikator</label>
            <select id="inputState" class="form-control">
                <option>Sujoko</option>
                <option>Sutrisno</option>
                <option>Suntoro</option>
            </select>
        </div>

        <div class="form-group col-md-4">
            <label for="inputAddress2">Kota</label>
            <input type="text" class="form-control" id="kota" placeholder="jakarta">
        </div>
    </div>
    <div class="form-group col-md-4"">
        <label for="inputAddress2">Kota</label>
        <asp:FileUpload ID="FileUpload1"   runat="server" />
    </div>
</asp:Content>
