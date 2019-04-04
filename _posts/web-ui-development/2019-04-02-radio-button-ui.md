---
layout: post
date: 2019-04-02 22:41:28 +0800
title: Radio Buttons Codes
categories: [web ui development]
tutorial: 4 #Tutorial ID Number
permalink: /radio-buttons-codes/
description: "Radio Button is an interactive element that enables the end-user to make choice from a given group of options. But the sad thing about the Radio Button is that, it is the same with checkbox where cannot not add CSS styles to make it look good on your website. For this article, our approach to make our Radio Button look good will be the same as with the checkbox. So I would suggest to read the article Checkbox – Web UI Development."
thumbnail: "/assets/images/posts/web-ui-development/radio-button-thumbnail.jpg"
---

<h2>Output</h2>
<img src="/assets/images/posts/web-ui-development/radio-button-ui.jpg" alt="Radio button Codes" class="image__expand">
<h2>Source Codes</h2>
<pre class="codes-wrapper codes-wrapper__labeled codes-wrapper__html"><code class="html hljs">&#x3C;label class=&#x22;radio-button&#x22;&#x3E;
    &#x3C;input type=&#x22;radio&#x22; name=&#x22;myRadioButton&#x22;&#x3E;
    &#x3C;span class=&#x22;indicator&#x22;&#x3E;&#x3C;/span&#x3E;
    Radio Button 1
&#x3C;/label&#x3E;
&#x3C;label class=&#x22;radio-button&#x22;&#x3E;
    &#x3C;input type=&#x22;radio&#x22; name=&#x22;myRadioButton&#x22;&#x3E;
    &#x3C;span class=&#x22;indicator&#x22;&#x3E;&#x3C;/span&#x3E;
    Radio Button 2
&#x3C;/label&#x3E;
&#x3C;label class=&#x22;radio-button&#x22;&#x3E;
    &#x3C;input type=&#x22;radio&#x22; name=&#x22;myRadioButton&#x22;&#x3E;
    &#x3C;span class=&#x22;indicator&#x22;&#x3E;&#x3C;/span&#x3E;
    Radio Button 3
&#x3C;/label&#x3E;</code></pre>
<pre class="codes-wrapper codes-wrapper__labeled codes-wrapper__css"><code class="css hljs">body{
    background: #181823;
}

.radio-button{
    color: #ffffff;
    font-family:'Roboto', sans-serif;
    font-size: 18px;
    display: block;
    position: relative;
    margin-bottom: 10px;
    cursor: pointer;
}

.radio-button input[type=radio]{
    position: absolute;
    visibility: hidden;
    opacity: 0;
}

.indicator{
    width: 1em;
    height: 1em;
    padding: 3px;
    margin-right: 4px;
    border: 1px #ffffff solid;
    border-radius: 50%;
    box-sizing: border-box;
    display: inline-block;
    vertical-align: top;
}

.indicator::after{
    content: "";
    background: #24b47e;
    width: 100%;
    height: 100%;
    border-radius: 50%;
    display: block;
    opacity: 0;
}

.radio-button input[type=radio]:checked + .indicator{
    border-color: #24b47e;
}

.radio-button input[type=radio]:checked + .indicator::after{
    opacity: 1;
}</code></pre>