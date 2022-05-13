<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

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
						<li class="breadcrumb-item active">Nhân viên</li>
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
						<div class="card-header d-flex flex-column ">
							<div class="d-flex align-items-center justify-content-between">
								<h3 class="card-title">Danh sách nhân viên</h3>
								<button type="submit" class="btn bg-primary  mt-2"
									data-toggle="modal" data-target="#modal-add-new">
									<i class="fas fa-plus mr-2"></i>Thêm mới
								</button>
							</div>
							<div>

								<div>
									<c:choose>
										<c:when test="${isSuccess }">
											<div
												class="mt-2 alert alert-success alert-dismissible fade show"
												role="alert">
												${alertMessage }
												<button type="button" class="close" data-dismiss="alert"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
										</c:when>
										<c:when test="${isSuccess == false }">
											<div
												class="mt-2 alert alert-danger alert-dismissible fade show"
												role="alert">
												${alertMessage }
												<button type="button" class="close" data-dismiss="alert"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
										</c:when>
									</c:choose>

								</div>
							</div>

						</div>
						<!-- /.card-header -->
						<div class="card-body">
							<table id="example3" class="table table-bordered table-striped">
								<thead class="bg-primary">
									<tr>
										<th>Mã nhân viên</th>
										<th>Ảnh đại diện</th>
										<th>Tên nhân viên</th>
										<th>SDT</th>
										<th>Phái</th>
										<th>Trạng thái</th>
										<th>Thao tác</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="nv" items="${danhSachNhanVien }">
										<tr>
											<td>${nv.getMaNV() }</td>

											<td class="text-center"><c:choose>
													<c:when test="${!nv.anh.isEmpty()   }">

														<a href="resources/file/${ nv.getAnh()}"
															data-toggle="lightbox"><img
															src="resources/file/${ nv.getAnh()}" alt="Hinh anh"
															class="img-size-50" /></a>
													</c:when>
													<c:otherwise>

													</c:otherwise>
												</c:choose></td>
											<td>${nv.getHo() } ${nv.getTen() }</td>
											<td>${nv.getSdt() }</td>
											<td><c:choose>
													<c:when test="${nv.getPhai() }">
														Nam
													</c:when>
													<c:when test="${nv.getPhai() == false }">
														Nữ
													</c:when>
												</c:choose></td>
											<td><c:choose>
													<c:when test="${nv.getTaiKhoan().getTrangThai() }">
														<span class="badge badge-success">Hoạt động</span>
													</c:when>
													<c:when test="${nv.getTaiKhoan().getTrangThai() == false }">
														<span class="badge badge-danger">Khóa</span>
													</c:when>
												</c:choose></td>


											</td>
											<td>
												<div class="d-flex justify-content-between px-4">
													<a class="" href="quanly/nhanvien/${nv.getMaNV()}?thongtin"><i
														class="fas fa-info-circle"></i> </a> <a class=""
														href="quanly/nhanvien/${nv.getMaNV() }?suaThongtin"><i
														class="fas fa-edit"></i> </a>
													
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

