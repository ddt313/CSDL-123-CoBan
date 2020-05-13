--Cau 1:
delete from KHACHHANG
where TenKhachHang = 'Le Thi A'

--Cau 2:
update KHACHHANG
set DiaChiNhanHang = 'Ngu Hanh Son'
where DiaChiNhanHang = 'Son Tra'

--Cau 3:
select TenThanhVienGiaoHang
from THANHVIENGIAOHANG
where 
    TenThanhVienGiaoHang like 'Tr%' 
    and len(TenThanhVienGiaoHang) >= 25

--Cau 4:
select *
from DONHANG_GIAOHANG
inner join KHUVUC
on DONHANG_GIAOHANG.MaKhuVucGiaoHang = KHUVUC.MaKhuVuc
where
    year(NgayGiaoHang) = 2017
    and TenKhuVuc = 'Ngu Hanh Son'

--Cau 5:
select
    MaDonHangGiaoHang,
    DONHANG_GIAOHANG.MaThanhVienGiaoHang,
    TenThanhVienGiaoHang,
    NgayGiaoHang,
    PhuongThucThanhToan
from DONHANG_GIAOHANG
inner join THANHVIENGIAOHANG
on DONHANG_GIAOHANG.MaThanhVienGiaoHang = THANHVIENGIAOHANG.MaThanhVienGiaoHang
where TrangThaiGiaoHang = 'Da giao hang'
order by NgayGiaoHang, PhuongThucThanhToan desc

--Cau 6:
select *
from THANHVIENGIAOHANG
where
    GioiTinh = 'Nam'
    and MaThanhVienGiaoHang not in (
        select MaThanhVienGiaoHang
        from DONHANG_GIAOHANG
    )

-- Cau 7:
select distinct TenKhachHang
from KHACHHANG

select TenKhachHang
from KHACHHANG
group by TenKhachHang

-- Cau 8:
select
    KHACHHANG.MaKhachHang,
    TenKhachHang,
    DiaChiNhanHang,
    MaDonHangGiaoHang,
    PhuongThucThanhToan,
    TrangThaiGiaoHang
from KHACHHANG
inner join DONHANG_GIAOHANG
on KHACHHANG.MaKhachHang = DONHANG_GIAOHANG.MaKhachHang

-- Cau 9:
select THANHVIENGIAOHANG.MaThanhVienGiaoHang
from THANHVIENGIAOHANG
inner join DONHANG_GIAOHANG
    on THANHVIENGIAOHANG.MaThanhVienGiaoHang = DONHANG_GIAOHANG.MaThanhVienGiaoHang
inner join KHUVUC
    on DONHANG_GIAOHANG.MaKhuVucGiaoHang = KHUVUC.MaKhuVuc
where
    GioiTinh = 'Nu'
    and TenKhuVuc = 'Thanh Khe'
group by THANHVIENGIAOHANG.MaThanhVienGiaoHang
    having count(DONHANG_GIAOHANG.MaKhachHang) >= 1

-- Cau 10
(select KHACHHANG.*
from KHACHHANG
inner join DONHANG_GIAOHANG
    on KHACHHANG.MaKhachHang = DONHANG_GIAOHANG.MaKhachHang
inner join KHUVUC
    on DONHANG_GIAOHANG.MaKhuVucGiaoHang = KHUVUC.MaKhuVuc
where
    KHUVUC.TenKhuVuc = 'Lien Chieu'
) except (
select KHACHHANG.*
from KHACHHANG
inner join DONHANG_GIAOHANG
    on KHACHHANG.MaKhachHang = DONHANG_GIAOHANG.MaKhachHang
inner join THANHVIENGIAOHANG
    on DONHANG_GIAOHANG.MaThanhVienGiaoHang = THANHVIENGIAOHANG.MaThanhVienGiaoHang
where THANHVIENGIAOHANG.GioiTinh = 'Nam'
)