<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- Header -->
<%@include file="/WEB-INF/views/quantri/include/header.jsp"%>
<!-- Header end -->

<!-- Sidebar -->
<%@include file="/WEB-INF/views/quantri/include/sidebar-ql.jsp"%>
<!-- Sidebar end -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-12">
					<ol class="breadcrumb ">
						<li class="breadcrumb-item"><a href="#">Quản lý</a></li>
						<li class="breadcrumb-item active">Đơn hàng</li>
					</ol>
				</div>
				<div class="col-sm-6"></div>

			</div>
		</div>
		<!-- /.container-fluid -->
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-12">

					<div class="card">
						<div class="card-header ">
							<div class="d-flex justify-content-between">
								<h3 class="mt-2">Danh sách đơn hàng</h3>

								<button type="submit" class="btn bg-primary  mt-2"
									data-toggle="modal" data-target="#modal-add-new">
									<i class="fas fa-plus mr-2"></i>Thêm đơn hàng mới
								</button>
							</div>

						</div>
						<!-- /.card-header -->
						<div class="card-body">
							<table id="bangdonhang"
								class="table table-hover table-bordered table-striped text-center">
								<thead class="bg-primary">
									<tr>
										<th>Mã đơn hàng</th>

										<th>Ngày đặt</th>

										<th>Tổng tiền</th>
										<th>Trạng thái</th>
										<th>Thao tác</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="dh" items="${danhSachDonHang }">
										<tr>
											<td>${dh.getMaDH() }</td>
											<td>${dh.getThoiGian() }</td>
											<td><fmt:setLocale value="vi_VN" /> <fmt:formatNumber
													value="${dh.getTongTien()}" type="currency"
													currencySymbol="vnđ" /></td>
											<td><c:choose>
													<c:when test="${dh.getTrangThaiDH().getMaTTDH() == 1 }">
														<span class="badge badge-info">Đơn mới</span>
													</c:when>
													<c:when test="${dh.getTrangThaiDH().getMaTTDH() == 2 }">
														<span class="badge badge-info">Đã xác nhận</span>
													</c:when>
													<c:when test="${dh.getTrangThaiDH().getMaTTDH() == 3 }">
														<span class="badge badge-danger">Đã hủy</span>
													</c:when>
													<c:when test="${dh.getTrangThaiDH().getMaTTDH() == 4 }">
														<span class="badge badge-success">Đã giao hàng</span>
													</c:when>
												</c:choose></td>

											<td>
												<div class="d-flex justify-content-between px-4">
													<a class="" href="quanly/donhang/${dh.getMaDH() }?thongtin"><i
														class="fas fa-info-circle"></i> </a> <a class="" href="#"
														data-toggle="modal" data-target="#modal-edit"><i
														class="fas fa-edit"></i> </a> <a class="" href="#"
														data-toggle="modal" data-target="#exampleModalDisable">
														<i class="fas fa-check-square"></i>
													</a>
													<!-- <a class="" href="#" data-toggle="modal" data-target="#exampleModalDisable"><i class="fas fa-lock"></i> </a> -->
												</div>

											</td>
										</tr>

									</c:forEach>



								</tbody>
								<!-- <tfoot class="bg-primary">
                      <tr>
                        <th>Rendering engine</th>
                        <th>Browser</th>
                        <th>Platform(s)</th>
                        <th>Engine version</th>
                        <th>CSS grade</th>
                      </tr>
                    </tfoot> -->
							</table>
						</div>
						<!-- /.card-body -->
					</div>
					<!-- /.card -->
				</div>
			</div>
			<!-- /.row -->

		</div>

	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<div class="modal fade" id="modal-info-detail"
	isShow="${isOpenModalInfo }">
	<div class="modal-dialog modal-dialog-scrollable modal-lg">
		<div class="modal-content">
			<div class="modal-header bg-primary">
				<h4 class="modal-title">Thông tin đơn hàng</h4>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>

			<div class="jumbotron" style="overflow: scroll">
				<div>

					<p class="float-right">SĐT: ${thongTinDH.getSdtKH() }</p>
					<p>Khách hàng: ${thongTinDH.getKhachHang().getHo() }&nbsp;${thongTinDH.getKhachHang().getTen() }</p>
					<p>Địa chỉ: ${thongTinDH.getDiaChi() }</p>
					<hr>
					<p class="float-right">Ngày xác nhận:</p>
					<p>Ngày đặt hàng: ${thongTinDH.getThoiGian() }</p>
					<p class="float-right">Nhân viên xác nhận:</p>
					<p>
						Mã nhân viên:
						<c:choose>
							<c:when test="${thongTinDH.getNhanVien() != null}">
                        	${thongTinDH.getNhanVien().getMaNV()}
                        	</c:when>
							<c:otherwise>

							</c:otherwise>
						</c:choose>


					</p>

				</div>
				
				<c:choose>
					<c:when test="${chitietdonhang != null}">
					<h4>${chitietdonhang.size() }sản phẩm</h4>
						<table class="table table-hover table-striped text-center">
							<thead>
								<tr>
									<th class="bg-primary">Mã sản phẩm</th>
									<th class="bg-primary">Sản phẩm</th>
									<th class="bg-primary">Số lượng</th>
									<th class="bg-primary">Size</th>
									<th class="bg-primary">Màu</th>
									<th class="bg-primary">Giá</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="ctdh" items="${ chitietdonhang}">
									<tr>
										<td>${ctdh.getChiTietSP().getSanPham().getMaSP() }</td>
										<td class="d-flex justify-content-center"><img
											src="https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/7348553c641f4da7b881adf80119295a_9366/Giay_NMD_V3_DJen_GX3373_01_standard.jpg"
											width="40px" height="40px"> <span class="p-2">GIÀY
												SUPERSTAR PARLEY</span></td>
										<td>${ctdh.getSoLuong() }</td>
										<td>${ctdh.getChiTietSP().getSizeSanPham().getTenSize() }</td>
										<td>${ctdh.getChiTietSP().getMauSanPham().getTenMau() }</td>
										<td><fmt:setLocale value="vi_VN" /> <fmt:formatNumber
												value=" ${ctdh.getChiTietSP().getSanPham().getGia() }"
												type="currency" currencySymbol="vnđ" /></td>
									</tr>
								</c:forEach>


							</tbody>
						</table>
						<div>
							<h5 class="float-right">
								<strong>Tổng tiền: <fmt:setLocale value="vi_VN" /> <fmt:formatNumber
										value=" ${thongTinDH.getTongTien() }" type="currency"
										currencySymbol="vnđ" /></strong>
							</h5>

						</div>
					</c:when>
				</c:choose>

			</div>

		</div>

	</div>
	<!-- /.modal-content -->
