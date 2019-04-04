---
layout: post
date: 2019-04-02 22:32:31 +0800
title: Checkbox CSS Codes
categories: [web ui development]
tutorial: 3 #Tutorial ID Number
permalink: /checkbox-codes/
description: "Checkbox is an interactive element that enables the end-user to make a choice. Checkbox is very useful in some part or feature of your website. Unfortunately there is no available CSS selector where you can directly add a CSS styles to your checkbox. But don’t you worry, because in this article I will show you a way to make checkbox look good on your website."
thumbnail: "/assets/images/posts/web-ui-development/checkbox-thumbnail.jpg"
---

<h2>Output</h2>
<img src="/assets/images/posts/web-ui-development/checkbox-ui.jpg" alt="Checkbox CSS Codes" class="image__expand">
<h2>Source Codes</h2>
<pre class="codes-wrapper codes-wrapper__labeled codes-wrapper__html"><code class="html hljs">&#x3C;label class=&#x22;checkbox&#x22;&#x3E;
    &#x3C;input type=&#x22;checkbox&#x22;&#x3E;
    &#x3C;span class=&#x22;checkbox__indicator&#x22;&#x3E;&#x3C;/span&#x3E;
&#x3C;/label&#x3E;</code></pre>
<pre class="codes-wrapper codes-wrapper__labeled codes-wrapper__css"><code class="css hljs">body{
    background: #181823;
}

.checkbox{
    width: 25px;
    height: 25px;
    display: inline-block;
    position: absolute;
    top: 40%;
    left: 40%;
    cursor: pointer;
}

.checkbox input[type=checkbox]{
    position: absolute;
    visibility: hidden;
    opacity: 0;
}

.checkbox .checkbox__indicator{
    width: 100%;
    height: 100%;
    padding: 4px;
    border: 2px #ffffff  solid;
    box-sizing: border-box;
    position: absolute;
    top: 0;
    left: 0;
}

.checkbox .checkbox__indicator::after{
    content: "";
    background-image: url("/checked.svg");
    background-repeat: no-repeat;
    background-size: 100%;
    width: 100%;
    height: 100%;
    display: block;
    opacity: 0;
}

.checkbox input[type=checkbox]:checked + .checkbox__indicator{
    background: #079641;
    border-color: #079641;
}

.checkbox input[type=checkbox]:checked + .checkbox__indicator::after{
    opacity: 1;
}</code></pre>