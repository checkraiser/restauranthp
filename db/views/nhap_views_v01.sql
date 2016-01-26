SELECT id,loai_mat_hang, don_gia, so_luong, so_luong*don_gia AS thanh_tien
FROM nhaps
ORDER BY created_at,id;