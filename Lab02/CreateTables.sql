drop database db_baithuchanh02
create database db_baithuchanh02
use db_baithuchanh02

create table DON_VI_UNG_HO(
    MaDVUH char(5) not null primary key,
    HoTenNguoiDaiDien varchar(40) not null,
    DiaChiNguoiDaiDien varchar(70),
    SoDienThoaiLienLac varchar(12),
    SoCMNDNguoiDaiDien varchar(10),
    SoTaiKhoanNganHang varchar(15),
    TenNganHang varchar(20),
    ChiNhanhNganHang varchar(30),
    TenChuTKNganHang varchar(40)
)

create table HO_DAN(
    MaHoDan char(5) not null primary key,
    HoTenChuHo varchar(40) not null,
    ToDanPho int check(ToDanPho > 0),
    KhoiHoacThon int check(KhoiHoacThon > 0),
    SoDienThoai varchar(12),
    DiaChiNha varchar(70),
    SoNhanKhau int check(SoNhanKhau > 0),
    DienGiaDinh varchar(20),
    LaHoNgheo varchar(4)
)

create table HINH_THUC_UH(
    MaHinhThucUH char(4) not null primary key,
    TenHinhThucUngHo varchar(20) not null
)

create table DOT_UNG_HO(
    MaDotUngHo char(5) not null primary key,
    MaDVUH char(5) not null foreign key(MaDVUH) references DON_VI_UNG_HO(MaDVUH) on delete cascade,
    NgayUngHo date
)

create table DOT_NHAN_UNG_HO(
    MaDotNhanUngHo char(9) not null primary key,
    MaHoDan char(5) not null foreign key(MaHoDan) references HO_DAN(MaHoDan) on delete cascade,
    NgayNhanUngHo date
)

create table CHI_TIET_UNG_HO(
    MaDotUngHo char(5) not null foreign key(MaDotUngHo) references DOT_UNG_HO(MaDotUngHo) on delete cascade,
    MaHinhThucUH char(4) not null foreign key(MaHinhThucUH) references HINH_THUC_UH(MaHinhThucUH) on delete cascade,
    SoLuongUngHo int check(SoLuongUngHo > 0),
    DonViTinh varchar(10),
    primary key(MaDotUngHo, MaHinhThucUH)
)

create table CHI_TIET_NHAN_UNG_HO(
    MaDotNhanUngHo char(9) not null foreign key(MaDotNhanUngHo) references DOT_NHAN_UNG_HO(MaDotNhanUngHo) on delete cascade,
    MaHinhThucUH char(4) not null foreign key(MaHinhThucUH) references HINH_THUC_UH(MaHinhThucUH) on delete cascade,
    SoLuongNhanUngHo int check(SoLuongNhanUngHo > 0),
    DonViTinh varchar(10),
    primary key(MaDotNhanUngHo, MaHinhThucUH)
)