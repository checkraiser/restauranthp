SELECT id,khoan_muc_chi, don_gia, so_luong, so_luong*don_gia AS thanh_tien
FROM chi_phis
ORDER BY created_at,id;