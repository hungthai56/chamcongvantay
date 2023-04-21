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
        <div style="margin: 10px 0;">
            <input type="hidden" id="loaddata" value="1">
            <a style="background: green;color: #fff;padding: 5px 10px !important;cursor: pointer; border-radius: 2px;margin-left: 10px; margin-right: 150px;; box-shadow: rgb(0 0 0 / 16%) 0px 1px 4px;"
                href="default.php?act=loadmaychamcong"> Trở về</a>
        </div>

        <div class="table_tgt" style="    width: 100%;
        height: calc(100vh - 130px);
        overflow: auto;">
            <table width="100%" border="0" cellpadding="0" cellspacing="0"  id="data">
                <thead>
                    <tr bgcolor="#F8E4CB" id="data">
                        <td align="center"
                            style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0 in 0.4pt 0in 0.4pt'
                            height="23" width="41"><b>STT</b></td>
        
                        <td width="829" align="center"
                            style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0 in 5.4pt 0in 5.4pt'>
                            <strong>Tên nhân viên</strong>
                        </td>
                        <td width="829" align="center"
                            style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0 in 5.4pt 0in 5.4pt'>
                            <strong>Mã nhân viên</strong>
                        </td>
                        <td width="829" align="center"
                            style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0 in 5.4pt 0in 5.4pt'>
                            <strong>Nơi chấm công</strong>
                        </td>
                        <td width="829" align="center"
                            style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0 in 5.4pt 0in 5.4pt'>
                            <strong>UID</strong>
                        </td>
                        <td width="829" align="center"
                            style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0 in 5.4pt 0in 5.4pt'>
                            <strong>Ngày chấm công</strong>
                        </td>
                        <td width="829" align="center"
                            style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0 in 5.4pt 0in 5.4pt'>
                            <strong>Giờ chấm công</strong>
                        </td>
                        <td width="829" align="center"
                            style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0 in 5.4pt 0in 5.4pt'>
                            <strong>User ID</strong>
                        </td>
                        <td width="829" align="center"
                            style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0 in 5.4pt 0in 5.4pt'>
                            <strong>Status</strong>
                        </td>
                    </tr>
                </thead>
                <tbody id="khonghienthi" >
    
                </tbody>
            </table>
        </div>
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
        uploadfileimage();
        // setInterval(uploadfileimage,);
        function uploadfileimage() {
            poststr = "DATA=" + encodeURIComponent();
            loadtrang('khonghienthi', "logdatathoigianthuchienthi", poststr, "");
        }

    </script>
    <script>
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
        var thanhpho = '';

        $(document).ready(function () {
            $('.js-tinh').select2();

            $('.js-tinh').on('select2:selecting', function (e) {
                idmtim = e.params.args.data.id;
                console.log(idmtim);
                document.getElementById('idmtim').value = idmtim;

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

    <script src="js/jquery.js"></script>
    <script src="js/socketio.js"></script>
    <script type="text/javascript" charset="utf-8">
        $(document).ready(function () {

            var socket = io("https://mc7.ovn.vn:8099");
            console.log('====================================');
            console.log(socket);
            console.log('====================================');

            socket.on('connect', function () {
                socket.emit('my_event', {
                    data: 'I\'m connected!'
                });
            });

            socket.on('my_response', function (msg, cb) {
                // console.log(msg);
                $('#log').prepend('<br>' + $('<div/>').text('Received #' + msg.count + ': ' + msg.data.mess).html());
                Showdata(msg)
                if (cb)
                    cb(msg);
            });
            function Showdata(msg) {
                if (msg) {
                    // msg=JSON.parse(msg)
                    let data = msg.data

                    try {
                        data = JSON.parse(data)
                        const type = data.type;
                        if (type == "postchamcong") {
                            data = data.mess;

                            var times = data.data[7]
                            var times = times.split (" ");
                            var datelog = times[0];
                            var datelog = datelog.split ("-");
                            datelog = datelog[2] +"-" + datelog[1] +"-" + datelog[0];
                            var timelog =  times[1];
                            $('#data').prepend($('<tr bgcolor="{color}"><td style="border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding: 5px 10px;padding-right:12px"align="right">1</td><td valign="middle"style="border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding: 5px 10px;"><label for="sele<%=j%>" style="Font-Weight:Normal;Color:Black;">' + data.data[0] + '</label></td><td valign="middle"style="border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding: 5px 10px;"><label for="sele<%=j%>" style="Font-Weight:Normal;Color:Black;">' + data.data[1] + '</label></td><td valign="middle"style="border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding: 5px 10px;"><label for="sele<%=j%>" style="Font-Weight:Normal;Color:Black;">' + data.data[2] + '</label></td><td valign="middle"style="border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding: 5px 10px;"><label for="sele<%=j%>" style="Font-Weight:Normal;Color:Black;">'+data.data[5]+'</label></td><td valign="middle" style="border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding: 5px 10px;"><label for="sele<%=j%>" style="Font-Weight:Normal;Color:Black;">'+datelog+'</label></td><td valign="middle" style="border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding: 5px 10px;"><label for="sele<%=j%>" style="Font-Weight:Normal;Color:Black;">' + timelog + '</label></td><td valign="middle" style="border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding: 5px 10px;"><label for="sele<%=j%>" style="Font-Weight:Normal;Color:Black;">' + data.data[6] + '</label></td><td valign="middle" style="border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding: 5px 10px;"><label for="sele<%=j%>" style="Font-Weight:Normal;Color:Black;">' + data.data[8] + '</label></td></tr>'));

                            // Uid: ' + data.data.uid + ' user_id: ' + data.data.user_id + ' timestamp: ' + data.data.timestamp + ' status: ' + data.data.status
                            
                            console.log();
                            console.log(data.uid);
                            console.log('====================================');
                            console.log("datadatadatadata", data);
                            console.log('====================================');
                        }

                    } catch (error) {

                    }



                }

            }

        });
    </script>
</div>