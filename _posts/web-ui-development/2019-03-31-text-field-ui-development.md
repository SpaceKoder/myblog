---
layout: post
date: 2019-03-31 17:13:21 +0800
title: Text Field - Web UI Development Tutorial
categories: [web ui development]
tutorial: 1 #Tutorial ID Number
permalink: /text-field-ui-development/
description: "Text Field or Input field is an essential element for building like forms, search field, credential inputs fields, and more. This article will show you how to build and design your Text field."
---

<h2>Let’s get started:</h2>
<p>First, in our HTML file, let’s add our Input tag. It doesn’t matter whether its type is text, email, password, or etc. Then let's give it a class name <span class="code">input-field</span>.</p>
<pre class="codes-wrapper codes-wrapper__labeled codes-wrapper__html"><code class="html hljs">&#x3C;input type=&#x22;text&#x22; class=&#x22;input-field&#x22; placeholder=&#x22;Text Field&#x22;&#x3E;</code></pre>
<p>And in our CSS file, let’s add the following CSS rule to our text field.</p>
<pre class="codes-wrapper codes-wrapper__labeled codes-wrapper__css"><code class="css hljs">.input-field{
    background: #474761;
    width: 250px;
    font-size: 16px;
    color: #b1b1d4;
    border: 2px solid #8b8bad;
    padding: 10px 15px;
    outline: none;
    box-sizing: border-box;
}</code></pre>
<h2>Changing the color of the text field’s placeholder.</h2>
<p>In most browsers, the color of the placeholder is grey. So in order for us to change the color of the placeholder, is by using the <span class="code">::placeholder</span> selector. For browser compatibility, we will use vendor prefixes. And also for Firefox, they lower the opacity to the placeholder, to fix this we add <span class="code">opacity: 1</span>.</p>
<pre class="codes-wrapper codes-wrapper__labeled codes-wrapper__css"><code class="css hljs">.input-field::placeholder{ /* Chrome, Firefox, Opera, Safari 10.1+ */
    color: #b1b1d4;
    opacity: 1; /* Firefox */
}
    
.input-field:-ms-input-placeholder { /* Internet Explorer 10-11 */
    color: #b1b1d4;
}

.input-field::-ms-input-placeholder { /* Microsoft Edge */
    color: #b1b1d4;
}</code></pre>
<h2>Output:</h2>
<img src="/assets/images/posts/web-ui-development/input/text-field-ui.jpg" alt="Text field UI Design" class="image__expand">
<h2>Bonus:</h2>
<p>What if we’re going to add icon within our text field? Like when you’re validating the user’s email address and then a check icon will popup if it’s valid. Will we can do that too.</p>
<p>First, let’s wrap our text field with the div element and let’s add a class name <span class="code">input-wrapper</span> to our div. Within our div element, we also add span element with a class name <span class="code">icon</span>.</p>
<pre class="codes-wrapper codes-wrapper__labeled codes-wrapper__html"><code class="html hljs">&#x3C;div class=&#x22;input-wrapper&#x22;&#x3E;
    &#x3C;input type=&#x22;text&#x22; class=&#x22;input-field&#x22; placeholder=&#x22;Email address&#x22;&#x3E;
    &#x3C;span class=&#x22;icon&#x22;&#x3E;&#x3C;/span&#x3E;
&#x3C;/div&#x3E;</code></pre>
<p>Let’s add CSS rules to our div element that wraps our text field and icon.</p>
<pre class="codes-wrapper codes-wrapper__labeled codes-wrapper__css"><code class="css hljs">.input-wrapper{
    position: relative;
    display: inline-block;
}</code></pre>
<p>CSS rules for the <span class="code">icon</span> within the <span class="code">input-wrapper</span>.</p>
<pre class="codes-wrapper codes-wrapper__labeled codes-wrapper__css"><code class="css hljs">.input-wrapper .icon{
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
}</code></pre>
<p>Lastly we add 30px right padding to our input field.</p>
<pre class="codes-wrapper codes-wrapper__labeled codes-wrapper__css"><code class="css hljs">.input-wrapper .input-field{
    padding-right: 30px;
}</code></pre>
<h2>Output:</h2>
<img src="/assets/images/posts/web-ui-development/input/text-field-with-icon-ui.jpg" alt="Text field with icon UI Design" class="image__expand">
<h2>Final Source Codes</h2>

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