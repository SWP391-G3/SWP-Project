<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Thêm Bể Bơi Mới</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">
        <link rel="stylesheet" href="./css/poolManagement.css"/>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <!-- Sidebar -->
                <nav class="col-md-2 d-none d-md-block sidebar">
                    <h4 class="text-center mb-4">Admin Panel</h4>
                    <a href="poolmanagement"><i class="bi bi-water"></i> Quản lý bể bơi</a>
                    <a href="#"><i class="bi bi-people"></i> Quản lý nhân viên</a>
                    <a href="#"><i class="bi bi-person-check"></i> Quản lý khách hàng</a>
                    <a href="#"><i class="bi bi-calendar-check"></i> Quản lý đặt lịch</a>
                    <a href="#"><i class="bi bi-graph-up"></i> Thống kê & Báo cáo</a>
                    <a href="#"><i class="bi bi-gear"></i> Cài đặt hệ thống</a>
                </nav>

                <!-- Main content -->
                <main class="col-md-10 ms-sm-auto col-lg-10 main-content">
                    <div class="header-bar">
                        <h2 class="fw-bold text-primary">Thêm Bể Bơi Mới</h2>
                        <a href="#"><i class="bi bi-person-circle"></i></a>
                    </div>

                    <form action="addPool" method="POST" class="row g-3 mt-2">
                        <div class="col-md-6">
                            <label class="form-label">Tên bể bơi</label>
                            <input type="text" name="poolName" class="form-control" placeholder="Nhập tên bể bơi" required>
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Địa chỉ</label>
                            <input type="text" name="poolRoad" class="form-control" placeholder="Nhập địa chỉ" required>
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Khu vực</label>
                            <select name="poolAddress" class="form-select" required>
                                <option value="">-- Chọn khu vực --</option>
                                <option value="Hà Nội">Hà Nội</option>
                                <option value="Hồ Chí Minh">Hồ Chí Minh</option>
                                <option value="Đà Nẵng">Đà Nẵng</option>
                                <option value="Quy Nhơn">Quy Nhơn</option>
                                <option value="Cần Thơ">Cần Thơ</option>
                            </select>
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Sức chứa</label>
                            <input type="number" name="maxSlot" class="form-control" placeholder="Nhập sức chứa" required>
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Giờ mở cửa</label>
                            <input type="time" name="openTime" class="form-control" required>
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Giờ đóng cửa</label>
                            <input type="time" name="closeTime" class="form-control" required>
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Trạng thái</label>
                            <select name="poolStatus" class="form-select">
                                <option value="true" selected>Đang hoạt động</option>
                                <option value="false">Hủy hoạt động</option>
                            </select>
                        </div>

                        <div class="col-md-12">
                            <button type="submit" class="btn btn-success"><i class="bi bi-plus-circle"></i> Thêm bể bơi</button>
                            <a href="poolmanagement" class="btn btn-secondary"><i class="bi bi-arrow-left-circle"></i> Quay lại</a>
                        </div>
                    </form>
                </main>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
