
<?php

?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Kết nối WebSocket </title>
</head>

<body>
    <h1>Kết nối WebSocket </h1>
    <input type="text" id="message-input">
    <button id="send-button">Gửi</button>
    <div id="showmess" style="    width: 300px;
    height: 400px;
    border: 1px solid;
    padding: 10px;"></div>

    <script src="./js/jquery.js"></script>
    <script>
        // console.log('====================================');
        // console.log( navigator.TCPServerPermissionOptions );
        // console.log('====================================');
        // navigator.tcpPermission.requestPermission({remoteAddress:"127.0.0.1", remotePort:8090}).then(
        //     () => {
        //         // Permission was granted
        //         // Create a new TCP client socket and connect to remote host
        //         var mySocket = new TCPSocket("127.0.0.1", 8090);

        //         // Send data to server
        //         mySocket.writeable.write("Hello World").then(
        //             () => {

        //                 // Data sent sucessfully, wait for response
        //                 console.log("Data has been sent to server");
        //                 mySocket.readable.getReader().read().then(
        //                     ({ value, done }) => {
        //                         if (!done) {
        //                             // Response received, log it:
        //                             console.log("Data received from server:" + value);
        //                         }

        //                         // Close the TCP connection
        //                         mySocket.close();
        //                     }
        //                 );
        //             },
        //             e => console.error("Sending error: ", e)
        //         );
        //     }
        //     );
        const hostname=window.location.hostname;
        const socket = new WebSocket('ws://103.9.77.248:8090');
        socket.addEventListener('connection', (event) => {
            socket.send('Hello, server!');
            console.log('Đã kết nối tới WebSocket server');
        });
        socket.addEventListener('message', (event) => {
            // console.log('Nhận được tin nhắn mới: ' + event.data);
            if(event.data){
                var json=JSON.parse(event.data);
                  console.log(event);
                if(json.tome){
                     $("#showmess").append("<span style='color:#FF5722'>Me: "+json.mes + "</span><br>")
                }
                if(json.from){
                     $("#showmess").append("<span style='color:#4caf50'>"+json.resourceId+": "+json.mes + "</span><br>")
                }
            }
           
        });
        document.querySelector('#send-button').addEventListener('click', () => {
            const message = document.querySelector('#message-input').value;
            socket.send(message);
        });
    </script>
</body>

</html>