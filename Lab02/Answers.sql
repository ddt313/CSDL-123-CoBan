--Cau 1:
delete
from DON_VI_UNG_HO
where TenNganHang = 'DongA'

--Cau 2:
update HINH_THUC_UH
set TenHinhThucUngHo = 'Mi an lien'
where TenHinhThucUngHo = 'Mi tom'

--Cau 3:
select *
from HO_DAN
where
    HoTenChuHo like 'Tr%'
    and len(HoTenChuHo) <= 30

-- Cau 4:
select *
from DOT_NHAN_UNG_HO
where
    year(NgayNhanUngHo) = 2016
    and MaHoDan like '%1'

-- Cau 5:
select
    DON_VI_UNG_HO.MaDVUH,
    HoTenNguoiDaiDien,
    MaDotUngHo,
    NgayUngHo
from DON_VI_UNG_HO
inner join DOT_UNG_HO
    on DON_VI_UNG_HO.MaDVUH = DOT_UNG_HO.MaDVUH
where NgayUngHo > '2016-04-30'
order by NgayUngHo desc, HoTenNguoiDaiDien;

-- Cau 6:
( select *
from HO_DAN
where LaHoNgheo = 'Dung'
) except (
select HO_DAN.*
from HO_DAN
inner join DOT_NHAN_UNG_HO
    on HO_DAN.MaHoDan = DOT_NHAN_UNG_HO.MaHoDan
)

-- Cau 7:
select distinct HoTenChuHo
from HO_DAN

select HoTenChuHo
from HO_DAN
group by HoTenChuHo

-- Cau 8:
select
    HO_DAN.MaHoDan,
    HoTenChuHo,
    ToDanPho,
    KhoiHoacThon,
    DOT_NHAN_UNG_HO.MaDotNhanUngHo,
    NgayNhanUngHo,
    MaHinhThucUH,
    SoLuongNhanUngHo
from HO_DAN
inner join DOT_NHAN_UNG_HO
    on HO_DAN.MaHoDan = DOT_NHAN_UNG_HO.MaHoDan
inner join CHI_TIET_NHAN_UNG_HO
    on DOT_NHAN_UNG_HO.MaDotNhanUngHo = CHI_TIET_NHAN_UNG_HO.MaDotNhanUngHo

-- Cau 9:
select DON_VI_UNG_HO.MaDVUH
from DON_VI_UNG_HO
inner join DOT_UNG_HO
    on DON_VI_UNG_HO.MaDVUH = DOT_UNG_HO.MaDVUH
inner join CHI_TIET_UNG_HO
    on DOT_UNG_HO.MaDotUngHo = CHI_TIET_UNG_HO.MaDotUngHo
inner join HINH_THUC_UH
    on CHI_TIET_UNG_HO.MaHinhThucUH = HINH_THUC_UH.MaHinhThucUH
where
    TenNganHang = 'Mbank'
    and year(NgayUngHo) = 2015
    and TenHinhThucUngHo = 'Tien mat'
group by DON_VI_UNG_HO.MaDVUH
    having count(DON_VI_UNG_HO.MaDVUH) >= 2

-- Cau 10:
( select HO_DAN.*
from HO_DAN
inner join DOT_NHAN_UNG_HO
    on HO_DAN.MaHoDan = DOT_NHAN_UNG_HO.MaHoDan
inner join CHI_TIET_NHAN_UNG_HO
    on DOT_NHAN_UNG_HO.MaDotNhanUngHo = CHI_TIET_NHAN_UNG_HO.MaDotNhanUngHo
inner join HINH_THUC_UH
    on CHI_TIET_NHAN_UNG_HO.MaHinhThucUH = HINH_THUC_UH.MaHinhThucUH
where TenHinhThucUngHo = 'Mi an lien'
) except (
select HO_DAN.*
from HO_DAN
inner join DOT_NHAN_UNG_HO
    on HO_DAN.MaHoDan = DOT_NHAN_UNG_HO.MaHoDan
inner join CHI_TIET_NHAN_UNG_HO
    on DOT_NHAN_UNG_HO.MaDotNhanUngHo = CHI_TIET_NHAN_UNG_HO.MaDotNhanUngHo
inner join HINH_THUC_UH
    on CHI_TIET_NHAN_UNG_HO.MaHinhThucUH = HINH_THUC_UH.MaHinhThucUH
where TenHinhThucUngHo = 'Gao'
)