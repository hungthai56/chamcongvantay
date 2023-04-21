<style>
    td {
        background: #fff;
    }

    .btn_gr {
        background: #d35400;
        color: #fff;
        padding: 5px 15px !important;
        cursor: pointer;
        border-radius: 2px;
        margin-left: 10px;
        box-shadow: rgb(0 0 0 / 16%) 0px 1px 4px;
        border: none
    }
</style>
<div class="nenbao">
    <fieldset class="nencon">
        <legend> <a style="cursor:pointer">
                <label style="Color:#FF3300;Font-Weight:Bold;Font-size:9pt;"> Danh sách nhân viên chấm công </label>
            </a></legend>
        <script language=JavaScript src='scripts/innovaeditor.js'></script>
        <div style="margin-bottom: 10px;">
            <input type="hidden" id="loaddata" value="1">
            <a style="background: green;color: #fff;padding: 5px 10px !important;cursor: pointer; border-radius: 2px;margin-left: 10px; margin-right: 150px;; box-shadow: rgb(0 0 0 / 16%) 0px 1px 4px;"
                href="default.php?act=loadmaychamcong"> Trở về</a>

            <select class="js-tinh" id="stinh" name="stinh" value={tinh} style="width:250px;">
                <option value="">Chọn máy chấm công</option>
                {maychamcong}
            </select>
            <input type="hidden" id="idmtim">
            <button class="btn_gr" style="background: #3498db;" onclick="uploadfileimage(2)" name="LOADLOG">TÌM</button>
            <div style="float: right;margin-right: 20px;">
                <select class="js-datadongbo" id="datadongbo" name="datadongbo" value={datadongbo} style="width:250px;">
                    <!-- <option value="">Chọn máy chấm công</option>
                    {maychamcong} -->
                </select>
                <input type="hidden" id="datalink">
                <input type="hidden" id="datadongbopush">
                <!-- <button class="btn_gr" onclick="uploadfileimage(1)" name="LOADLOG">Đồng bộ dữ liệu chấm công</button> -->
                <label for="dataidcc">Máy chấm công</label>
                <select class="js-dataidcc" id="dataidcc" name="dataidcc" value={dataidcc} style="width:250px;">
                    <option value="">Chọn máy chấm công</option>
                    {idcc}
                </select>

                <label for="idnhancc">Máy nhận dữ liệu</label>
                <select class="js-idnhancc" id="idnhancc" name="idnhancc" value={idnhancc} style="width:250px;">
                    <option value="">Chọn máy chấm công</option>
                    {idcc}
                </select>
                <button style="background: #27ae60;" class="btn_gr" onclick="uploadfileimage(3)" name="LOADLOG">Đồng bộ nhân viên</button>
            </div>
        </div>
        <form name="frmProduct1" method="post">

            <div style="height: 85vh;
            overflow: auto;" id="khonghienthi">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tr bgcolor="#F8E4CB">
                        <td align="center"
                            style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 0.4pt 0in 0.4pt'
                            height="23" width="41"><b>STT</b></td>

                        <td width="829" align="center"
                            style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
                            <strong>UID</strong>
                        </td>
                        <td width="829" align="center"
                            style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
                            <strong>Ngày giờ chấm công</strong>
                        </td>
                        <td width="829" align="center"
                            style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
                            <strong>User ID</strong>
                        </td>
                        <td width="829" align="center"
                            style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
                            <strong>Status</strong>
                        </td>
                        <td width="829" align="center"
                            style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
                            <strong>Punch</strong>
                        </td>
                    </tr>
                </table>
            </div>
        </form>

        <script src="js/jquery-1.7.2.min.js"></script>
        <script src="js/select2.min.js"></script>
        <link rel="stylesheet" media="screen" href="js/select2.min.css">
    </fieldset>

    <!-- BEGIN: block_requai -->
    <script language="JavaScript">
        location.replace("?act=logdatachamcong");
    </script>
    <!-- END: block_requai -->

    <script>
        // setInterval(sync_user, 10000);
        // function sync_user() {
        //     var t1 = 7;
        //     poststr = "DATA=" + encodeURIComponent(t1);
        //     loadtrang('khonghienthi', "quanlyvantayhienthi", poststr, "");
        // }
        // uploadfileimage();
        uploadfileimage(2);
        function uploadfileimage(ht) {
            if (ht == 3) {
                var idcc = document.getElementById('dataidcc').value;
                var idnhancc = document.getElementById('idnhancc').value;
                console.log(idcc)
                poststr = "DATA=" + encodeURIComponent(ht) + "*@!" + encodeURIComponent(idcc) + "*@!" + encodeURIComponent(idnhancc);
                loadtrang('khonghienthi', "logdatachamconghienthi", poststr, "");
            }
            if (ht == 2) {
                var idtim = document.getElementById('idmtim').value;
                var datadongbo = document.getElementById('datadongbo').value;
                poststr = "DATA=" + encodeURIComponent(ht) + "*@!" + encodeURIComponent(idtim);
                loadtrang('khonghienthi', "logdatachamconghienthi", poststr, "");
            }
            if (ht == 1) {
                var idtim = document.getElementById('idmtim').value;
                var datadongbo = document.getElementById('datadongbo').value;
                var linkdongbo = document.getElementById('datalink').value;
                // console.log(datadongbo)
                poststr = "DATA=" + encodeURIComponent(ht) + "*@!" + encodeURIComponent(idtim) + "*@!" + encodeURIComponent(datadongbo) + "*@!" + encodeURIComponent(linkdongbo);
                loadtrang('khonghienthi', "logdatachamconghienthi", poststr, "");
            }
        }

    </script>
    <script language="javascript">
        var idmtim = '';
        var datadongbo = '';
        var linkdongbo = '';
        var mamay = '';
        var dataidcc = '';
        var idnhancc = '';

        $(document).ready(function () {
            $('.js-tinh').select2();
            $('.js-datadongbo').select2();
            $('.js-dataidcc').select2();
            $('.js-idnhancc').select2();

            $('.js-tinh').on('select2:selecting', function (e) {
                // idmtim = e.params.args.data.id;
                // document.getElementById('idmtim').value = idmtim;
                mamay = e.params.args.data.element.attributes.name.value;
                console.log(mamay);
                document.getElementById('idmtim').value = mamay;

            });

            $('.js-datadongbo').on('select2:selecting', function (e) {
                datadongbo = e.params.args.data.id;
                // console.log(datadongbo);
                document.getElementById('datadongbopush').value = datadongbo;
                console.log(datadongbo);
                linkdongbo = e.params.args.data.title;
                console.log(linkdongbo);
                document.getElementById('datalink').value = linkdongbo;

            });

            $('.js-dataidcc').on('select2:selecting', function (e) {
                dataidcc = e.params.args.data.id;
                console.log(dataidcc);
                document.getElementById('dataidcc').value = dataidcc;

            });

            $('.js-idnhancc').on('select2:selecting', function (e) {
                idnhancc = e.params.args.data.id;
                console.log(idnhancc);
                document.getElementById('idnhancc').value = idnhancc;

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
</div>