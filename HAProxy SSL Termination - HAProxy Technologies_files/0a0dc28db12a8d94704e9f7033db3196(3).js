document.write('<link rel="stylesheet" href="https://github.githubassets.com/assets/gist-embed-3f9a3834048b.css">')
document.write('<div id=\"gist97252286\" class=\"gist\">\n    <div class=\"gist-file\" translate=\"no\">\n      <div class=\"gist-data\">\n        <div class=\"js-gist-file-update-container js-task-list-container file-box\">\n  <div id=\"file-blog20171011-04-cfg\" class=\"file my-2\">\n    \n    <div itemprop=\"text\" class=\"Box-body p-0 blob-wrapper data type-haproxy  \">\n\n        \n<div class=\"js-check-bidi js-blob-code-container blob-code-content\">\n\n  <template class=\"js-file-alert-template\">\n  <div data-view-component=\"true\" class=\"flash flash-warn flash-full d-flex flex-items-center\">\n  <svg aria-hidden=\"true\" height=\"16\" viewBox=\"0 0 16 16\" version=\"1.1\" width=\"16\" data-view-component=\"true\" class=\"octicon octicon-alert\">\n    <path d=\"M6.457 1.047c.659-1.234 2.427-1.234 3.086 0l6.082 11.378A1.75 1.75 0 0 1 14.082 15H1.918a1.75 1.75 0 0 1-1.543-2.575Zm1.763.707a.25.25 0 0 0-.44 0L1.698 13.132a.25.25 0 0 0 .22.368h12.164a.25.25 0 0 0 .22-.368Zm.53 3.996v2.5a.75.75 0 0 1-1.5 0v-2.5a.75.75 0 0 1 1.5 0ZM9 11a1 1 0 1 1-2 0 1 1 0 0 1 2 0Z\"><\/path>\n<\/svg>\n    <span>\n      This file contains bidirectional Unicode text that may be interpreted or compiled differently than what appears below. To review, open the file in an editor that reveals hidden Unicode characters.\n      <a href=\"https://github.co/hiddenchars\" target=\"_blank\">Learn more about bidirectional Unicode characters<\/a>\n    <\/span>\n\n\n  <div data-view-component=\"true\" class=\"flash-action\">        <a href=\"{{ revealButtonHref }}\" data-view-component=\"true\" class=\"btn-sm btn\">    Show hidden characters\n<\/a>\n<\/div>\n<\/div><\/template>\n<template class=\"js-line-alert-template\">\n  <span aria-label=\"This line has hidden Unicode characters\" data-view-component=\"true\" class=\"line-alert tooltipped tooltipped-e\">\n    <svg aria-hidden=\"true\" height=\"16\" viewBox=\"0 0 16 16\" version=\"1.1\" width=\"16\" data-view-component=\"true\" class=\"octicon octicon-alert\">\n    <path d=\"M6.457 1.047c.659-1.234 2.427-1.234 3.086 0l6.082 11.378A1.75 1.75 0 0 1 14.082 15H1.918a1.75 1.75 0 0 1-1.543-2.575Zm1.763.707a.25.25 0 0 0-.44 0L1.698 13.132a.25.25 0 0 0 .22.368h12.164a.25.25 0 0 0 .22-.368Zm.53 3.996v2.5a.75.75 0 0 1-1.5 0v-2.5a.75.75 0 0 1 1.5 0ZM9 11a1 1 0 1 1-2 0 1 1 0 0 1 2 0Z\"><\/path>\n<\/svg>\n<\/span><\/template>\n\n  <table data-hpc class=\"highlight tab-size js-file-line-container js-code-nav-container js-tagsearch-file\" data-tab-size=\"8\" data-paste-markdown-skip data-tagsearch-lang=\"HAProxy\" data-tagsearch-path=\"blog20171011-04.cfg\">\n        <tr>\n          <td id=\"file-blog20171011-04-cfg-L1\" class=\"blob-num js-line-number js-code-nav-line-number js-blob-rnum\" data-line-number=\"1\"><\/td>\n          <td id=\"file-blog20171011-04-cfg-LC1\" class=\"blob-code blob-code-inner js-file-line\">frontend <span class=\"pl-s\">www.mysite.com<\/span><\/td>\n        <\/tr>\n        <tr>\n          <td id=\"file-blog20171011-04-cfg-L2\" class=\"blob-num js-line-number js-code-nav-line-number js-blob-rnum\" data-line-number=\"2\"><\/td>\n          <td id=\"file-blog20171011-04-cfg-LC2\" class=\"blob-code blob-code-inner js-file-line\"><span class=\"pl-k\">    bind<\/span> <span class=\"pl-v\">10.0.0.3:80<\/span><\/td>\n        <\/tr>\n        <tr>\n          <td id=\"file-blog20171011-04-cfg-L3\" class=\"blob-num js-line-number js-code-nav-line-number js-blob-rnum\" data-line-number=\"3\"><\/td>\n          <td id=\"file-blog20171011-04-cfg-LC3\" class=\"blob-code blob-code-inner js-file-line\"><span class=\"pl-k\">    bind<\/span> <span class=\"pl-v\">10.0.0.3:443<\/span><span class=\"pl-c1\"> ssl crt<\/span> /etc/ssl/certs/mysite.pem<\/td>\n        <\/tr>\n        <tr>\n          <td id=\"file-blog20171011-04-cfg-L4\" class=\"blob-num js-line-number js-code-nav-line-number js-blob-rnum\" data-line-number=\"4\"><\/td>\n          <td id=\"file-blog20171011-04-cfg-LC4\" class=\"blob-code blob-code-inner js-file-line\"><span class=\"pl-k\">    http-request<\/span><span class=\"pl-c1\"> redirect<\/span><span class=\"pl-c1\"> scheme<\/span> https <span class=\"pl-k\">unless<\/span> { ssl_fc }<\/td>\n        <\/tr>\n        <tr>\n          <td id=\"file-blog20171011-04-cfg-L5\" class=\"blob-num js-line-number js-code-nav-line-number js-blob-rnum\" data-line-number=\"5\"><\/td>\n          <td id=\"file-blog20171011-04-cfg-LC5\" class=\"blob-code blob-code-inner js-file-line\"><span class=\"pl-k\">    default_backend<\/span> web_servers<\/td>\n        <\/tr>\n  <\/table>\n<\/div>\n\n\n    <\/div>\n\n  <\/div>\n<\/div>\n\n      <\/div>\n      <div class=\"gist-meta\">\n        <a href=\"https://gist.github.com/haproxytechblog/0a0dc28db12a8d94704e9f7033db3196/raw/ee1f3fb0da05b27a524aa5d5e78d602ae7ec5992/blog20171011-04.cfg\" style=\"float:right\">view raw<\/a>\n        <a href=\"https://gist.github.com/haproxytechblog/0a0dc28db12a8d94704e9f7033db3196#file-blog20171011-04-cfg\">\n          blog20171011-04.cfg\n        <\/a>\n        hosted with &#10084; by <a href=\"https://github.com\">GitHub<\/a>\n      <\/div>\n    <\/div>\n<\/div>\n')