<!-- Modal them moi nhan vien -->
<div class="modal fade" id="modal-add-new"
	isShow="${isShowModalAddNew }">
	<div class="modal-dialog modal-lg modal-dialog-scrollable">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title text-primary" style="font-weight: 600;">Thêm
					nhân viên</h4>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="row">
					<!-- /.col -->
					<div class="col-md-12">
						<form:form action="quanly/nhanvien" class="form-horizontal"
							method="post" modelAttribute="nhanVienMoi"
							enctype="multipart/form-data">
							<div class="row">


								<div class="col-md-12">

									<div class="form-group row">
										<label for="" class="col-sm-2 col-form-label text-primary">Họ
										</label>
										<div class="col-sm-10">
											<form:input path="ho" class="form-control" />
											<form:errors path="ho" cssClass="text-danger" />
										</div>
									</div>

									<div class="form-group row">
										<label for="" class="col-sm-2 col-form-label text-primary">Tên
										</label>
										<div class="col-sm-10">
											<form:input path="ten" class="form-control" />
											<form:errors path="ten" cssClass="text-danger" />
										</div>
									</div>
									<div class="form-group row">
										<label for="" class="col-sm-2 col-form-label text-primary">Email</label>
										<div class="col-sm-10">
											<form:input path="email" class="form-control" id="inputName" />
											<form:errors path="email" cssClass="text-danger" />
											<!--  <input type="email" class="form-control" id="inputName" placeholder=""> -->
										</div>
									</div>
									<div class="form-group row">
										<label for="" class="col-sm-2 col-form-label text-primary">Mật
											khẩu</label>
										<div class="col-sm-10">
											<form:input path="matKhau" value="123456"
												class="form-control" id="inputName" />
											<form:errors path="matKhau" cssClass="text-danger" />
											<!--  <input type="email" class="form-control" id="inputName" placeholder=""> -->
										</div>
									</div>
									<div class="form-group row">
										<label for="" class="col-sm-2 col-form-label text-primary">Giới
											tính</label>
										<div class="col-sm-10">
											<div class="form-check form-check-inline">
												<form:radiobutton path="phai" value="True" label="Nam"
													class="form-check-input" checked="checked" />

											</div>
											<div class="form-check form-check-inline">
												<form:radiobutton path="phai" value="False" label="Nữ"
													class="form-check-input" />
											</div>
											<form:errors path="phai" cssClass="text-danger" />
										</div>
									</div>
									<div class="form-group row">
										<label for="inputExperience"
											class="col-sm-2 col-form-label text-primary">Ngày
											sinh</label>
										<div class="col-sm-10">
											<div class="form-group">
												<form:input path="ngaySinh" type="date" class="form-control" />
												<form:errors path="ngaySinh" cssClass="text-danger" />
											</div>
										</div>
									</div>
									<div class="form-group row">
										<label for="inputSkills"
											class="col-sm-2 col-form-label text-primary">CCCD</label>
										<div class="col-sm-10">
											<form:input path="cccd" class="form-control" />
											<form:errors path="cccd" cssClass="text-danger" />
										</div>
									</div>
									<div class="form-group row">
										<label for="inputSkills"
											class="col-sm-2 col-form-label text-primary">SĐT</label>
										<div class="col-sm-10">
											<form:input path="sdt" class="form-control" />
											<form:errors path="sdt" cssClass="text-danger" />
										</div>
									</div>
									<div class="form-group row">
										<label for="inputSkills"
											class="col-sm-2 col-form-label text-primary">Địa chỉ</label>
										<div class="col-sm-10">
											<form:input path="diaChi" class="form-control" />
											<form:errors path="diaChi" cssClass="text-danger" />
										</div>
									</div>
									<div class="form-group row">
										<label for="inputSkills"
											class="col-sm-2 col-form-label text-primary">Ảnh</label>
										<div class="col-sm-10">
											<!-- Profile Image -->
											<div class="card card-primary card-outline">
												<div class="card-body box-profile">
													<div class="text-center">
														<img id="modal-add-avatar"
															class="profile-user-img img-fluid img-circle"
															src="resources/file/${hinh }" alt="User profile picture"
															style="width: 120px;">
													</div>
													<input name="anh" type="file" id="input-add-avatar"
														class="mt-3 form-control" />


												</div>
												<!-- /.card-body -->
											</div>
											<!-- /.card -->

										</div>
									</div>

									<div class="form-group row d-flex justify-content-end">
										<button type="submit" name="themNV" class="btn btn-primary">Thêm</button>
										<a href="quanly/nhanvien" id="cancel-save-modal"
											class="mx-2 btn btn-secondary">Hủy</a>
									</div>
								</div>
							</div>

						</form:form>
					</div>
					<!-- /.col -->
				</div>
			</div>

		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!-- Modal sua thong tin nhan vien -->

