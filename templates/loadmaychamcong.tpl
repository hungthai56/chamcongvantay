<style>
    .help-a {
        color: #fff;
        padding: 5px 10px;
        cursor: pointer;
        border-radius: 2px;
        margin-left: 10px;
        box-shadow: rgb(0 0 0 / 16%) 0px 1px 4px;
        font-size: 12.5px;
    }

    .help-a:hover {
        box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
        color: #fff;
        transition: 0.5s;
    }

    label {
        display: block;
    }

    .table td {
        padding: 0 10px;
        vertical-align: middle;
    }

    .select2-selection {
        height: 30px !important;
    }

    .name_header {
        width: 20%;
    }
</style>
<div class="nenbao" style="padding: 10px;">
    <a style="cursor:pointer">
        <label style="Color:#FF3300;Font-Weight:Bold;Font-size:9pt;"> Danh sách nhân viên </label>
    </a>

    <script language=JavaScript src='scripts/innovaeditor.js'></script>
    <!-- BEGIN: block_khht1 -->
    <form name="frmProduct1" method="post">
        <div class="container" style="max-width: 100%;">
            <div class="row"
                style="justify-content: space-between;background: #fff;box-shadow: rgba(0, 0, 0, 0.15) 1.95px 1.95px 2.6px;padding: 10px; align-items: center;">
                <div>
                    <a class="help-a" style="background: green;" href="default.php?act=loadmaychamcong&id=-1">Thêm
                        Mới</a>
                    <a class="help-a" style="background: red;" href="default.php?act=loadmaychamcong">Đóng
                        Lại</a>
                </div>
                <div class="deskop-menu">
                    <a class="help-a" style="background: #c0392b;" href="?act=quanlyvantay">Quản lý vân tay</a>
                    <a class="help-a" style="background: rgb(196, 131, 11);" href="?act=logdatathoigianthuc">Chấm
                        công thời gian thực</a>
                    <a class="help-a" style="background: blueviolet;" href="?act=quanlymaychamcong">Danh sách máy
                        chấm công</a>
                    <a class="help-a" style="background: #f39c12;" href="?act=logdatachamcong">Đồng bộ dữ liệu</a>
                    <button class="help-a" type="submit" name="synclock" id="synclock" value="Đồng bộ ngày giờ"
                        style="background: #3498db;border: none;padding: 3px 10px;">Đồng bộ ngày giờ</button>
                    <a class="help-a" style="background: green" href="?act=phanquyen">Phân quyền</a>
                    <a class="help-a" style="background: #888" href="?act=xoanhanvien">Xoá nhân viên</a>
                    <a class="help-a" style="background: red;float: right;" href="?act=logout">Đăng xuất</a>
                </div>
                <div class="mobile-menu">
                    <button type="button" onclick="menu_display()" class="menu">
                        <img src="./images/barmenu.png" alt="">
                    </button>
                </div>
                <ul class="menu_mobile">
                    <li>
                        <a class="help-a" style="background: #c0392b;" href="?act=quanlyvantay">Quản lý vân tay</a>
                    </li>
                    <li>
                        <a class="help-a" style="background: rgb(196, 131, 11);" href="?act=logdatathoigianthuc">Chấm
                            công thời gian thực</a>
                    </li>
                    <li> <a class="help-a" style="background: blueviolet;" href="?act=quanlymaychamcong">Danh sách máy
                            chấm công</a>
                    </li>
                    <li>
                        <a class="help-a" style="background: #f39c12;" href="?act=logdatachamcong">Đồng bộ dữ liệu</a>

                    </li>
                    <li>
                        <button class="help-a" type="submit" name="synclock" id="synclock" value="Đồng bộ ngày giờ"
                            style="background: #3498db;border: none;padding: 3px 10px;">Đồng bộ ngày giờ</button>

                    </li>
                    <li>
                        <a class="help-a" style="background: green" href="?act=phanquyen">Phân quyền</a>

                    </li>
                    <li>
                        <a class="help-a" style="background: #888" href="?act=xoanhanvien">Xoá nhân viên</a>
                    </li>
                    <li><a class="help-a" style="background: red;" href="?act=logout">Đăng xuất</a></li>
                </ul>
            </div>
            <div class="row"
                style="margin: 10px 0px;background: #fff;box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px;;padding: 10px;justify-content: space-around;">
                <div class="name_header ">
                    <input type="text" name="NameS" class="form-control form-control-sm" size="10"
                        placeholder="Tên nhân viên">
                </div>
                <div class="name_header ">
                    <input type="text" name="manvtim" class="form-control form-control-sm" size="10"
                        placeholder="Mã nhân viên" />
                </div>
                <div class="name_header ">
                    <select class="js-tinh form-control" id="stinh" name="stinh" value={tinh} style="width:200px">
                        <option value="">Chọn máy chấm công</option>
                        {maychamcong}
                    </select>
                    <input type="hidden" name="idmtim" id="idmtim" value="">
                </div>
                <div class="name_header ">
                    <input class="help-a" style="border: none; background: #27ae60;" type="submit" name="search"
                        value="Tìm kiếm" />
                </div>
            </div>
        </div>
        <div class="table_mobile">
            <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table">
                <tr bgcolor="#F8E4CB">
                    <td align="left" height="23" width="41"><b>STT</b></td>
                    <td width="829" align="left">
                        <strong>Tên nhân viên</strong>
                    </td>
                    <td width="829" align="left">
                        <strong>Mã nhân viên</strong>
                    </td>
                    <td width="829" align="left">
                        <strong>Tên chấm công</strong>
                    </td>

                    <td width="829" align="left">
                        <strong>Quyền</strong>
                    </td>
                    <td width="829" align="left">
                        <strong>Máy chấm công</strong>
                    </td>
                    <td width="829" align="left">
                        <strong>Ngày tạo</strong>
                    </td>
                    <td width="829" align="left">
                        <strong>Kiểm tra vân tay</strong>
                    </td>

                    <td width="201" align="left">
                        <strong>Cập nhật</strong>
                    </td>
                    <td width="143" align="left">
                        <strong>Xoá</strong>
                    </td>
                </tr>
                <!-- End: block_khht1 -->
                <!-- BEGIN: block_khht -->
                <input name="idcapnhat" id="idcapnhat" type="hidden" value="{ID}" />
                <input name="idlink" id="idlink" type="hidden" value="{linkcc}" />
                <input name="cong" id="cong" type="hidden" value="{cong}" />
                <tr bgcolor="{color}">
                    <td align="center">&nbsp;{stt}</td>

                    <td valign="middle">
                        {tennhanvien}
                    </td>
                    <td valign="middle">
                        <label for="sele<%=j%>" style="Font-Weight:Normal;Color:Black;">&nbsp;{manhanvien}</label>
                    </td>
                    <td valign="middle">
                        <label for="sele<%=j%>" style="Font-Weight:Normal;Color:Black;">&nbsp;{tencd}</label>
                    </td>

                    <td valign="middle">
                        <label for="sele<%=j%>" style="Font-Weight:Normal;Color:Black;">&nbsp;{quyen}</label>
                    </td>
                    <td valign="middle">
                        <label for="sele<%=j%>" style="Font-Weight:Normal;Color:Black;">&nbsp;{maycd}</label>
                    </td>
                    <td valign="middle">
                        <label for="sele<%=j%>" style="Font-Weight:Normal;Color:Black;">&nbsp;{ngaytao}</label>
                    </td>
                    <td valign="middle">
                        <label for="sele<%=j%>" style="Font-Weight:Normal;Color:Black;">&nbsp;{checkvantay}</label>
                    </td>
                    <td align="center">
                        <label for="sele<%=j%>" style="Font-Weight:Normal;Color:Black;cursor:hand">
                            <a href="default.php?act=loadmaychamcong&id={ID}"><i class="fa-solid fa-pen-to-square"
                                    style="color: green;"></i></a></label>
                    </td>

                    <td align="center">
                        <a onclick='return ask()'
                            href="default.php?act=loadmaychamcong&Del={ID}&ip={linkcc}&port={cong}&ch={IDcuahang}&uid={uid}"><i
                                class="fa-solid fa-trash-can" style="color: #FF3300;"></i></a>
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
    <!-- End: block_proht2 -->

    <!-- BEGIN: block_kh -->
    <form name="frmkho" id="frmkho" method="post">
        <fieldset class="nencon" id="khachhang">
            <h3>{t-c}</h3>
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

            <table width="100%" border="0" class="table">
                <tr>
                    <td>
                        <label for="Name">Cửa hàng:</label>
                        <select class="js-cuahang-value form-control form-control-sm" id="cuahangvalue"
                            name="cuahangvalue" value={cuahangvaluesl} style="width:200px">
                            <option value="">Chọn cửa hàng</option>
                            {cuahangvalue}
                        </select>
                        <input type="hidden" value={macuahangsl} id="onvalue">
                    </td>
                    <td>
                        <label for="Name">Nhân viên:</label>
                        <select class="js-tinh-sl form-control form-control-sm" id="Name" name="Name" value={Name}
                            style="width:200px">
                            <option value="">Chọn nhân viên</option>
                            <!-- {nhanvien} -->
                        </select>
                        <input type="hidden" name="macuahang" id="macuahang" class="macuahang" size="16"
                            value="{macuahangsl}" />
                        <input type="hidden" name="nhanviendl" id="nhanviendl" class="macuahang" size="16"
                            value="{nhanviendlsl}" />
                        <input type="hidden" name="manvdl" id="manvdl" class="macuahang" size="16" value="{manvdlsl}" />
                    </td>
                    <td>
                        <label for="maychamcong">Máy chấm công:</label>
                        <select class="js-phuong-sl form-control form-control-sm" id="maychamcong" name="maychamcong"
                            value={maychamcong} style="width:200px">
                            <option value="">Chọn máy chấm công</option>
                            {maycd}
                        </select>
                        <input type="hidden" name="tenmcd" id="tenmcd" class="text" size="16" value="{tenmcd}" />
                        <input type="hidden" name="portmaycc" id="portmaycc" class="text" size="16" value="{portmaycc}" />
                        <input type="hidden" name="titlelink" id="titlelink" class="text" size="16"
                            value="{titlelinksl}" />

                    </td>
                </tr>
                <tr>
                    <td width="11%">
                        <label for="tenchamcong">Tên chấm công:</label>
                        <input type="Text" name="tenchamcong" id="tenchamcong" class="form-control form-control-sm"
                            size="16" value="{tenchamcong}" readonly />
                    </td>
                    <td width="11%">
                        <label for="matkhau">Mật khẩu:</label>
                        <input type="Text" name="matkhau" id="matkhau" class="form-control form-control-sm" size="16"
                            value="123" />
                    </td>
                    <td width="11%">
                        <label for="uid">UID:</label>
                        <input type="text" name="iduser" id="iduser" class="form-control form-control-sm" size="16"
                            value="{idusersl}" readonly>
                    </td>
                </tr>
            </table>
            <div style="padding-left:105px;padding-bottom:8px">
                <input type="Submit" class="help-a" style="background: #27ae60;border: none;" name="btnUpdate"
                    onclick="return kiemtra()" value="Cập nhật">
                <!-- <input type="submit" class="text" name="cancel" value="Quay Lại" /> -->
                <a class="help-a" style="background: #c0392b;" href="?act=loadmaychamcong" type="button">Quay
                    Lại</a>
            </div>
        </fieldset>
    </form>
    <!-- END: block_kh -->
    <!-- BEGIN: block_ajack -->
    <script language="javascript">
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

    <div id="khonghienthi" style="display:block"></div>
    <div id="temp" style="display:block"></div>

    <script>
        function menu_display() {
            var element = document.getElementsByClassName("menu_mobile")[0];
            element.classList.toggle("active");
        }
    </script>
    </script>
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
        alert('Cập nhập nhân viên thành công');
        location.replace("default.php?act=loadmaychamcong");
    </script>
    <!-- END: block_cusupdate -->

    <!-- BEGIN: block_load -->
    <script>
        //You can add animated gif while loading //
        document.getElementById('temp').innerHTML = "<p>&nbsp;</p><p align='left' style='padding-left:200'><img src='images/downloading.gif'></p>";
    </script>
    <!-- END: block_load -->

    <script src="js/jquery-1.7.2.min.js"></script>
    <script src="js/select2.min.js"></script>
    <link rel="stylesheet" media="screen" href="js/select2.min.css">

    <script>
        timnhanvien();
        function timnhanvien() {
            var manvdl = document.getElementById('manvdl').value;
            var onvalue = document.getElementById('onvalue').value;
            console.log(onvalue)
            poststr = "DATA=" + encodeURIComponent("") + "*@!" + encodeURIComponent(manvdl) + "*@!" + encodeURIComponent(onvalue)
            loadtrang('Name', "loadmaychamconghienthi", poststr, "");
        }
        syndata(6)
        function syndata(t1) {
            if (t1 == 6) {
                poststr = "DATA=" + encodeURIComponent(t1);
                loadtrang('khonghienthi', "quanlyvantayhienthi", poststr, "");
            }
        }
    </script>
    <script language="javascript">
        var idmtim = '';
        var quan = '';
        var idch = '';

        $(document).ready(function () {
            $('.js-tinh').select2();
            $('.js-cuahang-value').select2();
            $('.js-tinh').on('select2:selecting', function (e) {
                idmtim = e.params.args.data.id;
                console.log(idmtim);
                document.getElementById('idmtim').value = idmtim;
                // console.log({cuahangvaluesl});


            });
            $('.js-cuahang-value').on('select2:selecting', function (e) {
                idch = e.params.args.data.id;
                console.log(idch);
                document.getElementById('macuahang').value = idch;
                changenhanvien();
            });
        });

        function changenhanvien() {
            var macuahang = document.getElementById('macuahang').value;
            console.log(macuahang)
            poststr = "DATA=" + encodeURIComponent("") + "*@!" + encodeURIComponent("") + "*@!" + encodeURIComponent(macuahang)
            loadtrang('Name', "loadmaychamconghienthi", poststr, "");

        }

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
        setInterval(sync_user, 10000);
        function sync_user() {
            var t1 = 7;
            poststr = "DATA=" + encodeURIComponent(t1);
            loadtrang('khonghienthi', "quanlyvantayhienthi", poststr, "");
        }
        var idnhanvien = '';
        var idmaychamcong = '';
        var cuahang = '';
        var titlelink = '';
        var userlink = '';
        var portmaycc = '';

        $(document).ready(function () {
            $('.js-tinh-sl').select2();
            $('.js-phuong-sl').select2();
            $('.js-cuahang-sl').select2();

            $('.js-tinh-sl').on('select2:selecting', function (e) {
                idnhanvien = e.params.args.data.id;
                userlink = e.params.args.data.text;
                // console.log(idnhanvien);
                console.log(userlink);
                document.getElementById('iduser').value = idnhanvien;

                // var valuename = console.log(document.getElementById('tenchamcong').value);
                console.log(userlink);
                var strvalue = userlink.split("-");
                var name = strvalue[0];
                var manv = strvalue[1];
                document.getElementById('nhanviendl').value = name;
                document.getElementById('manvdl').value = manv;
                var nameslip = name.split(" ");
                const newArray = nameslip.reverse();
                var namenv = newArray[1] + " " + manv;
                document.getElementById('tenchamcong').value = namenv;

            });
            $('.js-phuong-sl').on('select2:selecting', function (e) {
                idmaychamcong = e.params.args.data.id;
                console.log(idmaychamcong);
                document.getElementById('tenmcd').value = idmaychamcong;

                portmaycc =  e.params.args.data.element.attributes.alt.value;
                console.log(portmaycc);
                document.getElementById('portmaycc').value = portmaycc;

                titlelink = e.params.args.data.title;
                console.log(titlelink);
                document.getElementById('titlelink').value = titlelink;

                cuahang = e.params.args.data.element.attributes.name.value;
                console.log(cuahang);
                document.getElementById('macuahang').value = cuahang;
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

</div>