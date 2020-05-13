create database db_baithuchanh01_1;
use db_baithuchanh01_1;

create table LOAIMATHANG(
  MaLoaiMatHang        char(30) primary key ,
  TenLoaiMatHang       varchar(30) null
)

create table KHUVUC(
  MaKhuVuc   char(5) primary key ,
  TenKhuVuc  varchar(30) null
)

create table KHOANGTHOIGIAN(
  MaKhoangThoiGian char(5) primary key ,
  MoTa             varchar(30) null
)

create table DICHVU(
  MaDichVu   char(5) primary key ,
  TenDichVu  varchar(50) null
)

create table THANHVIENGIAOHANG(
  MaThanhVienGiaoHang  char(6) primary key ,
  TenThanhVienGiaoHang varchar(50) null,
  NgaySinh             date null,
  GioiTinh             varchar(4) null,
  SoDTThanhVien        char(11)   null,
  DiaChiThanhVien      varchar(50)null
)

create table DANGKYGIAOHANG(
  MaThanhVienGiaoHang        char(6) ,
  MaKhoangThoiGianDKGiaoHang char(5) ,
  foreign key (MaThanhVienGiaoHang) references THANHVIENGIAOHANG,
  foreign key (MaKhoangThoiGianDKGiaoHang) references KHOANGTHOIGIAN(MaKhoangThoigian),
  primary key (MaThanhVienGiaoHang, MaKhoangThoiGianDKGiaoHang)
)

create table KHACHHANG(
  MaKhachHang    char(5) primary key,
  MaKhuVuc       char(5) foreign key (MaKhuVuc) references KHUVUC,
  TenKhachHang   varchar(50) null,
  TenCuaHang     varchar(50) null,
  SoDTTKhachHang varchar(12) null,
  DiaChiEmail    varchar(50) null,
  DiaChiNhanHang varchar(50) null
)

create table DONHANG_GIAOHANG(
  MaDonHangGiaoHang       char(6) primary key,
  MaKhachHang             char(5) foreign key (MaKhachHang) references KHACHHANG,
  MaThanhVienGiaoHang     char(6) foreign key (MaThanhVienGiaoHang) references THANHVIENGIAOHANG,
  MaDichVu                char(5) foreign key (MaDichVu) references DICHVU,
  MaKhuVucGiaoHang        char(5) foreign key (MaKhuVucGiaoHang) references KHUVUC(MaKhuVuc),
  TenNguoiNhan            varchar(50) null,
  DiaChiNguoiNhan         varchar(50) null,
  SoDTNguoiNhan           varchar(12) null,
  MaKhoangThoiGianGiaoHang char(5) foreign key (MaKhoangThoiGianGiaoHang) references KHOANGTHOIGIAN(MaKhoangThoiGian),
  NgayGiaoHang            date null,
  PhuongThucThanhToan      varchar(30) null,
  TrangThaiPheDuyet       varchar(30) null,
  TrangThaiGiaoahng       varchar(30) null
)

create table CHITIETDONHANG(
  MaDonHangGiaoHang     char(6) foreign key (MaDonHangGiaoHang) references DONHANG_GIAOHANG,
  TenSanPhamDuocGiao    varchar(50) ,
  SoLuong               int null,
  TrongLuong            decimal(3, 2) null,
  MaLoaiMatHang         char(30) foreign key (MaLoaiMatHang) references LOAIMATHANG ,
  TienThuHo             money null,
  constraint PK primary key( MaDonHangGiaoHang,TenSanPhamDuocGiao)
)