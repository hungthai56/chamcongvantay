<!DOCTYPE html>
<html lang="vn" class="theme-light">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="author" content="myXteam">
    <meta name="description" content="Ứng dụng quản lý công việc và dự án cho doanh nghiệp và nhóm làm việc mọi lúc mọi nơi">
    <meta property="og:image" content="/images/logo-01.png">
    <link href="templates/quanlycongviec/style.css" rel="stylesheet">
    <link href="templates/quanlycongviec/element.icon.css" rel="stylesheet">
    <link href="vendor/fontawesome-free-5.15.4-web/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="vendor/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="templates/quanlycongviec/quill.core.css" rel="stylesheet">
    <link href="templates/quanlycongviec/quill.bubble.css" rel="stylesheet">
    <link href="templates/quanlycongviec/base.material.css" rel="stylesheet">
    <link href="templates/quanlycongviec/button.material.css" rel="stylesheet">
    <link href="templates/quanlycongviec/calendar.material.css" rel="stylesheet">
    <link href="templates/quanlycongviec/dropdown.material.css" rel="stylesheet">
    <link href="templates/quanlycongviec/input.material.css" rel="stylesheet">
    <link href="templates/quanlycongviec/navigation.material.css" rel="stylesheet">
    <link href="templates/quanlycongviec/popup.material.css" rel="stylesheet">
    <link href="templates/quanlycongviec/splitbutton.material.css" rel="stylesheet">
    <link href="templates/quanlycongviec/treegrid.material.css" rel="stylesheet">
    <link href="templates/quanlycongviec/grid.material.css" rel="stylesheet">
    <link href="templates/quanlycongviec/gantt.material.css" rel="stylesheet">
    <link href="templates/quanlycongviec/layout.material.css" rel="stylesheet">
    <link href="templates/quanlycongviec/list.material.css" rel="stylesheet">
    <link href="templates/quanlycongviec/schedule.bootstrap.css" rel="stylesheet">
    <script src="templates/quanlycongviec/dropins.js.tải xuống" id="dropboxjs" data-app-key="2olmzsip2kqgf10"></script>
    <style type="text/css">
        #accordionSidebar {
            display: none !important;
        }
        
        .topbar {
            display: none !important;
        }
        
        @-webkit-keyframes rotate {
            from {
                -webkit-transform: rotate(0deg);
            }
            to {
                -webkit-transform: rotate(360deg);
            }
        }
        
        @keyframes rotate {
            from {
                transform: rotate(0deg);
            }
            to {
                transform: rotate(360deg);
            }
        }
        
        .dropbox-dropin-btn,
        .dropbox-dropin-btn:link,
        .dropbox-dropin-btn:hover {
            display: inline-block;
            height: 14px;
            font-family: "Lucida Grande", "Segoe UI", "Tahoma", "Helvetica Neue", "Helvetica", sans-serif;
            font-size: 11px;
            font-weight: 600;
            color: #636363;
            text-decoration: none;
            padding: 1px 7px 5px 3px;
            border: 1px solid #ebebeb;
            border-radius: 2px;
            border-bottom-color: #d4d4d4;
            background: #fcfcfc;
            background: -moz-linear-gradient(top, #fcfcfc 0%, #f5f5f5 100%);
            background: -webkit-linear-gradient(top, #fcfcfc 0%, #f5f5f5 100%);
            background: linear-gradient(to bottom, #fcfcfc 0%, #f5f5f5 100%);
            filter: progid: DXImageTransform.Microsoft.gradient(startColorstr='#fcfcfc', endColorstr='#f5f5f5', GradientType=0);
        }
        
        .dropbox-dropin-default:hover,
        .dropbox-dropin-error:hover {
            border-color: #dedede;
            border-bottom-color: #cacaca;
            background: #fdfdfd;
            background: -moz-linear-gradient(top, #fdfdfd 0%, #f5f5f5 100%);
            background: -webkit-linear-gradient(top, #fdfdfd 0%, #f5f5f5 100%);
            background: linear-gradient(to bottom, #fdfdfd 0%, #f5f5f5 100%);
            filter: progid: DXImageTransform.Microsoft.gradient(startColorstr='#fdfdfd', endColorstr='#f5f5f5', GradientType=0);
        }
        
        .dropbox-dropin-default:active,
        .dropbox-dropin-error:active {
            border-color: #d1d1d1;
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.1);
        }
        
        .dropbox-dropin-btn .dropin-btn-status {
            display: inline-block;
            width: 15px;
            height: 14px;
            vertical-align: bottom;
            margin: 0 5px 0 2px;
            background: transparent url('https://www.dropbox.com/static/metaserver/static/images/widgets/dbx-saver-status.png') no-repeat;
            position: relative;
            top: 2px;
        }
        
        .dropbox-dropin-default .dropin-btn-status {
            background-position: 0px 0px;
        }
        
        .dropbox-dropin-progress .dropin-btn-status {
            width: 18px;
            margin: 0 4px 0 0;
            background: url('https://www.dropbox.com/static/metaserver/static/images/widgets/dbx-progress.png') no-repeat center center;
            -webkit-animation-name: rotate;
            -webkit-animation-duration: 1.7s;
            -webkit-animation-iteration-count: infinite;
            -webkit-animation-timing-function: linear;
            animation-name: rotate;
            animation-duration: 1.7s;
            animation-iteration-count: infinite;
            animation-timing-function: linear;
        }
        
        .dropbox-dropin-success .dropin-btn-status {
            background-position: -15px 0px;
        }
        
        .dropbox-dropin-disabled {
            background: #e0e0e0;
            border: 1px #dadada solid;
            border-bottom: 1px solid #ccc;
            box-shadow: none;
        }
        
        .dropbox-dropin-disabled .dropin-btn-status {
            background-position: -30px 0px;
        }
        
        .dropbox-dropin-error .dropin-btn-status {
            background-position: -45px 0px;
        }
        
        @media only screen and (-webkit-min-device-pixel-ratio: 1.4) {
            .dropbox-dropin-btn .dropin-btn-status {
                background-image: url('https://www.dropbox.com/static/metaserver/static/images/widgets/dbx-saver-status-2x.png');
                background-size: 60px 14px;
                -webkit-background-size: 60px 14px;
            }
            .dropbox-dropin-progress .dropin-btn-status {
                background: url('https://www.dropbox.com/static/metaserver/static/images/widgets/dbx-progress-2x.png') no-repeat center center;
                background-size: 20px 20px;
                -webkit-background-size: 20px 20px;
            }
        }
        
        .dropbox-saver:hover,
        .dropbox-chooser:hover {
            text-decoration: none;
            cursor: pointer;
        }
        
        .dropbox-chooser,
        .dropbox-dropin-btn {
            line-height: 11px !important;
            text-decoration: none !important;
            box-sizing: content-box !important;
            -webkit-box-sizing: content-box !important;
            -moz-box-sizing: content-box !important;
        }
    </style>
    <title>Căn hộ A.Duy Vinhome | myXteam WorkDone</title>
    <link href="templates/quanlycongviec/chunk-06cf51d2.1415394e.css" rel="prefetch">
    <link href="templates/quanlycongviec/chunk-10608104.399b340b.css" rel="prefetch">
    <link href="templates/quanlycongviec/chunk-1286435e.bf319ec9.css" rel="prefetch">
    <link href="templates/quanlycongviec/chunk-1a918b02.399b340b.css" rel="prefetch">
    <link href="templates/quanlycongviec/chunk-25dc20c0.399b340b.css" rel="prefetch">
    <link href="templates/quanlycongviec/chunk-328b5df0.399b340b.css" rel="prefetch">
    <link href="templates/quanlycongviec/chunk-438e96af.399b340b.css" rel="prefetch">
    <link href="templates/quanlycongviec/chunk-4579746e.399b340b.css" rel="prefetch">
    <link href="templates/quanlycongviec/chunk-4b33a759.b73dd199.css" rel="prefetch">
    <link href="templates/quanlycongviec/chunk-57c7544e.399b340b.css" rel="prefetch">
    <link href="templates/quanlycongviec/chunk-57cfe6b1.859f4391.css" rel="prefetch">
    <link href="templates/quanlycongviec/chunk-6777983f.399b340b.css" rel="prefetch">
    <link href="templates/quanlycongviec/chunk-67dfcc79.1415394e.css" rel="prefetch">
    <link href="templates/quanlycongviec/chunk-6cd8f314.9b200234.css" rel="prefetch">
    <link href="templates/quanlycongviec/chunk-70b0d250.399b340b.css" rel="prefetch">
    <link href="templates/quanlycongviec/chunk-725450a4.9810f84b.css" rel="prefetch">
    <link href="templates/quanlycongviec/chunk-743c4242.399b340b.css" rel="prefetch">
    <link href="templates/quanlycongviec/chunk-7be318d4.399b340b.css" rel="prefetch">
    <link href="templates/quanlycongviec/chunk-7d02670b.30d2bf12.css" rel="prefetch">
    <link href="templates/quanlycongviec/chunk-7e45e229.399b340b.css" rel="prefetch">
    <link href="templates/quanlycongviec/chunk-a3915b58.cb42d24b.css" rel="prefetch">
    <link href="templates/quanlycongviec/chunk-bb004184.399b340b.css" rel="prefetch">
    <link href="templates/quanlycongviec/chunk-f76cbccc.399b340b.css" rel="prefetch">
    <link href="templates/quanlycongviec/chunk-f88ebd90.399b340b.css" rel="prefetch">
    <link href="templates/quanlycongviec/app.7f9cb54a.css" rel="preload" as="style">
    <link href="templates/quanlycongviec/chunk-vendors.a5f5778f.css" rel="preload" as="style">
    <link href="templates/quanlycongviec/chunk-vendors.a5f5778f.css" rel="stylesheet">
    <link href="templates/quanlycongviec/app.7f9cb54a.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="templates/quanlycongviec/chunk-57cfe6b1.859f4391.css">
    <script src="templates/quanlycongviec/js" async=""></script>
    <link rel="stylesheet" type="text/css" href="templates/quanlycongviec/chunk-7d02670b.30d2bf12.css">
    <link rel="stylesheet" type="text/css" href="templates/quanlycongviec/chunk-a3915b58.cb42d24b.css">
    <link rel="stylesheet" type="text/css" href="templates/quanlycongviec/chunk-725450a4.9810f84b.css">
    <link rel="stylesheet" type="text/css" href="templates/quanlycongviec/chunk-743c4242.399b340b.css">
    <link rel="stylesheet" type="text/css" href="templates/quanlycongviec/chunk-f76cbccc.399b340b.css">
    <link rel="stylesheet" type="text/css" href="templates/quanlycongviec/chunk-f88ebd90.399b340b.css">
    <link rel="stylesheet" type="text/css" href="templates/quanlycongviec/chunk-57c7544e.399b340b.css">
    <link rel="stylesheet" type="text/css" href="templates/quanlycongviec/chunk-06cf51d2.1415394e.css">
    <link rel="stylesheet" type="text/css" href="templates/quanlycongviec/chunk-438e96af.399b340b.css">
    <link rel="stylesheet" type="text/css" href="templates/quanlycongviec/chunk-328b5df0.399b340b.css">
    <link rel="stylesheet" href="templates/quanlycongviec/OneSignalSDKStyles.css">
    <link rel="stylesheet" type="text/css" href="templates/quanlycongviec/chunk-67dfcc79.1415394e.css">
    <link rel="stylesheet" type="text/css" href="templates/quanlycongviec/chunk-10608104.399b340b.css">
    <link rel="stylesheet" type="text/css" href="templates/quanlycongviec/chunk-4b33a759.b73dd199.css">
    <link rel="stylesheet" type="text/css" href="templates/quanlycongviec/chunk-4579746e.399b340b.css">
    <link rel="stylesheet" type="text/css" href="templates/quanlycongviec/chunk-7be318d4.399b340b.css">
    <link rel="stylesheet" type="text/css" href="templates/quanlycongviec/chunk-25dc20c0.399b340b.css">
    <link rel="stylesheet" type="text/css" href="templates/quanlycongviec/chunk-7e45e229.399b340b.css">
    <link rel="stylesheet" type="text/css" href="templates/quanlycongviec/chunk-70b0d250.399b340b.css">
    <link rel="stylesheet" type="text/css" href="templates/quanlycongviec/chunk-6777983f.399b340b.css">
    <link rel="stylesheet" type="text/css" href="templates/quanlycongviec/chunk-1286435e.bf319ec9.css">
    <style type="text/css">
        .vue-star-rating-star[data-v-ef4bc576] {
            overflow: visible !important
        }
        
        .vue-star-rating-star-rotate[data-v-ef4bc576] {
            transition: all .25s
        }
        
        .vue-star-rating-star-rotate[data-v-ef4bc576]:hover {
            transition: transform .25s;
            transform: rotate(-15deg) scale(1.3)
        }
    </style>
    <style type="text/css">
        .vue-star-rating-star[data-v-fde73a0c] {
            display: inline-block
        }
        
        .vue-star-rating-pointer[data-v-fde73a0c] {
            cursor: pointer
        }
        
        .vue-star-rating[data-v-fde73a0c] {
            display: flex;
            align-items: center
        }
        
        .vue-star-rating-inline[data-v-fde73a0c] {
            display: inline-flex
        }
        
        .vue-star-rating-rating-text[data-v-fde73a0c] {
            margin-left: 7px
        }
        
        .vue-star-rating-rtl[data-v-fde73a0c] {
            direction: rtl
        }
        
        .vue-star-rating-rtl .vue-star-rating-rating-text[data-v-fde73a0c] {
            margin-right: 10px;
            direction: rtl
        }
        
        .sr-only[data-v-fde73a0c] {
            position: absolute;
            left: -10000px;
            top: auto;
            width: 1px;
            height: 1px;
            overflow: hidden
        }
    </style>
    <link rel="stylesheet" type="text/css" href="templates/quanlycongviec/chunk-6cd8f314.9b200234.css">
    <link rel="stylesheet" type="text/css" href="templates/quanlycongviec/chunk-bb004184.399b340b.css">
    <link rel="stylesheet" type="text/css" href="templates/quanlycongviec/chunk-1a918b02.399b340b.css">
</head>

<body class=""><noscript><strong>We're sorry but myXteamWorkDone doesn't work properly without JavaScript enabled.
            Please enable it to continue.</strong></noscript>
    <div id="app">
        <div data-v-59bf962b="" class="m-page">
            <div data-v-59bf962b="" id="myxteam-body" class="m-body myxteam-body" style="height: ; background-image: url(&quot;https://newmyxteam.blob.core.windows.net/background/247599/full/f4325927-3921-4d59-8da7-40a66ea87ceb.jpg&quot;);">
                <!---->
                <div data-v-59bf962b="">
                    <!---->
                    <!---->
                </div>
                <div data-v-42edc5dc="" data-v-59bf962b="" class="myxteam-left-menu">
                    <div data-v-42edc5dc="" class="myxteam-asidebar">
                        <div data-v-42edc5dc="" aria-expanded="true" class="myxteam-dropdown m-dropdown--align-left">
                            <a title="Workspace" class="sidebar-logo">
                                <div class="sidebar-logo-image    white"><span>N</span></div>
                            </a>
                        </div>
                        <div data-v-42edc5dc="" class="sidebar-control sidebar-control-top">
                            <ul data-v-42edc5dc="" class="sidebar-control-ul">
                                <li data-v-42edc5dc="" title="Tổng quan" class="sidebar-control-li">
                                    <!-- <a data-v-42edc5dc="" href="https://workdone.myxteam.com/dashboard" class="sidebar-control-action"> -->
                                    <div data-v-4ae9b625="" data-v-42edc5dc="" class="svg-container sidebar-control-icon"><svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" height="35px" width="35px" class="svg-icon-class">
                                            <defs>
                                                <style>
                                                    .cls-1 {
                                                        fill: #4d4d4d
                                                    }

                                                    .cls-2 {
                                                        fill: none
                                                    }
                                                </style>
                                            </defs>
                                            <g id="dashboard">
                                                <g id="Path">
                                                    <path class="cls-1"
                                                        d="M223.38,214.06H134.31A26.34,26.34,0,0,1,108,187.75V134.31A26.34,26.34,0,0,1,134.31,108h89.07a26.34,26.34,0,0,1,26.31,26.31v53.44A26.34,26.34,0,0,1,223.38,214.06ZM134.31,119A15.38,15.38,0,0,0,119,134.31v53.44a15.38,15.38,0,0,0,15.36,15.36h89.07a15.38,15.38,0,0,0,15.36-15.36V134.31A15.38,15.38,0,0,0,223.38,119Z">
                                                    </path>
                                                </g>
                                                <g id="Path-2">
                                                    <path class="cls-1"
                                                        d="M223.38,404H134.31A26.34,26.34,0,0,1,108,377.69V253.07a26.33,26.33,0,0,1,26.31-26.3h89a25.82,25.82,0,0,1,18.61,7.66A26.12,26.12,0,0,1,249.69,253V377.69A26.34,26.34,0,0,1,223.38,404ZM134.31,237.72A15.37,15.37,0,0,0,119,253.07V377.69a15.38,15.38,0,0,0,15.36,15.36h89.07a15.38,15.38,0,0,0,15.36-15.36V253a15.35,15.35,0,0,0-15.36-15.31H134.31Z">
                                                    </path>
                                                </g>
                                                <g id="Path-3">
                                                    <path class="cls-1"
                                                        d="M377.69,404h-89a26.34,26.34,0,0,1-26.31-26.31V324.34A26.34,26.34,0,0,1,288.66,298l89-.09A26.34,26.34,0,0,1,404,324.25v53.44A26.34,26.34,0,0,1,377.69,404Zm-89-95a15.38,15.38,0,0,0-15.36,15.36v53.35a15.38,15.38,0,0,0,15.36,15.36h89a15.38,15.38,0,0,0,15.36-15.36V324.25a15.37,15.37,0,0,0-14-15.29l-1.4,0Z">
                                                    </path>
                                                </g>
                                                <g id="Path-4">
                                                    <path class="cls-1"
                                                        d="M377.69,285.32h-89A26.33,26.33,0,0,1,262.35,259V134.31A26.34,26.34,0,0,1,288.66,108h89A26.34,26.34,0,0,1,404,134.31V259A26.33,26.33,0,0,1,377.69,285.32ZM288.66,119a15.38,15.38,0,0,0-15.36,15.36V259a15.37,15.37,0,0,0,15.36,15.35h89A15.37,15.37,0,0,0,393.05,259V134.31A15.38,15.38,0,0,0,377.69,119Z">
                                                    </path>
                                                </g>
                                            </g>
                                            <rect class="cls-2" width="512" height="512"></rect>
                                        </svg></div>
                                    </a>
                                </li>
                                <li data-v-42edc5dc="" class="sidebar-control-li"><a data-v-42edc5dc="" class="sidebar-control-action"><i data-v-42edc5dc=""
                                            class="fa-users sidebar-control-icon"></i></a></li>
                                <li data-v-42edc5dc="" class="sidebar-control-li">
                                    <div data-v-42edc5dc="">
                                        <!---->
                                        <a data-v-42edc5dc="" class="sidebar-control-action">
                                            <div data-v-4ae9b625="" data-v-42edc5dc="" class="svg-container sidebar-control-icon"><svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" height="35px" width="35px" class="svg-icon-class">
                                                    <defs>
                                                        <style>
                                                            .cls-1 {
                                                                fill: #4d4d4d
                                                            }

                                                            .cls-2 {
                                                                fill: none
                                                            }
                                                        </style>
                                                    </defs>
                                                    <title>Artboard 1 copy 6</title>
                                                    <path class="cls-1"
                                                        d="M384.69,379.1l-63.61-63.83c19.23-21.28,29.59-47.11,29.59-77.51,0-63.82-50.3-115.5-112.42-115.5s-112.42,51.68-112.42,115.5,50.3,115.5,112.42,115.5c29.58,0,54.73-10.64,75.44-30.39l62.12,65.35a5.35,5.35,0,0,0,4.44,1.52,6.45,6.45,0,0,0,5.92-6.08,5.68,5.68,0,0,0-1.48-4.56m-146.44-38c-56.21,0-100.58-45.59-100.58-103.34S182,134.42,238.25,134.42,338.83,180,338.83,237.76,294.46,341.1,238.25,341.1">
                                                    </path>
                                                    <rect class="cls-2" width="512" height="512"></rect>
                                                </svg></div>
                                        </a>
                                    </div>
                                </li>
                                <div data-v-42edc5dc="" class="sidebar-break"></div>
                                <li data-v-42edc5dc="" class="sidebar-control-li">
                                    <div data-v-42edc5dc=""><span data-v-42edc5dc="" class="sidebar-control-count">1
                                            <!---->
                                        </span>
                                        <a data-v-42edc5dc="" title="Đề cập đến bạn" id="exPopoverCopyMention" class="sidebar-control-action">
                                            <div data-v-4ae9b625="" data-v-42edc5dc="" class="svg-container sidebar-control-icon"><svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" height="35px" width="35px" class="svg-icon-class">
                                                    <defs>
                                                        <style>
                                                            .cls-1 {
                                                                fill: #4d4d4d
                                                            }

                                                            .cls-2 {
                                                                fill: none
                                                            }
                                                        </style>
                                                    </defs>
                                                    <path class="cls-1"
                                                        d="M253.51,177.31q18.76,0,34.08,14.55l1-4.87a8.63,8.63,0,0,1,8.48-7h29.66a8.64,8.64,0,0,1,8.51,10.15L324.35,251.4q-4.59,28.35-4.59,43t4.5,21.92q4.49,7.28,17.9,7.28,17.61,0,33.12-23t15.51-61.27q0-57.24-33.41-90t-92.77-32.74q-59.34,0-100.89,39.92T122.17,264q0,34.47,12.35,60.5t33,41q41.16,29.1,96.11,29.1t93.24-32.55l6.32,7.08q-17.24,15.9-44,25.37a166.4,166.4,0,0,1-55.9,9.48,193.49,193.49,0,0,1-56.3-8.23,155.66,155.66,0,0,1-49-24.7q-21.83-16.47-34.37-43.56t-12.54-61.94q0-68.73,43.37-113.15T266.72,108q60.12,0,97.17,33.89t37.05,94.58q0,49-20.59,73.71t-59.64,24.7q-29.28,0-42.75-15.83a8.71,8.71,0,0,0-13.83.26q-10.9,14.81-31.39,14.8-27.86,0-42.79-17.23T175,274.57q0-47.48,24.32-72.37T253.51,177.31Zm18.76,104L285,201.8a8.43,8.43,0,0,0-2.68-7.75q-10-8.51-21-8.51-12.91,0-21.34,12.16t-12.26,30.92a318.23,318.23,0,0,0-7.08,65.48q0,31.78,19.91,31.78,11.49,0,20.11-12.54T272.27,281.27Z">
                                                    </path>
                                                    <rect class="cls-2" width="512" height="512"></rect>
                                                </svg></div>
                                        </a>
                                    </div>
                                </li>
                                <li data-v-42edc5dc="" class="sidebar-control-li">
                                    <div data-v-42edc5dc=""><span data-v-42edc5dc="" class="sidebar-control-count sidebar-notify-count">6
                                            <!---->
                                        </span>
                                        <a data-v-42edc5dc="" title="Thông báo" id="exPopoverCopyNotify" class="sidebar-control-action">
                                            <div data-v-4ae9b625="" data-v-42edc5dc="" class="svg-container sidebar-control-icon"><svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" height="35px" width="35px" class="svg-icon-class">
                                                    <defs>
                                                        <style>
                                                            .cls-1 {
                                                                fill: #4d4d4d
                                                            }

                                                            .cls-2 {
                                                                fill: none
                                                            }
                                                        </style>
                                                    </defs>
                                                    <path class="cls-1"
                                                        d="M256,404h0a46.87,46.87,0,0,1-45.77-37.36l-1.84-9.08h95.22l-1.84,9.08A46.87,46.87,0,0,1,256,404Zm-36.19-37.16a37.43,37.43,0,0,0,72.38,0Z">
                                                    </path>
                                                    <path class="cls-1"
                                                        d="M358.17,350.42H153.84A21.86,21.86,0,0,1,132,330.73a20.43,20.43,0,0,1-.11-2.23,21.93,21.93,0,0,1,7.67-16.68l1.12-.83a83,83,0,0,0,28.36-62.49V213.94a86.94,86.94,0,0,1,65.8-84q0-.36,0-.72a21.18,21.18,0,0,1,42.36,0q0,.36,0,.72a86.94,86.94,0,0,1,65.8,84V248.5a83,83,0,0,0,28.5,62.58,7.27,7.27,0,0,1,1,.77,21.89,21.89,0,0,1,7.64,16.65,20.74,20.74,0,0,1-.11,2.24A21.86,21.86,0,0,1,358.17,350.42ZM256,117.28a11.91,11.91,0,0,0-11.89,11.9,9.1,9.1,0,0,0,.48,2.26l1.54,5.6-4.92,1a77.65,77.65,0,0,0-62.88,75.95V248.5a92.29,92.29,0,0,1-31.67,69.57l-.77.62a12.65,12.65,0,0,0-4.71,9.81,11,11,0,0,0,.07,1.28,12.62,12.62,0,0,0,12.58,11.37H358.16a12.62,12.62,0,0,0,12.59-11.36,11.27,11.27,0,0,0,.07-1.29,12.63,12.63,0,0,0-4.42-9.62l-.06-.05,3.07-3.48-3.09,3.46-.8-.58a92.43,92.43,0,0,1-31.85-69.73V213.94A77.65,77.65,0,0,0,270.79,138l-4.92-1,1.54-5.6a9.1,9.1,0,0,0,.48-2.26A11.91,11.91,0,0,0,256,117.28Z">
                                                    </path>
                                                    <rect class="cls-2" width="512" height="512"></rect>
                                                </svg></div>
                                        </a>
                                    </div>
                                </li>
                                <li data-v-42edc5dc="" class="sidebar-control-li sidebar-control-li-add">
                                    <div data-v-42edc5dc=""><a id="exPopoveNew" class="sidebar-control-action add-control"><i
                                                class="fa fa-plus sidebar-control-icon"></i></a>
                                        <!---->
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div data-v-42edc5dc="" class="sidebar-control sidebar-control-bottom">
                            <ul data-v-42edc5dc="" class="sidebar-control-ul">
                                <li data-v-42edc5dc="" class="sidebar-control-li">
                                    <!-- <a data-v-42edc5dc="" href="https://workdone.myxteam.com/templates/all" class="sidebar-control-action" title="Kế hoạch mẫu"><img data-v-42edc5dc="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIAAAACACAYAAADDPmHLAAAAAXNSR0IArs4c6QAADk5JREFUeF7tXQtUVVUa/vYFlIfALbn4QsUS03ASrfG1KkFtTZmzuuVkzlqlkJlo2ahTy2YMtaAmV2bNMh89DHzMlK5KnNSclKC1eviowEJ8YErqqIDAvTxF4O5Z+8BR5D7Y595z4B7uPmu5lsB//r3////2///7349DIB6f1gDxaemF8BAA8HEQCAAIAPi4BnxcfNU8gClmfhwhtocoRTwhiAZItI/rVqH4tIhSFBGCHEoNO0sL1+UpZOAWuccAiBiczAy+nBAS71YPxEsONUApzaEUL18+tSFHSxV5BABTTHI6ISSRdbBHSHf652njyfgxQzB8aBQGRPXUst9djvfZ82XIP34eX+w7gj37cml1Tb1kG0ppRmnhhiStBHYLAMboRGNAQFA2IYhjhk9OmkSenjUR4WHBWvXTp/haK2vx3qavsCE9SwIC8wYNDVcethRlWNRWhFsAMMXMy2XGD+0RiMytizF8WJTa/RL8AOQfOw/z46tRVX2FeYKc0sINCWorRjEAZLfPjP9jdpoY9WpbpA0/5g3uTHhJBoHq4UARAFjCZzCQbDHyNbZ6G/atPYHNRhPUTAwVAcAUk5zNsv3nn52CFxZM7Vgt+Hhrb6zZhVXv7FE9FHADoHmeT3OF6+8cJN4YCshIteoE3ACIHJK8AiDL58xMQNrSRztHCz7e6oIlm7E98wCbHL5ccnLDCjXUwQ0AU8y8HEIwIX3tXEyZPEKNtgUPhRrYs/8Ikp55F5Ti69LC9aoU3rgBEDkk+Qwr7x7OShVFHoWGU4ucJYOTzK8xAOSVFq4fqQZfBQCYR1mDxSfWudXuudI6lFqvoLK2EdV1jW7x0PtLPYL8ERbsj0hjIKIigtwSp9dt86X3Sk6u57adq4a4mUQOcQ8A9Q1NOHLaihJLvVsCd9WXet3UHSNuMaKbv0GRiLoCwGVrPX46ZcHVRpsiIX2FOLCbAaMG34SbQ7txi6wrAPx0qgIXyq5wC+eLhH17Bkog4H10A4ALZXXS6BdP+xoYNdiIvj35cgLdAOC7gjKUV11tX3pBIYWA8bfzLZ/rBgBZuSWou9okzMuhgaBufpg0MpKDEtAFACil2H3oEpdAggjS1uwHRveGgbQ/KdMFAJhRvzl6GZbqBmFfDg0YewTg7tgIDkqdeAAmyc9nrDhbUssllK8TDYgMxh2DwrnUoBsPYKm+im+OlnEJ5etE9wyPQHhIAJcadAMA4QW47IlBvUMQOzCMjxg6CgFMoqsNNmT/XIKGRmkZQTxtNBAYYED8CBP8/fjLwbryABIIGm04ctqC4gqxFtDa/pHG7hh5qxEBXXktoLXA5y/XocQiVgPZaqApPBD9TXyVv7ZuU3ceQPh9dTUgAKCuPnXHTQBAdyZTt8MCAOrqU3fcBAB0ZzJ1OywAoK4+dcdNNwCw1jTipQ+OY8/BYlTWeL4JdMbEfkh7aijCQ/ztjMYOTaS89gm+2H8ElVV1Hhv1sYfHIvXvf3J87rHRApxeBJRlAk0qbHiJTARueQvwN3L1WzcAeOLVXOw9VMIlFC/RYxP74p2//M6OfNb8Ddib9TMvGy666eaxWLNypj1tgRko38nFg5sochYwJIOLXDcAMD30Xy6BlBCFhfjj139PsntFVooSXu3RhoUGofCHN+3Jvml/zb493nZ/9zMC4yq4XvNpADANle78Q4cAgDXi8AyEFgBgjd3Nt14iACAAIA0Arz8YokUIEB5AR8vBAgBcIf06kQgBfAoTOYBOzgYKD8AH6GtUwgPwKUx4AOEBxDRQzAJuxIAWhSBRB2gzzpTeDyByAL6QJnIAhXoSOYDIAUQOIHIAkQOIUnArDIgkUGEcbUXOvbYpksAWrYnVQL5r4sQsQOGoFJVAPoWJWYCYBYhZgJgFiFmAmAWIWQB3Au8quHIzEbMAMQtQdFm0mAXwJbViLUChnsQsQMwCxCxAzALELEDMAnQ0C7DWBmD79wOwN68P8s813wc4vL8V98ddxPRxZxEe3CAOhvCmAnrLAb47EYGFGaNwrjzEoYj9b67B24k/YfzsUi4V+PTJoNBgf5z+qGPOBrLP4536cbW9URQsBjHjT1t9j8RjZFws5sx5DDExg6SfD+edwdbN21CQf1T6+dP0VzB+9PB2QaAbAPj66WDm9u9LTZBG/uzZ0zHnqRk3GLfJBvyvAtj+r4/xyUfb0b+vCfs+XY3wMMeeQn5ZNwBg9wM8+/Yv+Da/HFW1nt8PwI6Gv/rUMKf3Azz34mZ8e/Ck9I1dTx92NDxtqYv7AU4mAtYcoMnqtKn3sm7F8u13SCN//fpUh3QXLUBDE7DixRTJE7y8JAlPz/yjy+7rBgCeGkHv7z8yKwXf/3AU69a+glGjHLv28mqguh4o+CUfK/62DOPuisVnmxyDRXceQO8G9LT/t419HJVVtdj35RaEhjp265ZaoLIOqKmuQdKMJxAWGowTB7YKD+Cp8r3h/T6xj0jdOPD9Z067IwOAEUyf2kx/8ahzevZ3EQK8wbocfRAA4FBSVyYRAOjK1uWQzRMAWCtrsH1nNvZmHUT+8TNSa8OHDsL9k8bgpbRdAAzef0NIQxPF0d+suFR+BY1NfPffuNJrlCkIsQPDEeBnv4XBG9ua8+QzbuUArCC0cOkanLvguDJI4AdbUziKT2zk3svhSq/cTJRuCDl8sgLFFZ7PyVt3nn1wOe5W+/v0vLEtdwEgy9u2cnjk6Bl8uPF65RA2mnDpeGYOhzNySaIZAHYdvOhp3+ze9/cjuP+u3na/98a2PAGAo8ohE5pVDj/a0lw5NBBytrbGNsJSlGkxRpuN3YMwiwBmShDHaAlFHgUy6+uwidE4M4YAgBPNeAo2dwHgqnIoF47kyiGldBEzNAjSQUi0Q1EoLQJFkjNvoRkAvNEtK3FJnoYbdwHgqnJY1wCUVl6vHFJQCwGRYmJ7i03OQoZmAGCJWd6vFpRV1quTBEYEITbaeRLobW25CwBXlcP6RqDYer1yKAPa2WLThQpgW8tiEygtulKHkW3DgWYAUDLauiKtu9NAV5VDGQCtK4euQkZZFVBz9fpiEwsZxccy326tbwEAjdDXUQBQEjJA8fWlYzviBQA0Mnprth0FACUhg+UMxQWZNwkA6BQAjhaPXIUMJubZlq/3yotNlwp23OD1NQsB3lid47W7GlVHd5NApauHXgsAMQ10rxTcZQDgjdU5Xg/A6DqrECQA4MJKnhpFAADosBxAhAAfDwG+Ugmsra3D+XPnceJEISJ69kS/Af0woH8UeJLAqitARU2zX5KzdFchQCm92rOAIgADD2elYkBUTyXetEvSsk0bbN1+71eH7ORje/zl9XyllT016VUFgClmXg4hmJC+di6mTB7RJY3KKxTbpfPkgtclI4eEBGNIzCCMujMWFy+U4GRhEU6dYmOl+WlvmsaWeNkhER4PwPgppVexDpC8AiDL58xMQNrSR3l11eXo2Mi/b9piyfisDr9s2QL06RN5g5wfb/sc77+/DTU1te0CwEYBVrNf8tcUBAYA69a5PheglF41AJhi5scRQnPZ9/R++CrV8Vc1u5y57QVK+cdGfLB1NwYPjsbWLQ7ODra8crLwDObNS0HWftf7/LVWmWoAYB2Vw8Dzz07BCwumat13r+Q/+r650ujfvPlNyfW7ehgI2qPRWkhVARAxODneYCDZzAvs2LIIw4dFad1/r+LP3P/QcU9Icb+zRzavYlQFQIsXyCAEs3wxFHx3KB/Tkpa5PPDJa5iOolMdABIIhiTnEZARvuYJZA/Qo0cw9u/r3NjOCyBNAGCMTjQGdAvMYSAI7RFIk5MmETY7CA8L5u2Xbul+P3kuzl/kywG8QUhNACALZoqZJ4UD9jPzBg9MHiH969+vZ5fND1at/RhvrtuOmJhobNnsfBbgDcZnfdAUAKwBlhgSQlawIpG3CK11P4jfZRDSiAenJCAlZYHWzXnEX3MAXPcGrE5gM1NK4kGokYUHj3ruzS+TBhBDOQihXg+CDgOAN9tLi76ZbjfHGShh5fFwb/YEAgBaWL+Fpx5AwAAg30BCKazFx3bccLiSe0+ghnrUNWtvBoF8E5l8B5FH28J1bSWNO++tIJAPkggAaAwAqTjmhTmBvIEk/d2N+OLz3aCU/rP4WObC1uoQIUBFcHgbCOR7CF94bjF+O10EG6UPlxzLzBQAUNHobVl5Cwjk+F9aXIJnZifDUQLI+i48gAZg8AYQsFPELAe45v6BncUFO8xtxRUA0AAAnZ0TyMmfPPolEW100KXjmdf3qrXILQCgEQA6CwRsyxiL/SwEvJH6Og4fPARQuunSscxER6IKAGgIgLYgcHb3j5pdYDeIsJtEdu/8HJveT5diP6E0ztHoFzmAmpp3wav3UHM8DCSbkaxcuQQT7h2jScvyHUKHDhzEqrSVLZ7fPvMXswBN1O+aaa9h5oWEkLdCQoLo+vVpRO29guwmELa7mBl/3VtrUFtTy+b9djeCiCSwE4wvN9l7mDkDhMxiIFi8aDZ58MGJqvSG3TjO7g7Y859dyHjvw2aeLuK+8ACqqN09JjII2Nv33jNa2k/g7Dp5nhbYqC86VyIZXkr4JNu3P/Jl3iIJ5NGyyjSRw8xmAsJ2U4X36hVhi58w1jBjxlS7AyaummVfGik4VYKdn+2SRn6z4WGloIltq32u+AgAqGxcXna9h5qjqYFkEuDaxhm2zSx+wphrXxhhh09k71BVVXPtyNmXWQeRm5uPotOtpvWUbgLFCmfZvrN+CQDwWkwjOlY19KNYSEHMzCMoaYaNeBDkEBtdqNTwIgQo0XQH0LL7fgMDYYYB0RQkjlCwjRvRIBgou3cC5En/B2X3AOcocfXCA3SAEfXYhAgBerSain0WAFBRmXpkJQCgR6up2Of/A6ii/gjrIMwMAAAAAElFTkSuQmCC
                                    class="sidebar-control-icon template-icon"></a>" -->
                                </li>
                                <!-- <li data-v-42edc5dc="" class="sidebar-control-li"><a data-v-42edc5dc="" href="https://workdone.myxteam.com/report/customfield" class="sidebar-control-action" title="Báo cáo"><i data-v-42edc5dc="" class="fa-user-chart sidebar-control-icon"></i></a></li> -->
                                <li data-v-42edc5dc="" class="sidebar-control-li">
                                    <!-- <a data-v-42edc5dc="" href="https://workdone.myxteam.com/drive/listview" class="sidebar-control-action" title="Drive"> -->
                                    <div data-v-4ae9b625="" data-v-42edc5dc="" class="svg-container sidebar-control-icon"><svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" height="35px" width="35px" class="svg-icon-class">
                                            <defs>
                                                <style>
                                                    .cls-1 {
                                                        fill: #4d4d4d
                                                    }

                                                    .cls-2 {
                                                        fill: none
                                                    }
                                                </style>
                                            </defs>
                                            <rect class="cls-2" width="512" height="512"></rect>
                                            <path class="cls-1"
                                                d="M419.36,307.43a2.34,2.34,0,0,0-.09-.38l-.55-1.91L365.08,123.4A22.78,22.78,0,0,0,343.54,108H169.25a22.81,22.81,0,0,0-21.54,15.44L93.37,304.91l-.68,2.3a0,0,0,0,0,0,0s0,.05,0,.08a.19.19,0,0,0,0,.08,13.71,13.71,0,0,0-.26,2.66V390a14,14,0,0,0,14,14H405.6a14,14,0,0,0,14-14V310.06A14.13,14.13,0,0,0,419.36,307.43ZM157.68,126.74a12.26,12.26,0,0,1,11.57-8.24H343.54a12.19,12.19,0,0,1,11.54,8.13l50,169.42H107ZM409.11,390a3.51,3.51,0,0,1-3.51,3.5H106.4a3.51,3.51,0,0,1-3.51-3.5V310.06a2.86,2.86,0,0,1,0-.42,3.4,3.4,0,0,1,.34-1.16,3.53,3.53,0,0,1,3.14-1.93H405.6a3.53,3.53,0,0,1,3.14,1.93,3.58,3.58,0,0,1,.35,1.19v0c0,.12,0,.23,0,.36Z">
                                            </path>
                                            <path class="cls-1"
                                                d="M371.38,327a23,23,0,1,0,23,23A23,23,0,0,0,371.38,327Zm0,35.49a12.5,12.5,0,1,1,12.5-12.5A12.52,12.52,0,0,1,371.38,362.52Z">
                                            </path>
                                            <path class="cls-1"
                                                d="M308,327a23,23,0,1,0,23,23A23,23,0,0,0,308,327Zm0,35.49A12.5,12.5,0,1,1,320.48,350,12.52,12.52,0,0,1,308,362.52Z">
                                            </path>
                                        </svg></div>
                                    </a>
                                </li>
                                <li data-v-42edc5dc="" class="sidebar-control-li">
                                    <a data-v-42edc5dc="" title="myXteam WorkChat" class="sidebar-control-action"><img data-v-42edc5dc="" src="templates/quanlycongviec/workchat.93f00419.png" class="sidebar-control-icon workchat-icon"></a>
                                </li>
                                <div data-v-42edc5dc="" class="sidebar-break"></div>
                                <li data-v-42edc5dc="" class="sidebar-control-li">
                                    <a title="Hỗ trợ" id="exPopoveSupport" class="sidebar-control-action">
                                        <div data-v-4ae9b625="" class="svg-container sidebar-control-icon"><svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" height="35px" width="35px" class="svg-icon-class">
                                                <defs>
                                                    <style>
                                                        .cls-1,
                                                        .cls-3 {
                                                            fill: #4d4d4d
                                                        }

                                                        .cls-1 {
                                                            fill-rule: evenodd
                                                        }

                                                        .cls-2 {
                                                            fill: none
                                                        }
                                                    </style>
                                                </defs>
                                                <path class="cls-1"
                                                    d="M256,111.67c-80.45,0-144.49,64-144.49,144.33s64,144.33,144.49,144.33,144.49-64,144.49-144.33S336.45,111.67,256,111.67m0,275.53c-72.24,0-131.35-59-131.35-131.2S183.76,124.8,256,124.8s131.35,59,131.35,131.2S328.24,387.2,256,387.2">
                                                </path>
                                                <path class="cls-3"
                                                    d="M256,296.51a6.84,6.84,0,0,1-5.12-2,7.11,7.11,0,0,1-2-5.28,40.27,40.27,0,0,1,3.57-15.71,42.22,42.22,0,0,1,10-14.46c3.77-3.54,7.37-6.93,10.78-10.25a43.53,43.53,0,0,0,8.32-11q3.19-6,3.2-15.18a25.6,25.6,0,0,0-3.46-13.07,25,25,0,0,0-9.79-9.39,30,30,0,0,0-14.73-3.5A31.25,31.25,0,0,0,241,200.42a26.07,26.07,0,0,0-10.14,10.32,31.26,31.26,0,0,0-3.57,15.18,6.62,6.62,0,0,1-6.94,7,7.11,7.11,0,0,1-5.13-1.93,6.61,6.61,0,0,1-2-5,44.08,44.08,0,0,1,5.5-22.21A39.23,39.23,0,0,1,234,188.64a45.87,45.87,0,0,1,22.74-5.5,44.35,44.35,0,0,1,21.59,5.21,38.83,38.83,0,0,1,20.48,35c0,6.82-1.24,12.61-3.66,17.36a52.52,52.52,0,0,1-9.61,13.06q-5.94,6-13.07,12.54a24.58,24.58,0,0,0-7.5,11.53,42,42,0,0,0-1.82,11.32,7.11,7.11,0,0,1-2,5.28A6.83,6.83,0,0,1,256,296.51Zm0,32.35a10.12,10.12,0,0,1-7.59-3.11,10.34,10.34,0,0,1-3-7.5,10.45,10.45,0,0,1,3.11-7.67,10.22,10.22,0,0,1,7.5-3.11,10.51,10.51,0,0,1,7.57,3.11,10.27,10.27,0,0,1,3.21,7.67,10.05,10.05,0,0,1-3.21,7.5A10.51,10.51,0,0,1,256,328.86Z">
                                                </path>
                                                <rect class="cls-2" width="512" height="512"></rect>
                                            </svg></div>
                                    </a>
                                    <!---->
                                </li>
                                <li data-v-42edc5dc="" class="sidebar-control-li">
                                    <a id="exPopoverUserProfile" title="Hồ sơ cá nhân"><img src="templates/quanlycongviec/no-avatar.png" class="sidebar-profile-avatar"></a>
                                    <!---->
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div data-v-42edc5dc="" class="myxteam-sidebar-panel">
                        <div data-v-42edc5dc="">
                            <div data-v-42edc5dc="">
                                <div data-v-42edc5dc="" class="workspace-header"><span data-v-42edc5dc="" class="workspace-title">Workspace</span></div>
                                <div data-v-42edc5dc="" class="myxteam-sidebar-select-control">
                                    <div data-v-42edc5dc="" class="m-input--solid myxteam-sidebar-select vue-treeselect vue-treeselect--single vue-treeselect--has-value vue-treeselect--open-below workspace-admin">
                                        <input type="hidden" name="filterworkspace" value="22720">
                                        <div class="vue-treeselect__control">
                                            <div class="vue-treeselect__value-container">
                                                <div class="vue-treeselect__single-value"><label><a
                                                            title="Niceworld Workspace"
                                                            class="label-workspace_name_loaded"><span
                                                                class="label-user-name">Niceworld
                                                                Workspace</span></a></label></div>
                                                <div class="vue-treeselect__placeholder vue-treeselect-helper-zoom-effect-off vue-treeselect-helper-hide">
                                                    Chọn</div>
                                                <div tabindex="0" class="vue-treeselect__input-container"></div>
                                            </div>
                                            <div class="vue-treeselect__control-arrow-container"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 292.362 292.362" class="vue-treeselect__control-arrow">
                                                    <path
                                                        d="M286.935 69.377c-3.614-3.617-7.898-5.424-12.848-5.424H18.274c-4.952 0-9.233 1.807-12.85 5.424C1.807 72.998 0 77.279 0 82.228c0 4.948 1.807 9.229 5.424 12.847l127.907 127.907c3.621 3.617 7.902 5.428 12.85 5.428s9.233-1.811 12.847-5.428L286.935 95.074c3.613-3.617 5.427-7.898 5.427-12.847 0-4.948-1.814-9.229-5.427-12.85z">
                                                    </path>
                                                </svg></div>
                                        </div>
                                        <div class="vue-treeselect__menu-container" style="z-index: 999;">
                                            <!---->
                                        </div>
                                    </div>
                                    <div data-v-42edc5dc="" class="workspace-control">
                                        <div data-v-42edc5dc="" aria-expanded="true" class="myxteam-dropdown m-dropdown--align-left"><span class="fas fa-ellipsis-v m-font-success"></span>
                                            <!---->
                                            <!---->
                                            <!---->
                                            <div>
                                                <!---->
                                                <!---->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div data-v-42edc5dc="">
                                    <div class="sidebar-panel-search">
                                        <div data-v-fdbdba7e="" class="clear-fix template-search">
                                            <div data-v-fdbdba7e="" class="m-input-icon input-group-sm m-input-icon--right"><input data-v-fdbdba7e="" type="text" placeholder="Tìm team/kế hoạch thuộc workspace..." class="form-control m-input bold">
                                                <!----><span data-v-fdbdba7e="" class="m-input-icon__icon m-input-icon__icon--right clear-icon hide-remove"><span
                                                        data-v-fdbdba7e=""><i data-v-fdbdba7e=""
                                                            class="fa-times custom-remove-search"></i></span></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="sidebar-panel-workspace">
                                        <div class="__vuescroll hasVBar" style="height: 100%; width: 100%; padding: 0px; position: relative; overflow: hidden;">
                                            <div class="__panel" style="position: relative; box-sizing: border-box; height: 100%; overflow: hidden scroll; margin-right: -8px;">
                                                <div class="__view" style="position: relative; box-sizing: border-box; min-width: 100%; min-height: 100%; width: 100%;">
                                                    <div style="height: 446px;">
                                                        <div class="panel-workspce-team">
                                                            <div data-v-29c12118="" class="team-item">
                                                                <div data-v-29c12118="" class="team-item-info">
                                                                    <div data-v-29c12118="" class="team-info-icon"><span data-v-29c12118="" class="fa fa-star team-option star-favorite-team"></span>
                                                                    </div>
                                                                    <div data-v-29c12118="" class="team-info-name">
                                                                        FAVORITIES</div>
                                                                    <div data-v-29c12118="" class="team-info-action"><a data-v-29c12118="" class="team-info-action-item"><i
                                                                                data-v-29c12118=""
                                                                                class="action-chevron fas"></i></a>
                                                                    </div>
                                                                </div>
                                                                <div data-v-29c12118="" class="team-project-wrapper" style="height: auto;">
                                                                    <ul data-v-29c12118="" class="team-project-list" style="">
                                                                        <li data-v-3ebfc30e="" data-v-29c12118="" id="favorite-project-list-item-517417" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Căn hộ
                                                                                    thương mại chị hoa hòa khánh </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div><span data-v-3ebfc30e=""
                                                                                        class="fa-comment project-option"
                                                                                        style="font-size: 0.8rem;"></span><span
                                                                                        data-v-3ebfc30e=""
                                                                                        class="fa fa-star project-option"
                                                                                        style="color: orange; font-size: 0.8rem;"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="panel-workspce-team">
                                                            <div data-v-568dcfec="" class="team-item">
                                                                <div data-v-568dcfec="" class="team-item-info">
                                                                    <div data-v-568dcfec="" class="team-info-icon">
                                                                        <div data-v-4ae9b625="" data-v-568dcfec="" class="svg-container sidebar-control-icon team-icon">
                                                                            <svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 418 512" height="12px" width="12px" class="svg-icon-class">
                                                                                <defs>
                                                                                    <style>
                                                                                        .cls-1 {
                                                                                            fill: #4d4d4d;
                                                                                            fill-rule: evenodd
                                                                                        }
                                                                                    </style>
                                                                                </defs>
                                                                                <path class="cls-1"
                                                                                    d="M371.56,0H46.44C20.32,0,0,20.36,0,46.55v418.9C0,491.64,20.32,512,46.44,512H371.56c26.12,0,46.44-20.36,46.44-46.55V46.55C418,20.36,397.68,0,371.56,0M278.67,23.27h46.44v81.46L301.89,81.45l-23.22,23.28V23.27ZM92.89,488.73H46.44c-11.61,0-23.22-11.64-23.22-23.28V46.55c0-11.64,11.61-23.28,23.22-23.28H92.89V488.73Zm301.89-23.28c0,11.64-11.61,23.28-23.22,23.28H116.11V23.27H255.44V162.91l46.45-46.55,46.44,46.55V23.27h23.23c11.61,0,23.22,11.64,23.22,23.28v418.9Z">
                                                                                </path>
                                                                            </svg>
                                                                        </div>
                                                                    </div>
                                                                    <div data-v-568dcfec="" class="team-info-name"> DỰ ÁN THI CÔNG NỘI THẤT 2022 </div>
                                                                    <div data-v-568dcfec="" class="team-info-option">
                                                                        <div data-v-568dcfec="" aria-expanded="true" class="myxteam-dropdown m-dropdown--align-center">
                                                                            <span class="fa-solid fa-gears"></span>
                                                                            <!---->
                                                                        </div><span data-v-568dcfec="" class="fa-list team-option"></span><span data-v-568dcfec="" class="team-option fal fa-star"></span>
                                                                    </div>
                                                                    <div data-v-568dcfec="" class="team-info-action"><a data-v-568dcfec="" class="team-info-action-item"><i
                                                                                data-v-568dcfec=""
                                                                                class="action-chevron fas"></i></a>
                                                                    </div>
                                                                </div>
                                                                <div data-v-568dcfec="" class="team-project-wrapper" style="height: auto;">
                                                                    <ul data-v-568dcfec="" class="team-project-list" style="">
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-517417" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Căn hộ
                                                                                    thương mại chị hoa hòa khánh </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div><span data-v-3ebfc30e=""
                                                                                        class="fa-comment project-option"
                                                                                        style="font-size: 0.8rem;"></span><span
                                                                                        data-v-3ebfc30e=""
                                                                                        class="fa fa-star project-option"
                                                                                        style="color: orange; font-size: 0.8rem;"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-591642" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> A.An Sài
                                                                                    Gòn </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-568912" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Căn 2pn
                                                                                    c.Trang A1411 </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-550619" class="project-list-item active-project"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Căn hộ
                                                                                    A.Duy Vinhome </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-492911" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Căn hộ
                                                                                    FPT A.Lương 2 PN C.9.15 </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div><span data-v-3ebfc30e=""
                                                                                        class="fa-comment project-option"
                                                                                        style="font-size: 0.8rem;"></span><span
                                                                                        data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-519210" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Căn hộ
                                                                                    FPT A.Thành 2PN C14 11 </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-585295" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Căn hộ
                                                                                    FPT A.Tuấn C608 </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-525572" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Căn hộ
                                                                                    FPT C.Tiên 2PN A10 04 </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-589624" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Căn hộ
                                                                                    HAGL C.Nhung tầng 1708 </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-524891" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Chung cư
                                                                                    HAGL anh tài </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-518951" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Mẫu nội
                                                                                    thất FPT Plaza copy kế hoạch </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-574314" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Nhà
                                                                                    A.Hiển Đà Nẵng </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-590918" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Nhà C.Thu
                                                                                    Đồng Nai </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <div data-v-568dcfec="" class="team-item">
                                                                <div data-v-568dcfec="" class="team-item-info">
                                                                    <div data-v-568dcfec="" class="team-info-icon">
                                                                        <div data-v-4ae9b625="" data-v-568dcfec="" class="svg-container sidebar-control-icon team-icon">
                                                                            <svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 418 512" height="12px" width="12px" class="svg-icon-class">
                                                                                <defs>
                                                                                    <style>
                                                                                        .cls-1 {
                                                                                            fill: #4d4d4d;
                                                                                            fill-rule: evenodd
                                                                                        }
                                                                                    </style>
                                                                                </defs>
                                                                                <path class="cls-1"
                                                                                    d="M371.56,0H46.44C20.32,0,0,20.36,0,46.55v418.9C0,491.64,20.32,512,46.44,512H371.56c26.12,0,46.44-20.36,46.44-46.55V46.55C418,20.36,397.68,0,371.56,0M278.67,23.27h46.44v81.46L301.89,81.45l-23.22,23.28V23.27ZM92.89,488.73H46.44c-11.61,0-23.22-11.64-23.22-23.28V46.55c0-11.64,11.61-23.28,23.22-23.28H92.89V488.73Zm301.89-23.28c0,11.64-11.61,23.28-23.22,23.28H116.11V23.27H255.44V162.91l46.45-46.55,46.44,46.55V23.27h23.23c11.61,0,23.22,11.64,23.22,23.28v418.9Z">
                                                                                </path>
                                                                            </svg>
                                                                        </div>
                                                                    </div>
                                                                    <div data-v-568dcfec="" class="team-info-name"> DỰ ÁN THIẾT KẾ 2021 </div>
                                                                    <div data-v-568dcfec="" class="team-info-option">
                                                                        <div data-v-568dcfec="" aria-expanded="true" class="myxteam-dropdown m-dropdown--align-center">
                                                                            <span class="fa-solid fa-gears"></span>
                                                                            <!---->
                                                                        </div><span data-v-568dcfec="" class="fa-list team-option"></span><span data-v-568dcfec="" class="team-option fal fa-star"></span>
                                                                    </div>
                                                                    <div data-v-568dcfec="" class="team-info-action"><a data-v-568dcfec="" class="team-info-action-item collapsed"><i
                                                                                data-v-568dcfec=""
                                                                                class="action-chevron fas"></i></a>
                                                                    </div>
                                                                </div>
                                                                <div data-v-568dcfec="" class="team-project-wrapper" style="height: 0px;">
                                                                    <ul data-v-568dcfec="" class="team-project-list" style="display: none;">
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-459949" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> 2121 TRẦN
                                                                                    VĂN PHƯỚC - ĐỒNG NAI </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-389165" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Coffee A
                                                                                    Vóc Đ.Nai </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-460556" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Kế hoạch
                                                                                    thiết kế thi công nội thất chuẩn
                                                                                </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div><span data-v-3ebfc30e=""
                                                                                        class="fa-comment project-option"
                                                                                        style="font-size: 0.8rem;"></span><span
                                                                                        data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-389170" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Nhà anh
                                                                                    THI Đ.Nai </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-356918" class="project-list-item">
                                                                            <a data-v-3ebfc30e="" class="project-item-action">
                                                                                <!----><span data-v-3ebfc30e="" class="project-item-name"> NHÀ BỒ
                                                                                    CÔNG ANH ĐỒNG NAI </span>
                                                                                <div data-v-3ebfc30e="" class="project-item-option">
                                                                                    <div data-v-3ebfc30e="" aria-expanded="true" class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span class="fa fa-cog" aria-hidden="true">
                                                                                        </span>
                                                                                        <!---->
                                                                                    </div><span data-v-3ebfc30e="" class="fa-comment project-option" style="font-size: 0.8rem;"></span><span data-v-3ebfc30e="" class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a>
                                                                        </li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-358943" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Nhà chị
                                                                                    nguyệt quy nhơn </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div><span data-v-3ebfc30e=""
                                                                                        class="fa-comment project-option"
                                                                                        style="font-size: 0.8rem;"></span><span
                                                                                        data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-506778" class="project-list-item">
                                                                            <a data-v-3ebfc30e="" class="project-item-action">
                                                                                <!----><span data-v-3ebfc30e="" class="project-item-name"> Nhà chị
                                                                                    thi quy nhơn </span>
                                                                                <div data-v-3ebfc30e="" class="project-item-option">
                                                                                    <div data-v-3ebfc30e="" aria-expanded="true" class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <spanclass="fa fa-cog" aria-hidden="true">
                                                                                            </spanclass=>
                                                                                            <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e="" class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a>
                                                                        </li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-582473" class="project-list-item">
                                                                            <a data-v-3ebfc30e="" class="project-item-action">
                                                                                <!----><span data-v-3ebfc30e="" class="project-item-name"> Nhà chị
                                                                                    Tuấn 5x12 Hà Nội 4 tầng </span>
                                                                                <div data-v-3ebfc30e="" class="project-item-option">
                                                                                    <div data-v-3ebfc30e="" aria-expanded="true" class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <spanclass="fa fa-cog" aria-hidden="true">
                                                                                            </spanclass=>
                                                                                            <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e="" class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a>
                                                                        </li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-389167" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Nhà Hoàng
                                                                                    Kim Tuấn Đ.Nai </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-354093" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Nhà Lâm
                                                                                    hà Lâm Đồng </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div><span data-v-3ebfc30e=""
                                                                                        class="fa-comment project-option"
                                                                                        style="font-size: 0.8rem;"></span><span
                                                                                        data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-389169" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Nhà
                                                                                    Nguyễn Đình Bảo Đ.Nai </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-389174" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Nhà
                                                                                    NGUYỄN THỊ LAN Đ.Nai </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-389173" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Nhà PHẠM
                                                                                    VĂN HẢI Đ.Nai </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-389163" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Nhà Villa
                                                                                    01 Đ.Nai </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-451625" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Quy trình
                                                                                    12 bước thiết kế và thi công nội
                                                                                    thất </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div><span data-v-3ebfc30e=""
                                                                                        class="fa-comment project-option"
                                                                                        style="font-size: 0.8rem;"></span><span
                                                                                        data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-389168" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> TRỨ BEER
                                                                                </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <div data-v-568dcfec="" class="team-item">
                                                                <div data-v-568dcfec="" class="team-item-info">
                                                                    <div data-v-568dcfec="" class="team-info-icon">
                                                                        <div data-v-4ae9b625="" data-v-568dcfec="" class="svg-container sidebar-control-icon team-icon">
                                                                            <svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 418 512" height="12px" width="12px" class="svg-icon-class">
                                                                                <defs>
                                                                                    <style>
                                                                                        .cls-1 {
                                                                                            fill: #4d4d4d;
                                                                                            fill-rule: evenodd
                                                                                        }
                                                                                    </style>
                                                                                </defs>
                                                                                <path class="cls-1"
                                                                                    d="M371.56,0H46.44C20.32,0,0,20.36,0,46.55v418.9C0,491.64,20.32,512,46.44,512H371.56c26.12,0,46.44-20.36,46.44-46.55V46.55C418,20.36,397.68,0,371.56,0M278.67,23.27h46.44v81.46L301.89,81.45l-23.22,23.28V23.27ZM92.89,488.73H46.44c-11.61,0-23.22-11.64-23.22-23.28V46.55c0-11.64,11.61-23.28,23.22-23.28H92.89V488.73Zm301.89-23.28c0,11.64-11.61,23.28-23.22,23.28H116.11V23.27H255.44V162.91l46.45-46.55,46.44,46.55V23.27h23.23c11.61,0,23.22,11.64,23.22,23.28v418.9Z">
                                                                                </path>
                                                                            </svg>
                                                                        </div>
                                                                    </div>
                                                                    <div data-v-568dcfec="" class="team-info-name"> Dự án thiết kế cn đồng nai </div>
                                                                    <div data-v-568dcfec="" class="team-info-option">
                                                                        <div data-v-568dcfec="" aria-expanded="true" class="myxteam-dropdown m-dropdown--align-center">
                                                                            <span class="fa-solid fa-gears"></span>
                                                                            <!---->
                                                                        </div><span data-v-568dcfec="" class="fa-list team-option"></span><span data-v-568dcfec="" class="team-option fal fa-star"></span>
                                                                    </div>
                                                                    <div data-v-568dcfec="" class="team-info-action"><a data-v-568dcfec="" class="team-info-action-item collapsed"><i
                                                                                data-v-568dcfec=""
                                                                                class="action-chevron fas"></i></a>
                                                                    </div>
                                                                </div>
                                                                <div data-v-568dcfec="" class="team-project-wrapper" style="height: 0px;">
                                                                    <ul data-v-568dcfec="" class="team-project-list" style="display: none;">
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-571265" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> LÊ MINH
                                                                                    NHẬT </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-571266" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> NGUYEN
                                                                                    DAI DUONG </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-525332" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> TK TG LÊ
                                                                                    LU LINH - ĐNAI </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div><span data-v-3ebfc30e=""
                                                                                        class="fa-comment project-option"
                                                                                        style="font-size: 0.8rem;"></span><span
                                                                                        data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-528509" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> TK TG
                                                                                    NGUYỄN THANH LIÊM- ĐNAI </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div><span data-v-3ebfc30e=""
                                                                                        class="fa-comment project-option"
                                                                                        style="font-size: 0.8rem;"></span><span
                                                                                        data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-525331" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> TK TRỌN
                                                                                    GÓI ANH HẢO SUỐI NHO - ĐNAI </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div><span data-v-3ebfc30e=""
                                                                                        class="fa-comment project-option"
                                                                                        style="font-size: 0.8rem;"></span><span
                                                                                        data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <div data-v-568dcfec="" class="team-item">
                                                                <div data-v-568dcfec="" class="team-item-info">
                                                                    <div data-v-568dcfec="" class="team-info-icon">
                                                                        <div data-v-4ae9b625="" data-v-568dcfec="" class="svg-container sidebar-control-icon team-icon">
                                                                            <svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 418 512" height="12px" width="12px" class="svg-icon-class">
                                                                                <defs>
                                                                                    <style>
                                                                                        .cls-1 {
                                                                                            fill: #4d4d4d;
                                                                                            fill-rule: evenodd
                                                                                        }
                                                                                    </style>
                                                                                </defs>
                                                                                <path class="cls-1"
                                                                                    d="M371.56,0H46.44C20.32,0,0,20.36,0,46.55v418.9C0,491.64,20.32,512,46.44,512H371.56c26.12,0,46.44-20.36,46.44-46.55V46.55C418,20.36,397.68,0,371.56,0M278.67,23.27h46.44v81.46L301.89,81.45l-23.22,23.28V23.27ZM92.89,488.73H46.44c-11.61,0-23.22-11.64-23.22-23.28V46.55c0-11.64,11.61-23.28,23.22-23.28H92.89V488.73Zm301.89-23.28c0,11.64-11.61,23.28-23.22,23.28H116.11V23.27H255.44V162.91l46.45-46.55,46.44,46.55V23.27h23.23c11.61,0,23.22,11.64,23.22,23.28v418.9Z">
                                                                                </path>
                                                                            </svg>
                                                                        </div>
                                                                    </div>
                                                                    <div data-v-568dcfec="" class="team-info-name"> HỆ THỐNG GIÁY TỜ CÔNG TY &amp; ĐÀO TẠO </div>
                                                                    <div data-v-568dcfec="" class="team-info-option">
                                                                        <div data-v-568dcfec="" aria-expanded="true" class="myxteam-dropdown m-dropdown--align-center">
                                                                            <span class="fa-solid fa-gears"></span>
                                                                            <!---->
                                                                        </div><span data-v-568dcfec="" class="fa-list team-option"></span><span data-v-568dcfec="" class="team-option fal fa-star"></span>
                                                                    </div>
                                                                    <div data-v-568dcfec="" class="team-info-action"><a data-v-568dcfec="" class="team-info-action-item collapsed"><i
                                                                                data-v-568dcfec=""
                                                                                class="action-chevron fas"></i></a>
                                                                    </div>
                                                                </div>
                                                                <div data-v-568dcfec="" class="team-project-wrapper" style="height: 0px;">
                                                                    <ul data-v-568dcfec="" class="team-project-list" style="display: none;">
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-564163" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Hệ thống
                                                                                    giấy tờ chuẩn doanh nghiệp (copy)
                                                                                </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <div data-v-568dcfec="" class="team-item">
                                                                <div data-v-568dcfec="" class="team-item-info">
                                                                    <div data-v-568dcfec="" class="team-info-icon">
                                                                        <div data-v-4ae9b625="" data-v-568dcfec="" class="svg-container sidebar-control-icon team-icon">
                                                                            <svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 418 512" height="12px" width="12px" class="svg-icon-class">
                                                                                <defs>
                                                                                    <style>
                                                                                        .cls-1 {
                                                                                            fill: #4d4d4d;
                                                                                            fill-rule: evenodd
                                                                                        }
                                                                                    </style>
                                                                                </defs>
                                                                                <path class="cls-1"
                                                                                    d="M371.56,0H46.44C20.32,0,0,20.36,0,46.55v418.9C0,491.64,20.32,512,46.44,512H371.56c26.12,0,46.44-20.36,46.44-46.55V46.55C418,20.36,397.68,0,371.56,0M278.67,23.27h46.44v81.46L301.89,81.45l-23.22,23.28V23.27ZM92.89,488.73H46.44c-11.61,0-23.22-11.64-23.22-23.28V46.55c0-11.64,11.61-23.28,23.22-23.28H92.89V488.73Zm301.89-23.28c0,11.64-11.61,23.28-23.22,23.28H116.11V23.27H255.44V162.91l46.45-46.55,46.44,46.55V23.27h23.23c11.61,0,23.22,11.64,23.22,23.28v418.9Z">
                                                                                </path>
                                                                            </svg>
                                                                        </div>
                                                                    </div>
                                                                    <div data-v-568dcfec="" class="team-info-name">
                                                                        PHÒNG KẾ TOÁN TÀI CHÍNH </div>
                                                                    <div data-v-568dcfec="" class="team-info-option">
                                                                        <div data-v-568dcfec="" aria-expanded="true" class="myxteam-dropdown m-dropdown--align-center">
                                                                            <span class="fa-solid fa-gears"></span>
                                                                            <!---->
                                                                        </div>
                                                                        <!----><span data-v-568dcfec="" class="team-option fal fa-star"></span>
                                                                    </div>
                                                                    <div data-v-568dcfec="" class="team-info-action"><a data-v-568dcfec="" class="team-info-action-item collapsed"><i
                                                                                data-v-568dcfec=""
                                                                                class="action-chevron fas"></i></a>
                                                                    </div>
                                                                </div>
                                                                <div data-v-568dcfec="" class="team-project-wrapper" style="height: 0px;">
                                                                    <ul data-v-568dcfec="" class="team-project-list" style="display: none;">
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-575772" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Thu chi
                                                                                    thầu phụ </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <div data-v-568dcfec="" class="team-item">
                                                                <div data-v-568dcfec="" class="team-item-info">
                                                                    <div data-v-568dcfec="" class="team-info-icon">
                                                                        <div data-v-4ae9b625="" data-v-568dcfec="" class="svg-container sidebar-control-icon team-icon">
                                                                            <svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 418 512" height="12px" width="12px" class="svg-icon-class">
                                                                                <defs>
                                                                                    <style>
                                                                                        .cls-1 {
                                                                                            fill: #4d4d4d;
                                                                                            fill-rule: evenodd
                                                                                        }
                                                                                    </style>
                                                                                </defs>
                                                                                <path class="cls-1"
                                                                                    d="M371.56,0H46.44C20.32,0,0,20.36,0,46.55v418.9C0,491.64,20.32,512,46.44,512H371.56c26.12,0,46.44-20.36,46.44-46.55V46.55C418,20.36,397.68,0,371.56,0M278.67,23.27h46.44v81.46L301.89,81.45l-23.22,23.28V23.27ZM92.89,488.73H46.44c-11.61,0-23.22-11.64-23.22-23.28V46.55c0-11.64,11.61-23.28,23.22-23.28H92.89V488.73Zm301.89-23.28c0,11.64-11.61,23.28-23.22,23.28H116.11V23.27H255.44V162.91l46.45-46.55,46.44,46.55V23.27h23.23c11.61,0,23.22,11.64,23.22,23.28v418.9Z">
                                                                                </path>
                                                                            </svg>
                                                                        </div>
                                                                    </div>
                                                                    <div data-v-568dcfec="" class="team-info-name">
                                                                        PHÒNG KINH DOANH SALE </div>
                                                                    <div data-v-568dcfec="" class="team-info-option">
                                                                        <div data-v-568dcfec="" aria-expanded="true" class="myxteam-dropdown m-dropdown--align-center">
                                                                            <span class="fa-solid fa-gears"></span>
                                                                            <!---->
                                                                        </div><span data-v-568dcfec="" class="fa-list team-option"></span><span data-v-568dcfec="" class="team-option fal fa-star"></span>
                                                                    </div>
                                                                    <div data-v-568dcfec="" class="team-info-action"><a data-v-568dcfec="" class="team-info-action-item collapsed"><i
                                                                                data-v-568dcfec=""
                                                                                class="action-chevron fas"></i></a>
                                                                    </div>
                                                                </div>
                                                                <div data-v-568dcfec="" class="team-project-wrapper" style="height: 0px;">
                                                                    <ul data-v-568dcfec="" class="team-project-list" style="display: none;">
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-581795" class="project-list-item">
                                                                            <a data-v-3ebfc30e="" class="project-item-action">
                                                                                <!----><span data-v-3ebfc30e="" class="project-item-name"> DỰ ÁN FPT
                                                                                    PLAZ 2 2PN </span>
                                                                                <div data-v-3ebfc30e="" class="project-item-option">
                                                                                    <div data-v-3ebfc30e="" aria-expanded="true" class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <spanclass="fa fa-cog" aria-hidden="true">
                                                                                            </spanclass=>
                                                                                            <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e="" class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a>
                                                                        </li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-581797" class="project-list-item">
                                                                            <a data-v-3ebfc30e="" class="project-item-action">
                                                                                <!----><span data-v-3ebfc30e="" class="project-item-name"> DỰ ÁN FPT
                                                                                    PLAZA2 3 PN </span>
                                                                                <div data-v-3ebfc30e="" class="project-item-option">
                                                                                    <div data-v-3ebfc30e="" aria-expanded="true" class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <spanclass="fa fa-cog" aria-hidden="true">
                                                                                            </spanclass=>
                                                                                            <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e="" class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a>
                                                                        </li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-504844" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Kế hoạch
                                                                                    thiết kế thi công nội thất chuẩn
                                                                                </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-593259" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Kỹ Năng
                                                                                    bán hàng ( Sale Pro ) (copy) </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-404643" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Quy trình
                                                                                    12 bước thiết kế và thi công nội
                                                                                    thất </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-404117" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Sales
                                                                                    Kits ( Tên công ty ) </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-557320" class="project-list-item">
                                                                            <a data-v-3ebfc30e="" class="project-item-action">
                                                                                <!----><span data-v-3ebfc30e="" class="project-item-name"> THƯ VIỆN
                                                                                    3D </span>
                                                                                <div data-v-3ebfc30e="" class="project-item-option">
                                                                                    <div data-v-3ebfc30e="" aria-expanded="true" class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <spanclass="fa fa-cog" aria-hidden="true">
                                                                                            </spanclass=>
                                                                                            <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e="" class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a>
                                                                        </li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-404123" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Video
                                                                                    Marketing Project </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <div data-v-568dcfec="" class="team-item">
                                                                <div data-v-568dcfec="" class="team-item-info">
                                                                    <div data-v-568dcfec="" class="team-info-icon">
                                                                        <div data-v-4ae9b625="" data-v-568dcfec="" class="svg-container sidebar-control-icon team-icon">
                                                                            <svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 418 512" height="12px" width="12px" class="svg-icon-class">
                                                                                <defs>
                                                                                    <style>
                                                                                        .cls-1 {
                                                                                            fill: #4d4d4d;
                                                                                            fill-rule: evenodd
                                                                                        }
                                                                                    </style>
                                                                                </defs>
                                                                                <path class="cls-1"
                                                                                    d="M371.56,0H46.44C20.32,0,0,20.36,0,46.55v418.9C0,491.64,20.32,512,46.44,512H371.56c26.12,0,46.44-20.36,46.44-46.55V46.55C418,20.36,397.68,0,371.56,0M278.67,23.27h46.44v81.46L301.89,81.45l-23.22,23.28V23.27ZM92.89,488.73H46.44c-11.61,0-23.22-11.64-23.22-23.28V46.55c0-11.64,11.61-23.28,23.22-23.28H92.89V488.73Zm301.89-23.28c0,11.64-11.61,23.28-23.22,23.28H116.11V23.27H255.44V162.91l46.45-46.55,46.44,46.55V23.27h23.23c11.61,0,23.22,11.64,23.22,23.28v418.9Z">
                                                                                </path>
                                                                            </svg>
                                                                        </div>
                                                                    </div>
                                                                    <div data-v-568dcfec="" class="team-info-name">
                                                                        PHÒNG MAKETTING </div>
                                                                    <div data-v-568dcfec="" class="team-info-option">
                                                                        <div data-v-568dcfec="" aria-expanded="true" class="myxteam-dropdown m-dropdown--align-center">
                                                                            <span class="fa-solid fa-gears"></span>
                                                                            <!---->
                                                                        </div>
                                                                        <!----><span data-v-568dcfec="" class="team-option fal fa-star"></span>
                                                                    </div>
                                                                    <div data-v-568dcfec="" class="team-info-action"><a data-v-568dcfec="" class="team-info-action-item collapsed"><i
                                                                                data-v-568dcfec=""
                                                                                class="action-chevron fas"></i></a>
                                                                    </div>
                                                                </div>
                                                                <div data-v-568dcfec="" class="team-project-wrapper" style="height: 0px;">
                                                                    <ul data-v-568dcfec="" class="team-project-list" style="display: none;">
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-404862" class="project-list-item">
                                                                            <a data-v-3ebfc30e="" class="project-item-action">
                                                                                <!----><span data-v-3ebfc30e="" class="project-item-name"> Kế hoạch
                                                                                    chăm sóc Fanpage </span>
                                                                                <div data-v-3ebfc30e="" class="project-item-option">
                                                                                    <div data-v-3ebfc30e="" aria-expanded="true" class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <spanclass="fa fa-cog" aria-hidden="true">
                                                                                            </spanclass=>
                                                                                            <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e="" class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <div data-v-568dcfec="" class="team-item">
                                                                <div data-v-568dcfec="" class="team-item-info">
                                                                    <div data-v-568dcfec="" class="team-info-icon">
                                                                        <div data-v-4ae9b625="" data-v-568dcfec="" class="svg-container sidebar-control-icon team-icon">
                                                                            <svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 418 512" height="12px" width="12px" class="svg-icon-class">
                                                                                <defs>
                                                                                    <style>
                                                                                        .cls-1 {
                                                                                            fill: #4d4d4d;
                                                                                            fill-rule: evenodd
                                                                                        }
                                                                                    </style>
                                                                                </defs>
                                                                                <path class="cls-1"
                                                                                    d="M371.56,0H46.44C20.32,0,0,20.36,0,46.55v418.9C0,491.64,20.32,512,46.44,512H371.56c26.12,0,46.44-20.36,46.44-46.55V46.55C418,20.36,397.68,0,371.56,0M278.67,23.27h46.44v81.46L301.89,81.45l-23.22,23.28V23.27ZM92.89,488.73H46.44c-11.61,0-23.22-11.64-23.22-23.28V46.55c0-11.64,11.61-23.28,23.22-23.28H92.89V488.73Zm301.89-23.28c0,11.64-11.61,23.28-23.22,23.28H116.11V23.27H255.44V162.91l46.45-46.55,46.44,46.55V23.27h23.23c11.61,0,23.22,11.64,23.22,23.28v418.9Z">
                                                                                </path>
                                                                            </svg>
                                                                        </div>
                                                                    </div>
                                                                    <div data-v-568dcfec="" class="team-info-name">
                                                                        Thiết kế 2022 </div>
                                                                    <div data-v-568dcfec="" class="team-info-option">
                                                                        <div data-v-568dcfec="" aria-expanded="true" class="myxteam-dropdown m-dropdown--align-center">
                                                                            <span class="fa-solid fa-gears"></span>
                                                                            <!---->
                                                                        </div>
                                                                        <!----><span data-v-568dcfec="" class="team-option fal fa-star"></span>
                                                                    </div>
                                                                    <div data-v-568dcfec="" class="team-info-action"><a data-v-568dcfec="" class="team-info-action-item collapsed"><i
                                                                                data-v-568dcfec=""
                                                                                class="action-chevron fas"></i></a>
                                                                    </div>
                                                                </div>
                                                                <div data-v-568dcfec="" class="team-project-wrapper" style="height: 0px;">
                                                                    <ul data-v-568dcfec="" class="team-project-list" style="display: none;">
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-522225" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Căn hộ
                                                                                    C.Tiên A 10 04 Lô Góc </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-551322" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Căn hộ
                                                                                    FPT A.Hà B12B14 </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-520338" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Căn hộ
                                                                                    FPT A.Trung C7 12 </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-522214" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Căn hộ
                                                                                    FPT C.Khủng Long B3 12 </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-440798" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> nhà vườn
                                                                                    bảo lộc </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-439184" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> NV gác
                                                                                    lững ( a thắng hạ long ) </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div><span data-v-3ebfc30e=""
                                                                                        class="fa-comment project-option"
                                                                                        style="font-size: 0.8rem;"></span><span
                                                                                        data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <div data-v-568dcfec="" class="team-item">
                                                                <div data-v-568dcfec="" class="team-item-info">
                                                                    <div data-v-568dcfec="" class="team-info-icon">
                                                                        <div data-v-4ae9b625="" data-v-568dcfec="" class="svg-container sidebar-control-icon team-icon">
                                                                            <svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 418 512" height="12px" width="12px" class="svg-icon-class">
                                                                                <defs>
                                                                                    <style>
                                                                                        .cls-1 {
                                                                                            fill: #4d4d4d;
                                                                                            fill-rule: evenodd
                                                                                        }
                                                                                    </style>
                                                                                </defs>
                                                                                <path class="cls-1"
                                                                                    d="M371.56,0H46.44C20.32,0,0,20.36,0,46.55v418.9C0,491.64,20.32,512,46.44,512H371.56c26.12,0,46.44-20.36,46.44-46.55V46.55C418,20.36,397.68,0,371.56,0M278.67,23.27h46.44v81.46L301.89,81.45l-23.22,23.28V23.27ZM92.89,488.73H46.44c-11.61,0-23.22-11.64-23.22-23.28V46.55c0-11.64,11.61-23.28,23.22-23.28H92.89V488.73Zm301.89-23.28c0,11.64-11.61,23.28-23.22,23.28H116.11V23.27H255.44V162.91l46.45-46.55,46.44,46.55V23.27h23.23c11.61,0,23.22,11.64,23.22,23.28v418.9Z">
                                                                                </path>
                                                                            </svg>
                                                                        </div>
                                                                    </div>
                                                                    <div data-v-568dcfec="" class="team-info-name"> VĂN PHÒNG </div>
                                                                    <div data-v-568dcfec="" class="team-info-option">
                                                                        <div data-v-568dcfec="" aria-expanded="true" class="myxteam-dropdown m-dropdown--align-center">
                                                                            <span class="fa-solid fa-gears"></span>
                                                                            <!---->
                                                                        </div>
                                                                        <!----><span data-v-568dcfec="" class="team-option fal fa-star"></span>
                                                                    </div>
                                                                    <div data-v-568dcfec="" class="team-info-action"><a data-v-568dcfec="" class="team-info-action-item collapsed"><i
                                                                                data-v-568dcfec=""
                                                                                class="action-chevron fas"></i></a>
                                                                    </div>
                                                                </div>
                                                                <div data-v-568dcfec="" class="team-project-wrapper" style="height: 0px;">
                                                                    <ul data-v-568dcfec="" class="team-project-list" style="display: none;">
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-404923" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Hệ thống
                                                                                    giấy tờ chuẩn doanh nghiệp </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                        <li data-v-3ebfc30e="" data-v-568dcfec="" id="project-list-item-439178" class="project-list-item"><a data-v-3ebfc30e="" class="project-item-action"><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name-label"
                                                                                    style="background-color: rgb(146, 205, 0);"></span><span
                                                                                    data-v-3ebfc30e=""
                                                                                    class="project-item-name"> Kế hoạch
                                                                                    thiết kế thi công </span>
                                                                                <div data-v-3ebfc30e=""
                                                                                    class="project-item-option">
                                                                                    <div data-v-3ebfc30e=""
                                                                                        aria-expanded="true"
                                                                                        class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <span
                                                                                            class="fa-solid fa-gears"></span>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!----><span data-v-3ebfc30e=""
                                                                                        class="fa-star project-option"></span>
                                                                                </div>
                                                                                <!---->
                                                                            </a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <div data-v-568dcfec="" class="team-item">
                                                                <div data-v-568dcfec="" class="team-item-info">
                                                                    <div data-v-568dcfec="" class="team-info-icon">
                                                                        <div data-v-4ae9b625="" data-v-568dcfec="" class="svg-container sidebar-control-icon team-icon">
                                                                            <svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 418 512" height="12px" width="12px" class="svg-icon-class">
                                                                                <defs>
                                                                                    <style>
                                                                                        .cls-1 {
                                                                                            fill: #4d4d4d;
                                                                                            fill-rule: evenodd
                                                                                        }
                                                                                    </style>
                                                                                </defs>
                                                                                <path class="cls-1"
                                                                                    d="M371.56,0H46.44C20.32,0,0,20.36,0,46.55v418.9C0,491.64,20.32,512,46.44,512H371.56c26.12,0,46.44-20.36,46.44-46.55V46.55C418,20.36,397.68,0,371.56,0M278.67,23.27h46.44v81.46L301.89,81.45l-23.22,23.28V23.27ZM92.89,488.73H46.44c-11.61,0-23.22-11.64-23.22-23.28V46.55c0-11.64,11.61-23.28,23.22-23.28H92.89V488.73Zm301.89-23.28c0,11.64-11.61,23.28-23.22,23.28H116.11V23.27H255.44V162.91l46.45-46.55,46.44,46.55V23.27h23.23c11.61,0,23.22,11.64,23.22,23.28v418.9Z">
                                                                                </path>
                                                                            </svg>
                                                                        </div>
                                                                    </div>
                                                                    <div data-v-568dcfec="" class="team-info-name"> XÂY DỰNG </div>
                                                                    <div data-v-568dcfec="" class="team-info-option">
                                                                        <div data-v-568dcfec="" aria-expanded="true" class="myxteam-dropdown m-dropdown--align-center">
                                                                            <span class="fa-solid fa-gears"></span>
                                                                            <!---->
                                                                        </div>
                                                                        <!----><span data-v-568dcfec="" class="team-option fal fa-star"></span>
                                                                    </div>
                                                                    <div data-v-568dcfec="" class="team-info-action"><a data-v-568dcfec="" class="team-info-action-item collapsed"><i
                                                                                data-v-568dcfec=""
                                                                                class="action-chevron fas"></i></a>
                                                                    </div>
                                                                </div>
                                                                <div data-v-568dcfec="" class="team-project-wrapper" style="height: 0px;">
                                                                    <ul data-v-568dcfec="" class="team-project-list" style="display: none;"></ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="__rail-is-vertical" style="position: absolute; z-index: 1; border-radius: 6px; background: rgba(1, 169, 154, 0); border: none; width: 6px; top: 0px; bottom: 0px; right: 2px;">
                                                <div class="__bar-wrap-is-vertical" style="position: absolute; border-radius: 6px; top: 0px; bottom: 0px; width: 100%;">
                                                    <div class="__bar-is-vertical" style="cursor: pointer; position: absolute; margin: auto; transition: opacity 0.5s ease 0s; user-select: none; border-radius: inherit; height: 52.879%; background: rgb(188, 189, 196); width: 6px; opacity: 0; transform: translateY(44.6667%); left: 0px; right: 0px;">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="myxteam-support-control-bottom">
                                        <a class="help-item"><img src="templates/quanlycongviec/doc.cacfab84.png">Hướng dẫn </a>
                                        <a class="help-item"><img src="templates/quanlycongviec/comment.26f9d112.png">Chat với hỗ trợ</a>
                                        <a class="help-item"><img src="templates/quanlycongviec/video.2561d140.png">Video</a>
                                    </div>
                                </div>
                            </div>
                            <!---->
                            <!---->
                            <!---->
                        </div>
                        <!---->
                    </div>
                    <div data-v-42edc5dc="" class="myxteam-toggle"><a data-v-42edc5dc="" title="Cố định danh sách team" class="toggle-action"><i data-v-42edc5dc="" class="fa fa-chevron-right"></i></a></div>
                    <!---->
                    <!---->
                    <!---->
                    <!---->
                    <!---->
                    <!---->
                    <!---->
                    <!---->
                    <!---->
                    <!---->
                    <!---->
                    <!---->
                    <!---->
                    <!---->
                    <!---->
                </div>
                <div data-v-59bf962b="" class="myxteam-container">
                    <div data-v-59bf962b="" class="myxteam-content show-task-label-text">
                        <div data-v-59bf962b="" class="myxteam-project app_view_default">
                            <div class="myxteam-project-container kanban-view">
                                <div class="myxteam-header project-header background-none background-light">
                                    <div class="myxteam-header-info "><span class="myxteam-header-title"> Căn hộ A.Duy
                                            Vinhome </span>
                                    </div>
                                    <div class="myxteam-header-member">
                                        <div data-v-22ab8a8b="" class="myxteam-list-pic myxteam-project-member">
                                            <a data-v-22ab8a8b="" class="member-item"><img data-v-22ab8a8b="" src="templates/quanlycongviec/FB_IMG_1587026773992.jpg" title="Niceworld" class="base-avatar member-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/20200417104120/FB_IMG_1587026773992.jpg"
                                                    lazy="loaded"><span data-v-22ab8a8b="" class="member-important team-admin"><i data-v-22ab8a8b=""
                                                        class="fas fa-star"></i></span></a>
                                            <a data-v-22ab8a8b="" class="member-item"><img data-v-22ab8a8b="" src="templates/quanlycongviec/110054.jpg" title="Tùng Tống" class="base-avatar member-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/20210526173345514/110054.jpg" lazy="loaded">
                                                <span data-v-22ab8a8b="" class="member-important team-admin"><i
                                                        data-v-22ab8a8b="" class="fas fa-star"></i></span>
                                            </a>
                                            <a data-v-22ab8a8b="" class="member-item"><img data-v-22ab8a8b="" src="templates/quanlycongviec/20210316_202526.jpg" title="Hiếu" class="base-avatar member-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/20210401133236/20210316_202526.jpg"
                                                    lazy="loaded">
                                                <!---->
                                            </a>
                                            <div data-v-22ab8a8b="" aria-expanded="true" class="myxteam-dropdown m-dropdown--align-right"><a data-v-22ab8a8b="" class="member-count"><span data-v-22ab8a8b=""
                                                        class="project-count-number member-count-number count-xs"> +5
                                                    </span></a>
                                                <!---->
                                            </div><a data-v-22ab8a8b="" title="Quản lý thành viên" class="btn  m-btn btn-add"><i data-v-22ab8a8b="" class="fa fa-user-plus"
                                                    aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                    <!---->
                                    <div class="myxteam-header-viewcontrol">
                                        <div class="project-header-view  project-header-button">
                                            <div aria-expanded="true" class="myxteam-dropdown m-dropdown--align-right">
                                                <a class="btn btn-sm btn-primaryvp btn-projectview btn-select-view">
                                                    <div data-v-4ae9b625="" class="svg-container m-nav__link-icon fal">
                                                        <svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" height="16px" width="16px" class="svg-icon-class">
                                                            <defs>
                                                                <style>
                                                                    .cls-1 {
                                                                        fill: #4d4d4d
                                                                    }
                                                                </style>
                                                            </defs>
                                                            <title>Artboard 1 copy 26</title>
                                                            <rect class="cls-1" x="177.37" y="213.09" width="119.33"
                                                                height="17.05" rx="0.26"></rect>
                                                            <rect class="cls-1" x="177.37" y="315.37" width="119.33"
                                                                height="17.05" rx="0.26"></rect>
                                                            <rect class="cls-1" x="177.37" y="400.61" width="119.33"
                                                                height="17.05" rx="0.26"></rect>
                                                            <polygon class="cls-1"
                                                                points="92.13 213.09 126.22 264.23 177.37 179 126.22 230.14 92.13 213.09">
                                                            </polygon>
                                                            <polygon class="cls-1"
                                                                points="92.13 298.33 126.22 349.47 177.37 264.23 126.22 315.37 92.13 298.33">
                                                            </polygon>
                                                            <rect class="cls-1" x="121.94" y="365.2" width="8.57"
                                                                height="87.86"
                                                                transform="translate(326.27 30.58) rotate(45)"></rect>
                                                            <rect class="cls-1" x="121.94" y="365.2" width="8.57"
                                                                height="87.86"
                                                                transform="translate(504.78 609.18) rotate(135)"></rect>
                                                            <path class="cls-1"
                                                                d="M266,51.14H250.8a59.37,59.37,0,0,0-117.6,0H118A36.87,36.87,0,0,0,81.19,88V116.6A36.88,36.88,0,0,0,118,153.43H266a36.88,36.88,0,0,0,36.83-36.83V88A36.87,36.87,0,0,0,266,51.14ZM192,17.05a42.7,42.7,0,0,1,41.77,34.09H150.23A42.7,42.7,0,0,1,192,17.05Zm93.76,99.55A19.8,19.8,0,0,1,266,136.38H118A19.8,19.8,0,0,1,98.24,116.6V88A19.8,19.8,0,0,1,118,68.19H266A19.8,19.8,0,0,1,285.76,88Z">
                                                            </path>
                                                            <path class="cls-1"
                                                                d="M321.12,84.65h-1.27v20.46h1.27a42.12,42.12,0,0,1,42.07,42.06V449.49a42.11,42.11,0,0,1-42.07,42.05H62.86a42.09,42.09,0,0,1-42-42.05V147.17a42.1,42.1,0,0,1,42.05-42.06h1.28V84.65H62.86A62.58,62.58,0,0,0,.37,147.17V449.49A62.57,62.57,0,0,0,62.86,512H321.12a62.57,62.57,0,0,0,62.51-62.51V147.17A62.58,62.58,0,0,0,321.12,84.65Z">
                                                            </path>
                                                        </svg>
                                                    </div><span> Kanban</span>
                                                </a>
                                                <!---->
                                            </div><a class="btn btn-sm btn-warning  m-btn m-btn--icon btn-projectview"><span><i
                                                        class="fa fa-filter" aria-hidden="true"></i><span> Bộ lọc
                                                    </span></span></a>
                                            <div aria-expanded="true" class="myxteam-dropdown m-dropdown--align-right">
                                                <a class="btn btn-sm btn-default btn-projectview"><span><i
                                                            class="fa fa-sort" aria-hidden="true"></i><span> Sắp xếp
                                                        </span></span></a>
                                                <!---->
                                                <!---->
                                            </div>
                                            <div aria-expanded="true" class="myxteam-dropdown m-dropdown--align-right">
                                                <a id="exPopoveViewProject" class="btn btn-sm btn-default btn-projectview"><span><i
                                                            class="fa fa-cog" aria-hidden="true"></i><span> Cài đặt
                                                        </span></span></a>
                                                <!---->
                                                <!---->
                                                <!---->
                                                <!---->
                                                <!---->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="project-content">
                                    <div class="__vuescroll hasHBar hBarVisible mouseEnter" style="height: 100%; width: 100%; padding: 0px; position: relative; overflow: hidden;">
                                        <div class="__panel" style="position: relative; box-sizing: border-box; height: calc(100% + 8px); overflow: scroll hidden;">
                                            <div class="__view" style="position: relative; box-sizing: border-box; min-width: 100%; min-height: 100%; width: -webkit-fit-content;">
                                                <div id="horizontal-scroll-kanban" class="horizontal-scroll-area " style="min-width: 2512px;">
                                                    <div class="project-sectionview">
                                                        <div id="backdropDragg" class="backdrop-dragg-kanban"></div>
                                                        <div class="custom-dnd-container custom-dnd-container-section horizontal" style="height: 561px;">
                                                            <div id="section-2462399" class="custom-dnd-draggable-wrapper project-kanban-group custom-dnd-draggable-group">
                                                                <div class="m-background-light">
                                                                    <div class="kanban-section-head">
                                                                        <div class="section-head-caption"><span title="THÔNG TIN DỰ ÁN + GIẤY TỜ" class="section-head-caption-title handle-dragg">
                                                                                THÔNG TIN DỰ ÁN + GIẤY TỜ </span>
                                                                            <!---->
                                                                        </div>
                                                                        <div class="section-head-control">
                                                                            <ul class="section-head-control-list">
                                                                                <li class="section-head-control-item">
                                                                                    <div class="myxteam-dropdown m-dropdown--align-left">
                                                                                        <a class="m-portlet__nav-link m-dropdown__toggle"><i
                                                                                                class="fa fa-info-circle"
                                                                                                aria-hidden="true"></i></a>
                                                                                        <!---->
                                                                                    </div>
                                                                                </li>
                                                                                <li class="section-head-control-item">
                                                                                    <div aria-expanded="true" class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <a class="m-portlet__nav-link m-dropdown__toggle"><i
                                                                                                class="fa fa-sort"
                                                                                                aria-hidden="true"></i></a>
                                                                                        <!---->
                                                                                        <!---->
                                                                                    </div>
                                                                                </li>
                                                                                <li class="section-head-control-item">
                                                                                    <div aria-expanded="true" class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <a class="m-portlet__nav-link m-dropdown__toggle"><i
                                                                                                class="fa fa-ellipsis-h"
                                                                                                aria-hidden="true"></i></a>
                                                                                        <!---->
                                                                                        <!---->
                                                                                    </div>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                    <div class="__vuescroll hasVBar" style="height: 100%; width: 100%; padding: 0px; position: relative; overflow: hidden;">
                                                                        <div class="__panel" style="position: relative; box-sizing: border-box; height: 100%; overflow: hidden scroll; margin-right: -8px;">
                                                                            <div class="__view" style="position: relative; box-sizing: border-box; min-width: 100%; min-height: 100%; width: 100%;">
                                                                                <div class="vertical-scroll-group-task" style="max-height: 471px;">
                                                                                    <div class="myxteam-task">
                                                                                        <div id="backdropDraggSection-2462399" class="backdrop-dragg-section">
                                                                                        </div>
                                                                                        <div id="draggable-2462399" class="custom-dnd-container vertical">
                                                                                            <div class="custom-dnd-draggable-wrapper" id="task-draggable-14833651" draggable="false">
                                                                                                <div class="task-item">
                                                                                                    <span class="task-top-state">
                                                                                                        <!----><a
                                                                                                            class="btn m-btn--icon m-btn--icon-only btn-quick-edit"
                                                                                                            draggable="false"><i
                                                                                                                class="fa fa-pencil"
                                                                                                                aria-hidden="true"></i></a>
                                                                                                    </span>
                                                                                                    <div class="task-area">
                                                                                                        <!---->
                                                                                                        <div class="task-item-info task-open-edit">
                                                                                                            <div class="clearfix section-card-label">
                                                                                                            </div>
                                                                                                            <div class="m-checkbox-list task-checkbox">
                                                                                                                <label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                                                        type="checkbox"><span></span></label>
                                                                                                                <a class="m-taskname-lable" draggable="false">THU
                                                                                                                    CHI
                                                                                                                </a>
                                                                                                            </div>
                                                                                                            <div class="clearfix">
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <div class="indicator-block task-file">
                                                                                                                    <span class="fa fa-paperclip" aria-hidden="true"></span><span>1</span>
                                                                                                                </div>
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                            </div>
                                                                                                            <div class="clearfix task-info-asign">
                                                                                                                <div class="list-avatar-asign myxteam-list-pic">
                                                                                                                    <!---->
                                                                                                                    <a draggable="false"><img src="templates/quanlycongviec/20220526082901.jpg" title="Trang" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/Thumb/20220526082901.jpg"
                                                                                                                            lazy="loaded" draggable="false"></a>
                                                                                                                </div><a class="indicator-block task-notify" draggable="false"><span
                                                                                                                        class="fas fa-bell"></span></a>
                                                                                                                <a class="indicator-block task-pin" draggable="false"><span
                                                                                                                        class="fas fa-thumbtack"></span></a>
                                                                                                            </div>
                                                                                                            <!---->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="custom-dnd-draggable-wrapper" id="task-draggable-14490094">
                                                                                                <div class="task-item">
                                                                                                    <span class="task-top-state">
                                                                                                        <!----><a
                                                                                                            class="btn m-btn--icon m-btn--icon-only btn-quick-edit"><i
                                                                                                                class="fa fa-pencil"
                                                                                                                aria-hidden="true"></i></a>
                                                                                                    </span>
                                                                                                    <div class="task-area">
                                                                                                        <!---->
                                                                                                        <div class="task-item-info task-open-edit">
                                                                                                            <div class="clearfix section-card-label">
                                                                                                            </div>
                                                                                                            <div class="m-checkbox-list task-checkbox">
                                                                                                                <label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                                                        type="checkbox"><span></span></label>
                                                                                                                <a class="m-taskname-lable">Thiết
                                                                                                                    bị
                                                                                                                    và
                                                                                                                    phụ
                                                                                                                    kiện
                                                                                                                </a>
                                                                                                            </div>
                                                                                                            <div class="clearfix">
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <div class="indicator-block task-file">
                                                                                                                    <span class="fa fa-paperclip" aria-hidden="true"></span><span>5</span>
                                                                                                                </div>
                                                                                                                <div class="indicator-block task-comment">
                                                                                                                    <span class="fa-comments-alt"></span><span>1</span>
                                                                                                                </div>
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                            </div>
                                                                                                            <div class="clearfix task-info-asign">
                                                                                                                <div class="list-avatar-asign myxteam-list-pic">
                                                                                                                    <!---->
                                                                                                                    <a><img src="templates/quanlycongviec/iOS-device-20220426200423062-IMG_0564.JPG" title="Vi Thảo" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/20220426200423062/iOS-device-20220426200423062-IMG_0564.JPG"
                                                                                                                            lazy="loaded"></a>
                                                                                                                </div><a class="indicator-block task-notify"><span
                                                                                                                        class="fas fa-bell"></span></a><a class="indicator-block task-pin"><span
                                                                                                                        class="fas fa-thumbtack"></span></a>
                                                                                                            </div>
                                                                                                            <!---->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="custom-dnd-draggable-wrapper" id="task-draggable-14427557">
                                                                                                <div class="task-item">
                                                                                                    <span class="task-top-state">
                                                                                                        <!----><a
                                                                                                            class="btn m-btn--icon m-btn--icon-only btn-quick-edit"><i
                                                                                                                class="fa fa-pencil"
                                                                                                                aria-hidden="true"></i></a>
                                                                                                    </span>
                                                                                                    <div class="task-area">
                                                                                                        <!---->
                                                                                                        <div class="task-item-info task-open-edit">
                                                                                                            <div class="clearfix section-card-label">
                                                                                                                <div class="indicator-block task-label-color" style="background-color: rgb(204, 0, 0);">
                                                                                                                    <span class="label-text"></span>
                                                                                                                </div>
                                                                                                                <div class="indicator-block task-label-color" style="background-color: rgb(255, 0, 128);">
                                                                                                                    <span class="label-text"></span>
                                                                                                                </div>
                                                                                                                <div class="indicator-block task-label-color" style="background-color: rgb(255, 222, 0);">
                                                                                                                    <span class="label-text"></span>
                                                                                                                </div>
                                                                                                                <div class="indicator-block task-label-color" style="background-color: rgb(146, 205, 0);">
                                                                                                                    <span class="label-text"></span>
                                                                                                                </div>
                                                                                                                <div class="indicator-block task-label-color" style="background-color: rgb(51, 153, 255);">
                                                                                                                    <span class="label-text"></span>
                                                                                                                </div>
                                                                                                                <div class="indicator-block task-label-color" style="background-color: rgb(0, 51, 102);">
                                                                                                                    <span class="label-text"></span>
                                                                                                                </div>
                                                                                                                <div class="indicator-block task-label-color" style="background-color: rgb(140, 72, 159);">
                                                                                                                    <span class="label-text"></span>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                            <div class="m-checkbox-list task-checkbox">
                                                                                                                <label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                                                        type="checkbox"><span></span></label>
                                                                                                                <a class="m-taskname-lable">Hợp
                                                                                                                    đồng
                                                                                                                    thiết
                                                                                                                    kế
                                                                                                                </a>
                                                                                                            </div>
                                                                                                            <div class="clearfix">
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <div class="indicator-block task-subtask">
                                                                                                                    <span class="fa-tasks"></span><span>
                                                                                                                        0/4
                                                                                                                    </span>
                                                                                                                </div>
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                            </div>
                                                                                                            <div class="clearfix task-info-asign">
                                                                                                                <div class="list-avatar-asign myxteam-list-pic">
                                                                                                                    <!---->
                                                                                                                    <a><img src="templates/quanlycongviec/no-avatar.png" title="Huy" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/no-avatar.png"
                                                                                                                            lazy="loaded"></a>
                                                                                                                </div><a class="indicator-block task-notify"><span
                                                                                                                        class="fas fa-bell"></span></a><a class="indicator-block task-pin"><span
                                                                                                                        class="fas fa-thumbtack"></span></a>
                                                                                                            </div>
                                                                                                            <!---->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="custom-dnd-draggable-wrapper" id="task-draggable-14427560">
                                                                                                <div class="task-item">
                                                                                                    <span class="task-top-state">
                                                                                                        <!----><a
                                                                                                            class="btn m-btn--icon m-btn--icon-only btn-quick-edit"><i
                                                                                                                class="fa fa-pencil"
                                                                                                                aria-hidden="true"></i></a>
                                                                                                    </span>
                                                                                                    <div class="task-area">
                                                                                                        <!---->
                                                                                                        <div class="task-item-info task-open-edit">
                                                                                                            <div class="clearfix section-card-label">
                                                                                                                <div class="indicator-block task-label-color" style="background-color: rgb(255, 222, 0);">
                                                                                                                    <span class="label-text"></span>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                            <div class="m-checkbox-list task-checkbox">
                                                                                                                <label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                                                        type="checkbox"><span></span></label>
                                                                                                                <a class="m-taskname-lable">Báo
                                                                                                                    giá
                                                                                                                    thi
                                                                                                                    công
                                                                                                                </a>
                                                                                                            </div>
                                                                                                            <div class="clearfix">
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <div class="indicator-block task-subtask">
                                                                                                                    <span class="fa-tasks"></span><span>
                                                                                                                        0/4
                                                                                                                    </span>
                                                                                                                </div>
                                                                                                                <div class="indicator-block task-file">
                                                                                                                    <span class="fa fa-paperclip" aria-hidden="true"></span><span>1</span>
                                                                                                                </div>
                                                                                                                <div class="indicator-block task-comment">
                                                                                                                    <span class="fa-comments-alt"></span><span>1</span>
                                                                                                                </div>
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                            </div>
                                                                                                            <div class="clearfix task-info-asign">
                                                                                                                <div class="list-avatar-asign myxteam-list-pic">
                                                                                                                    <a><img src="templates/quanlycongviec/iOS-device-20220426200423062-IMG_0564.JPG" title="Vi Thảo" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/20220426200423062/iOS-device-20220426200423062-IMG_0564.JPG"
                                                                                                                            lazy="loaded"></a>
                                                                                                                    <a><img src="templates/quanlycongviec/no-avatar.png" title="Huy" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/no-avatar.png"
                                                                                                                            lazy="loaded"></a>
                                                                                                                </div><a class="indicator-block task-notify"><span
                                                                                                                        class="fas fa-bell"></span></a><a class="indicator-block task-pin"><span
                                                                                                                        class="fas fa-thumbtack"></span></a>
                                                                                                            </div>
                                                                                                            <!---->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="custom-dnd-draggable-wrapper" id="task-draggable-14427559">
                                                                                                <div class="task-item">
                                                                                                    <span class="task-top-state">
                                                                                                        <!----><a
                                                                                                            class="btn m-btn--icon m-btn--icon-only btn-quick-edit"><i
                                                                                                                class="fa fa-pencil"
                                                                                                                aria-hidden="true"></i></a>
                                                                                                    </span>
                                                                                                    <div class="task-area">
                                                                                                        <!---->
                                                                                                        <div class="task-item-info task-open-edit">
                                                                                                            <div class="clearfix section-card-label">
                                                                                                                <div class="indicator-block task-label-color" style="background-color: rgb(51, 153, 255);">
                                                                                                                    <span class="label-text"></span>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                            <div class="m-checkbox-list task-checkbox">
                                                                                                                <label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                                                        type="checkbox"><span></span></label>
                                                                                                                <a class="m-taskname-lable">Hợp
                                                                                                                    đồng
                                                                                                                    thi
                                                                                                                    công
                                                                                                                </a>
                                                                                                            </div>
                                                                                                            <div class="clearfix">
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <div class="indicator-block task-subtask">
                                                                                                                    <span class="fa-tasks"></span><span>
                                                                                                                        2/5
                                                                                                                    </span>
                                                                                                                </div>
                                                                                                                <div class="indicator-block task-file">
                                                                                                                    <span class="fa fa-paperclip" aria-hidden="true"></span><span>3</span>
                                                                                                                </div>
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                            </div>
                                                                                                            <div class="clearfix task-info-asign">
                                                                                                                <div class="list-avatar-asign myxteam-list-pic">
                                                                                                                    <a><img src="templates/quanlycongviec/iOS-device-20220426200423062-IMG_0564.JPG" title="Vi Thảo" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/20220426200423062/iOS-device-20220426200423062-IMG_0564.JPG"
                                                                                                                            lazy="loaded"></a>
                                                                                                                    <a><img src="templates/quanlycongviec/no-avatar.png" title="Huy" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/no-avatar.png"
                                                                                                                            lazy="loaded"></a>
                                                                                                                </div><a class="indicator-block task-notify"><span
                                                                                                                        class="fas fa-bell"></span></a><a class="indicator-block task-pin"><span
                                                                                                                        class="fas fa-thumbtack"></span></a>
                                                                                                            </div>
                                                                                                            <!---->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="custom-dnd-draggable-wrapper" id="task-draggable-14427561">
                                                                                                <div class="task-item">
                                                                                                    <span class="task-top-state">
                                                                                                        <!----><a
                                                                                                            class="btn m-btn--icon m-btn--icon-only btn-quick-edit"><i
                                                                                                                class="fa fa-pencil"
                                                                                                                aria-hidden="true"></i></a>
                                                                                                    </span>
                                                                                                    <div class="task-area">
                                                                                                        <!---->
                                                                                                        <div class="task-item-info task-open-edit">
                                                                                                            <div class="clearfix section-card-label">
                                                                                                            </div>
                                                                                                            <div class="m-checkbox-list task-checkbox">
                                                                                                                <label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                                                        type="checkbox"><span></span></label>
                                                                                                                <a class="m-taskname-lable">Thống
                                                                                                                    nhất
                                                                                                                    vật
                                                                                                                    liệu
                                                                                                                    sử
                                                                                                                    dụng
                                                                                                                    thi
                                                                                                                    công
                                                                                                                </a>
                                                                                                            </div>
                                                                                                            <div class="clearfix">
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <div class="indicator-block task-subtask">
                                                                                                                    <span class="fa-tasks"></span><span>
                                                                                                                        0/3
                                                                                                                    </span>
                                                                                                                </div>
                                                                                                                <div class="indicator-block task-file">
                                                                                                                    <span class="fa fa-paperclip" aria-hidden="true"></span><span>5</span>
                                                                                                                </div>
                                                                                                                <div class="indicator-block task-comment">
                                                                                                                    <span class="fa-comments-alt"></span><span>1</span>
                                                                                                                </div>
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                            </div>
                                                                                                            <div class="clearfix task-info-asign">
                                                                                                                <div class="list-avatar-asign myxteam-list-pic">
                                                                                                                    <a><img src="templates/quanlycongviec/iOS-device-20220426200423062-IMG_0564.JPG" title="Vi Thảo" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/20220426200423062/iOS-device-20220426200423062-IMG_0564.JPG"
                                                                                                                            lazy="loaded"></a>
                                                                                                                    <a><img src="templates/quanlycongviec/no-avatar.png" title="Huy" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/no-avatar.png"
                                                                                                                            lazy="loaded"></a>
                                                                                                                </div><a class="indicator-block task-notify"><span
                                                                                                                        class="fas fa-bell"></span></a><a class="indicator-block task-pin"><span
                                                                                                                        class="fas fa-thumbtack"></span></a>
                                                                                                            </div>
                                                                                                            <!---->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="custom-dnd-draggable-wrapper" id="task-draggable-14427558">
                                                                                                <div class="task-item">
                                                                                                    <span class="task-top-state">
                                                                                                        <!----><a
                                                                                                            class="btn m-btn--icon m-btn--icon-only btn-quick-edit"><i
                                                                                                                class="fa fa-pencil"
                                                                                                                aria-hidden="true"></i></a>
                                                                                                    </span>
                                                                                                    <div class="task-area">
                                                                                                        <!---->
                                                                                                        <div class="task-item-info task-open-edit">
                                                                                                            <div class="clearfix section-card-label">
                                                                                                                <div class="indicator-block task-label-color" style="background-color: rgb(255, 222, 0);">
                                                                                                                    <span class="label-text"></span>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                            <div class="m-checkbox-list task-checkbox">
                                                                                                                <label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                                                        type="checkbox"><span></span></label>
                                                                                                                <a class="m-taskname-lable">Bản
                                                                                                                    nghiệm
                                                                                                                    thu
                                                                                                                    và
                                                                                                                    quyết
                                                                                                                    toán
                                                                                                                    thi
                                                                                                                    công
                                                                                                                </a>
                                                                                                            </div>
                                                                                                            <div class="clearfix">
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <div class="indicator-block task-subtask">
                                                                                                                    <span class="fa-tasks"></span><span>
                                                                                                                        0/3
                                                                                                                    </span>
                                                                                                                </div>
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                            </div>
                                                                                                            <div class="clearfix task-info-asign">
                                                                                                                <div class="list-avatar-asign myxteam-list-pic">
                                                                                                                    <!---->
                                                                                                                    <a><img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" title="Huy" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/no-avatar.png"
                                                                                                                            lazy="loading"></a>
                                                                                                                </div><a class="indicator-block task-notify"><span
                                                                                                                        class="fas fa-bell"></span></a><a class="indicator-block task-pin"><span
                                                                                                                        class="fas fa-thumbtack"></span></a>
                                                                                                            </div>
                                                                                                            <!---->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="__rail-is-vertical" style="position: absolute; z-index: 1; border-radius: 6px; background: rgba(1, 169, 154, 0); border: none; width: 6px; top: 0px; bottom: 0px; right: 2px;">
                                                                            <div class="__bar-wrap-is-vertical" style="position: absolute; border-radius: 6px; top: 0px; bottom: 0px; width: 100%;">
                                                                                <div class="__bar-is-vertical" style="cursor: pointer; position: absolute; margin: auto; transition: opacity 0.5s ease 0s; user-select: none; border-radius: inherit; height: 53.4014%; background: rgb(188, 189, 196); width: 6px; opacity: 0; transform: translateY(0%); left: 0px; right: 0px;">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="list-task-add"><i class="fa fa-plus" aria-hidden="true"></i><a class="btn-block btn-link"><span>Thêm mới
                                                                                công việc</span></a></div>
                                                                </div>
                                                                <!---->
                                                            </div>
                                                            <div id="section-2462400" class="custom-dnd-draggable-wrapper project-kanban-group custom-dnd-draggable-group">
                                                                <div class="m-background-light">
                                                                    <div class="kanban-section-head">
                                                                        <div class="section-head-caption"><span title="THIẾT KẾ 2D VÀ CONCEPT" class="section-head-caption-title handle-dragg">
                                                                                THIẾT KẾ 2D VÀ CONCEPT </span>
                                                                            <!---->
                                                                        </div>
                                                                        <div class="section-head-control">
                                                                            <ul class="section-head-control-list">
                                                                                <li class="section-head-control-item">
                                                                                    <div class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <a class="m-portlet__nav-link m-dropdown__toggle"><i
                                                                                                class="fa fa-info-circle"
                                                                                                aria-hidden="true"></i></a>
                                                                                        <!---->
                                                                                    </div>
                                                                                </li>
                                                                                <li class="section-head-control-item">
                                                                                    <div aria-expanded="true" class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <a class="m-portlet__nav-link m-dropdown__toggle"><i
                                                                                                class="fa fa-sort"
                                                                                                aria-hidden="true"></i></a>
                                                                                        <!---->
                                                                                        <!---->
                                                                                    </div>
                                                                                </li>
                                                                                <li class="section-head-control-item">
                                                                                    <div aria-expanded="true" class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <a class="m-portlet__nav-link m-dropdown__toggle"><i
                                                                                                class="fa fa-ellipsis-h"
                                                                                                aria-hidden="true"></i></a>
                                                                                        <!---->
                                                                                        <!---->
                                                                                    </div>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                    <div class="__vuescroll hasVBar" style="height: 100%; width: 100%; padding: 0px; position: relative; overflow: hidden;">
                                                                        <div class="__panel" style="position: relative; box-sizing: border-box; height: 100%; overflow: hidden scroll; margin-right: -8px;">
                                                                            <div class="__view" style="position: relative; box-sizing: border-box; min-width: 100%; min-height: 100%; width: 100%;">
                                                                                <div class="vertical-scroll-group-task" style="max-height: 471px;">
                                                                                    <div class="myxteam-task">
                                                                                        <div id="backdropDraggSection-2462400" class="backdrop-dragg-section">
                                                                                        </div>
                                                                                        <div id="draggable-2462400" class="custom-dnd-container vertical">
                                                                                            <div class="custom-dnd-draggable-wrapper" id="task-draggable-14427584" draggable="false">
                                                                                                <div class="task-item">
                                                                                                    <span class="task-top-state">
                                                                                                        <!----><a
                                                                                                            class="btn m-btn--icon m-btn--icon-only btn-quick-edit"
                                                                                                            draggable="false"><i
                                                                                                                class="fa fa-pencil"
                                                                                                                aria-hidden="true"></i></a>
                                                                                                    </span>
                                                                                                    <div class="task-area">
                                                                                                        <!---->
                                                                                                        <div class="task-item-info task-open-edit">
                                                                                                            <div class="clearfix section-card-label">
                                                                                                            </div>
                                                                                                            <div class="m-checkbox-list task-checkbox">
                                                                                                                <label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                                                        type="checkbox"><span></span></label>
                                                                                                                <a class="m-taskname-lable" draggable="false">Lưu
                                                                                                                    ý
                                                                                                                    trong
                                                                                                                    thiết
                                                                                                                    kế
                                                                                                                    mặt
                                                                                                                    bằng
                                                                                                                </a>
                                                                                                            </div>
                                                                                                            <div class="clearfix">
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <div class="indicator-block task-subtask">
                                                                                                                    <span class="fa-tasks"></span><span>
                                                                                                                        0/3
                                                                                                                    </span>
                                                                                                                </div>
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                            </div>
                                                                                                            <div class="clearfix task-info-asign">
                                                                                                                <div class="list-avatar-asign myxteam-list-pic">
                                                                                                                    <!---->
                                                                                                                    <a draggable="false"><img src="templates/quanlycongviec/no-avatar.png" title="Huy" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/no-avatar.png"
                                                                                                                            lazy="loaded" draggable="false"></a>
                                                                                                                </div><a class="indicator-block task-notify" draggable="false"><span
                                                                                                                        class="fas fa-bell"></span></a>
                                                                                                                <a class="indicator-block task-pin" draggable="false"><span
                                                                                                                        class="fas fa-thumbtack"></span></a>
                                                                                                            </div>
                                                                                                            <!---->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="custom-dnd-draggable-wrapper" id="task-draggable-14427581">
                                                                                                <div class="task-item">
                                                                                                    <span class="task-top-state">
                                                                                                        <!----><a
                                                                                                            class="btn m-btn--icon m-btn--icon-only btn-quick-edit"><i
                                                                                                                class="fa fa-pencil"
                                                                                                                aria-hidden="true"></i></a>
                                                                                                    </span>
                                                                                                    <div class="task-area">
                                                                                                        <!---->
                                                                                                        <div class="task-item-info task-open-edit">
                                                                                                            <div class="clearfix section-card-label">
                                                                                                                <div class="indicator-block task-label-color" style="background-color: rgb(146, 205, 0);">
                                                                                                                    <span class="label-text"></span>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                            <div class="m-checkbox-list task-checkbox">
                                                                                                                <label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                                                        type="checkbox"><span></span></label>
                                                                                                                <a class="m-taskname-lable">Yêu
                                                                                                                    cầu
                                                                                                                    thiết
                                                                                                                    kế
                                                                                                                    từ
                                                                                                                    chủ
                                                                                                                    đầu
                                                                                                                    tư
                                                                                                                </a>
                                                                                                            </div>
                                                                                                            <div class="clearfix">
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <div class="indicator-block task-subtask">
                                                                                                                    <span class="fa-tasks"></span><span>
                                                                                                                        0/5
                                                                                                                    </span>
                                                                                                                </div>
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                            </div>
                                                                                                            <div class="clearfix task-info-asign">
                                                                                                                <div class="list-avatar-asign myxteam-list-pic">
                                                                                                                    <!---->
                                                                                                                    <a><img src="templates/quanlycongviec/no-avatar.png" title="Huy" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/no-avatar.png"
                                                                                                                            lazy="loaded"></a>
                                                                                                                </div><a class="indicator-block task-notify"><span
                                                                                                                        class="fas fa-bell"></span></a><a class="indicator-block task-pin"><span
                                                                                                                        class="fas fa-thumbtack"></span></a>
                                                                                                            </div>
                                                                                                            <!---->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="custom-dnd-draggable-wrapper" id="task-draggable-14427582">
                                                                                                <div class="task-item">
                                                                                                    <span class="task-top-state">
                                                                                                        <!----><a
                                                                                                            class="btn m-btn--icon m-btn--icon-only btn-quick-edit"><i
                                                                                                                class="fa fa-pencil"
                                                                                                                aria-hidden="true"></i></a>
                                                                                                    </span>
                                                                                                    <div class="task-area">
                                                                                                        <!---->
                                                                                                        <div class="task-item-info task-open-edit">
                                                                                                            <div class="clearfix section-card-label">
                                                                                                                <div class="indicator-block task-label-color" style="background-color: rgb(146, 205, 0);">
                                                                                                                    <span class="label-text"></span>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                            <div class="m-checkbox-list task-checkbox">
                                                                                                                <label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                                                        type="checkbox"><span></span></label>
                                                                                                                <a class="m-taskname-lable">Khảo
                                                                                                                    sát
                                                                                                                    hiện
                                                                                                                    trạng
                                                                                                                </a>
                                                                                                            </div>
                                                                                                            <div class="clearfix">
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <div class="indicator-block task-subtask">
                                                                                                                    <span class="fa-tasks"></span><span>
                                                                                                                        0/8
                                                                                                                    </span>
                                                                                                                </div>
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                            </div>
                                                                                                            <div class="clearfix task-info-asign">
                                                                                                                <div class="list-avatar-asign myxteam-list-pic">
                                                                                                                    <!---->
                                                                                                                    <a><img src="templates/quanlycongviec/no-avatar.png" title="Huy" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/no-avatar.png"
                                                                                                                            lazy="loaded"></a>
                                                                                                                </div><a class="indicator-block task-notify"><span
                                                                                                                        class="fas fa-bell"></span></a><a class="indicator-block task-pin"><span
                                                                                                                        class="fas fa-thumbtack"></span></a>
                                                                                                            </div>
                                                                                                            <!---->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="custom-dnd-draggable-wrapper" id="task-draggable-14427583">
                                                                                                <div class="task-item">
                                                                                                    <span class="task-top-state">
                                                                                                        <!----><a
                                                                                                            class="btn m-btn--icon m-btn--icon-only btn-quick-edit"><i
                                                                                                                class="fa fa-pencil"
                                                                                                                aria-hidden="true"></i></a>
                                                                                                    </span>
                                                                                                    <div class="task-area">
                                                                                                        <!---->
                                                                                                        <div class="task-item-info task-open-edit">
                                                                                                            <div class="clearfix section-card-label">
                                                                                                                <div class="indicator-block task-label-color" style="background-color: rgb(146, 205, 0);">
                                                                                                                    <span class="label-text"></span>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                            <div class="m-checkbox-list task-checkbox">
                                                                                                                <label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                                                        type="checkbox"><span></span></label>
                                                                                                                <a class="m-taskname-lable">Thiết
                                                                                                                    kế
                                                                                                                    2D +
                                                                                                                    Concept
                                                                                                                    Lần
                                                                                                                    1
                                                                                                                </a>
                                                                                                            </div>
                                                                                                            <div class="clearfix">
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <div class="indicator-block task-subtask">
                                                                                                                    <span class="fa-tasks"></span><span>
                                                                                                                        0/2
                                                                                                                    </span>
                                                                                                                </div>
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                            </div>
                                                                                                            <div class="clearfix task-info-asign">
                                                                                                                <div class="list-avatar-asign myxteam-list-pic">
                                                                                                                    <!---->
                                                                                                                    <a><img src="templates/quanlycongviec/no-avatar.png" title="Huy" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/no-avatar.png"
                                                                                                                            lazy="loaded"></a>
                                                                                                                </div><a class="indicator-block task-notify"><span
                                                                                                                        class="fas fa-bell"></span></a><a class="indicator-block task-pin"><span
                                                                                                                        class="fas fa-thumbtack"></span></a>
                                                                                                            </div>
                                                                                                            <!---->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="__rail-is-vertical" style="position: absolute; z-index: 1; border-radius: 6px; background: rgba(1, 169, 154, 0); border: none; width: 6px; top: 0px; bottom: 0px; right: 2px;">
                                                                            <div class="__bar-wrap-is-vertical" style="position: absolute; border-radius: 6px; top: 0px; bottom: 0px; width: 100%;">
                                                                                <div class="__bar-is-vertical" style="cursor: pointer; position: absolute; margin: auto; transition: opacity 0.5s ease 0s; user-select: none; border-radius: inherit; height: 98.125%; background: rgb(188, 189, 196); width: 6px; opacity: 0; transform: translateY(0%); left: 0px; right: 0px;">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="list-task-add"><i class="fa fa-plus" aria-hidden="true"></i><a class="btn-block btn-link"><span>Thêm mới
                                                                                công việc</span></a></div>
                                                                </div>
                                                                <!---->
                                                            </div>
                                                            <div id="section-2462401" class="custom-dnd-draggable-wrapper project-kanban-group custom-dnd-draggable-group">
                                                                <div class="m-background-light">
                                                                    <div class="kanban-section-head">
                                                                        <div class="section-head-caption"><span title="3D - PHỐI CẢNH" class="section-head-caption-title handle-dragg">
                                                                                3D - PHỐI CẢNH </span>
                                                                            <!---->
                                                                        </div>
                                                                        <div class="section-head-control">
                                                                            <ul class="section-head-control-list">
                                                                                <li class="section-head-control-item">
                                                                                    <div class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <a class="m-portlet__nav-link m-dropdown__toggle"><i
                                                                                                class="fa fa-info-circle"
                                                                                                aria-hidden="true"></i></a>
                                                                                        <!---->
                                                                                    </div>
                                                                                </li>
                                                                                <li class="section-head-control-item">
                                                                                    <div aria-expanded="true" class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <a class="m-portlet__nav-link m-dropdown__toggle"><i
                                                                                                class="fa fa-sort"
                                                                                                aria-hidden="true"></i></a>
                                                                                        <!---->
                                                                                        <!---->
                                                                                    </div>
                                                                                </li>
                                                                                <li class="section-head-control-item">
                                                                                    <div aria-expanded="true" class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <a class="m-portlet__nav-link m-dropdown__toggle"><i
                                                                                                class="fa fa-ellipsis-h"
                                                                                                aria-hidden="true"></i></a>
                                                                                        <!---->
                                                                                        <!---->
                                                                                    </div>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                    <div class="__vuescroll" style="height: 100%; width: 100%; padding: 0px; position: relative; overflow: hidden;">
                                                                        <div class="__panel" style="position: relative; box-sizing: border-box; height: 100%; overflow: hidden;">
                                                                            <div class="__view" style="position: relative; box-sizing: border-box; min-width: 100%; min-height: 100%; width: 100%;">
                                                                                <div class="vertical-scroll-group-task" style="max-height: 471px;">
                                                                                    <div class="myxteam-task">
                                                                                        <div id="backdropDraggSection-2462401" class="backdrop-dragg-section">
                                                                                        </div>
                                                                                        <div id="draggable-2462401" class="custom-dnd-container vertical">
                                                                                            <div class="custom-dnd-draggable-wrapper" id="task-draggable-14427603">
                                                                                                <div class="task-item">
                                                                                                    <span class="task-top-state">
                                                                                                        <!----><a
                                                                                                            class="btn m-btn--icon m-btn--icon-only btn-quick-edit"><i
                                                                                                                class="fa fa-pencil"
                                                                                                                aria-hidden="true"></i></a>
                                                                                                    </span>
                                                                                                    <div class="task-area">
                                                                                                        <!---->
                                                                                                        <div class="task-item-info task-open-edit">
                                                                                                            <div class="clearfix section-card-label">
                                                                                                                <div class="indicator-block task-label-color" style="background-color: rgb(146, 205, 0);">
                                                                                                                    <span class="label-text"></span>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                            <div class="m-checkbox-list task-checkbox">
                                                                                                                <label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                                                        type="checkbox"><span></span></label>
                                                                                                                <a class="m-taskname-lable">Phối
                                                                                                                    cảnh
                                                                                                                    3D
                                                                                                                    lần
                                                                                                                    1
                                                                                                                </a>
                                                                                                            </div>
                                                                                                            <div class="clearfix">
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <div class="indicator-block task-subtask">
                                                                                                                    <span class="fa-tasks"></span><span>
                                                                                                                        0/2
                                                                                                                    </span>
                                                                                                                </div>
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                            </div>
                                                                                                            <div class="clearfix task-info-asign">
                                                                                                                <div class="list-avatar-asign myxteam-list-pic">
                                                                                                                    <!---->
                                                                                                                    <a><img src="templates/quanlycongviec/no-avatar.png" title="Huy" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/no-avatar.png"
                                                                                                                            lazy="loaded"></a>
                                                                                                                </div><a class="indicator-block task-notify"><span
                                                                                                                        class="fas fa-bell"></span></a><a class="indicator-block task-pin"><span
                                                                                                                        class="fas fa-thumbtack"></span></a>
                                                                                                            </div>
                                                                                                            <!---->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="custom-dnd-draggable-wrapper" id="task-draggable-14427604">
                                                                                                <div class="task-item">
                                                                                                    <span class="task-top-state">
                                                                                                        <!----><a
                                                                                                            class="btn m-btn--icon m-btn--icon-only btn-quick-edit"><i
                                                                                                                class="fa fa-pencil"
                                                                                                                aria-hidden="true"></i></a>
                                                                                                    </span>
                                                                                                    <div class="task-area">
                                                                                                        <!---->
                                                                                                        <div class="task-item-info task-open-edit">
                                                                                                            <div class="clearfix section-card-label">
                                                                                                                <div class="indicator-block task-label-color" style="background-color: rgb(146, 205, 0);">
                                                                                                                    <span class="label-text"></span>
                                                                                                                </div>
                                                                                                                <div class="indicator-block task-label-color" style="background-color: rgb(51, 153, 255);">
                                                                                                                    <span class="label-text"></span>
                                                                                                                </div>
                                                                                                                <div class="indicator-block task-label-color" style="background-color: rgb(0, 51, 102);">
                                                                                                                    <span class="label-text"></span>
                                                                                                                </div>
                                                                                                                <div class="indicator-block task-label-color" style="background-color: rgb(140, 72, 159);">
                                                                                                                    <span class="label-text"></span>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                            <div class="m-checkbox-list task-checkbox">
                                                                                                                <label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                                                        type="checkbox"><span></span></label>
                                                                                                                <a class="m-taskname-lable">Phối
                                                                                                                    cảnh
                                                                                                                    khách
                                                                                                                    hàng
                                                                                                                    duyệt
                                                                                                                    OK
                                                                                                                </a>
                                                                                                            </div>
                                                                                                            <div class="clearfix">
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <div class="indicator-block task-file">
                                                                                                                    <span class="fa fa-paperclip" aria-hidden="true"></span><span>9</span>
                                                                                                                </div>
                                                                                                                <div class="indicator-block task-comment">
                                                                                                                    <span class="fa-comments-alt"></span><span>1</span>
                                                                                                                </div>
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                            </div>
                                                                                                            <div class="clearfix task-info-asign">
                                                                                                                <div class="list-avatar-asign myxteam-list-pic">
                                                                                                                    <!---->
                                                                                                                    <a><img src="templates/quanlycongviec/no-avatar.png" title="Huy" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/no-avatar.png"
                                                                                                                            lazy="loaded"></a>
                                                                                                                </div><a class="indicator-block task-notify"><span
                                                                                                                        class="fas fa-bell"></span></a><a class="indicator-block task-pin"><span
                                                                                                                        class="fas fa-thumbtack"></span></a>
                                                                                                            </div>
                                                                                                            <!---->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="custom-dnd-draggable-wrapper" id="task-draggable-14427605">
                                                                                                <div class="task-item">
                                                                                                    <span class="task-top-state">
                                                                                                        <!----><a
                                                                                                            class="btn m-btn--icon m-btn--icon-only btn-quick-edit"><i
                                                                                                                class="fa fa-pencil"
                                                                                                                aria-hidden="true"></i></a>
                                                                                                    </span>
                                                                                                    <div class="task-area">
                                                                                                        <!---->
                                                                                                        <div class="task-item-info task-open-edit">
                                                                                                            <div class="clearfix section-card-label">
                                                                                                                <div class="indicator-block task-label-color" style="background-color: rgb(255, 0, 128);">
                                                                                                                    <span class="label-text"></span>
                                                                                                                </div>
                                                                                                                <div class="indicator-block task-label-color" style="background-color: rgb(146, 205, 0);">
                                                                                                                    <span class="label-text"></span>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                            <div class="m-checkbox-list task-checkbox">
                                                                                                                <label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                                                        type="checkbox"><span></span></label>
                                                                                                                <a class="m-taskname-lable">Phối
                                                                                                                    cảnh
                                                                                                                    đóng
                                                                                                                    dấu
                                                                                                                    LOGO
                                                                                                                </a>
                                                                                                            </div>
                                                                                                            <div class="clearfix">
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <div class="indicator-block task-subtask">
                                                                                                                    <span class="fa-tasks"></span><span>
                                                                                                                        0/4
                                                                                                                    </span>
                                                                                                                </div>
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                            </div>
                                                                                                            <div class="clearfix task-info-asign">
                                                                                                                <div class="list-avatar-asign myxteam-list-pic">
                                                                                                                    <!---->
                                                                                                                    <a><img src="templates/quanlycongviec/no-avatar.png" title="Huy" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/no-avatar.png"
                                                                                                                            lazy="loaded"></a>
                                                                                                                </div><a class="indicator-block task-notify"><span
                                                                                                                        class="fas fa-bell"></span></a><a class="indicator-block task-pin"><span
                                                                                                                        class="fas fa-thumbtack"></span></a>
                                                                                                            </div>
                                                                                                            <!---->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="list-task-add"><i class="fa fa-plus" aria-hidden="true"></i><a class="btn-block btn-link"><span>Thêm mới
                                                                                công việc</span></a></div>
                                                                </div>
                                                                <!---->
                                                            </div>
                                                            <div id="section-2462402" class="custom-dnd-draggable-wrapper project-kanban-group custom-dnd-draggable-group">
                                                                <div class="m-background-light">
                                                                    <div class="kanban-section-head">
                                                                        <div class="section-head-caption"><span title="TRIỂN KHAI KỸ THUẬT " class="section-head-caption-title handle-dragg">
                                                                                TRIỂN KHAI KỸ THUẬT </span>
                                                                            <!---->
                                                                        </div>
                                                                        <div class="section-head-control">
                                                                            <ul class="section-head-control-list">
                                                                                <li class="section-head-control-item">
                                                                                    <div class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <a class="m-portlet__nav-link m-dropdown__toggle"><i
                                                                                                class="fa fa-info-circle"
                                                                                                aria-hidden="true"></i></a>
                                                                                        <!---->
                                                                                    </div>
                                                                                </li>
                                                                                <li class="section-head-control-item">
                                                                                    <div aria-expanded="true" class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <a class="m-portlet__nav-link m-dropdown__toggle"><i
                                                                                                class="fa fa-sort"
                                                                                                aria-hidden="true"></i></a>
                                                                                        <!---->
                                                                                        <!---->
                                                                                    </div>
                                                                                </li>
                                                                                <li class="section-head-control-item">
                                                                                    <div aria-expanded="true" class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <a class="m-portlet__nav-link m-dropdown__toggle"><i
                                                                                                class="fa fa-ellipsis-h"
                                                                                                aria-hidden="true"></i></a>
                                                                                        <!---->
                                                                                        <!---->
                                                                                    </div>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                    <div class="__vuescroll" style="height: 100%; width: 100%; padding: 0px; position: relative; overflow: hidden;">
                                                                        <div class="__panel" style="position: relative; box-sizing: border-box; height: 100%; overflow: hidden;">
                                                                            <div class="__view" style="position: relative; box-sizing: border-box; min-width: 100%; min-height: 100%; width: 100%;">
                                                                                <div class="vertical-scroll-group-task" style="max-height: 471px;">
                                                                                    <div class="myxteam-task">
                                                                                        <div id="backdropDraggSection-2462402" class="backdrop-dragg-section">
                                                                                        </div>
                                                                                        <div id="draggable-2462402" class="custom-dnd-container vertical">
                                                                                            <div class="custom-dnd-draggable-wrapper" id="task-draggable-14427612">
                                                                                                <div class="task-item">
                                                                                                    <span class="task-top-state">
                                                                                                        <!----><a
                                                                                                            class="btn m-btn--icon m-btn--icon-only btn-quick-edit"><i
                                                                                                                class="fa fa-pencil"
                                                                                                                aria-hidden="true"></i></a>
                                                                                                    </span>
                                                                                                    <div class="task-area">
                                                                                                        <!---->
                                                                                                        <div class="task-item-info task-open-edit">
                                                                                                            <div class="clearfix section-card-label">
                                                                                                                <div class="indicator-block task-label-color" style="background-color: rgb(146, 205, 0);">
                                                                                                                    <span class="label-text"></span>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                            <div class="m-checkbox-list task-checkbox">
                                                                                                                <label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                                                        type="checkbox"><span></span></label>
                                                                                                                <a class="m-taskname-lable">Hồ
                                                                                                                    sơ
                                                                                                                    in
                                                                                                                    bàn
                                                                                                                    giao
                                                                                                                </a>
                                                                                                            </div>
                                                                                                            <div class="clearfix">
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <div class="indicator-block task-subtask">
                                                                                                                    <span class="fa-tasks"></span><span>
                                                                                                                        0/2
                                                                                                                    </span>
                                                                                                                </div>
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                            </div>
                                                                                                            <div class="clearfix task-info-asign">
                                                                                                                <div class="list-avatar-asign myxteam-list-pic">
                                                                                                                    <!---->
                                                                                                                    <a><img src="templates/quanlycongviec/no-avatar.png" title="Huy" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/no-avatar.png"
                                                                                                                            lazy="loaded"></a>
                                                                                                                </div><a class="indicator-block task-notify"><span
                                                                                                                        class="fas fa-bell"></span></a><a class="indicator-block task-pin"><span
                                                                                                                        class="fas fa-thumbtack"></span></a>
                                                                                                            </div>
                                                                                                            <!---->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="custom-dnd-draggable-wrapper" id="task-draggable-14427613">
                                                                                                <div class="task-item">
                                                                                                    <span class="task-top-state">
                                                                                                        <!----><a
                                                                                                            class="btn m-btn--icon m-btn--icon-only btn-quick-edit"><i
                                                                                                                class="fa fa-pencil"
                                                                                                                aria-hidden="true"></i></a>
                                                                                                    </span>
                                                                                                    <div class="task-area">
                                                                                                        <!---->
                                                                                                        <div class="task-item-info task-open-edit">
                                                                                                            <div class="clearfix section-card-label">
                                                                                                                <div class="indicator-block task-label-color" style="background-color: rgb(51, 153, 255);">
                                                                                                                    <span class="label-text"></span>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                            <div class="m-checkbox-list task-checkbox">
                                                                                                                <label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                                                        type="checkbox"><span></span></label>
                                                                                                                <a class="m-taskname-lable">Bản
                                                                                                                    duyệt
                                                                                                                    vật
                                                                                                                    liệu
                                                                                                                    thi
                                                                                                                    công
                                                                                                                    OK
                                                                                                                </a>
                                                                                                            </div>
                                                                                                            <div class="clearfix">
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                            </div>
                                                                                                            <div class="clearfix task-info-asign">
                                                                                                                <div class="list-avatar-asign myxteam-list-pic">
                                                                                                                    <a><img src="templates/quanlycongviec/20220224085332.jpg" title="Bình Nguyên" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/Thumb/20220224085332.jpg"
                                                                                                                            lazy="loaded"></a>
                                                                                                                    <a><img src="templates/quanlycongviec/no-avatar.png" title="Huy" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/no-avatar.png"
                                                                                                                            lazy="loaded"></a>
                                                                                                                </div><a class="indicator-block task-notify"><span
                                                                                                                        class="fas fa-bell"></span></a><a class="indicator-block task-pin"><span
                                                                                                                        class="fas fa-thumbtack"></span></a>
                                                                                                            </div>
                                                                                                            <!---->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="custom-dnd-draggable-wrapper" id="task-draggable-14427615">
                                                                                                <div class="task-item">
                                                                                                    <span class="task-top-state">
                                                                                                        <!----><a
                                                                                                            class="btn m-btn--icon m-btn--icon-only btn-quick-edit"><i
                                                                                                                class="fa fa-pencil"
                                                                                                                aria-hidden="true"></i></a>
                                                                                                    </span>
                                                                                                    <div class="task-area">
                                                                                                        <!---->
                                                                                                        <div class="task-item-info task-open-edit">
                                                                                                            <div class="clearfix section-card-label">
                                                                                                            </div>
                                                                                                            <div class="m-checkbox-list task-checkbox">
                                                                                                                <label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                                                        type="checkbox"><span></span></label>
                                                                                                                <a class="m-taskname-lable">Các
                                                                                                                    lỗi
                                                                                                                    trong
                                                                                                                    thiết
                                                                                                                    lế
                                                                                                                    và
                                                                                                                    triễng
                                                                                                                    khai
                                                                                                                </a>
                                                                                                            </div>
                                                                                                            <div class="clearfix">
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                            </div>
                                                                                                            <div class="clearfix task-info-asign">
                                                                                                                <div class="list-avatar-asign myxteam-list-pic">
                                                                                                                    <!---->
                                                                                                                    <a><img src="templates/quanlycongviec/no-avatar.png" title="Huy" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/no-avatar.png"
                                                                                                                            lazy="loaded"></a>
                                                                                                                </div><a class="indicator-block task-notify"><span
                                                                                                                        class="fas fa-bell"></span></a><a class="indicator-block task-pin"><span
                                                                                                                        class="fas fa-thumbtack"></span></a>
                                                                                                            </div>
                                                                                                            <!---->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="custom-dnd-draggable-wrapper" id="task-draggable-14427614">
                                                                                                <div class="task-item">
                                                                                                    <span class="task-top-state">
                                                                                                        <!----><a
                                                                                                            class="btn m-btn--icon m-btn--icon-only btn-quick-edit"><i
                                                                                                                class="fa fa-pencil"
                                                                                                                aria-hidden="true"></i></a>
                                                                                                    </span>
                                                                                                    <div class="task-area">
                                                                                                        <!---->
                                                                                                        <div class="task-item-info task-open-edit">
                                                                                                            <div class="clearfix section-card-label">
                                                                                                            </div>
                                                                                                            <div class="m-checkbox-list task-checkbox">
                                                                                                                <label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                                                        type="checkbox"><span></span></label>
                                                                                                                <a class="m-taskname-lable">Bản
                                                                                                                    vẽ
                                                                                                                    kỹ
                                                                                                                    thuật
                                                                                                                    thi
                                                                                                                    công
                                                                                                                    cuối
                                                                                                                    cùng
                                                                                                                </a>
                                                                                                            </div>
                                                                                                            <div class="clearfix">
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <div class="indicator-block task-file">
                                                                                                                    <span class="fa fa-paperclip" aria-hidden="true"></span><span>22</span>
                                                                                                                </div>
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                            </div>
                                                                                                            <div class="clearfix task-info-asign">
                                                                                                                <div class="list-avatar-asign myxteam-list-pic">
                                                                                                                    <a><img src="templates/quanlycongviec/20220224085332.jpg" title="Bình Nguyên" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/Thumb/20220224085332.jpg"
                                                                                                                            lazy="loaded"></a>
                                                                                                                    <a><img src="templates/quanlycongviec/no-avatar.png" title="Huy" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/no-avatar.png"
                                                                                                                            lazy="loaded"></a>
                                                                                                                </div><a class="indicator-block task-notify"><span
                                                                                                                        class="fas fa-bell"></span></a><a class="indicator-block task-pin"><span
                                                                                                                        class="fas fa-thumbtack"></span></a>
                                                                                                            </div>
                                                                                                            <!---->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="list-task-add"><i class="fa fa-plus" aria-hidden="true"></i><a class="btn-block btn-link"><span>Thêm mới
                                                                                công việc</span></a></div>
                                                                </div>
                                                                <!---->
                                                            </div>
                                                            <div id="section-2462403" class="custom-dnd-draggable-wrapper project-kanban-group custom-dnd-draggable-group">
                                                                <div class="m-background-light">
                                                                    <div class="kanban-section-head">
                                                                        <div class="section-head-caption"><span title="CÔNG TÁC THI CÔNG" class="section-head-caption-title handle-dragg">
                                                                                CÔNG TÁC THI CÔNG </span>
                                                                            <!---->
                                                                        </div>
                                                                        <div class="section-head-control">
                                                                            <ul class="section-head-control-list">
                                                                                <li class="section-head-control-item">
                                                                                    <div class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <a class="m-portlet__nav-link m-dropdown__toggle"><i
                                                                                                class="fa fa-info-circle"
                                                                                                aria-hidden="true"></i></a>
                                                                                        <!---->
                                                                                    </div>
                                                                                </li>
                                                                                <li class="section-head-control-item">
                                                                                    <div aria-expanded="true" class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <a class="m-portlet__nav-link m-dropdown__toggle"><i
                                                                                                class="fa fa-sort"
                                                                                                aria-hidden="true"></i></a>
                                                                                        <!---->
                                                                                        <!---->
                                                                                    </div>
                                                                                </li>
                                                                                <li class="section-head-control-item">
                                                                                    <div aria-expanded="true" class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <a class="m-portlet__nav-link m-dropdown__toggle"><i
                                                                                                class="fa fa-ellipsis-h"
                                                                                                aria-hidden="true"></i></a>
                                                                                        <!---->
                                                                                        <!---->
                                                                                    </div>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                    <div class="__vuescroll" style="height: 100%; width: 100%; padding: 0px; position: relative; overflow: hidden;">
                                                                        <div class="__panel" style="position: relative; box-sizing: border-box; height: 100%; overflow: hidden;">
                                                                            <div class="__view" style="position: relative; box-sizing: border-box; min-width: 100%; min-height: 100%; width: 100%;">
                                                                                <div class="vertical-scroll-group-task" style="max-height: 471px;">
                                                                                    <div class="myxteam-task">
                                                                                        <div id="backdropDraggSection-2462403" class="backdrop-dragg-section">
                                                                                        </div>
                                                                                        <div id="draggable-2462403" class="custom-dnd-container vertical">
                                                                                            <div class="custom-dnd-draggable-wrapper" id="task-draggable-14427622">
                                                                                                <div class="task-item">
                                                                                                    <span class="task-top-state">
                                                                                                        <!----><a
                                                                                                            class="btn m-btn--icon m-btn--icon-only btn-quick-edit"><i
                                                                                                                class="fa fa-pencil"
                                                                                                                aria-hidden="true"></i></a>
                                                                                                    </span>
                                                                                                    <div class="task-area">
                                                                                                        <!---->
                                                                                                        <div class="task-item-info task-open-edit">
                                                                                                            <div class="clearfix section-card-label">
                                                                                                            </div>
                                                                                                            <div class="m-checkbox-list task-checkbox">
                                                                                                                <label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                                                        type="checkbox"><span></span></label>
                                                                                                                <a class="m-taskname-lable">SOẠN
                                                                                                                    ĐỒ
                                                                                                                    NGHỀ
                                                                                                                    ĐI
                                                                                                                    LẮP
                                                                                                                    RÁP
                                                                                                                </a>
                                                                                                            </div>
                                                                                                            <div class="clearfix">
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                            </div>
                                                                                                            <div class="clearfix task-info-asign">
                                                                                                                <div class="list-avatar-asign myxteam-list-pic">
                                                                                                                    <a><img src="templates/quanlycongviec/no-avatar.png" title="Phamngoctrung" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/no-avatar.png"
                                                                                                                            lazy="loaded"></a>
                                                                                                                    <a><img src="templates/quanlycongviec/no-avatar.png" title="Huy" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/no-avatar.png"
                                                                                                                            lazy="loaded"></a>
                                                                                                                </div><a class="indicator-block task-notify"><span
                                                                                                                        class="fas fa-bell"></span></a><a class="indicator-block task-pin"><span
                                                                                                                        class="fas fa-thumbtack"></span></a>
                                                                                                            </div>
                                                                                                            <!---->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="custom-dnd-draggable-wrapper" id="task-draggable-14427621">
                                                                                                <div class="task-item">
                                                                                                    <span class="task-top-state">
                                                                                                        <!----><a
                                                                                                            class="btn m-btn--icon m-btn--icon-only btn-quick-edit"><i
                                                                                                                class="fa fa-pencil"
                                                                                                                aria-hidden="true"></i></a>
                                                                                                    </span>
                                                                                                    <div class="task-area">
                                                                                                        <!---->
                                                                                                        <div class="task-item-info task-open-edit">
                                                                                                            <div class="clearfix section-card-label">
                                                                                                                <div class="indicator-block task-label-color" style="background-color: rgb(255, 222, 0);">
                                                                                                                    <span class="label-text"></span>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                            <div class="m-checkbox-list task-checkbox">
                                                                                                                <label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                                                        type="checkbox"><span></span></label>
                                                                                                                <a class="m-taskname-lable">Hồ
                                                                                                                    sơ
                                                                                                                    xin
                                                                                                                    phép
                                                                                                                    thi
                                                                                                                    công
                                                                                                                </a>
                                                                                                            </div>
                                                                                                            <div class="clearfix">
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <div class="indicator-block task-subtask">
                                                                                                                    <span class="fa-tasks"></span><span>
                                                                                                                        0/5
                                                                                                                    </span>
                                                                                                                </div>
                                                                                                                <div class="indicator-block task-file">
                                                                                                                    <span class="fa fa-paperclip" aria-hidden="true"></span><span>3</span>
                                                                                                                </div>
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                            </div>
                                                                                                            <div class="clearfix task-info-asign">
                                                                                                                <div class="list-avatar-asign myxteam-list-pic">
                                                                                                                    <a><img src="templates/quanlycongviec/20220224085332.jpg" title="Bình Nguyên" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/Thumb/20220224085332.jpg"
                                                                                                                            lazy="loaded"></a>
                                                                                                                    <a><img src="templates/quanlycongviec/no-avatar.png" title="Huy" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/no-avatar.png"
                                                                                                                            lazy="loaded"></a>
                                                                                                                </div><a class="indicator-block task-notify"><span
                                                                                                                        class="fas fa-bell"></span></a><a class="indicator-block task-pin"><span
                                                                                                                        class="fas fa-thumbtack"></span></a>
                                                                                                            </div>
                                                                                                            <!---->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="custom-dnd-draggable-wrapper" id="task-draggable-14427618">
                                                                                                <div class="task-item">
                                                                                                    <span class="task-top-state">
                                                                                                        <!----><a
                                                                                                            class="btn m-btn--icon m-btn--icon-only btn-quick-edit"><i
                                                                                                                class="fa fa-pencil"
                                                                                                                aria-hidden="true"></i></a>
                                                                                                    </span>
                                                                                                    <div class="task-area">
                                                                                                        <!---->
                                                                                                        <div class="task-item-info task-open-edit">
                                                                                                            <div class="clearfix section-card-label">
                                                                                                                <div class="indicator-block task-label-color" style="background-color: rgb(204, 0, 0);">
                                                                                                                    <span class="label-text"></span>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                            <div class="m-checkbox-list task-checkbox">
                                                                                                                <label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                                                        type="checkbox"><span></span></label>
                                                                                                                <a class="m-taskname-lable">Những
                                                                                                                    thay
                                                                                                                    đổi
                                                                                                                    trước
                                                                                                                    khi
                                                                                                                    thi
                                                                                                                    công
                                                                                                                    ( từ
                                                                                                                    bản
                                                                                                                    vẽ
                                                                                                                    so
                                                                                                                    với
                                                                                                                    hiện
                                                                                                                    trạng)
                                                                                                                </a>
                                                                                                            </div>
                                                                                                            <div class="clearfix">
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                            </div>
                                                                                                            <div class="clearfix task-info-asign">
                                                                                                                <div class="list-avatar-asign myxteam-list-pic">
                                                                                                                    <a><img src="templates/quanlycongviec/20220224085332.jpg" title="Bình Nguyên" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/Thumb/20220224085332.jpg"
                                                                                                                            lazy="loaded"></a>
                                                                                                                    <a><img src="templates/quanlycongviec/no-avatar.png" title="Huy" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/no-avatar.png"
                                                                                                                            lazy="loaded"></a>
                                                                                                                </div><a class="indicator-block task-notify"><span
                                                                                                                        class="fas fa-bell"></span></a><a class="indicator-block task-pin"><span
                                                                                                                        class="fas fa-thumbtack"></span></a>
                                                                                                            </div>
                                                                                                            <!---->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="custom-dnd-draggable-wrapper" id="task-draggable-14427619">
                                                                                                <div class="task-item">
                                                                                                    <span class="task-top-state">
                                                                                                        <!----><a
                                                                                                            class="btn m-btn--icon m-btn--icon-only btn-quick-edit"><i
                                                                                                                class="fa fa-pencil"
                                                                                                                aria-hidden="true"></i></a>
                                                                                                    </span>
                                                                                                    <div class="task-area">
                                                                                                        <!---->
                                                                                                        <div class="task-item-info task-open-edit">
                                                                                                            <div class="clearfix section-card-label">
                                                                                                                <div class="indicator-block task-label-color" style="background-color: rgb(204, 0, 0);">
                                                                                                                    <span class="label-text"></span>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                            <div class="m-checkbox-list task-checkbox">
                                                                                                                <label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                                                        type="checkbox"><span></span></label>
                                                                                                                <a class="m-taskname-lable">Công
                                                                                                                    tác
                                                                                                                    chuẩn
                                                                                                                    bị
                                                                                                                    thi
                                                                                                                    công
                                                                                                                </a>
                                                                                                            </div>
                                                                                                            <div class="clearfix">
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <div class="indicator-block task-subtask">
                                                                                                                    <span class="fa-tasks"></span><span>
                                                                                                                        0/3
                                                                                                                    </span>
                                                                                                                </div>
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                            </div>
                                                                                                            <div class="clearfix task-info-asign">
                                                                                                                <div class="list-avatar-asign myxteam-list-pic">
                                                                                                                    <!---->
                                                                                                                    <a><img src="templates/quanlycongviec/no-avatar.png" title="Huy" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/no-avatar.png"
                                                                                                                            lazy="loaded"></a>
                                                                                                                </div><a class="indicator-block task-notify"><span
                                                                                                                        class="fas fa-bell"></span></a><a class="indicator-block task-pin"><span
                                                                                                                        class="fas fa-thumbtack"></span></a>
                                                                                                            </div>
                                                                                                            <!---->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="custom-dnd-draggable-wrapper" id="task-draggable-14427620">
                                                                                                <div class="task-item">
                                                                                                    <span class="task-top-state">
                                                                                                        <!----><a
                                                                                                            class="btn m-btn--icon m-btn--icon-only btn-quick-edit"><i
                                                                                                                class="fa fa-pencil"
                                                                                                                aria-hidden="true"></i></a>
                                                                                                    </span>
                                                                                                    <div class="task-area">
                                                                                                        <!---->
                                                                                                        <div class="task-item-info task-open-edit">
                                                                                                            <div class="clearfix section-card-label">
                                                                                                                <div class="indicator-block task-label-color" style="background-color: rgb(204, 0, 0);">
                                                                                                                    <span class="label-text"></span>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                            <div class="m-checkbox-list task-checkbox">
                                                                                                                <label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                                                        type="checkbox"><span></span></label>
                                                                                                                <a class="m-taskname-lable">Tiến
                                                                                                                    độ
                                                                                                                    thi
                                                                                                                    công
                                                                                                                </a>
                                                                                                            </div>
                                                                                                            <div class="clearfix">
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <div class="indicator-block task-subtask">
                                                                                                                    <span class="fa-tasks"></span><span>
                                                                                                                        0/4
                                                                                                                    </span>
                                                                                                                </div>
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                            </div>
                                                                                                            <div class="clearfix task-info-asign">
                                                                                                                <div class="list-avatar-asign myxteam-list-pic">
                                                                                                                    <!---->
                                                                                                                    <a><img src="templates/quanlycongviec/no-avatar.png" title="Huy" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/no-avatar.png"
                                                                                                                            lazy="loaded"></a>
                                                                                                                </div><a class="indicator-block task-notify"><span
                                                                                                                        class="fas fa-bell"></span></a><a class="indicator-block task-pin"><span
                                                                                                                        class="fas fa-thumbtack"></span></a>
                                                                                                            </div>
                                                                                                            <!---->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="list-task-add"><i class="fa fa-plus" aria-hidden="true"></i><a class="btn-block btn-link"><span>Thêm mới
                                                                                công việc</span></a></div>
                                                                </div>
                                                                <!---->
                                                            </div>
                                                            <div id="section-2462405" class="custom-dnd-draggable-wrapper project-kanban-group custom-dnd-draggable-group">
                                                                <div class="m-background-light">
                                                                    <div class="kanban-section-head">
                                                                        <div class="section-head-caption"><span title="NHẬT KÝ CÔNG TRÌNH" class="section-head-caption-title handle-dragg">
                                                                                NHẬT KÝ CÔNG TRÌNH </span>
                                                                            <!---->
                                                                        </div>
                                                                        <div class="section-head-control">
                                                                            <ul class="section-head-control-list">
                                                                                <li class="section-head-control-item">
                                                                                    <div class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <a class="m-portlet__nav-link m-dropdown__toggle"><i
                                                                                                class="fa fa-info-circle"
                                                                                                aria-hidden="true"></i></a>
                                                                                        <!---->
                                                                                    </div>
                                                                                </li>
                                                                                <li class="section-head-control-item">
                                                                                    <div aria-expanded="true" class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <a class="m-portlet__nav-link m-dropdown__toggle"><i
                                                                                                class="fa fa-sort"
                                                                                                aria-hidden="true"></i></a>
                                                                                        <!---->
                                                                                        <!---->
                                                                                    </div>
                                                                                </li>
                                                                                <li class="section-head-control-item">
                                                                                    <div aria-expanded="true" class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <a class="m-portlet__nav-link m-dropdown__toggle"><i
                                                                                                class="fa fa-ellipsis-h"
                                                                                                aria-hidden="true"></i></a>
                                                                                        <!---->
                                                                                        <!---->
                                                                                    </div>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                    <div class="__vuescroll" style="height: 100%; width: 100%; padding: 0px; position: relative; overflow: hidden;">
                                                                        <div class="__panel" style="position: relative; box-sizing: border-box; height: 100%; overflow: hidden;">
                                                                            <div class="__view" style="position: relative; box-sizing: border-box; min-width: 100%; min-height: 100%; width: 100%;">
                                                                                <div class="vertical-scroll-group-task" style="max-height: 471px;">
                                                                                    <div class="myxteam-task">
                                                                                        <div id="backdropDraggSection-2462405" class="backdrop-dragg-section">
                                                                                        </div>
                                                                                        <div id="draggable-2462405" class="custom-dnd-container vertical">
                                                                                            <div class="custom-dnd-draggable-wrapper" id="task-draggable-14815921">
                                                                                                <div class="task-item">
                                                                                                    <span class="task-top-state">
                                                                                                        <!----><a
                                                                                                            class="btn m-btn--icon m-btn--icon-only btn-quick-edit"><i
                                                                                                                class="fa fa-pencil"
                                                                                                                aria-hidden="true"></i></a>
                                                                                                    </span>
                                                                                                    <div class="task-area">
                                                                                                        <!---->
                                                                                                        <div class="task-item-info task-open-edit">
                                                                                                            <div class="clearfix section-card-label">
                                                                                                            </div>
                                                                                                            <div class="m-checkbox-list task-checkbox">
                                                                                                                <label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                                                        type="checkbox"><span></span></label>
                                                                                                                <a class="m-taskname-lable">HÓA
                                                                                                                    ĐƠN
                                                                                                                </a>
                                                                                                            </div>
                                                                                                            <div class="clearfix">
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <div class="indicator-block task-file">
                                                                                                                    <span class="fa fa-paperclip" aria-hidden="true"></span><span>19</span>
                                                                                                                </div>
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                            </div>
                                                                                                            <div class="clearfix task-info-asign">
                                                                                                                <div class="list-avatar-asign myxteam-list-pic">
                                                                                                                    <!---->
                                                                                                                    <a><img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" title="Trang" class="base-avatar task-avatar"
                                                                                                                            data-src="https://myxteam.blob.core.windows.net/avatar/Thumb/20220526082901.jpg" lazy="loading"></a>
                                                                                                                </div><a class="indicator-block task-notify"><span
                                                                                                                        class="fas fa-bell"></span></a><a class="indicator-block task-pin"><span
                                                                                                                        class="fas fa-thumbtack"></span></a>
                                                                                                            </div>
                                                                                                            <!---->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="custom-dnd-draggable-wrapper" id="task-draggable-14427638">
                                                                                                <div class="task-item">
                                                                                                    <span class="task-top-state">
                                                                                                        <!----><a
                                                                                                            class="btn m-btn--icon m-btn--icon-only btn-quick-edit"><i
                                                                                                                class="fa fa-pencil"
                                                                                                                aria-hidden="true"></i></a>
                                                                                                    </span>
                                                                                                    <div class="task-area">
                                                                                                        <!---->
                                                                                                        <div class="task-item-info task-open-edit">
                                                                                                            <div class="clearfix section-card-label">
                                                                                                                <div class="indicator-block task-label-color" style="background-color: rgb(204, 0, 0);">
                                                                                                                    <span class="label-text"></span>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                            <div class="m-checkbox-list task-checkbox">
                                                                                                                <label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                                                        type="checkbox"><span></span></label>
                                                                                                                <a class="m-taskname-lable">Nhật
                                                                                                                    ký
                                                                                                                    hình
                                                                                                                    ảnh
                                                                                                                    thi
                                                                                                                    công
                                                                                                                    ngày
                                                                                                                    . .
                                                                                                                    .
                                                                                                                </a>
                                                                                                            </div>
                                                                                                            <div class="clearfix">
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <div class="indicator-block task-subtask">
                                                                                                                    <span class="fa-tasks"></span><span>
                                                                                                                        0/2
                                                                                                                    </span>
                                                                                                                </div>
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                            </div>
                                                                                                            <div class="clearfix task-info-asign">
                                                                                                                <div class="list-avatar-asign myxteam-list-pic">
                                                                                                                    <!---->
                                                                                                                    <a><img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" title="Huy" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/no-avatar.png"
                                                                                                                            lazy="loading"></a>
                                                                                                                </div><a class="indicator-block task-notify"><span
                                                                                                                        class="fas fa-bell"></span></a><a class="indicator-block task-pin"><span
                                                                                                                        class="fas fa-thumbtack"></span></a>
                                                                                                            </div>
                                                                                                            <!---->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="custom-dnd-draggable-wrapper" id="task-draggable-14427637">
                                                                                                <div class="task-item">
                                                                                                    <span class="task-top-state">
                                                                                                        <!----><a
                                                                                                            class="btn m-btn--icon m-btn--icon-only btn-quick-edit"><i
                                                                                                                class="fa fa-pencil"
                                                                                                                aria-hidden="true"></i></a>
                                                                                                    </span>
                                                                                                    <div class="task-area">
                                                                                                        <!---->
                                                                                                        <div class="task-item-info task-open-edit">
                                                                                                            <div class="clearfix section-card-label">
                                                                                                                <div class="indicator-block task-label-color" style="background-color: rgb(255, 0, 128);">
                                                                                                                    <span class="label-text"></span>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                            <div class="m-checkbox-list task-checkbox">
                                                                                                                <label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                                                        type="checkbox"><span></span></label>
                                                                                                                <a class="m-taskname-lable">Chụp
                                                                                                                    hình
                                                                                                                    hoàn
                                                                                                                    thiện
                                                                                                                    công
                                                                                                                    trình.
                                                                                                                </a>
                                                                                                            </div>
                                                                                                            <div class="clearfix">
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                            </div>
                                                                                                            <div class="clearfix task-info-asign">
                                                                                                                <div class="list-avatar-asign myxteam-list-pic">
                                                                                                                    <!---->
                                                                                                                    <a><img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" title="Huy" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/no-avatar.png"
                                                                                                                            lazy="loading"></a>
                                                                                                                </div><a class="indicator-block task-notify"><span
                                                                                                                        class="fas fa-bell"></span></a><a class="indicator-block task-pin"><span
                                                                                                                        class="fas fa-thumbtack"></span></a>
                                                                                                            </div>
                                                                                                            <!---->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="custom-dnd-draggable-wrapper" id="task-draggable-14427639">
                                                                                                <div class="task-item">
                                                                                                    <span class="task-top-state">
                                                                                                        <!----><a
                                                                                                            class="btn m-btn--icon m-btn--icon-only btn-quick-edit"><i
                                                                                                                class="fa fa-pencil"
                                                                                                                aria-hidden="true"></i></a>
                                                                                                    </span>
                                                                                                    <div class="task-area">
                                                                                                        <!---->
                                                                                                        <div class="task-item-info task-open-edit">
                                                                                                            <div class="clearfix section-card-label">
                                                                                                            </div>
                                                                                                            <div class="m-checkbox-list task-checkbox">
                                                                                                                <label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                                                        type="checkbox"><span></span></label>
                                                                                                                <a class="m-taskname-lable">Lỗi
                                                                                                                    trong
                                                                                                                    thi
                                                                                                                    công
                                                                                                                </a>
                                                                                                            </div>
                                                                                                            <div class="clearfix">
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                            </div>
                                                                                                            <div class="clearfix task-info-asign">
                                                                                                                <div class="list-avatar-asign myxteam-list-pic">
                                                                                                                    <a><img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" title="Phamngoctrung" class="base-avatar task-avatar"
                                                                                                                            data-src="https://myxteam.blob.core.windows.net/avatar/no-avatar.png" lazy="loading"></a>
                                                                                                                    <a><img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" title="Huy" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/no-avatar.png"
                                                                                                                            lazy="loading"></a>
                                                                                                                </div><a class="indicator-block task-notify"><span
                                                                                                                        class="fas fa-bell"></span></a><a class="indicator-block task-pin"><span
                                                                                                                        class="fas fa-thumbtack"></span></a>
                                                                                                            </div>
                                                                                                            <!---->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="list-task-add"><i class="fa fa-plus" aria-hidden="true"></i><a class="btn-block btn-link"><span>Thêm mới
                                                                                công việc</span></a></div>
                                                                </div>
                                                                <!---->
                                                            </div>
                                                            <div id="section-2462404" class="custom-dnd-draggable-wrapper project-kanban-group custom-dnd-draggable-group">
                                                                <div class="m-background-light">
                                                                    <div class="kanban-section-head">
                                                                        <div class="section-head-caption"><span title="PHÁT SINH + NGHIỆM THU" class="section-head-caption-title handle-dragg">
                                                                                PHÁT SINH + NGHIỆM THU </span>
                                                                            <!---->
                                                                        </div>
                                                                        <div class="section-head-control">
                                                                            <ul class="section-head-control-list">
                                                                                <li class="section-head-control-item">
                                                                                    <div class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <a class="m-portlet__nav-link m-dropdown__toggle"><i
                                                                                                class="fa fa-info-circle"
                                                                                                aria-hidden="true"></i></a>
                                                                                        <!---->
                                                                                    </div>
                                                                                </li>
                                                                                <li class="section-head-control-item">
                                                                                    <div aria-expanded="true" class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <a class="m-portlet__nav-link m-dropdown__toggle"><i
                                                                                                class="fa fa-sort"
                                                                                                aria-hidden="true"></i></a>
                                                                                        <!---->
                                                                                        <!---->
                                                                                    </div>
                                                                                </li>
                                                                                <li class="section-head-control-item">
                                                                                    <div aria-expanded="true" class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <a class="m-portlet__nav-link m-dropdown__toggle"><i
                                                                                                class="fa fa-ellipsis-h"
                                                                                                aria-hidden="true"></i></a>
                                                                                        <!---->
                                                                                        <!---->
                                                                                    </div>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                    <div class="__vuescroll" style="height: 100%; width: 100%; padding: 0px; position: relative; overflow: hidden;">
                                                                        <div class="__panel" style="position: relative; box-sizing: border-box; height: 100%; overflow: hidden;">
                                                                            <div class="__view" style="position: relative; box-sizing: border-box; min-width: 100%; min-height: 100%; width: 100%;">
                                                                                <div class="vertical-scroll-group-task" style="max-height: 471px;">
                                                                                    <div class="myxteam-task">
                                                                                        <div id="backdropDraggSection-2462404" class="backdrop-dragg-section">
                                                                                        </div>
                                                                                        <div id="draggable-2462404" class="custom-dnd-container vertical">
                                                                                            <div class="custom-dnd-draggable-wrapper" id="task-draggable-14427635">
                                                                                                <div class="task-item">
                                                                                                    <span class="task-top-state">
                                                                                                        <!----><a
                                                                                                            class="btn m-btn--icon m-btn--icon-only btn-quick-edit"><i
                                                                                                                class="fa fa-pencil"
                                                                                                                aria-hidden="true"></i></a>
                                                                                                    </span>
                                                                                                    <div class="task-area">
                                                                                                        <!---->
                                                                                                        <div class="task-item-info task-open-edit">
                                                                                                            <div class="clearfix section-card-label">
                                                                                                                <div class="indicator-block task-label-color" style="background-color: rgb(255, 222, 0);">
                                                                                                                    <span class="label-text"></span>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                            <div class="m-checkbox-list task-checkbox">
                                                                                                                <label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                                                        type="checkbox"><span></span></label>
                                                                                                                <a class="m-taskname-lable">Hạng
                                                                                                                    mục
                                                                                                                    phát
                                                                                                                    sinh
                                                                                                                </a>
                                                                                                            </div>
                                                                                                            <div class="clearfix">
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                            </div>
                                                                                                            <div class="clearfix task-info-asign">
                                                                                                                <div class="list-avatar-asign myxteam-list-pic">
                                                                                                                    <!---->
                                                                                                                    <a><img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" title="Huy" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/no-avatar.png"
                                                                                                                            lazy="loading"></a>
                                                                                                                </div><a class="indicator-block task-notify"><span
                                                                                                                        class="fas fa-bell"></span></a><a class="indicator-block task-pin"><span
                                                                                                                        class="fas fa-thumbtack"></span></a>
                                                                                                            </div>
                                                                                                            <!---->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="custom-dnd-draggable-wrapper" id="task-draggable-14427636">
                                                                                                <div class="task-item">
                                                                                                    <span class="task-top-state">
                                                                                                        <!----><a
                                                                                                            class="btn m-btn--icon m-btn--icon-only btn-quick-edit"><i
                                                                                                                class="fa fa-pencil"
                                                                                                                aria-hidden="true"></i></a>
                                                                                                    </span>
                                                                                                    <div class="task-area">
                                                                                                        <!---->
                                                                                                        <div class="task-item-info task-open-edit">
                                                                                                            <div class="clearfix section-card-label">
                                                                                                                <div class="indicator-block task-label-color" style="background-color: rgb(255, 222, 0);">
                                                                                                                    <span class="label-text"></span>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                            <div class="m-checkbox-list task-checkbox">
                                                                                                                <label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                                                        type="checkbox"><span></span></label>
                                                                                                                <a class="m-taskname-lable">Yêu
                                                                                                                    cầu
                                                                                                                    chỉnh
                                                                                                                    sửa
                                                                                                                    nghiệm
                                                                                                                    thu
                                                                                                                    lần
                                                                                                                    1
                                                                                                                </a>
                                                                                                            </div>
                                                                                                            <div class="clearfix">
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                            </div>
                                                                                                            <div class="clearfix task-info-asign">
                                                                                                                <div class="list-avatar-asign myxteam-list-pic">
                                                                                                                    <!---->
                                                                                                                    <a><img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" title="Huy" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/no-avatar.png"
                                                                                                                            lazy="loading"></a>
                                                                                                                </div><a class="indicator-block task-notify"><span
                                                                                                                        class="fas fa-bell"></span></a><a class="indicator-block task-pin"><span
                                                                                                                        class="fas fa-thumbtack"></span></a>
                                                                                                            </div>
                                                                                                            <!---->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="list-task-add"><i class="fa fa-plus" aria-hidden="true"></i><a class="btn-block btn-link"><span>Thêm mới
                                                                                công việc</span></a></div>
                                                                </div>
                                                                <!---->
                                                            </div>
                                                            <div id="section-2462406" class="custom-dnd-draggable-wrapper project-kanban-group custom-dnd-draggable-group">
                                                                <div class="m-background-light">
                                                                    <div class="kanban-section-head">
                                                                        <div class="section-head-caption"><span title="Gọi vật tư + phụ kiện" class="section-head-caption-title handle-dragg">
                                                                                Gọi vật tư + phụ kiện </span>
                                                                            <!---->
                                                                        </div>
                                                                        <div class="section-head-control">
                                                                            <ul class="section-head-control-list">
                                                                                <li class="section-head-control-item">
                                                                                    <div class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <a class="m-portlet__nav-link m-dropdown__toggle"><i
                                                                                                class="fa fa-info-circle"
                                                                                                aria-hidden="true"></i></a>
                                                                                        <!---->
                                                                                    </div>
                                                                                </li>
                                                                                <li class="section-head-control-item">
                                                                                    <div aria-expanded="true" class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <a class="m-portlet__nav-link m-dropdown__toggle"><i
                                                                                                class="fa fa-sort"
                                                                                                aria-hidden="true"></i></a>
                                                                                        <!---->
                                                                                        <!---->
                                                                                    </div>
                                                                                </li>
                                                                                <li class="section-head-control-item">
                                                                                    <div aria-expanded="true" class="myxteam-dropdown m-dropdown--align-right">
                                                                                        <a class="m-portlet__nav-link m-dropdown__toggle"><i
                                                                                                class="fa fa-ellipsis-h"
                                                                                                aria-hidden="true"></i></a>
                                                                                        <!---->
                                                                                        <!---->
                                                                                    </div>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                    <div class="__vuescroll" style="height: 100%; width: 100%; padding: 0px; position: relative; overflow: hidden;">
                                                                        <div class="__panel" style="position: relative; box-sizing: border-box; height: 100%; overflow: hidden;">
                                                                            <div class="__view" style="position: relative; box-sizing: border-box; min-width: 100%; min-height: 100%; width: 100%;">
                                                                                <div class="vertical-scroll-group-task" style="max-height: 471px;">
                                                                                    <div class="myxteam-task">
                                                                                        <div id="backdropDraggSection-2462406" class="backdrop-dragg-section">
                                                                                        </div>
                                                                                        <div id="draggable-2462406" class="custom-dnd-container vertical">
                                                                                            <div class="custom-dnd-draggable-wrapper" id="task-draggable-14427644">
                                                                                                <div class="task-item">
                                                                                                    <span class="task-top-state">
                                                                                                        <!----><a
                                                                                                            class="btn m-btn--icon m-btn--icon-only btn-quick-edit"><i
                                                                                                                class="fa fa-pencil"
                                                                                                                aria-hidden="true"></i></a>
                                                                                                    </span>
                                                                                                    <div class="task-area">
                                                                                                        <!---->
                                                                                                        <div class="task-item-info task-open-edit">
                                                                                                            <div class="clearfix section-card-label">
                                                                                                            </div>
                                                                                                            <div class="m-checkbox-list task-checkbox">
                                                                                                                <label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                                                        type="checkbox"><span></span></label>
                                                                                                                <a class="m-taskname-lable">Gọi
                                                                                                                    xe +
                                                                                                                    bốc
                                                                                                                    hàng
                                                                                                                </a>
                                                                                                            </div>
                                                                                                            <div class="clearfix">
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <div class="indicator-block task-subtask">
                                                                                                                    <span class="fa-tasks"></span><span>
                                                                                                                        0/2
                                                                                                                    </span>
                                                                                                                </div>
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                            </div>
                                                                                                            <div class="clearfix task-info-asign">
                                                                                                                <div class="list-avatar-asign myxteam-list-pic">
                                                                                                                    <!---->
                                                                                                                    <a><img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" title="Huy" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/no-avatar.png"
                                                                                                                            lazy="loading"></a>
                                                                                                                </div><a class="indicator-block task-notify"><span
                                                                                                                        class="fas fa-bell"></span></a><a class="indicator-block task-pin"><span
                                                                                                                        class="fas fa-thumbtack"></span></a>
                                                                                                            </div>
                                                                                                            <!---->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="custom-dnd-draggable-wrapper" id="task-draggable-14427643">
                                                                                                <div class="task-item">
                                                                                                    <span class="task-top-state">
                                                                                                        <!----><a
                                                                                                            class="btn m-btn--icon m-btn--icon-only btn-quick-edit"><i
                                                                                                                class="fa fa-pencil"
                                                                                                                aria-hidden="true"></i></a>
                                                                                                    </span>
                                                                                                    <div class="task-area">
                                                                                                        <!---->
                                                                                                        <div class="task-item-info task-open-edit">
                                                                                                            <div class="clearfix section-card-label">
                                                                                                            </div>
                                                                                                            <div class="m-checkbox-list task-checkbox">
                                                                                                                <label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                                                        type="checkbox"><span></span></label>
                                                                                                                <a class="m-taskname-lable">Gọi
                                                                                                                    phụ
                                                                                                                    kiện
                                                                                                                </a>
                                                                                                            </div>
                                                                                                            <div class="clearfix">
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <div class="indicator-block task-subtask">
                                                                                                                    <span class="fa-tasks"></span><span>
                                                                                                                        0/4
                                                                                                                    </span>
                                                                                                                </div>
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                            </div>
                                                                                                            <div class="clearfix task-info-asign">
                                                                                                                <div class="list-avatar-asign myxteam-list-pic">
                                                                                                                    <!---->
                                                                                                                    <a><img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" title="Huy" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/no-avatar.png"
                                                                                                                            lazy="loading"></a>
                                                                                                                </div><a class="indicator-block task-notify"><span
                                                                                                                        class="fas fa-bell"></span></a><a class="indicator-block task-pin"><span
                                                                                                                        class="fas fa-thumbtack"></span></a>
                                                                                                            </div>
                                                                                                            <!---->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="custom-dnd-draggable-wrapper" id="task-draggable-14427642">
                                                                                                <div class="task-item">
                                                                                                    <span class="task-top-state">
                                                                                                        <!----><a
                                                                                                            class="btn m-btn--icon m-btn--icon-only btn-quick-edit"><i
                                                                                                                class="fa fa-pencil"
                                                                                                                aria-hidden="true"></i></a>
                                                                                                    </span>
                                                                                                    <div class="task-area">
                                                                                                        <!---->
                                                                                                        <div class="task-item-info task-open-edit">
                                                                                                            <div class="clearfix section-card-label">
                                                                                                            </div>
                                                                                                            <div class="m-checkbox-list task-checkbox">
                                                                                                                <label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                                                        type="checkbox"><span></span></label>
                                                                                                                <a class="m-taskname-lable">Gọi
                                                                                                                    ván
                                                                                                                    +
                                                                                                                    gọi
                                                                                                                    chỉ
                                                                                                                </a>
                                                                                                            </div>
                                                                                                            <div class="clearfix">
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <div class="indicator-block task-subtask">
                                                                                                                    <span class="fa-tasks"></span><span>
                                                                                                                        0/2
                                                                                                                    </span>
                                                                                                                </div>
                                                                                                                <div class="indicator-block task-file">
                                                                                                                    <span class="fa fa-paperclip" aria-hidden="true"></span><span>6</span>
                                                                                                                </div>
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                                <!---->
                                                                                                            </div>
                                                                                                            <div class="clearfix task-info-asign">
                                                                                                                <div class="list-avatar-asign myxteam-list-pic">
                                                                                                                    <!---->
                                                                                                                    <a><img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" title="Huy" class="base-avatar task-avatar" data-src="https://myxteam.blob.core.windows.net/avatar/no-avatar.png"
                                                                                                                            lazy="loading"></a>
                                                                                                                </div><a class="indicator-block task-notify"><span
                                                                                                                        class="fas fa-bell"></span></a><a class="indicator-block task-pin"><span
                                                                                                                        class="fas fa-thumbtack"></span></a>
                                                                                                            </div>
                                                                                                            <!---->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="list-task-add"><i class="fa fa-plus" aria-hidden="true"></i><a class="btn-block btn-link"><span>Thêm mới
                                                                                công việc</span></a></div>
                                                                </div>
                                                                <!---->
                                                            </div>
                                                            <div id="section-0" class="custom-dnd-draggable-wrapper project-kanban-group custom-dnd-draggable-group">
                                                                <!---->
                                                                <div class="m-background-light m-add-section">
                                                                    <div id="button-add-section" class="button-add-section"><a class="btn  m-btn--icon btn-sm btn-block"><span
                                                                                class="text-left"><i
                                                                                    class="fa-plus"></i><span>Tạo nhóm
                                                                                    công việc</span></span></a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!---->
                                                    <!---->
                                                </div>
                                                <div style="display: block; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; border: none; padding: 0px; margin: 0px; opacity: 0; z-index: -1000; pointer-events: none;">
                                                    <object type="text/html" tabindex="-1" data="templates/quanlycongviec/saved_resource.html" style="display: block; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; border: none; padding: 0px; margin: 0px; opacity: 0; z-index: -1000; pointer-events: none;"></object>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="__rail-is-horizontal" style="position: absolute; z-index: 1; border-radius: 6px; background: rgba(1, 169, 154, 0); border: none; height: 6px; left: 0px; right: 0px; bottom: 2px;">
                                            <div class="__bar-wrap-is-horizontal" style="position: absolute; border-radius: 6px; left: 0px; right: 0px; height: 100%;">
                                                <div class="__bar-is-horizontal" style="cursor: pointer; position: absolute; margin: auto; transition: opacity 0.5s ease 0s; user-select: none; border-radius: inherit; width: 39.4108%; background: rgb(188, 189, 196); height: 8px; opacity: 1; transform: translateX(0%); top: 0px; bottom: 0px;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="myxteam-filter" style="display: none;">
                                <div class="fiter-content" style="display: none;">
                                    <div class="filer-tab">
                                        <div class="filter-title"><span>Bộ lọc</span></div><a aria-label="Close" class="close"><i class="fa-times"></i></a>
                                    </div>
                                    <div class="tab-content">
                                        <div id="m_tabs_project_filter">
                                            <div>
                                                <div class="__vuescroll" style="height: 100%; width: 100%; padding: 0px; position: relative; overflow: hidden;">
                                                    <div class="__panel" style="position: relative; box-sizing: border-box; height: 100%; overflow: hidden;">
                                                        <div class="__view" style="position: relative; box-sizing: border-box; min-width: 100%; min-height: 100%; width: 100%;">
                                                            <div class="filter-setting-content" style="height: 529px;">
                                                                <div><label class="label-filter">32 việc (không bao gồm
                                                                        việc con)</label></div>
                                                                <div class="m-form__group form-group"><label class="label-filter">Tên công việc</label>
                                                                    <div data-v-fdbdba7e="" class="clear-fix template-search input-search-filter">
                                                                        <div data-v-fdbdba7e="" class="m-input-icon input-group-sm m-input-icon--right">
                                                                            <input data-v-fdbdba7e="" type="text" placeholder="Nhập từ khóa tìm kiếm" class="form-control m-input bold"><span data-v-fdbdba7e="" class="m-input-icon__icon m-input-icon__icon--right"><span
                                                                                    data-v-fdbdba7e=""><i
                                                                                        data-v-fdbdba7e=""
                                                                                        class="fa-search"></i></span></span><span data-v-fdbdba7e="" class="m-input-icon__icon m-input-icon__icon--right clear-icon hide-remove"><span
                                                                                    data-v-fdbdba7e=""><i
                                                                                        data-v-fdbdba7e=""
                                                                                        class="fa-times custom-remove-search"></i></span></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="m-form__group form-group"><label class="label-filter">Hiển thị công việc</label>
                                                                    <div class="form-group">
                                                                        <div class="m-checkbox-list"><label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                    type="checkbox"
                                                                                    disabled="disabled"><span></span></label><span class="label-filter-value">Chưa lưu
                                                                                trữ</span></div>
                                                                        <div class="m-checkbox-list"><label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                    type="checkbox"><span></span></label><span class="label-filter-value">Đã lưu
                                                                                trữ</span></div>
                                                                        <div class="m-checkbox-list"><label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                    type="checkbox"><span></span></label><span class="label-filter-value">Tất cả</span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="m-form__group form-group"><label class="label-filter">Trạng thái</label>
                                                                    <div class="form-group">
                                                                        <div class="m-checkbox-list"><label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                    type="checkbox"><span></span></label><span class="label-filter-value">Hoàn thành
                                                                                (0)</span></div>
                                                                        <div class="m-checkbox-list"><label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                    type="checkbox"><span></span></label><span class="label-filter-value">Chưa hoàn
                                                                                thành (32)</span></div>
                                                                    </div><label class="label-filter">Quá hạn</label>
                                                                    <div class="form-group">
                                                                        <div class="m-checkbox-list"><label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                    type="checkbox"><span></span></label><span class="label-filter-value">Quá hạn
                                                                                (0)</span></div>
                                                                    </div>
                                                                    <div><label class="label-filter">Task to do</label>
                                                                        <div class="form-group">
                                                                            <div class="m-checkbox-list"><label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                        type="checkbox"><span></span></label><span class="label-filter-value"> Chưa lên
                                                                                    lịch (32)</span></div>
                                                                            <div class="m-checkbox-list"><label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                        type="checkbox"><span></span></label><span class="label-filter-value"> Hôm qua
                                                                                    (0)</span></div>
                                                                            <div class="m-checkbox-list"><label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                        type="checkbox"><span></span></label><span class="label-filter-value"> Hôm nay
                                                                                    (0)</span></div>
                                                                            <div class="m-checkbox-list"><label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                        type="checkbox"><span></span></label><span class="label-filter-value"> Ngày mai
                                                                                    (0)</span></div>
                                                                            <div class="m-checkbox-list"><label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                        type="checkbox"><span></span></label><span class="label-filter-value"> Trong
                                                                                    tuần (0)</span></div>
                                                                            <div class="m-checkbox-list"><label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                        type="checkbox"><span></span></label><span class="label-filter-value"> Trong
                                                                                    tháng (0)</span></div>
                                                                            <div class="m-checkbox-list"><label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                        type="checkbox"><span></span></label><span class="label-filter-value"> Trong
                                                                                    khoảng</span></div>
                                                                        </div>
                                                                        <!---->
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="m-checkbox-list"><label class="m-checkbox m-checkbox--solid m-checkbox--success"><input
                                                                                    type="checkbox"><span></span></label><span class="filter-range-strict"> Công việc
                                                                                có ngày bắt đầu, ngày kết thúc nằm trong
                                                                                khoảng thời gian lọc </span></div>
                                                                    </div>
                                                                    <div>
                                                                        <div class="m-form__group form-group"><label class="label-filter">Được gán
                                                                                cho</label>
                                                                            <div class="m-input--solid vue-treeselect vue-treeselect--multi vue-treeselect--searchable vue-treeselect--open-below">
                                                                                <!---->
                                                                                <div class="vue-treeselect__control">
                                                                                    <div class="vue-treeselect__value-container">
                                                                                        <div class="vue-treeselect__multi-value">
                                                                                            <div class="vue-treeselect__placeholder vue-treeselect-helper-zoom-effect-off">
                                                                                                chọn</div>
                                                                                            <div class="vue-treeselect__input-container">
                                                                                                <input type="text" autocomplete="off" tabindex="0" class="vue-treeselect__input" style="width: 5px;">
                                                                                                <div class="vue-treeselect__sizer">
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="vue-treeselect__control-arrow-container">
                                                                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 292.362 292.362" class="vue-treeselect__control-arrow">
                                                                                            <path
                                                                                                d="M286.935 69.377c-3.614-3.617-7.898-5.424-12.848-5.424H18.274c-4.952 0-9.233 1.807-12.85 5.424C1.807 72.998 0 77.279 0 82.228c0 4.948 1.807 9.229 5.424 12.847l127.907 127.907c3.621 3.617 7.902 5.428 12.85 5.428s9.233-1.811 12.847-5.428L286.935 95.074c3.613-3.617 5.427-7.898 5.427-12.847 0-4.948-1.814-9.229-5.427-12.85z">
                                                                                            </path>
                                                                                        </svg>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="vue-treeselect__menu-container" style="z-index: 999;">
                                                                                    <!---->
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="m-form__group form-group"><label class="label-filter">Được tạo
                                                                                bởi</label>
                                                                            <div class="m-input--solid vue-treeselect vue-treeselect--multi vue-treeselect--searchable vue-treeselect--open-below">
                                                                                <!---->
                                                                                <div class="vue-treeselect__control">
                                                                                    <div class="vue-treeselect__value-container">
                                                                                        <div class="vue-treeselect__multi-value">
                                                                                            <div class="vue-treeselect__placeholder vue-treeselect-helper-zoom-effect-off">
                                                                                                chọn</div>
                                                                                            <div class="vue-treeselect__input-container">
                                                                                                <input type="text" autocomplete="off" tabindex="0" class="vue-treeselect__input" style="width: 5px;">
                                                                                                <div class="vue-treeselect__sizer">
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="vue-treeselect__control-arrow-container">
                                                                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 292.362 292.362" class="vue-treeselect__control-arrow">
                                                                                            <path
                                                                                                d="M286.935 69.377c-3.614-3.617-7.898-5.424-12.848-5.424H18.274c-4.952 0-9.233 1.807-12.85 5.424C1.807 72.998 0 77.279 0 82.228c0 4.948 1.807 9.229 5.424 12.847l127.907 127.907c3.621 3.617 7.902 5.428 12.85 5.428s9.233-1.811 12.847-5.428L286.935 95.074c3.613-3.617 5.427-7.898 5.427-12.847 0-4.948-1.814-9.229-5.427-12.85z">
                                                                                            </path>
                                                                                        </svg>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="vue-treeselect__menu-container" style="z-index: 999;">
                                                                                    <!---->
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="m-form__group form-group"><label class="label-filter">Nhãn màu</label>
                                                                            <div class="m-input--solid filter-color-select vue-treeselect vue-treeselect--multi vue-treeselect--searchable vue-treeselect--open-below">
                                                                                <!---->
                                                                                <div class="vue-treeselect__control">
                                                                                    <div class="vue-treeselect__value-container">
                                                                                        <div class="vue-treeselect__multi-value">
                                                                                            <div class="vue-treeselect__placeholder vue-treeselect-helper-zoom-effect-off">
                                                                                                chọn</div>
                                                                                            <div class="vue-treeselect__input-container">
                                                                                                <input type="text" autocomplete="off" tabindex="0" class="vue-treeselect__input" style="width: 5px;">
                                                                                                <div class="vue-treeselect__sizer">
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="vue-treeselect__control-arrow-container">
                                                                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 292.362 292.362" class="vue-treeselect__control-arrow">
                                                                                            <path
                                                                                                d="M286.935 69.377c-3.614-3.617-7.898-5.424-12.848-5.424H18.274c-4.952 0-9.233 1.807-12.85 5.424C1.807 72.998 0 77.279 0 82.228c0 4.948 1.807 9.229 5.424 12.847l127.907 127.907c3.621 3.617 7.902 5.428 12.85 5.428s9.233-1.811 12.847-5.428L286.935 95.074c3.613-3.617 5.427-7.898 5.427-12.847 0-4.948-1.814-9.229-5.427-12.85z">
                                                                                            </path>
                                                                                        </svg>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="vue-treeselect__menu-container" style="z-index: 999;">
                                                                                    <!---->
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!---->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!---->
                            </div>
                            <!---->
                            <!---->
                        </div>
                        <!---->
                    </div>
                </div>
                <div data-v-59bf962b="" class="vue-portal-target"></div>
                <!---->
                <!---->
                <div data-v-59bf962b=""></div>
                <div data-v-59bf962b="" class="myxteam-multi-app">
                    <!---->
                    <div aria-expanded="true" class="myxteam-dropdown m-dropdown--align-right m-dropdown--align-up"><a class="multi-app-toggle"><span class="fas fa-th-large"></span></a>
                        <!---->
                    </div>
                    <!---->
                    <!---->
                </div>
                <div data-v-59bf962b="">
                    <!---->
                    <!---->
                </div>
            </div>
        </div>
    </div>
    <div id="onesignal-bell-container" class="onesignal-bell-container onesignal-reset onesignal-bell-container-bottom-right">
        <div id="onesignal-bell-launcher" class="onesignal-bell-launcher onesignal-bell-launcher-sm onesignal-bell-launcher-bottom-right onesignal-bell-launcher-theme-default onesignal-bell-launcher-active" style="bottom: 50px; right: 12px;">
            <div class="onesignal-bell-launcher-button"><svg class="onesignal-bell-svg" xmlns="http://www.w3.org/2000/svg" width="99.7" height="99.7" viewBox="0 0 99.7 99.7" style="filter: drop-shadow(0 2px 4px rgba(34,36,38,0.35));; -webkit-filter: drop-shadow(0 2px 4px rgba(34,36,38,0.35));;">
                    <circle class="background" cx="49.9" cy="49.9" r="49.9" style="fill: rgb(39, 162, 63);"></circle>
                    <path class="foreground"
                        d="M50.1 66.2H27.7s-2-.2-2-2.1c0-1.9 1.7-2 1.7-2s6.7-3.2 6.7-5.5S33 52.7 33 43.3s6-16.6 13.2-16.6c0 0 1-2.4 3.9-2.4 2.8 0 3.8 2.4 3.8 2.4 7.2 0 13.2 7.2 13.2 16.6s-1 11-1 13.3c0 2.3 6.7 5.5 6.7 5.5s1.7.1 1.7 2c0 1.8-2.1 2.1-2.1 2.1H50.1zm-7.2 2.3h14.5s-1 6.3-7.2 6.3-7.3-6.3-7.3-6.3z"
                        style="fill: rgb(255, 255, 255);"></path>
                    <ellipse class="stroke" cx="49.9" cy="49.9" rx="37.4" ry="36.9" style="stroke: rgb(255, 255, 255);">
                    </ellipse>
                </svg></div>
            <div class="onesignal-bell-launcher-badge" style="filter: drop-shadow(0 2px 4px rgba(34,36,38,0));; -webkit-filter: drop-shadow(0 2px 4px rgba(34,36,38,0));;">
            </div>
            <div class="onesignal-bell-launcher-message">
                <div class="onesignal-bell-launcher-message-body"></div>
            </div>
            <div class="onesignal-bell-launcher-dialog" style="filter: drop-shadow(0px 2px 2px rgba(34,36,38,.15));; -webkit-filter: drop-shadow(0px 2px 2px rgba(34,36,38,.15));;">
                <div class="onesignal-bell-launcher-dialog-body"></div>
            </div>
        </div>
    </div>
</body>

</html>