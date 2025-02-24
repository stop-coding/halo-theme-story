<#if (settings.locale!'en') == 'en'>
    <#setting locale="en">
</#if>
<#macro header title>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>${title}</title>

    <!-- 使用url函数转换相关路径 -->
    <link type="text/css" rel="stylesheet" href="//cdnjs.loli.net/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="${theme_base!}/assert/css/prism.css">
    <link type="text/css" rel="stylesheet" href="${theme_base!}/assert/css/zoom.css">
    <link type="text/css" rel="stylesheet" href="${theme_base!}/assert/css/main.css">
    <@global.head />

    <!--[if lt IE 9]>
    <script src="//cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="//cdn.staticfile.org/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

    <!-- 通过自有函数输出HTML头部信息 -->
    <meta name="description" content="${meta_description!}" />
    <meta name="keywords" content="${meta_keywords!}" />
    <meta name="generator" content="Halo" />
    <meta name="template" content="Story" />
    <link rel="alternate" type="application/rss+xml" title="${blog_title!}" href="${rss_url!}" />
    <link rel="alternate" type="application/atom+xml" title="${blog_title!}" href="${atom_url!}" />
    <!-- cPlayer Start -->
    <script>var cPlayers = [];var cPlayerOptions = [];</script>
    <!-- cPlayer End -->
    <#if settings.background??>
    <style>
        body{
            background: #fff;
        }
        body::before {
            background: url('${settings.background}') center/cover no-repeat;
        }
        blockquote::before {
            background: transparent !important;
        }
    </style>
    </#if>
</head>
<body>
<!--[if lt IE 8]>
<div class="browsehappy" role="dialog">当前网页 <strong>不支持</strong> 你正在使用的浏览器. 为了正常的访问, 请 <a href="http://browsehappy.com/">升级你的浏览器</a>.</div>
<![endif]-->

<header id="header" class="clearfix">
<div class="container-fluid">
    <div class="row">
        <div class="logo">
            <div class="header-logo">
                ${settings.title!'<span class="b">Y</span><span class="b">U</span><a href="/"><span class="w">M</span></a><span class="b">O</span><span class="b">E</span>'}
                <a id="btn-menu" href="javascript:isMenu1();">
                    <span class="b">···</span>
                </a>
                <a href="javascript:isMenu3();">
                    <span id="menu-3" class="w">3</span>
                </a>
            </div>
            <div id="menu-page">
                <@menuTag method="list">
                    <#list menus?sort_by('priority') as menu>
                        <a href="${menu.url}" target="${menu.target!}"><li>${menu.name}</li></a>
                    </#list>
                </@menuTag>
            </div>
            <div id="search-box">
                <form id="search" method="get" action="/search" role="search">
                    <input autocomplete="off" type="text" name="keyword" id="menu-search" placeholder="Type something~" />
                </form>
            </div>
        </div>
    </div>
</div>
</header>

<div id="body" class="clearfix">
</#macro>
