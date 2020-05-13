--EXEC sp_rename 'DANGKYGIAOHANG.MaKhoangThoiGianGiaoHang', 'MaKhoangThoiGianDKGiaoHang', 'COLUMN'

drop database db_baithuchanh01

--create new database
create database db_baithuchanh01;
use db_baithuchanh01;

--Tao bang loaimahang
create table LOAIMATHANG(
    MaLoaiMatHang char(5) not null primary key,
    TenLoaiMatHang nchar(50) not null
)
--EXEC sp_rename 'LOAIMAHANG', 'LOAIMATHANG'

--Tao bang khoangthoigian
create table KHOANGTHOIGIAN(
    MaKhoangThoiGian char(5) not null primary key,
    MoTa char(30) not null
)

--Tao bang KhuVuc
create table KHUVUC(
    MaKhuVuc char(5) not null primary key,
    TenKhuVuc nchar(50) not null
)

--Tao bang DICHVU
create table DICHVU(
    MaDichVu char(5) not null primary key,
    TenDichVu nchar(70) not null
)

--Tao bang THANHVIENGIAOHANG
create table THANHVIENGIAOHANG(
    MaThanhVienGiaoHang char(6) not null primary key,
    TenThanhVienGiaoHang nchar(60) not null,
    NgaySinh date not null,
    GioiTinh nchar(3) not null,
    SoDTThanhVien char(12) not null,
    DiaChiThanhVien nchar(60) not null
)

--Tao bang DANGKYGIAOHANG
create table DANGKYGIAOHANG(
    MaThanhVienGiaoHang char(6) not null foreign key(MaThanhVienGiaoHang) references THANHVIENGIAOHANG(MaThanhVienGiaoHang) on delete cascade,
    MaKhoangThoiGianDKGiaoHang char(5) not null foreign key(MaKhoangThoiGianDKGiaoHang) references KHOANGTHOIGIAN(MaKhoangThoiGian) on delete cascade,
    primary key(MaThanhVienGiaoHang, MaKhoangThoiGianDKGiaoHang)
)

--Tao bang KHACHHANG
create table KHACHHANG(
    MaKhachHang char(5) not null primary key,
    MaKhuVuc char(5) not null foreign key(MaKhuVuc) references KHUVUC(MaKhuVuc) on delete cascade,
    TenKhachHang nchar(50) not null,
    TenCuaHang nchar(50) not null,
    SoDTKhachHang char(12) not null,
    DiaChiEmail char(30) not null,
    DiaChiNhanHang nchar(70) not null
)

--Tao bang DONHANG_GIAOHANG
create table DONHANG_GIAOHANG(
    MaDonHangGiaoHang char(6) not null primary key,
    MaKhachHang char(5) not null foreign key(MaKhachHang) references KHACHHANG(MaKhachHang) on delete cascade,
    MaThanhVienGiaoHang char(6) not null foreign key(MaThanhVienGiaoHang) references THANHVIENGIAOHANG,
    MaDichVu char(5) not null foreign key(MaDichVu) references DICHVU,
    MaKhuVucGiaoHang char(5) not null foreign key(MaKhuVucGiaoHang) references KHUVUC,
    TenNguoiNhan nchar(50) not null,
    DiaChiGiaoHang nchar(60) not null,
    SoDTNguoiNhan char(12) not null,
    MaKhoangThoiGianGiaoHang char(5) not null foreign key(MaKhoangThoiGianGiaoHang) references KHOANGTHOIGIAN,
    NgayGiaoHang date not null,
    PhuongThucThanhToan nchar(20) not null,
    TrangThaiPheDuyet nchar(20) not null,
    TrangThaiGiaoHang nchar(20)
)

drop table CHITIET_DONHANG;

create table CHITIET_DONHANG(
    MaDonHangGiaoHang char(6) not null foreign key(MaDonHangGiaoHang) references DONHANG_GIAOHANG(MaDonHangGiaoHang) on delete cascade,
    TenSanPhamDuocGiao nchar(50) not null,
    SoLuong int check(SoLuong > 0),
    TrongLuong float(2) check(TrongLuong > 0),
    MaLoaiMatHang char(5) not null foreign key(MaLoaiMatHang) references LOAIMATHANG,
    TienThuHo int check(TienThuHo > 0),
    constraint PK1 primary key(MaDonHangGiaoHang, TenSanPhamDuocGiao)
)