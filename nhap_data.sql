use db_baithuchanh01;

insert into LOAIMATHANG values
    ('MH001', 'Quan ao'),
    ('MH002', 'My pham'),
    ('MH003', 'Do gia dung'),
    ('MH004', 'Do dien tu');

insert into KHUVUC values
    ('KV001', 'Son Tra'),
    ('KV002', 'Lien Chieu'),
    ('KV003', 'Ngu Hanh Son'),
    ('KV004', 'Ha Chau'),
    ('KV005', 'Thanh Khe');

insert into KHOANGTHOIGIAN values
    ('TG001', '7h - 9h AM'),
    ('TG002', '9h - 11h AM'),
    ('TG003', '1h - 3h PM'),
    ('TG004', '3h - 5h PM'),
    ('TG005', '7h - 9h39PM')

insert into DICHVU values
    ('DV001', 'Giao hang nguoi nhan tra tien phi'),
    ('DV002', 'Giao hang nguoi gui tra tien phi'),
    ('DV003', 'Giao hang cong ich (khong tinh phi')

insert into THANHVIENGIAOHANG values
    ('TV0001', 'Nguyen Van A', '1995-11-20', 'Nam', '0905111111', '23 Ong Bich Khiem'),
    ('TV0002', 'Nguyen Van B', '1992-12-26', 'Nu', '0905111112', '234 Ton Duc Thang'),
    ('TV0003', 'Nguyen Van C', '1990-11-30', 'Nu', '0905111113', '45 Hoang Dieu'),
    ('TV0004', 'Nguyen Van D', '1995-7-8', 'Nam', '0905111114', '23/33 Ngu Hanh Son'),
    ('TV0005', 'Nguyen Van E', '1991-2-4', 'Nam', '0905111115', '56 Dinh Thi Dieu')

insert into DANGKYGIAOHANG values
    ('TV0001', 'TG004'),
    ('TV0002', 'TG005'),
    ('TV0003', 'TG001'),
    ('TV0003', 'TG002'),
    ('TV0003', 'TG003')

insert into KHACHHANG values
 ('KH001', 'KV001', 'Le Thi A', 'Cua hang 1', '0905111111', 'alethi@gmail.com', '80 Pham Phu Thai'),
 ('KH002', 'KV001', 'Nguyen Van B', 'Cua hang 2', '0905111112', 'bnguyenvan@gmail.com', '100 Phan Tu'),
 ('KH003', 'KV002', 'Le Thi B', 'Cua hang 3', '0905111113', 'blethi@gmail.com', '23 An Thuong 18'),
 ('KH004', 'KV002', 'Nguyen Van C', 'Cua hang 4', '0905111114', 'cnguyenvan@gmail.com', '67 Ngo The Thai'),
 ('KH005', 'KV001', 'Le Thi D', 'Cua hang 5', '0905111115', 'dlethi@gmail.com', '100 Chau Thi Vinh Te')

insert into DONHANG_GIAOHANG values
 ('DH0001', 'KH001', 'TV0001', 'DV001', 'KV001', 'Pham Van A', '30 Hoang Van Thu', '0905111111', 'TG004', '2016-10-10', 'Tien mat', 'Da phe duyet', 'Da giao hang'),
 ('DH0002', 'KH001', 'TV0002', 'DV001', 'KV005', 'Pham Van B', '15 Le Dinh Ly', '0905111112', 'TG005', '2016-12-23', 'Tien mat', 'Da phe duyet', 'Chua giao hang'),
 ('DH0003', 'KH002', 'TV0003', 'DV001', 'KV005', 'Pham Van C', '23 Le Dinh Duong', '0905111113', 'TG001', '2017-4-8', 'Tien mat', 'Da phe duyet', 'Da giao hang'),
 ('DH0004', 'KH003', 'TV0001', 'DV003', 'KV002', 'Pham Van D', '45 Pham Phu Thai', '0905111114', 'TG002', '2015-10-11', 'Chuyen khoan', 'Da phe duyet', 'Da giao hang'),
 ('DH0005', 'KH003', 'TV0005', 'DV003', 'KV003', 'Pham Van E', '78 Hoang Dieu', '0905111115', 'TG003', '2017-4-4', 'Chuyen khoan', 'Chua phe duyet', '')

insert into CHITIET_DONHANG values
 ('DH0001', 'Ao len', 2, 0.5, 'MH001', 200000),
 ('DH0001', 'Quan au', 1, 0.25, 'MH001', 350000),
 ('DH0002', 'Ao thun', 1, 0.25, 'MH001', 1000000),
 ('DH0002', 'Ao khoac', 3, 0.25, 'MH001', 2000000),
 ('DH0003', 'Sua duong the', 2, 0.25, 'MH002', 780000),
 ('DH0003', 'Kem tay da chet', 3, 0.5, 'MH002', 150000),
 ('DH0003', 'Kem duong ban dem', 4, 0.25, 'MH002', 900000)