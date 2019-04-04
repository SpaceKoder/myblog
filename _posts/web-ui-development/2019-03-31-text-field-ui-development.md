---
layout: post
date: 2019-03-31 17:13:21 +0800
title: Input Text Field with Icon Codes
categories: [web ui development]
tutorial: 1 #Tutorial ID Number
permalink: /input-text-codes/
description: "Text Field or Input field is an essential element for building like forms, search field, credential inputs fields, and more. This article will show you how to build and design your Text field."
thumbnail: "/assets/images/posts/web-ui-development/input-thumbnail.jpg"
---
<h2>Output</h2>
<img src="/assets/images/posts/web-ui-development/input-with-icon.jpg" alt="Input Text Field with Icon Codes"  class="image__expand">
<h2>Source Codes</h2>
<pre class="codes-wrapper codes-wrapper__labeled codes-wrapper__html"><code class="html hljs">&#x3C;input type=&#x22;text&#x22; class=&#x22;input-field&#x22; placeholder=&#x22;Text Field&#x22;&#x3E;
&#x3C;!-- Text Field with Icon --&#x3E;
&#x3C;div class=&#x22;input-wrapper&#x22;&#x3E;
    &#x3C;input type=&#x22;text&#x22; class=&#x22;input-field&#x22; placeholder=&#x22;Email address&#x22;&#x3E;
    &#x3C;span class=&#x22;icon&#x22;&#x3E;&#x3C;/span&#x3E;
&#x3C;/div&#x3E;</code></pre>
<pre class="codes-wrapper codes-wrapper__labeled codes-wrapper__css"><code class="css hljs">.input-field{
    background: #474761;
    width: 250px;
    font-size: 16px;
    color: #b1b1d4;
    border: 2px solid #8b8bad;
    padding: 10px 15px;
    outline: none;
    box-sizing: border-box;
}

.input-field::placeholder{ /* Chrome, Firefox, Opera, Safari 10.1+ */
    color: #b1b1d4;
    opacity: 1; /* Firefox */
}
  
.input-field:-ms-input-placeholder { /* Internet Explorer 10-11 */
    color: #b1b1d4;
}

.input-field::-ms-input-placeholder { /* Microsoft Edge */
    color: #b1b1d4;
}

/* ---Text Field with Icon--- */

.input-wrapper{
    position: relative;
    display: inline-block;
}

.input-wrapper .icon{
    background-image: url("/check-mark.svg");
    background-repeat: no-repeat;
    background-size: 100%;
    background-position: center;
    width: 20px;
    height: 100%;
    position: absolute;
    top: 50%;
    right: 10px;
    transform: translate(0, -50%);
}

.input-wrapper .input-field{
    padding-right: 30px;
}</code></pre>