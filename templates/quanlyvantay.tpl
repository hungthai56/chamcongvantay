<style>
    .help-a {
        color: #fff;
        padding: 5px 10px;
        cursor: pointer;
        border-radius: 2px;
        margin-left: 10px;
        box-shadow: rgb(0 0 0 / 16%) 0px 1px 4px;
        border: none;
        background-color: #16a085;
    }

    .help-a:hover {
        box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
        color: #fff;
        transition: 0.5s;
    }

    .layout_main {
        display: flex;
        column-gap: 50px;
        justify-content: center;
    }

    .layout_main label {
        display: block;
        margin-bottom: 10px;
        font-size: 14px;
    }

    .layout_main div {
        background: #3498db;
        color: #fff;
        padding: 20px 25px;
        margin-bottom: 10px;
        border-radius: 5px;
        text-align: center;
    }

    .table td {
        padding: 2px 0 !important;
    }

    label {
        margin: 0 !important;
    }
</style>
<div class="nenbao">
    <fieldset class="nencon">
        <legend> <a style="cursor:pointer">
                <label style="Color:#FF3300;Font-Weight:Bold;Font-size:9pt;"> Danh sách vân tay </label>
            </a></legend>

        <script language=JavaScript src='scripts/innovaeditor.js'></script>
        <!-- BEGIN: block_khht1 -->
        <form name="frmProduct1" method="post">
            <div class="table_qlvt">
                <a style=" background: #000;color: #fff;padding: 5px 10px !important;cursor: pointer; border-radius: 2px;margin-left: 10px; box-shadow: rgb(0 0 0 / 16%) 0px 1px 4px;"
                    href="default.php?act=loadmaychamcong"> Trở về</a>
                <a class="help-a" style="background: green;" href="default.php?act=quanlyvantay&id=-1">Chuyển
                    đổi vân tay</a>
                <a class="help-a" style="background: red;" href="default.php?act=quanlyvantay">Đóng
                    Lại</a>
                <div class="menu_qlvt">
                    <label for="">Tên:</label>
                    <input type="text" name="NameS" class="text" size="10" />
                    <!-- <label for="">Tên máy:</label>
                    <input style="margin-bottom: 10px;" type="text" name="NameS" class="text" size="10" /> -->
                    <input type="submit" name="search" value="Tìm kiếm" />
                    <!-- <button onclick="sync_user()">đồng bộ</button> -->
                </div>


                

                <button class="help-a" type="button" onclick="syndata(1)">Đồng
                    bộ vân tay</button>
            </div>
            <div class="table_qlvt_sc">
                <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table">
                    <tr bgcolor="#F8E4CB">
                        <td align="center"
                            style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 0.4pt 0in 0.4pt'
                            height="23" width="41"><b>STT</b></td>

                        <td width="829" align="center"
                            style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
                            <strong>Tên nhân viên</strong>
                        </td>
                        <td width="829" align="center"
                            style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
                            <strong>Mã nhân viên</strong>
                        </td>
                        <td width="829" align="center"
                            style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
                            <strong>Tên chấm công</strong>
                        </td>

                        <td width="829" align="center"
                            style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
                            <strong>Vân tay</strong>
                        </td>
                        <td width="829" align="center"
                            style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
                            <strong>Máy chấm công</strong>
                        </td>
                        <td width="201" align="center"
                            style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 0.4pt 0in 0.4pt'>
                            <strong>Cập nhật vân tay</strong>
                        </td>
                    </tr>
                    <!-- End: block_khht1 -->
                    <!-- BEGIN: block_khht -->
                    <tr bgcolor="{color}">
                        <td style="border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0 in 0.4pt 0in 0.4pt;padding-right:12px"
                            align="right">&nbsp;{stt}</td>

                        <td valign="middle"
                            style="border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0 in 5.4pt 0in 5.4pt">
                            <label for="sele<%=j%>" style="Font-Weight:Normal;Color:Black;">&nbsp;{tennhanvien}</label>
                        </td>
                        <td valign="middle"
                            style="border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0 in 5.4pt 0in 5.4pt">
                            <label for="sele<%=j%>" style="Font-Weight:Normal;Color:Black;">&nbsp;{manhanvien}</label>
                        </td>
                        <td valign="middle"
                            style="border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0 in 5.4pt 0in 5.4pt">
                            <label for="sele<%=j%>" style="Font-Weight:Normal;Color:Black;">&nbsp;{tencd}</label>
                        </td>

                        <td valign="middle"
                            style="border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0 in 5.4pt 0in 5.4pt">
                            <label for="sele<%=j%>" style="Font-Weight:Normal;Color:Black;">&nbsp;{vantay}</label>
                        </td>
                        <td valign="middle"
                            style="border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0 in 5.4pt 0in 5.4pt">
                            <label for="sele<%=j%>" style="Font-Weight:Normal;Color:Black;">&nbsp;{maycd}</label>
                        </td>
                        <input name="idcapnhat" id="idcapnhat" type="hidden" value="{ID}" />
                        <input name="idlink" id="idlink" type="hidden" value="{linkcc}" />
                        <input name="cong" id="cong" type="hidden" value="{cong}" />

                        <td align="center" width="350" valign="middle"
                            style="border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0 in 5.4pt 0in 5.4pt">
                            <button button class="help-a" type="button" style="background: #3498db"
                                onclick='dataus(3, {ID}, "{linkcc}", {cong})' name="LOADLOG">Đồng bộ</button>
                        </td>
                    </tr>
                    <!-- End: block_khht -->

                    <!-- BEGIN: block_proht2 -->
                    <tr style="padding-top:10">
                        <td align="right" colspan="4"> {list_page}</td>
                    </tr>
                </table>
            </div>
            <input type="hidden" name="currentPage" />
        </form>
        <!-- END: block_proht2 -->

        <!-- BEGIN: block_kh -->
        <form name="frmkho" id="frmkho" method="post">
            <fieldset class="nencon" id="khachhang">
                <legend>
                    <h4>{t-c}</h4>
                </legend>

                <input name="dachon" type="hidden" id="dachon" value="{type}" /> <input name="id" id="id" type="hidden"
                    value="{ID}" />

                <div class="layout_main">
                    <div>
                        <label for="Name">Tên nhân viên muốn chuyển đổi</label>
                        <select class="js-nhanvien-sl" id="Name" name="Name" value={} style="width:300px">
                            <option value="">Chọn nhân viên</option>
                            {nhanvien}
                        </select>
                        <input type="hidden" name="tennv" id="tennv" class="text" size="16" value="{tennv}" />
                    </div>
                    <div
                        style="display: flex;align-items: center;font-size: 35px;padding: 20px 15px;background: #c0392b;">
                        <span>➠</span>
                    </div>
                    <div>
                        <label for="maychamcong">Chọn máy chấm công chuyển đến</label>
                        <select class="js-phuong-sl" id="maychamcong" name="maychamcong" value={} style="width:300px">
                            <option value="">Chọn máy chấm công</option>
                            {maycd}
                        </select>
                        <input type="hidden" name="portmaycc" id="portmaycc" class="text" size="16" value="{portmaycc}" />
                        <input type="hidden" name="tenmcd" id="tenmcd" class="text" size="16" value="{tenmcd}" />
                        <input type="hidden" name="idcd" id="idcd" class="text" size="16" value="{idcd}" />
                        <input type="hidden" name="macuahang" id="macuahang" class="text" size="16"
                            value="{macuahang}" />
                    </div>
                </div>

                <div style="padding-bottom:8px;display: flex; justify-content: center;">
                    <input type="button" class="help-a" onclick="syndata(2)" value="Đồng bộ">
                    <input type="submit" class="help-a" style="background: red;" name="cancel" value="Quay Lại" />
                </div>
            </fieldset>
        </form>

        <!-- END: block_kh -->
        <!-- BEGIN: block_khupdate -->
        <script language="JavaScript">
            alert('Cập nhật nhân viên - thành công');
            location.replace("default.php?act=quanlyvantay");
        </script>
        <!-- END: block_khupdate -->

        <!-- BEGIN: block_ajack -->
        <script language="javascript">

            //===========================================================
            function ask() {
                var n = confirm("Bạn có muốn xóa không");
                if (n == false) {
                    return false;

                }
            }

        </script>
        <!-- END: block_ajack -->

        <div id="khonghienthi" style="display:block"></div>

        <script language="JavaScript">
        </script>
        <!-- END: block_cus -->
        <!-- BEGIN: block_cusupdate -->
        <script language="JavaScript">
            alert('Cập nhập nhân viên thành công');
            location.replace("default.php?act=quanlyvantay");
        </script>
        <!-- END: block_cusupdate -->

        <script src="js/jquery-1.7.2.min.js"></script>
        <script src="js/select2.min.js"></script>
        <link rel="stylesheet" media="screen" href="js/select2.min.css">

        <script>
            // syndata(6)
            // function syndata(t1) {
            //     if (t1 == 6) {
            //         poststr = "DATA=" + encodeURIComponent(t1);
            //         loadtrang('khonghienthi', "quanlyvantayhienthi", poststr, "");
            //     }
            // }
        </script>
        <script>

            setInterval(sync_user, 10000);
            function sync_user() {
                var t1 = 7;
                poststr = "DATA=" + encodeURIComponent(t1);
                loadtrang('khonghienthi', "quanlyvantayhienthi", poststr, "");
            }

            function dataus(t1, t2, t3, t4) {
                poststr = "DATA=" + encodeURIComponent(t1) + "*@!" + encodeURIComponent(t2) + "*@!" + encodeURIComponent(t3) + "*@!" + encodeURIComponent(t4);
                loadtrang('khonghienthi', "quanlyvantayhienthi", poststr, "");
            }

            function syndata(t1) {

                if (t1 == 1) {
                    poststr = "DATA=" + encodeURIComponent(t1);
                    loadtrang('khonghienthi', "quanlyvantayhienthi", poststr, "");
                }
                if (t1 == 2) {
                    var cuahangden = document.getElementById('portmaycc').value;
                    var nhanvien = document.getElementById('tennv').value;
                    var maycc = document.getElementById('tenmcd').value;
                    var idcd = document.getElementById('idcd').value;
                    var macuahang = document.getElementById('macuahang').value;
                    if (nhanvien == "" || maycc == "") {
                        alert("Bạn vui lòng chọn đầy đủ");
                        return;
                    } else {
                        poststr = "DATA=" + encodeURIComponent(t1) + "*@!" + encodeURIComponent(nhanvien) + "*@!" + encodeURIComponent(maycc) + "*@!" + encodeURIComponent(idcd) + "*@!" + encodeURIComponent(macuahang) + "*@!" + encodeURIComponent(cuahangden);
                        loadtrang('khonghienthi', "quanlyvantayhienthi", poststr, "");
                    }
                }
                if (t1 == 4) {
                    var mayselect = document.getElementById('mayselect').value;
                    var portselect = document.getElementById('portselect').value;
                    poststr = "DATA=" + encodeURIComponent(t1) + "*@!" + encodeURIComponent(mayselect) + "*@!" + encodeURIComponent(portselect);
                    loadtrang('khonghienthi', "quanlyvantayhienthi", poststr, "");
                }

                if (t1 == 5) {
                    var mayselect = document.getElementById('mayselect').value;
                    var portselect = document.getElementById('portselect').value;
                    poststr = "DATA=" + encodeURIComponent(t1) + "*@!" + encodeURIComponent(mayselect) + "*@!" + encodeURIComponent(portselect);
                    loadtrang('khonghienthi', "quanlyvantayhienthi", poststr, "");
                }


            }
        </script>

        <script language="javascript">
            var idmtim = '';
            var quan = '';
            var thanhpho = '';

            $(document).ready(function () {
                $('.js-tinh').select2();
                $('.js-ch').select2();
                $('.js-quan').select2();
                $('.js-phuong').select2();
                $('.js-tinh').on('select2:selecting', function (e) {
                    idmtim = e.params.args.data.title;
                    console.log(idmtim);
                    document.getElementById('idmtim').value = idmtim;

                });

                $('.js-quan').on('select2:selecting', function (e) {
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
            var idnhanvientd = '';
            var idmaychamcong = '';
            var idcd = '';
            var mayselect = '';
            var portselect = '';
            var cuahang = '';
            var portmaycc = '';

            $(document).ready(function () {
                $('.js-tinh-sl').select2();
                $('.js-phuong-sl').select2();
                $('.js-may-select').select2();
                $('.js-nhanvien-sl').select2();
                $('.js-nhanvien-td').select2();

                $('.js-tinh-sl').on('select2:selecting', function (e) {
                    idnhanvien = e.params.args.data.id;
                    console.log(idnhanvien);
                    document.getElementById('tennv').value = idnhanvien;
                });
                $('.js-phuong-sl').on('select2:selecting', function (e) {
                    idmaychamcong = e.params.args.data.id;
                    console.log(idmaychamcong);
                    document.getElementById('tenmcd').value = idmaychamcong;

                    idcd = e.params.args.data.title;
                    console.log(idcd);
                    document.getElementById('idcd').value = idcd;

                    cuahang = e.params.args.data.element.attributes.name.value;
                    console.log(cuahang);
                    document.getElementById('macuahang').value = cuahang;

                    portmaycc =  e.params.args.data.element.attributes.alt.value;
                    console.log(portmaycc);
                    document.getElementById('portmaycc').value = portmaycc;

                });

                $('.js-may-select').on('select2:selecting', function (e) {
                    mayselect = e.params.args.data.id;
                    console.log(mayselect);
                    document.getElementById('mayselect').value = mayselect;

                    portselect = e.params.args.data.title;
                    console.log(portselect);
                    document.getElementById('portselect').value = portselect;

                });
                $('.js-nhanvien-sl').on('select2:selecting', function (e) {
                    idmaychamcong = e.params.args.data.id;
                    console.log(idmaychamcong);
                    document.getElementById('tennv').value = idmaychamcong;

                });
                $('.js-nhanvien-td').on('select2:selecting', function (e) {
                    idnhanvientd = e.params.args.data.id;
                    console.log(idnhanvientd);
                    document.getElementById('tentd').value = idnhanvientd;

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