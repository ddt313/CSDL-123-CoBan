create database db_baithuchanh03
use db_baithuchanh03

create table CONGDAN(
    MaCD char(5) not null primary key,
    HoTenCD varchar(40) not null,
    DiaChi varchar(70),
    ToDanPho varchar(6),
    GioiTinh varchar(3),
    HoTenChuHo varchar(40),
    QuanHeVoiChuHo varchar(20)
)

create table LOAITHUTUC(
    MaLoaiTT char(5) not null primary key,
    TenLoaiTT varchar(50) not null,
    ThoiHanTraKetQuaToiDa int check(ThoiHanTraKetQuaToiDa > 0),
    MucPhi money
)

create table CANBOTIEPNHAN(
    MaCBTN char(5) not null primary key,
    HoTenCBTN varchar(40) not null,
    ChucVu varchar(60)
)

create table YEUCAUTHUTUC(
    MaYeuCau char(7) not null primary key,
    MaCD char(5) not null foreign key(MaCD) references CONGDAN(MaCD) on delete cascade,
    NoiDungYeuCau varchar(60),
    MaLoaiTT char(5) not null foreign key(MaLoaiTT) references LOAITHUTUC(MaLoaiTT) on delete cascade,
    ThoiDiemTaoYeuCau date,
    ThoiDiemHenTraKetQua date,
    MaCBTN char(5) not null foreign key(MaCBTN) references CANBOTIEPNHAN(MaCBTN) on delete cascade,
    TrangThai varchar(30)
)

create table GIAYTOCANBOSUNG(
    MaYeuCau char(7) not null foreign key(MaYeuCau) references YEUCAUTHUTUC(MaYeuCau) on delete cascade,
    TenGiayToCanBoSung varchar(50) not null,
    MoTaGiayToBoSung varchar(100),
    ThoiHanCuoiCungDeBoSung date,
    TinhTrangBoSung varchar(50),
    primary key(MaYeuCau, TenGiayToCanBoSung)
)

create table GIAYTOKEMTHEO(
    MaYeuCau char(7) not null foreign key(MaYeuCau) references YEUCAUTHUTUC(MaYeuCau) on delete cascade,
    TenGiayToKemTheo varchar(50) not null,
    MoTaGiayToKemTheo varchar(100),
    ThoiDiemNhanGTKT date,
    primary key(MaYeuCau, TenGiayToKemTheo)
)