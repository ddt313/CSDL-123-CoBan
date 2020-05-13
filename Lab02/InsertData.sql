delete from DON_VI_UNG_HO
insert into DON_VI_UNG_HO values
 ('CN001', 'Nguyen Van A1', 'Nui Thanh, Quang Nam', '0905121121', '124898000', '65874000', 'TienPhong Bank', 'Da Nang', 'Nguyen Van A1'),
 ('CN002', 'Nguyen Van A2', 'Phong Dien, Thua Thien Hue', '0905121122', '124898001', '65874001', 'Vietcom', 'Quang Nam', 'Nguyen Van A2'),
 ('CTY01', 'Nguyen Van A3', 'Tam Dao, Vinh Phuc', '0905121123', '124898002', '65874002', 'DongA', 'Thua Thien Hue', 'Nguyen Van A3'),
 ('CTY02', 'Nguyen Van A4', 'Ba To, Quang Ngai', '0905121124', '124898003', '65874003', 'Mbank', 'Gia Lai', 'Nguyen Van A4')

delete from HO_DAN
insert into HO_DAN values
 ('HD001', 'Tran Van B1', 10, 5, '0915222000', '12 Tran Van On', 5, 'Cong nhan vien chuc', 'Dung'),
 ('HD002', 'Tran Van B2', 11, 6, '0915222001', '13 Nguyen Huu Tho', 2, 'Cong nhan vien chuc', 'Sai'),
 ('HD003', 'Tran Van B3', 12, 7, '0915222002', '14 Phan Chu Trinh', 6, 'Thuong Binh', 'Dung'),
 ('HD004', 'Tran Van B4', 13, 7, '0915222003', '15 Phan Chu Trinh', 1, 'Me VNAH', 'Dung')

delete from HINH_THUC_UH
insert into HINH_THUC_UH values
 ('HT01', 'Tien mat'),
 ('HT02', 'Mi tom'),
 ('HT03', 'Quan ao')

delete from DOT_UNG_HO
insert into DOT_UNG_HO values
 ('UH001', 'CN002', '2016-11-18'),
 ('UH002', 'CTY01', '2015-11-19'),
 ('UH003', 'CTY02', '2015-08-10'),
 ('UH004', 'CTY02', '2015-10-20'),
 ('UH005', 'CTY02', '2016-11-11')

delete from DOT_NHAN_UNG_HO
insert into DOT_NHAN_UNG_HO values
 ('NhanUH001', 'HD003', '2016-11-11'),
 ('NhanUH002', 'HD001', '2016-11-18'),
 ('NhanUH003', 'HD003', '2016-11-20')

delete from CHI_TIET_UNG_HO
insert into CHI_TIET_UNG_HO values
 ('UH001', 'HT01', 6000, 'USD'),
 ('UH002', 'HT02', 50, 'Thung'),
 ('UH003', 'HT03', 200, 'Bo'),
 ('UH003', 'HT01', 100000, 'JPY'),
 ('UH004', 'HT01', 100000, 'USD'),
 ('UH005', 'HT03', 100, 'Bo')

delete from CHI_TIET_NHAN_UNG_HO
insert into CHI_TIET_NHAN_UNG_HO values
 ('NhanUH001', 'HT01', 5000, 'USD'),
 ('NhanUH001', 'HT02', 50, 'Thung'),
 ('NhanUH002', 'HT03', 100, 'Bo'),
 ('NhanUH003', 'HT01', 10000000, 'VND'),
 ('NhanUH003', 'HT02', 25, 'Thung'),
 ('NhanUH003', 'HT03', 70, 'Bo')