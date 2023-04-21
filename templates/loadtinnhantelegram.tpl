<div class="nenbao">
	<fieldset class="nencon">
		<legend> <a style="cursor:pointer">
				<label style="Color:#FF3300;Font-Weight:Bold;Font-size:9pt;"> Load tin nhắn telegram </label>
			</a></legend>

		<script language=JavaScript src='scripts/innovaeditor.js'></script>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				ID
				<input type="text" name="IDtelegram" id="IDtelegram" class="text" size="10" value="" />
				nội dung<input type="text" name="content" id="content" class="text" size="10" value="" />
				Từ ngày <input type="date" name="tungay" id="tungay" value=""
					style="line-height: 20px; margin-bottom: 10px;" />
				đến ngày <input type="date" name="denngay" id="denngay" style="line-height: 20px; margin-bottom: 10px;"
					value="" />
				<select name="idgioithieu" id="idgioithieu" style="width:160px; height: 25px; margin: 0px 10px;">
					<option value="0">Vui lòng chọn</option>
					<option value="1">Tìm kiếm tin nhắn đến</option>
					<option value="2">Tìm kiếm tin nhắn đi</option>
				</select></td>
				<button onclick="timnhanh()" style="margin-left: 10px;">Tìm kiếm</button>

				<span style="margin-left: 50px; margin-right: 10px;">tổng người nhắn:</span> <input type="text" value="" id="tonggui" disabled>
				<div id="hienthititle">
					
				</div>
			</tr>


			<tr bgcolor="#F8E4CB">
				<td align="center"
					style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 0.4pt 0in 0.4pt'
					height="23" width="41"><b>STT</b></td>

				<td width="829" align="center"
					style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
					<strong>ID</strong>
				</td>
				<td width="850" align="center"
					style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
					<strong>User Name</strong>
				</td>
				<td width="900" align="center"
					style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
					<strong>Tên người dùng</strong>
				</td>
				<td width="829" align="center"
					style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
					<strong>Nội dung </strong>
				</td>
				<td width="829" align="center"
					style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
					<strong>Ngày gửi tin nhắn </strong>
				</td>
			</tr>

		</table>
		<div id="khonghienthi" style="    height: 700px;
		overflow: auto;
		max-height: 700px;"></div>
		<script src="js/jquery-1.7.2.min.js"></script>

		<script>
			var lengthdata = '';
			var id = '';
			var noidung = '';
			var nameuser = '';
			var user = '';
			var date = '';
			var datalog = "";
			var dt = '';
			var element_data = '';
			var settings = {
				"url": "https://webhook.trungvu.vn/telegramapi/webhook/api_mess.php?type=getData",
				"method": "GET",
				"timeout": 0,
			};

			$.ajax(settings).done(function (response) {
				datalog = JSON.parse(response);
				document.getElementById('tonggui').value = datalog.length;
				lengthdata = datalog;

			});

			function timnhanh() {


				var e = document.getElementById('idgioithieu');
				var giaTri = e.options[e.selectedIndex].value;
				if (giaTri == 1) {
					document.getElementById('hienthititle').innerHTML = "<p><strong>Tìm kiếm tin nhắn nhận</strong></p>"
					function formatDate(date) {
						var year = date.getFullYear().toString();
						var month = (date.getMonth() + 101).toString().substring(1);
						var day = (date.getDate() + 100).toString().substring(1);
						return year + '-' + month + '-' + day;
					}
					var today = new Date();
					var chuoi = "";
					chuoi += "<table width='100%' border='0' cellpadding='0' cellspacing='0'>";
					for (var i = 0; i < lengthdata.length; i++) {
						if (lengthdata[i]?.["message"]?.["from"]?.["id"]) {

							element_data = lengthdata[i];
							id = element_data["message"]["from"]["id"];
							noidung = element_data["message"]["text"];
							date = element_data["message"]["date"];
							if (element_data["message"]["from"]["username"]) {
								user = element_data["message"]["from"]["username"];
							}else{
								user = 'chưa có user name, cần đăng ký user name';
							}
							
							nameuser = element_data["message"]["from"]["first_name"] +" "+ element_data["message"]["from"]["last_name"];
							date = new Date(date * 1000);
							dt = formatDate(date);
							var idvl = document.getElementById('IDtelegram').value;
							var tungay = new Date(document.getElementById('tungay').value);
							var denngay = new Date(document.getElementById('denngay').value);
							var ngayhomnay = new Date(dt);
							var soanh = '';
							if (document.getElementById('denngay').value == "") {
								soanh = tungay <= ngayhomnay && today >= ngayhomnay;
							}
							if (document.getElementById('tungay').value == "" && idvl) {
								soanh = id == idvl;
							}
							if (document.getElementById('tungay').value && document.getElementById('denngay').value) {
								soanh = tungay <= ngayhomnay && denngay >= ngayhomnay;
							}

							// if (document.getElementById('content').value) {

							// }
							// var str = noidung;
							// 	// console.log(str.indexOf("the")); // output: 13
							// 	if (str.indexOf("daomo") > 0) {
							// 		console.log(noidung)
							// 	}
							// 	console.log(str.indexOf("Python")); // output: -1 (not found)

							if (soanh) {
								chuoi += "<tr><td align='center'style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 0.4pt 0in 0.4pt'height='23' width='41'><b>"+i+"</b></td><td width='829' align='center' style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>" + id + "</td><td width='829' align='center' style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>" + user + "</td><td width='829' align='center' style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>" + nameuser + "</td><td width='829' align='center' style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>" + noidung + "</td><td width='829' align='center' style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>" + dt + "</td></tr>"
							}
						}
					}
					chuoi += "</table>";
					document.getElementById('khonghienthi').innerHTML = chuoi;
				}
				if (giaTri == 2) {
					document.getElementById('hienthititle').innerHTML = "<p><strong>Tìm kiếm tin nhắn gửi đi</strong></p>"
					var id = document.getElementById('IDtelegram').value;
					var tungay = document.getElementById('tungay').value;
					var denngay = document.getElementById('denngay').value;
					var content = document.getElementById('content').value;
					console.log(id, tungay, denngay, content);
					poststr = "DATA=" + encodeURIComponent(id) + "*@!" + encodeURIComponent(tungay) + "*@!" + encodeURIComponent(denngay) + "*@!" + encodeURIComponent(content);
					loadtrang('khonghienthi', "loadtinnhantelegramtim", poststr, "");
				}
			}


		</script>
	</fieldset>
</div>