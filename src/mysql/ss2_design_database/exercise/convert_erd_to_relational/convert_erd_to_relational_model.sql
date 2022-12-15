create
database convert_erd_to_relational;

use
convert_erd_to_relational;

create table phieu_xuat
(
    so_px     int primary key,
    ngay_xuat datetime
);

create table vat_tu
(
    ma_vat_tu  int primary key,
    ten_vat_tu varchar(50)
);

create table phieu_nhap
(
    so_pn     int primary key,
    ngay_nhap datetime
);

create table nha_cung_cap
(
    ma_ncc  int primary key,
    ten_ncc varchar(50),
    dia_chi varchar(50)
);

create table don_dat_hang
(
    so_dh   int primary key,
    ngay_dh datetime,
    ma_ncc  int,
    foreign key (ma_ncc) references nha_cung_cap (ma_ncc)
);

create table so_dien_thoai
(
    ma_sdt      int primary key,
    ten_ncc_sdt varchar(50),
    ma_ncc      int,
    foreign key (ma_ncc) references nha_cung_cap (ma_ncc)
);

create table xuat_vat_tu
(
    so_px         int,
    ma_vat_tu     int,
    don_gia_xuat  int,
    so_luong_xuat int,
    primary key (so_px, ma_vat_tu),
    foreign key (so_px) references phieu_xuat (so_px),
    foreign key (ma_vat_tu) references vat_tu (ma_vat_tu)
);

create table nhap_vat_tu
(
    so_pn         int,
    ma_vat_tu     int,
    don_gia_nhap  int,
    so_luong_nhap int,
    primary key (so_pn, ma_vat_tu),
    foreign key (so_pn) references phieu_nhap (so_pn),
    foreign key (ma_vat_tu) references vat_tu (ma_vat_tu)
);

create table don_hang_vat_tu
(
    ma_vat_tu int,
    so_dh     int,
    primary key (ma_vat_tu, so_dh),
    foreign key (ma_vat_tu) references vat_tu (ma_vat_tu),
    foreign key (so_dh) references don_dat_hang (so_dh)
);