</div>
<!-- /.modal-dialog -->

<!-- /.modal -->

<div class="modal fade" id="modal-add-new">
	<div class="modal-dialog modal-dialog-scrollable" role="document">
		<div class="modal-content">
			<div class="modal-header bg-primary">
				<h5 class="modal-title" id="exampleModalScrollableTitle">Thêm
					đơn hàng mới</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true" style="color: white;">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form>
					<div class="form-group">
						<label for="inputEmail4">Mã đơn hàng</label> <input type="email"
							class="form-control" id="inputEmail4" placeholder="M38789792">
					</div>
					<div class="form-group">
						<label for="inputPassword4">Tên khách hàng</label> <input
							type="password" class="form-control" id="inputPassword4"
							placeholder="ABCDEF">
					</div>
					<div class="form-group">
						<label for="inputPassword4">SĐT</label> <input type="password"
							class="form-control" id="inputPassword4" placeholder="ABCDEF">
					</div>
					<div class="form-group">
						<label for="inputAddress">Địa chỉ</label> <input type="text"
							class="form-control" id="inputAddress"
							placeholder="97 Man Thiện, phường Hiệp Phú, TP.Thủ Đức">
					</div>
					<div class="form-group">
						<label for="inputAddress">Ngày đặt hàng</label> <input type="text"
							class="form-control" id="inputAddress" placeholder="30/04/2022">
					</div>
					<div class="form-group">
						<label for="inputAddress">Ngày xác nhận</label> <input type="text"
							class="form-control" id="inputAddress" placeholder="30/04/2022">
					</div>
					<div class="form-group">
						<label for="inputPassword4">Nhân viên xác nhận</label> <input
							type="password" class="form-control" id="inputPassword4"
							placeholder="ABCDEF">
					</div>
					<div class="form-group">
						<label for="inputAddress2">Tổng tiền</label> <input type="text"
							class="form-control" id="inputAddress2" placeholder="3 000 000 đ">
					</div>

				</form>
			</div>
			<div class="modal-footer d-flex justify-content-between">
				<button type="button" class="btn"
					style="background-color: none; border-color: rgb(0, 104, 201);"
					data-dismiss="modal">Đóng</button>
				<button type="button" class="btn btn-primary">Lưu</button>
			</div>
		</div>
	</div>
	<!-- /.modal-dialog -->
