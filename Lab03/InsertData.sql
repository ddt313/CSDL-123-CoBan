insert into CONGDAN values
 ('CD001', 'Tran A1', '10 Nguyen Du', 'To 1', 'Nam', 'Nguyen Van1', 'Ban than'),
 ('CD002', 'Tran A2', '11 Nguyen Du', 'To 2', 'Nu', 'Nguyen Van2', 'Chong'),
 ('CD003', 'Tran A3', '12 Nguyen Du', 'To 3', 'Nam', 'Nguyen Van3', 'Vo')

delete from LOAITHUTUC
insert into LOAITHUTUC values
 ('TT001', 'Dang ky ket hon', 2, 15000),
 ('TT002', 'Khai sinh', 7, 20000),
 ('TT010', 'Khai tu', 7, 10000)

insert into CANBOTIEPNHAN values
 ('CB001', 'CBTB001', 'Nhan vien thoi vu'),
 ('CB002', 'CBTB002', 'Can bo ho tich')

insert into YEUCAUTHUTUC values
 ('YC00001', 'CD001', 'Khai sinh cho con', 'TT002', '2019-02-15 7:50', '2019-02-25 13:00', 'CB001', 'Da tiep nhan xu ly'),
 ('YC00002', 'CD002', 'Khai tu cho me', 'TT010', '2019-02-15 7:10', '', 'CB002', 'Cong dan moi dang ky')

insert into GIAYTOKEMTHEO values
 ('YC00001', 'Giay dang ky ket hon', 'Giay dang ky ket hon cua cha me', '2019-02-15 7:50'),
 ('YC00001', 'Ho khau', 'Ho khau thuong tru', '2019-02-15 7:50')

insert into GIAYTOCANBOSUNG values
 ('YC00002', 'Chung minh nhan dan', 'Ban sao CMND', '2019-02-15 7:50', 'Dang yeu cau bo sung'),
 ('YC00002', 'Giay khai sinh', 'Giay khai sinh nguoi khai', '2019-03-15 7:50', 'Da duoc bo sung')