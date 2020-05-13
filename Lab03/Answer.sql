-- Cau 1:
delete
from CONGDAN
where ToDanPho = 'To 13'

-- Cau 2:
update LOAITHUTUC
set ThoiHanTraKetQuaToiDa = 5
where ThoiHanTraKetQuaToiDa = 2

--Cau 3:
select *
from CONGDAN
where
    HoTenCD like 'Ng%'
    and HoTenCD like '%g'
    and len(HoTenCD) <= 50

-- Cau 4:
select *
from YEUCAUTHUTUC
where year(ThoiDiemTaoYeuCau) in (2016, 2019)

-- Cau 5
select MaYeuCau, MaCD, NoiDungYeuCau, ThoiDiemTaoYeuCau, ThoiDiemHenTraKetQua, TrangThai
from YEUCAUTHUTUC
where TrangThai = 'Da tiep nhan xu ly'
order by MaCD desc, ThoiDiemHenTraKetQua asc

-- Cau 6
(select *
from CANBOTIEPNHAN
where ChucVu = 'Can bo ho tich')
except
(select CANBOTIEPNHAN.*
from CANBOTIEPNHAN
inner join YEUCAUTHUTUC
    on CANBOTIEPNHAN.MaCBTN = YEUCAUTHUTUC.MaCBTN)

-- Cau 7
-- distinct
select distinct HoTenCD
from CONGDAN
inner join YEUCAUTHUTUC
    on CONGDAN.MaCD = YEUCAUTHUTUC.MaCD
-- group by
select HoTenCD
from CONGDAN
inner join YEUCAUTHUTUC
    on CONGDAN.MaCD = YEUCAUTHUTUC.MaCD
group by HoTenCD

-- Cau 8

-- Cau 9
select CONGDAN.*
from CONGDAN
inner join YEUCAUTHUTUC
    on CONGDAN.MaCD = YEUCAUTHUTUC.MaCD
where
    QuanHeVoiChuHo = 'Ban than'
    and year(ThoiDiemTaoYeuCau) = 2019
    and month(ThoiDiemTaoYeuCau) < 7
group by CONGDAN.MaCD
having count(CONGDAN.MaCD) >= 10

-- Cau 10
(select CONGDAN.*
from CONGDAN
inner join YEUCAUTHUTUC
    on CONGDAN.MaCD = YEUCAUTHUTUC.MaCD
inner join LOAITHUTUC
    on YEUCAUTHUTUC.MaLoaiTT = LOAITHUTUC.MaLoaiTT
where
    TenLoaiTT = 'Chung nhan doc than'
    and year(ThoiDiemTaoYeuCau) = 2019
    and month(ThoiDiemTaoYeuCau) = 10
) except (
select CONGDAN.*
from CONGDAN
inner join YEUCAUTHUTUC
    on CONGDAN.MaCD = YEUCAUTHUTUC.MaCD
inner join LOAITHUTUC
    on YEUCAUTHUTUC.MaLoaiTT = LOAITHUTUC.MaLoaiTT
where
    TenLoaiTT = 'Dang ky ket hon'
    and year(ThoiDiemTaoYeuCau) = 2019
    and month(ThoiDiemTaoYeuCau) = 10
)

