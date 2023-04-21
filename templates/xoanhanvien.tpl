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

    .select2-container{
        width: 100% !important;
    }
    .table_qlvt{
        display: block;
    }
</style>
<div class="nenbao">
    <fieldset class="nencon">
        <legend> <a style="cursor:pointer">
                <label style="Color:#FF3300;Font-Weight:Bold;Font-size:9pt;"> Danh sách vân tay </label>
            </a></legend>

        <script language=JavaScript src='scripts/innovaeditor.js'></script>
        <div class="table_qlvt">
            <a style=" background: #000;color: #fff;padding: 5px 10px !important;cursor: pointer; border-radius: 2px;margin-left: 10px; box-shadow: rgb(0 0 0 / 16%) 0px 1px 4px;"
                href="default.php?act=loadmaychamcong"> Trở về</a>

            <div>
                <label for="maychamcong">Chọn máy để xoá :</label>
                <select class="js-may-select" id="maychamcong" name="maychamcong" value={} style="width:300px;">
                    <option value="">Chọn máy chấm công</option>
                    {maycd}
                </select>
            </div>
            <button class="help-a" type="button" style="margin-right: 20px;background: #d35400" onclick="syndata(4)">Xoá
                toàn bộ dữ liệu chấm công</button>
            <button class="help-a" type="button" style="margin-right: 20px;background: red" onclick="syndata(5)">Xoá
                toàn bộ nhân viên</button>
            <input type="hidden" name="mayselect" id="mayselect" class="text" size="16" value="{mayselect}" />
            <input type="hidden" name="portselect" id="portselect" class="text" size="16" value="{portselect}" />
        </div>

        <div class="delete_user">
            <h5>Xoá nhân viên trong tất cả các máy</h5>
            <label style="display: block;" for="Name">Cửa hàng:</label>
            <select class="js-cuahang-value form-control form-control-sm" id="cuahangvalue" name="cuahangvalue"
                value={cuahangvaluesl}>
                <option value="">Chọn cửa hàng</option>
                {cuahangvalue}
            </select>
            <input type="hidden" value={macuahangsl} id="onvalue">

            <label style="display: block;" for="Name">Nhân viên:</label>
            <select class="js-tinh-sl form-control form-control-sm" id="Name" name="Name" value={Name}>
                <option value="">Chọn nhân viên</option>
                <!-- {nhanvien} -->
            </select>
            <input type="hidden" name="macuahang" id="macuahang" class="macuahang" size="16" value="{macuahangsl}" />
            <input type="hidden" name="tennv" id="tennv" class="macuahang" size="16" value="{tennv}" />

            <button class="help-a" type="button" style="margin-right: 20px;background: #d35400; margin-top: 10px;" onclick="syndata(1)">Xoá nhân viên có mặt trong tất cả các máy</button>
        </div>


        <!-- BEGIN: block_khupdate -->
        <script language="JavaScript">
            alert('Cập nhật nhân viên - thành công');
            location.replace("default.php?act=xoanhanvien");
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
            location.replace("default.php?act=xoanhanvien");
        </script>
        <!-- END: block_cusupdate -->

        <script src="js/jquery-1.7.2.min.js"></script>
        <script src="js/select2.min.js"></script>
        <link rel="stylesheet" media="screen" href="js/select2.min.css">

        <script>

            setInterval(sync_user, 10000);
            function sync_user() {
                var t1 = 7;
                poststr = "DATA=" + encodeURIComponent(t1);
                loadtrang('khonghienthi', "xoanhanvienhienthi", poststr, "");
            }

            function dataus(t1, t2, t3, t4) {
                poststr = "DATA=" + encodeURIComponent(t1) + "*@!" + encodeURIComponent(t2) + "*@!" + encodeURIComponent(t3) + "*@!" + encodeURIComponent(t4);
                loadtrang('khonghienthi', "xoanhanvienhienthi", poststr, "");
            }

            function syndata(t1) {
                if (t1 == 1) {
                    var uid = document.getElementById('tennv').value;
                    poststr = "DATA=" + encodeURIComponent(t1) + "*@!" + encodeURIComponent(uid);
                    loadtrang('khonghienthi', "xoanhanvienhienthi", poststr, "");
                }
                if (t1 == 4) {
                    var mayselect = document.getElementById('mayselect').value;
                    var portselect = document.getElementById('portselect').value;
                    poststr = "DATA=" + encodeURIComponent(t1) + "*@!" + encodeURIComponent(mayselect) + "*@!" + encodeURIComponent(portselect);
                    loadtrang('khonghienthi', "xoanhanvienhienthi", poststr, "");
                }

                if (t1 == 5) {
                    var mayselect = document.getElementById('mayselect').value;
                    var portselect = document.getElementById('portselect').value;
                    poststr = "DATA=" + encodeURIComponent(t1) + "*@!" + encodeURIComponent(mayselect) + "*@!" + encodeURIComponent(portselect);
                    loadtrang('khonghienthi', "xoanhanvienhienthi", poststr, "");
                }


            }
        </script>

        <script>
            function timnhanvien() {
                var manvdl = document.getElementById('manvdl').value;
                var onvalue = document.getElementById('onvalue').value;
                console.log(onvalue)
                poststr = "DATA=" + encodeURIComponent("") + "*@!" + encodeURIComponent(manvdl) + "*@!" + encodeURIComponent(onvalue)
                loadtrang('Name', "loadmaychamconghienthi", poststr, "");
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
                });

                changenhanvien();
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

                    portmaycc = e.params.args.data.element.attributes.alt.value;
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