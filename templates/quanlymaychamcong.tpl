<div class="nenbao">
    <fieldset class="nencon">
        <legend> <a style="cursor:pointer">
                <label style="Color:#FF3300;Font-Weight:Bold;Font-size:9pt;"> Danh sách máy chấm công </label>
            </a></legend>

        <script language=JavaScript src='scripts/innovaeditor.js'></script>
        <!-- BEGIN: block_khht1 -->
        <form name="frmProduct1" method="post">
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <a style=" background: #888;color: #fff;padding: 5px 10px !important;cursor: pointer; border-radius: 2px;margin-left: 10px; box-shadow: rgb(0 0 0 / 16%) 0px 1px 4px;"
                        href="default.php?act=loadmaychamcong"> Trở về</a>
                    <a style=" background: green;color: #fff;padding: 5px 10px !important;cursor: pointer; border-radius: 2px;margin-left: 10px; box-shadow: rgb(0 0 0 / 16%) 0px 1px 4px;"
                        href="default.php?act=quanlymaychamcong&id=-1">Thêm Mới</a>

                    <a style=" background: red;color: #fff;padding: 5px 10px !important;cursor: pointer; border-radius: 2px;margin-left: 10px;margin-right: 10px; box-shadow: rgb(0 0 0 / 16%) 0px 1px 4px;"
                        href="default.php?act=quanlymaychamcong">Đóng Lại</a>Cửa hàng:
                    <input type="text" name="NameS" class="text" size="10" />&nbsp;&nbsp;
                    User máy chấm công:
                    <input type="text" name="usertim" class="text" size="10" />&nbsp;&nbsp;
                    Link:
                    <input type="text" name="Linktim" class="text" size="10" />&nbsp;&nbsp;

                    <input type="submit" name="search" value="Tìm kiếm" />
                    <input style="background: red; float: right; border: none; padding: 7px; color: #fff !important;"
                        type="submit" name="refresh" class="text" size="10" value="Làm mới" />
                </tr>

                </td>
                </tr>

                <tr bgcolor="#F8E4CB">
                    <td align="center"
                        style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 0.4pt 0in 0.4pt'
                        height="23" width="41"><b>STT</b></td>

                    <td width="829" align="center"
                        style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
                        <strong>Cửa hàng</strong>
                    </td>
                    <td width="829" align="center"
                        style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
                        <strong>Link</strong>
                    </td>
                    <td width="829" align="center"
                        style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
                        <strong>User</strong>
                    </td>
                    <td width="829" align="center"
                        style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
                        <strong>Mật khẩu</strong>
                    </td>
                    <td width="829" align="center"
                        style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
                        <strong>Cổng</strong>
                    </td>
                    <td width="829" align="center"
                        style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
                        <strong>Loại máy</strong>
                    </td>
                    <td width="829" align="center"
                        style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
                        <strong>ID Telegram</strong>
                    </td>
                    <td width="201" align="center"
                        style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 0.4pt 0in 0.4pt'>
                        <strong>Cập nhật</strong>
                    </td>
                    <td width="143" align="center"
                        style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 0.4pt 0in 0.4pt'>
                        <strong>Xoá</strong>
                    </td>
                </tr>
                <!-- End: block_khht1 -->
                <!-- BEGIN: block_khht -->
                <tr bgcolor="{color}">
                    <td style="border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding: 5px;padding-right:12px"
                        align="right">&nbsp;{stt}</td>

                    <td valign="middle"
                        style="border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding: 5px;">
                        <label for="sele<%=j%>" style="Font-Weight:Normal;Color:Black;">&nbsp;{tenmaycc}</label>
                    </td>
                    <td valign="middle"
                        style="border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding: 5px;">
                        <label for="sele<%=j%>" style="Font-Weight:Normal;Color:Black;">&nbsp;{linkcc}</label>
                    </td>
                    <td valign="middle"
                        style="border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding: 5px;">
                        <label for="sele<%=j%>" style="Font-Weight:Normal;Color:Black;">&nbsp;{usercc}</label>
                    </td>
                    <td valign="middle"
                        style="border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding: 5px;">
                        <label for="sele<%=j%>" style="Font-Weight:Normal;Color:Black;">&nbsp;{matkhaucc}</label>
                    </td>
                    <td valign="middle"
                        style="border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding: 5px;">
                        <label for="sele<%=j%>" style="Font-Weight:Normal;Color:Black;">&nbsp;{congcc}</label>
                    </td>
                    <td valign="middle"
                        style="border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding: 5px;">
                        <label for="sele<%=j%>" style="Font-Weight:Normal;Color:Black;">&nbsp;{loaimaycc}</label>
                    </td>
                    <td valign="middle"
                        style="border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding: 5px;">
                        <label for="sele<%=j%>" style="Font-Weight:Normal;Color:Black;">&nbsp;{idtele}</label>
                    </td>

                    <td align="center"
                        style="border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 3.4pt 0in 3.4pt">
                        <label for="sele<%=j%>" style="Font-Weight:Normal;Color:Black;cursor:hand">
                            <a href="default.php?act=quanlymaychamcong&id={ID}"> <img src="images/book_addressHS.png"
                                    border="0"></a></label>
                    </td>


                    <td align="center"
                        style="border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt">
                        <a onclick='return ask()'
                            href="default.php?act=quanlymaychamcong&Del={ID}&link={linkcc}&cong={congcc}&ch={IDcuahang}"><img
                                src="images/delete.gif" border="0"></a>
                    </td>
                </tr>
                <!-- End: block_khht -->

                <!-- BEGIN: block_proht2 -->
                <tr style="padding-top:10">
                    <td align="right" colspan="4"> {list_page}</td>
                </tr>
            </table>
            <input type="hidden" name="currentPage" />
        </form>
        <!-- <form action="" method="post">
			<button name="view">VIEW </button>
		</form> -->

        <!-- End: block_proht2 -->

        <!-- BEGIN: block_kh -->
        <form name="frmkho" id="frmkho" method="post">
            <fieldset class="nencon" id="khachhang">
                <legend>
                    <h3>{t-c}</h3>
                </legend>
                <script language="javascript">
                    var t = 1;
                    mTimer = setTimeout('doititle()', 1000);
                    function doititle() {
                        t = t + 1;

                        if (t < 18) {
                            if (document.title != '***') {
                                document.title = "***";
                            } else {
                                document.title = "Thêm Khách Hàng";
                            }
                            setTimeout('doititle()', 500);
                        }
                    }
                </script>

                <input name="dachon" type="hidden" id="dachon" value="{type}" /> <input name="id" id="id" type="hidden"
                    value="{ID}" />

                <table width="100%" border="0">
                    <tr>
                        <td width="11%">
                            Cửa hàng:
                            <select class="js-tinh" id="cuahangsl" name="cuahangsl" value={cuahangsl}
                                style="width:200px">
                                <option value="">Chọn cửa hàng</option>
                                {cuahangsl}
                            </select>
                            <input type="hidden" name="cuahang" id="cuahang" class="text" size="16" value="{cuahang}" />
                        </td>
                        <td width="11%">
                            Tên Máy:
                            <input type="Text" name="tenmay" id="tenmay" class="text" size="16" value="{tenmay}" />
                        </td>
                        <td width="11%">
                            Link:
                            <input type="Text" name="link" id="link" class="text" size="16" value="{link}" />
                        </td>
                        <td width="11%">
                            ID Telegram:
                            <input type="Text" name="idtele" id="idtele" class="text" size="16" value="{idtelesl}"  placeholder="1457856,455788,..."/>
                        </td>
                    </tr>
                    <tr>
                        <td width="11%">
                            User:
                            <input type="Text" name="user" id="user" class="text" size="16" value="{user}" />
                        </td>
                        <td width="11%">
                            Mật khẩu:
                            <input type="password" name="matkhau" id="matkhau" class="text" size="16"
                                value="{matkhau}" />
                        </td>
                        <td width="11%">
                            Cổng:
                            <input type="Text" name="cong" id="cong" class="text" size="16" value="{cong}" />
                        </td>
                        <td width="11%">
                            Loại máy:
                            <select class="js-may" id="may" name="may" value={mayslvl} style="width:100px">
                                <option value="">Chọn cửa hàng</option>
                                <option value="1">Máy mới</option>
                                <option value="2">Máy cũ</option>
                            </select>
                            <input type="hidden" name="maytext" id="maytext" class="text" size="16" value="{maytext}" />
                        </td>
                    </tr>
                </table>
                <br />
                <div style="padding-left:105px;padding-bottom:8px">
                    <input type="Submit" class="text" name="btnUpdate" onclick="return kiemtra()" value="Cập nhật">
                    <input type="submit" class="text" name="cancel" value="Quay Lại" />
                </div>
            </fieldset>



        </form>



        <!-- END: block_kh -->
        <!-- BEGIN: block_khupdate -->
        <script language="JavaScript">
            alert('Cập nhập Tỉnh - TP thành công');
            location.replace("default.php?act=quanlymaychamcong");
        </script>
        <!-- END: block_khupdate -->

        <!-- BEGIN: block_ajack -->
        <script language="javascript">

            function makeObject() {
                var x;
                var browser = navigator.appName;
                if (browser == "Microsoft Internet Explorer") {
                    x = new ActiveXObject("Microsoft.XMLHTTP");
                } else {
                    x = new XMLHttpRequest();
                }
                return x;
            }

            var request = makeObject();


            //============================================================


            function findtemp(id) {
                request.open('get', 'findtemp.php?id=' + id);

                request.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                request.onreadystatechange = outputfindtemp;

                request.send('');
            }

            function outputfindtemp() {
                if (request.readyState == 1) { 		//You can add animated gif while loading //
                    //document.getElementById('temp').innerHTML = "<p>&nbsp;</p><p align='left' style='padding-left:200'><img               src='images/downloading.gif'></p>";
                }
                if (request.readyState == 4) {
                    var data = request.responseText;

                    document.getElementById('templa').innerHTML = data;
                }
            }

            function ask() {
                var n = confirm("Bạn có muốn xóa không");
                if (n == false) {
                    return false;

                }
            }


        </script>
        <!-- END: block_ajack -->
        <script language="JavaScript">

            function trim(str) {
                ch = '';
                for (i = 0; i < str.length; i++) {
                    cha = str.charAt(i);
                    if (cha != ' ') {
                        ch = ch + cha;
                    }
                }
                return ch;
            }

        </script>

        <div id="khonghienthi" style="display:none"></div>

        <script language="JavaScript">




            function chuyen(event, tieptheo, th) {
                capnhap = tieptheo;

                if (event.keyCode == 13 && document.getElementById('dachon').value == '0') {
                    document.getElementById(tieptheo).focus();
                    capnhap = tieptheo;

                } else {
                    document.getElementById(th).focus();
                    capnhap = th;
                }
                event.keyCode = '';
            }

        </script>
        <!-- END: block_cus -->
        <!-- BEGIN: block_cusupdate -->
        <script language="JavaScript">
            alert('Cập nhập khách hàng thành công');
            location.replace("default.php?act=quanlymaychamcong");
        </script>
        <!-- END: block_cusupdate -->

        <script src="js/jquery-1.7.2.min.js"></script>
        <script src="js/select2.min.js"></script>
        <link rel="stylesheet" media="screen" href="js/select2.min.css">

        <script language="javascript">
            var idmtim = '';
            var quan = '';
            var thanhpho = '';
            var tenmay = '';
            var loaimay = '';

            $(document).ready(function () {
                $('.js-tinh').select2();
                $('.js-may').select2();
                $('.js-phuong').select2();
                $('.js-tinh').on('select2:selecting', function (e) {
                    idmtim = e.params.args.data.id;
                    console.log(idmtim);
                    tenmay = e.params.args.data.title;
                    document.getElementById('cuahang').value = idmtim;
                    document.getElementById('tenmay').value = tenmay;

                });

                $('.js-may').on('select2:selecting', function (e) {
                    loaimay = e.params.args.data.id;
                    console.log(loaimay);
                    document.getElementById('maytext').value = loaimay;
                });

                $('.js-phuong').on('select2:selecting', function (e) {
                });
            });

            //============================================================
            function ask() {
                var n = confirm("Bạn có muốn xóa không");
                if (n == false) {
                    return false;

                }
            }
            function quaylai() {
                location.replace("default.php?act=customer");
            }
            //=======================
            function settype(valu) {
                document.getElementById('dachon').value = valu;

            }
            function kiemtra() {
                // if (capnhap != '') { return false ;}



                if (document.getElementById('IDKhuVuc').value == "0") {
                    alert('Bạn chưa nhập tỉnh thành');
                    document.getElementById('IDKhuVuc').focus();
                    return false;
                }

                return true;
            }


            function xuly5() {
                document.getElementById("hiethithongbao").style.display = '';
            }
            function goidongthe() {
                document.getElementById("hiethithongbao").style.display = 'none';
            }

            function setkh(t1, t2, t3) {
                return false;
            }
			// document.getElementById("Name").focus();
        </script>

        <!-- tìm kiếm -->

        <script language="javascript">
            var idnhanvien = '';
            var idmaychamcong = '';

            $(document).ready(function () {
                $('.js-tinh-sl').select2();
                $('.js-phuong-sl').select2();

                $('.js-tinh-sl').on('select2:selecting', function (e) {
                    idnhanvien = e.params.args.data.id;
                    console.log(idnhanvien);
                    document.getElementById('tennv').value = idnhanvien;
                });
                $('.js-phuong-sl').on('select2:selecting', function (e) {
                    idmaychamcong = e.params.args.data.id;
                    console.log(idmaychamcong);
                    document.getElementById('tenmcd').value = idmaychamcong;

                });
            });


            //============================================================
            function ask() {
                var n = confirm("Bạn có muốn xóa không");
                if (n == false) {
                    return false;

                }
            }
            function quaylai() {
                location.replace("default.php?act=customer");
            }
            //=======================
            function settype(valu) {
                document.getElementById('dachon').value = valu;

            }
            function kiemtra() {
                // if (capnhap != '') { return false ;}

                if (document.getElementById('IDKhuVuc').value == "0") {
                    alert('Bạn chưa nhập tỉnh thành');
                    document.getElementById('IDKhuVuc').focus();
                    return false;
                }

                return true;
            }


            function xuly5() {
                document.getElementById("hiethithongbao").style.display = '';
            }
            function goidongthe() {
                document.getElementById("hiethithongbao").style.display = 'none';
            }

            function setkh(t1, t2, t3) {
                return false;
            }
			// document.getElementById("Name").focus();
        </script>
        <!-- BEGIN: block_khongxoa -->
        <script language="JavaScript">
            alert('Bạn không thể xóa khách hàng này do đã có nơi sử dụng  rồi !!! ');
        </script>
        <!-- END: block_khongxoa -->
    </fieldset>
</div>