---
layout: post
date: 2019-04-02 22:44:43 +0800
title: Toggle Switch Codes
categories: [web ui development]
tutorial: 5 #Tutorial ID Number
permalink: /toggle-switch-codes/
description: "Toggle Switch and interactive element that gives the end-user the look and the feel that they are toggling an actual switch. Toggle Switch is not a HTML element, it’s actually just a Checkbox element. For this article we will make a Toggle Switch out of Checkbox element."
thumbnail: "/assets/images/posts/web-ui-development/toggle-switch-thumbnail.jpg"
---

<h2>Ouput</h2>
<img src="/assets/images/posts/web-ui-development/toggle-switch-ui.jpg" alt="Toggle Switch Codes" class="image__expand">
<h2>Source Codes</h2>
<pre class="codes-wrapper codes-wrapper__labeled codes-wrapper__html"><code class="html hljs">&#x3C;label class=&#x22;toggle-switch&#x22;&#x3E;
    &#x3C;input type=&#x22;checkbox&#x22;&#x3E;
    &#x3C;span class=&#x22;indicator&#x22;&#x3E;&#x3C;/span&#x3E;
&#x3C;/label&#x3E;</code></pre>
<pre class="codes-wrapper codes-wrapper__labeled codes-wrapper__css"><code class="css hljs">body{
    background: #181823;
}

.toggle-switch{
    width: 55px;
    height: 25px;
    display: inline-block;
    cursor: pointer;
}

.toggle-switch input[type=checkbox]{
    position: absolute;
    visibility: hidden;
    opacity: 0;
}

.toggle-switch .indicator{
    background: #33334a;
    width: 100%;
    height: 100%;
    border-radius: 12.5px;
    display: block;
    position: relative;
    -webkit-transition: all .2s ease-in-out;
    transition: all .2s ease-in-out;
}

.toggle-switch .indicator::after{
    content: "";
    background: #ffffff;
    height: 17px;
    width: 17px;
    border-radius: 50%;
    position: absolute;
    top: 4px;
    left: 4px;
    -webkit-transition: all .2s ease-in-out;
    transition: all .2s ease-in-out;
}

.toggle-switch input[type=checkbox]:checked + .indicator{
    background: #6772e5;
}

.toggle-switch input[type=checkbox]:checked + .indicator::after{
    left: 34px;
}</code></pre>