</div>

<div class="modal fade" id="modal-edit">
	<div class="modal-dialog modal-dialog-scrollable" role="document">
		<div class="modal-content">
			<div class="modal-header bg-secondary">
				<h5 class="modal-title" id="exampleModalScrollableTitle">Chỉnh
					sửa đơn hàng</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true" style="color: white;">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form>
					<div class="form-group">
						<label for="inputEmail4">Mã đơn hàng</label> <input type="email"
							class="form-control" id="inputEmail4" placeholder="M38789792">
					</div>
					<div class="form-group">
						<label for="inputPassword4">Tên khách hàng</label> <input
							type="password" class="form-control" id="inputPassword4"
							placeholder="ABCDEF">
					</div>
					<div class="form-group">
						<label for="inputPassword4">SĐT</label> <input type="password"
							class="form-control" id="inputPassword4" placeholder="ABCDEF">
					</div>
					<div class="form-group">
						<label for="inputAddress">Địa chỉ</label> <input type="text"
							class="form-control" id="inputAddress"
							placeholder="97 Man Thiện, phường Hiệp Phú, TP.Thủ Đức">
					</div>
					<div class="form-group">
						<label for="inputAddress">Ngày đặt hàng</label> <input type="text"
							class="form-control" id="inputAddress" placeholder="30/04/2022">
					</div>
					<div class="form-group">
						<label for="inputAddress">Ngày xác nhận</label> <input type="text"
							class="form-control" id="inputAddress" placeholder="30/04/2022">
					</div>
					<div class="form-group">
						<label for="inputPassword4">Nhân viên xác nhận</label> <input
							type="password" class="form-control" id="inputPassword4"
							placeholder="ABCDEF">
					</div>
					<div class="form-group">
						<label for="inputAddress2">Tổng tiền</label> <input type="text"
							class="form-control" id="inputAddress2" placeholder="3 000 000 đ">
					</div>

				</form>
			</div>
			<div class="modal-footer d-flex justify-content-between">
				<button type="button" class="btn"
					style="background-color: none; border-color: rgb(0, 104, 201);"
					data-dismiss="modal">Đóng</button>
				<button type="button" class="btn btn-primary">Lưu</button>
			</div>
		</div>
	</div>
	<!-- /.modal-dialog -->
</div>

<!-- Modal mở -->
<div class="modal fade " id="exampleModalConfirm" tabindex="-1"
	aria-labelledby="exampleModalConfirm" aria-hidden="true">
	<div class="modal-dialog ">
		<div class="modal-content">
			<div class="modal-header bg-danger">
				<h5 class="modal-title" id="exampleModalLabel">
					<i class="fas fa-times"></i>&nbsp; Bạn muốn hủy đơn hàng này?
				</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<!-- <div class="modal-body">
            <p class="text-center">Bạn muốn mở hoạt động tài khoản này?</p>
          </div> -->
			<div class="modal-footer d-flex justify-content-between">

				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-danger" data-dismiss="modal">Tiếp
					tục</button>
			</div>
		</div>
	</div>
</div>
<!-- /.modal  confirm mở-->
<!--Modal tắt hđ-->
<div class="modal fade " id="exampleModalDisable" tabindex="-1"
	aria-labelledby="exampleModalConfirm" aria-hidden="true">
	<div class="modal-dialog ">
		<div class="modal-content">
			<div class="modal-header bg-success">
				<h5 class="modal-title" id="exampleModalLabel">
					<i class="far fa-check-square"></i>&nbsp; Bạn muốn xác nhận đơn
					hàng này?
				</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<!-- <div class="modal-body">
            <p class="text-center">Bạn muốn tắt hoạt động tài khoản này?</p>
          </div> -->
			<div class="modal-footer d-flex justify-content-between">
				<button type="button" class="btn btn-danger" data-toggle="modal"
					data-target="#exampleModalConfirm" data-dismiss="modal">Hủy
					đơn</button>
				<button type="button" class="btn btn-success" data-dismiss="modal">Tiếp
					tục</button>

			</div>
		</div>
	</div>
</div>
<!--Modal tắt hđ-->


<!-- Footer -->
<%@include file="/WEB-INF/views/quantri/include/footer.jsp"%>
<!-- Footer end -->