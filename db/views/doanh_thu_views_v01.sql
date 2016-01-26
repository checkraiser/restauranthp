SELECT id, ban, khoan_muc_thu, don_gia, so_luong, so_luong*don_gia AS thanh_tien
FROM doanh_thus
ORDER BY created_at,id;