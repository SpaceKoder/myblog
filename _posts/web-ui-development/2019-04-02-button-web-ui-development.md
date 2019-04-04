---
layout: post
date: 2019-04-02 21:54:47 +0800
title: Button with Icon Codes
categories: [web ui development]
tutorial: 2 #Tutorial ID Number
permalink: /button-codes/
description: "Button is an interactive and a common element that you can see in any website. The main purpose of a button, is to give the end-users the ability to interact on your website. So having a well-designed button gives an additional credibility to your website. In this article I will show you how you can design your buttons."
thumbnail: "/assets/images/posts/web-ui-development/button-thumbnail.jpg"
---

<h2>Output</h2>
<img src="/assets/images/posts/web-ui-development/button-with-icon.jpg" alt="Button with Icon Codes" class="image__expand">
<h2>Source Codes</h2>
<pre class="codes-wrapper codes-wrapper__labeled codes-wrapper__html"><code class="html hljs">&#x3C;button class=&#x22;button&#x22;&#x3E;Button&#x3C;/button&#x3E;
&#x3C;a href=&#x22;#&#x22; class=&#x22;button&#x22;&#x3E;Button&#x3C;/a&#x3E;
&#x3C;button class=&#x22;button button--login&#x22;&#x3E;&#x3C;span class=&#x22;button-icon&#x22;&#x3E;&#x3C;/span&#x3E;Log In&#x3C;/button&#x3E;</code></pre>

<pre class="codes-wrapper codes-wrapper__labeled codes-wrapper__css"><code class="css hljs">body{
    background: #181823;
    font-family:'Roboto', sans-serif;
}

.button{
    background: #6975ef;
    font-family:'Roboto', sans-serif;
    color: #fff;
    font-size: 16px;
    border: none;
    border-radius: 3px;
    outline: none;
    padding: 5px 10px;
    display: inline-block;
    cursor: pointer;
}

a.button{
    text-decoration: none;
}

.button:hover{
    background: #8792fd;
}

.button:active{
    background: #525cc3;
}

.button-icon{
    width: 1em;
    height: 1em;
    display: inline-block;
    vertical-align: top;
    margin-right: 5px;
}

.button-icon{
    background-image: url("/login.svg");
    background-repeat: no-repeat;
    background-size: 100%;
}

.button--login{
    background: #24b47e;
    text-transform: uppercase;
}

.button--login:hover{
    background: #3ed49c;
}

.button--login:active{
    background: #1c986a;
}</code></pre>