<div class="modal fade" id="modal-edit" isShow="${isOpenModalEdit }">
	<div class="modal-dialog modal-lg modal-dialog-scrollable">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">Sửa nhân viên</h4>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="row">
					<!-- /.col -->
					<div class="col-md-12">
						<div class="">
							<div class="card-header p-2">
								<ul class="nav nav-pills">
									<li class="nav-item"><a class="nav-link active"
										href="#activity" data-toggle="tab">Thông tin cá nhân</a></li>
									<li class="nav-item"><a class="nav-link" href="#settings"
										data-toggle="tab">Khác</a></li>
								</ul>
							</div>
							<!-- /.card-header -->
							<div class="card-body">
								<div class="tab-content">
									<div class="active tab-pane" id="activity">
										<!-- Info profile -->

										<form:form action="quanly/nhanvien/${thongTinNV.getMaNV() }?suaNV" class="form-horizontal" modelAttribute="thongTinNV"
											enctype="multipart/form-data">
										
											<div class="row">
												<div class="col-md-4">
													<!-- Profile Image -->
													<div class="card card-primary card-outline">
														<div class="card-body box-profile">
															<div class="text-center">
																<img id="modal-update-avatar"
																	class="profile-user-img img-fluid img-circle"
																	src="resources/file/${thongTinNV.getAnh() }"
																	alt="User profile picture" style="width: 120px;" />
															</div>
													 <input name="anhMoi" type="file" id="input-update-avatar"
																class="mt-3 form-control" /> 
															


														</div>
														<!-- /.card-body -->
													</div>
													<!-- /.card -->
													<div class="form-group row d-flex  ">
														<div class="mr-3">
															<label for="" class=" col-form-label">Trạng thái</label>
														</div>
														<div>
															<div class="form-check">

																<form:radiobutton path="taiKhoan.trangThai" value="true"
																	class="form-check-input" label="Hoạt động"
																	checked="${thongtinNV.getTaiKhoan.getTrangThai() == true ? 'checked' : '' }" />

															</div>
															<div class="form-check">

																<form:radiobutton path="taiKhoan.trangThai"
																	value="false" class="form-check-input" label="Khóa"
																	checked="${thongtinNV.getTaiKhoan.getTrangThai() == false ? 'checked' : '' }" />
																<form:errors path="phai" cssClass="text-danger" />
																<!-- <label class="form-check-label" for="exampleRadios1">
																	Default radio </label> -->
															</div>
														</div>

														<%-- <div class="col-sm-10">
															<form:radiobutton path="taiKhoan.trangThai" value="true"
																label="Hoạt động"
																checked="${thongtinNV.getTaiKhoan.getTrangThai() == true ? 'checked' : '' }" />

															<form:radiobutton path="taiKhoan.trangThai" value="false"
																label="Khóa"
																checked="${thongtinNV.getTaiKhoan.getTrangThai() == false ? 'checked' : '' }" />
															<form:errors path="phai" cssClass="text-danger" />
														</div> --%>
													</div>

												</div>

												<div class="col-md-8">
													<div class="card">
														<div class="card-body text-primary">

															<div class="form-group row">
																<label for=""
																	class="col-sm-2 col-form-label text-primary">Email
																</label>
																<div class="col-sm-10">
																	<form:input path="taiKhoan.email" class="form-control"
																		id="" />
																	<form:errors path="taiKhoan.email"
																		cssClass="text-danger" />
																</div>
															</div>
															<div class="form-group row">
																<label for="" class="col-sm-2 col-form-label">Họ
																</label>
																<div class="col-sm-10">
																	<form:input path="ho" class="form-control" id=""
																		placeholder="" />
																	<form:errors path="ho" cssClass="text-danger" />
																</div>
															</div>
															<div class="form-group row">
																<label for="" class="col-sm-2 col-form-label">Tên
																</label>
																<div class="col-sm-10">
																	<form:input path="ten" class="form-control" id=""
																		placeholder="" />
																	<form:errors path="ten" cssClass="text-danger" />
																</div>
															</div>
															<div class="form-group row">
																<label for="inputName2" class="col-sm-2 col-form-label">Giới
																	tính</label>
																<div class="col-sm-10">
																<div class="form-check form-check-inline">
																<form:radiobutton path="phai" value="true" label="Nam" class="form-check-input"
																		checked="${thongtinNV.getPhai() == true ? 'checked' : '' }" />
																
																</div>
																<div class="form-check form-check-inline">
																	<form:radiobutton path="phai" value="false" label="Nữ" class="form-check-input"
																		checked="${thongtinNV.getPhai() == false ? 'checked' : '' }" />
																	<form:errors path="phai" cssClass="text-danger" />
																</div>
																	
																	
																</div>
															</div>
															<div class="form-group row">
																<label for="inputExperience"
																	class="col-sm-2 col-form-label ">Ngày sinh</label>
																<div class="col-sm-10">
																	<form:input path="ngaySinh" type="date"
																		value="${thongTinNV.getNgaySinh() }"
																		class="form-control" />
																	<form:errors path="ngaySinh" cssClass="text-danger" />
																</div>
															</div>
															<div class="form-group row">
																<label for="inputSkills"
																	class="col-sm-2 col-form-label text-primary">CCCD</label>
																<div class="col-sm-10">
																	<form:input path="cccd" class="form-control" />
																	<form:errors path="cccd" cssClass="text-danger" />
																</div>
															</div>
															<div class="form-group row">
																<label for="inputSkills"
																	class="col-sm-2 col-form-label ">SĐT</label>
																<div class="col-sm-10">
																	<form:input path="sdt" class="form-control" />
																	<form:errors path="sdt" cssClass="text-danger" />
																</div>
															</div>
															<div class="form-group row">
																<label for="inputSkills" class="col-sm-2 col-form-label">
																	Địa chỉ</label>
																<div class="col-sm-10">
																	<form:input path="diaChi" class="form-control" />
																	<form:errors path="diaChi" cssClass="text-danger" />
																</div>
															</div>

														</div>
													</div>
												</div>
												<div class="col-12">
													<div class=" d-flex justify-content-end">
														<button type="submit" class="btn btn-primary">Sửa</button>
														<a href="quanly/nhanvien" id="cancel-update-modal"
															class="mx-2 btn btn-secondary">Hủy</a>
													</div>
												</div>

											</div>

										</form:form>
										<!-- /.Info profile -->
									</div>
									<!-- /.tab-pane -->


									<div class="tab-pane" id="settings">
										<form class="form-horizontal" method="post" action="quanly/nhanvien/${thongTinNV.getMaNV() }?resetmatkhau">
											<div class="form-group row">
												<div class=" col-sm-10">
													<input type="text" name="maNV" value="${thongTinNV.getMaNV() }" hidden/>
												</div>
											</div>
											<div class="form-group row">
												<div class=" col-sm-10">
													<button type="submit" name="resetmatkhau" class="btn bg-danger" id="btn-reset-mk">Reset
														mật khẩu</button>
												</div>
											</div>
										</form>
									</div>
									<!-- /.tab-pane -->
								</div>
								<!-- /.tab-content -->
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</div>
					<!-- /.col -->
				</div>
			</div>

		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>


