<div class="nenbao">
	<fieldset class="nencon" style="padding:5;margin:0">
		<legend> <a style="cursor:pointer">
				<label style="Color:#FF3300;Font-Weight:Bold;Font-size:9pt;">Phạt Đề Xuất</label>
			</a></legend>

		<!-- BEGIN: block_khht1 -->
		<form name="frmProduct1" method="post" style="padding:0;margin:0">
			<table width="100%" border="0" cellpadding="0" class="tbchuan" cellspacing="0">
				<tr>
					<td colspan="8">
						[ <a href="?act=phat&id=-1">Thêm Mới</a>]&nbsp;&nbsp;[<a href="?act=md">Đóng
							Lại</a>]&nbsp;&nbsp;Tên
						<input type="text" name="NameS" class="text" size="10" ondblclick="this.value=''"
							value="{NameS}" />&nbsp;
						<select id="thangtim" name="thangtim">
							<option value="0">ALL</option>
							<!-- BEGIN: block_thang -->
							<option value="{thangt}" {thangse}>Tháng {thangt}</option> <!-- END: block_thang -->

						</select>
						&nbsp; Năm
						<select id="namtim" name="namtim">
							<!-- BEGIN: block_nam -->
							<option value="{namt}" {namse}>Năm {namt}</option> <!-- END: block_nam -->
							<option value="0">ALL</option>
						</select>
						&nbsp;
						<input type="submit" name="search" id="search" value="Tìm kiếm" />
					</td>
				</tr>

				<tr bgcolor="#F8E4CB">
					<td align="center" height="23" width="48"><b>STT</b></td>
					<td width="76" align="center"><strong>Tháng</strong></td>
					<td width="286" align="center"><strong>Tên Nhân viên</strong></td>
					<td width="76" align="center"><strong>Code</strong></td>
					<td width="26" align="center"><strong>Số Tiền</strong></td>
					<td width="506" align="center"><strong>Lý Do</strong></td>
					<td width="94" align="center" style=''><strong>C&#7853;p nh&#7853;p</strong></td>
					<td width="118" align="center" style=''><strong>X&#243;a</strong></td>
				</tr>
				<!-- End: block_khht1 -->
				<!-- BEGIN: block_khht -->
				<tr bgcolor="{color}">
					<td align="right">{stt}</td>
					<td>{thang} </td>
					<td>{ten}</td>
					<td> {code} </td>
					<td align="right">{sotien} </td>
					<td>{Name} </td>
					<td align="center">
						<a href="?act=phat&id={ID}"> <img src="images/book_addressHS.png" border="0"></a>
					</td>


					<td align="center"> <a onclick='return ask()' href="?act=phat&Del={ID}"><img
								src="images/delete.gif" border="0"></a></td>
				</tr>
				<!-- End: block_khht -->

				<!-- BEGIN: block_khht2 -->
				<tr style="padding-top:10">
					<td align="right" colspan="8"> {list_page}</td>
				</tr>
			</table>
			<input type="hidden" name="currentPage" id="currentPage" />
		</form>
		<!-- End: block_khht2 -->


		<!-- BEGIN: block_kh -->
		<form name="frmkho" id="frmkho" method="post">
			<table width="100%" class="form-insert" border="0" align="left">
				<tr>
					<td colspan="2" align="center" style="color:#FF6600;padding-bottom:10px">
						<h3>{t-c}</h3><input name="id" id="id" type="hidden" value="{idgoi}" />
					</td>
				</tr>
				<tr>
					<td width="22%"></td>
					<td width="78%">

					</td>
				</tr>

				<tr>
					<td width="22%">Nhân viên</td>
					<td width="78%">
						<select name="nhanvien" class="js-nhanvien" id="">
							{nhanvien}
						</select>
					</td>
				</tr>
				<tr>
					<td width="22%">Lý Do ứng</td>
					<td width="78%">
						<select name="lydoung" id="" style="width: 377px;">
							<option {select1} value="1">Hết tiền</option>
							<option {select2} value="2">Đám cưới</option>
							<option {select3} value="3">Sinh hoạt cá nhân</option>
							<option {select4} value="4">Mua sắm gia dụng</option>
						</select>
					</td>
				</tr>
				<tr>
					<td width="22%">Số Tiền</td>
					<td width="78%">
						<input type="number" name="sotien" ID="sotien" style="width: 377px;" min="500000" max="10000000"
							value="{sotien}" onkeyup="txtFormat(this)" onblur="txtFormat(this)" />
					</td>
				</tr>
				<tr>
					<td>Ngày Ứng</td>
					<td>
						<input type="date" name="ngay" id="ngay" style="width: 377px; line-height: 20px;"
							value="{ngay}" />
					</td>
				</tr>
				<tr>
					<td>Ghi chú</td>
					<td>
						<textarea name="ghichu" id="" style="width: 377px;" rows="5">{ghichu}</textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" class="text" name="btnUpdate" onclick="return kiemtra()" value="Cập nhập">
						<input type="button" onclick="nhay('ung')" class="text" name="cancel" value="Quay Lại" />
					</td>
				</tr>
			</table>
		</form>
		<!-- END: block_kh -->
		<!-- BEGIN: block_khupdate -->
		<script language="JavaScript">
			alert('Cập nhập thành công');
			location.replace("?act=phat");
		</script>
		<!-- END: block_khupdate -->



		<script language="javascript">
			function nhay(trang) {
				location.replace("?act=" + trang);
			}

			function ask() {
				var n = confirm("Bạn có muốn xóa không");
				if (n == false) {
					return false;
				}
			}
			function setnhanvien(id, code, ten) {
				document.getElementById('idnhanvien').value = id;
				document.getElementById('ten').value = ten;
				document.getElementById('code').value = code;
			}
			function timnhanvien(t, ten, code) {

				poststr = "DATA=" + t + "*@!" + encodeURIComponent(ten) + "*@!" + encodeURIComponent(code) + "*@!" + encodeURIComponent(0) + "*@!" + encodeURIComponent(0);
				loadtrang('htnhanvien', "timnhanvien", poststr, "");

			}
			function kiemtra() {
				if (trim(document.getElementById('idnhanvien').value) == '') {
					alert('Bạn chưa nhập chọn nhân viên ');
					document.getElementById('tim').click();
					return false;

				}
				if (trim(document.getElementById('Name').value) == '') {
					alert('Bạn chưa nhập lý do ');
					document.getElementById('Name').focus();
					return false;

				}
				if (trim(document.getElementById('sotien').value) == '') {
					alert('Bạn chưa nhập nhập số tiền ');
					document.getElementById('sotien').focus();
					return false;

				}

				return true;
			}
			function goitim() {
				document.getElementById('search').click();
			}
			{ timkiem }
		</script>
		<script src="js/select2.min.js"></script>
		<link rel="stylesheet" media="screen" href="js/select2.min.css">

		<script language="javascript">
			function getvlsl(sel) {
				var cuahangVl = '';
				cuahangVl = document.getElementById('IDthuong').value;
			}
			var tinhtrang = 0;
			var idphieu = 0;
			$(document).ready(() => {
				$(".js-nhanvien").select2();
			})

		</script>

	</fieldset>
</div>