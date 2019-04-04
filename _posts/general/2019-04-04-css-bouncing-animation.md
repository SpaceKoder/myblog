---
layout: post
date: 2019-04-04 13:49:00 +0800
title: CSS Bouncing Animation
categories: [general]
tutorial: 1 #Tutorial ID Number
permalink: /css-bouncing-animation/
description: "The source code below will give you a bouncing animation using only CSS. If you want to learn the step-by-step process, there will be a video tutorial that you can watch on Youtube. Which will be available very soon."
thumbnail: "/assets/images/posts/web-ui-development/css-bouncing-animation-thumbnail.jpg"
---

<h2>Source Codes</h2>
<pre class="codes-wrapper codes-wrapper__labeled codes-wrapper__html"><code class="html hljs">&#x3C;!DOCTYPE html&#x3E;
&#x3C;html lang=&#x22;en&#x22;&#x3E;
&#x3C;head&#x3E;
    &#x3C;meta charset=&#x22;UTF-8&#x22;&#x3E;
    &#x3C;meta name=&#x22;viewport&#x22; content=&#x22;width=device-width, initial-scale=1.0&#x22;&#x3E;
    &#x3C;meta http-equiv=&#x22;X-UA-Compatible&#x22; content=&#x22;ie=edge&#x22;&#x3E;
    &#x3C;title&#x3E;Bouncing Animation&#x3C;/title&#x3E;
    &#x3C;link rel=&#x22;stylesheet&#x22; href=&#x22;/style.css&#x22;&#x3E;
&#x3C;/head&#x3E;
&#x3C;body&#x3E;
    &#x3C;div class=&#x22;wrapper&#x22;&#x3E;
        &#x3C;div class=&#x22;ball&#x22;&#x3E;&#x3C;/div&#x3E;
    &#x3C;/div&#x3E;
&#x3C;/body&#x3E;
&#x3C;/html&#x3E;</code></pre>
<pre class="codes-wrapper codes-wrapper__labeled codes-wrapper__css"><code class="css hljs">body{
    background: #181823;
}

.wrapper{
    width: 70px;
    position: absolute;
    top: 70%;
    left: 50%;
    transform: translate(-50%, 0);
}

.wrapper::after{
    content: "";
    background: #0d0d14;
    width: 100%;
    height: 15px;
    border-radius: 100%;
    position: absolute;
    left: 0;
    bottom: 0;
    transform: translateY(50%);
    z-index: -1;
}

.ball{
    background: #ce11bc;
    width: 70px;
    height: 70px;
    border-radius: 100%;
    position: absolute;
    bottom: 0;
    animation: bounce infinite 1s ease;
}

@keyframes bounce{
    0%{
        bottom: 0;
        height: 70px;
    }

    50%{
        bottom: 250px;
        height: 90px;
    }

    100%{
        bottom: 0;
        height: 40px;
    }
}
</code></pre>