<!-- Modal thong tin chi tiet -->
<div class="modal fade" id="modal-info-detail"
	isShow="${isOpenModalInfo }">
	<div class="modal-dialog modal-lg modal-dialog-scrollable">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title text-primary">Thông tin nhân viên</h4>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<!-- <a href="quanly/nhanvien" class="close">&times;</a> -->
			</div>
			<div class="modal-body">
				<div class="row">
					<!-- /.col -->
					<div class="col-md-12">
						<form class="form-horizontal" modelAttribute="thongTinNV">
							<div class="row">
								<div class="col-md-4">
									<!-- Profile Image -->
									<div class="card card-primary card-outline">
										<div class="card-body box-profile">
											<div class="text-center">
												<c:choose>
													<c:when test="${thongTinNV.getAnh()!= null }">

														<img class="profile-user-img img-fluid img-circle"
															src="resources/file/${ thongTinNV.getAnh()}"
															alt="User profile picture" style="width: 120px;" />
													</c:when>
													<c:otherwise>
														<img
															src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwoHCAoJBwkGCAoHCAoICAcIDRIICQcKFREWFhURExMYHCggGCYxGxMTITEhMSkrLi4uFx8zODMsNygtLisBCgoKCw0NDw0NFS0dHxkrKysrKysrLSsrKysrLTcrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrK//AABEIAN8A2QMBIgACEQEDEQH/xAAbAAEAAwEBAQEAAAAAAAAAAAAAAQIFBgQDB//EADYQAQACAgEBBQUFBwUBAAAAAAABAgMRBAUSISIxUjJBUXKSExVCYmMzNFNhcYKiIyRzgZEU/8QAFgEBAQEAAAAAAAAAAAAAAAAAAAEC/8QAFhEBAQEAAAAAAAAAAAAAAAAAABEB/9oADAMBAAIRAxEAPwD9EAaQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADv8AKO+WhxelXyx2s9vs49NfaBn7g3DocXTsOOPY7XzPrHHw/wAKn0lHM7PN0l+FhtGpxU/6ePkdIraJnDOvyyUY4vkxWwTNMlOzKgAAAAAAAAAAAAAAAAAAAPRwMP8A9GaKx3xXxWBodK4PZiMuaN3nyaceZEajUR3R3JZVIACJSA83K4teTSa2jv8Aw2c9mx2w3mlvc6lldZwbrGWI12PaUZAfzFQAAAAAAAAAAAAAAAAavQsf7TJP4vZZTc6LH+2j49pBogIoAAACJfHmY4yYL1n0vuraNxMT74BykfD0i2SIjJeI/DZVpAAAAAAAAAAAAAAAABudE/d/7mG1eh5Y1fHv2fEitgRuEoAAAACLd0TMpefm5Ix4L2mdeHsg5y87yZJ9VrKnf5yNIAAAAAAAAAAAAAAAAT5Ptw808fNS8eXs2fEB1dbRaItHvWY3SebFI+xzW+SzY3DKpERO0gAjcAT5MfrXI76YqTv1PdzeVXj1nxeO3s1c9e9sl5vbzsuYI7/eAqAAAAAAAAAAAAAAAAAAHm0OF1S2KOxyPFWPZyM81sHTYeRjyxE0vSX23Hm5OImPJb7S8RqMmX6kiuotetY3a2ng5PVaUia4fFdi2ta0atO/62RqI8u4gtlyXzW7eSe9UGsQAQAAAAAAAAAAAAAADcL4sVs89jFG5a3F6VSmr5/9S/p/CDKxYb5v2dLz/g9ePpOW/fbsVbdaxXurGo/kmPNKrIjo1vfl1/RP3P8Ar3+lsBRj/c/69/pPuf8AXv8AS2Aox/uf9e/0n3P+vf6WwFGPPR592b/F87dIyxG65KS3ET3lHNZuFmxe1TcflfCe7unudXO3m5PBxciPFXU+qCjnR6eZwr8ad9ndPU8yoAAAAAAAAAAPtx+PbkXilPrfGImZ7NfOzouBxY42OI7Pjn2rGi/F4teNTsUj5p9T7wlG4ZVIjcG4BIhIAhIAIBII3AJRPkbg3AK3rFomt43EsPqHAnBPbxd+P0+lvT/6rakWia2jcSDlfdsenncaeNkmPwX9l5mkAAAAAAAJ8gaHSMEZcn2lo7qVbW+95emYoxcakfHxPQmqts3CogtuDcKgLbNqgLbNqgLbNqgLbNwqAtuDcKgLbN/FUB5+p4Iz4ZmPOrA13fK6ie+NfHwua5FPssuSn5lxHzAUAAAADW5iPzCY84+aoOjw+HHSvpqvtSs+GPlSC2zapALbNo3BuATs2jcEgnZtUgFtm0SgFtm1QFtm1QFtm1UAvtidVr2eRM/GvabLI6v+8R/xA8IAAAAAB74+aoA6OvsRP5Tb4cHLOTDG/OKvuBs2AGzYAbNgBs2AGzYAbNgBs2AGzYAbZPVpic8a/hNWZ1G/SwuXknLmvf8AtB8gAAAf/9k="
															alt="User profile picture" style="width: 120px;"
															class="profile-user-img img-fluid img-circle" />
													</c:otherwise>
												</c:choose>



											</div>

											<!-- <h3 class="profile-username text-center text-primary"></h3> -->

											<p class="text-muted text-center">
												${thongTinNV.getTaiKhoan().getVaitro().getTenVT() }</p>

										</div>
										<!-- /.card-body -->
									</div>
									<!-- /.card -->
								</div>

								<div class="col-md-8">
									<div class="card">
										<div class="card-body text-primary">

											<div class="form-group row">
												<label for="inputName" class="col-sm-2 col-form-label">Mã
													NV</label>
												<div class="col-sm-10">
													<input type="email" class="form-control" id="inputName"
														placeholder="" value="${thongTinNV.getMaNV() }" disabled>
												</div>
											</div>
											<div class="form-group row">
												<label for="inputEmail" class="col-sm-2 col-form-label">Tên
													NV</label>
												<div class="col-sm-10">
													<input type="email" class="form-control" id="inputEmail"
														placeholder=""
														value="${thongTinNV.getHo() } ${thongTinNV.getTen() }"
														disabled>
												</div>
											</div>
											<div class="form-group row">
												<label for="inputName2" class="col-sm-2 col-form-label">Giới
													tính</label>
												<div class="col-sm-10">
													<input type="text" class="form-control" id="inputName2"
														placeholder=""
														value="${thongTinNV.getPhai() == true ? 'Nam' : 'Nữ' }"
														disabled>
												</div>
											</div>
											<div class="form-group row">
												<label for="inputExperience"
													class="col-sm-2 col-form-label ">Ngày sinh</label>
												<div class="col-sm-10">
													<input class="form-control" id="inputExperience"
														placeholder="" value="${thongTinNV.getNgaySinh() }"
														disabled></input>
												</div>
											</div>
											<div class="form-group row">
												<label for="inputSkills"
													class="col-sm-2 col-form-label text-primary">CCCD</label>
												<div class="col-sm-10">
													<input type="text" class="form-control" id="inputSkills"
														placeholder="" value="${thongTinNV.getCccd() }" disabled>
												</div>
											</div>
											<div class="form-group row">
												<label for="inputSkills" class="col-sm-2 col-form-label ">SĐT</label>
												<div class="col-sm-10">
													<input type="text" class="form-control" id="inputSkills"
														placeholder="" value="${thongTinNV.getSdt() }" disabled>
												</div>
											</div>
											<div class="form-group row">
												<label for="inputSkills" class="col-sm-2 col-form-label">Dia
													chi</label>
												<div class="col-sm-10">
													<input type="text" class="form-control" id="inputSkills"
														placeholder="" value="${thongTinNV.getDiaChi() }" disabled>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

						</form>
					</div>
					<!-- /.col -->
				</div>
			</div>
			<!-- <div class="modal-footer justify-content-between">
            <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
            <button type="button" class="btn bg-dark">Lưu</button>
          </div> -->
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->


<!-- Footer -->
<%@include file="/WEB-INF/views/quantri/include/footer.jsp"%>
<!-- Footer end -->