---
title : "Kích hoạt tính năng static web"
date : "`r Sys.Date()`"
weight : 2
chapter : false
pre : " <b> 3.2. </b> "
---

1. Sau khi tạo s3 bucket chúng ta chọn bucket **"my-nextjs-app-bucket-1"** đã tạo

{{< img src="images/3.s3/06-s3.png" title="06-s3" >}}

2. Chọn **"Properties"** tab

{{< img src="images/3.s3/07-s3.png" title="07-s3" >}}

3. Scroll down và ở tab **Static Website Hosting** choose **"Edit"**

{{< img src="images/3.s3/08-s3.png" title="08-s3" >}}

4. Static website hosting
   - Chọn **"Enable"**
   - Ở mục **Index document** Chúng ta nhập **"index.html"** (Bởi vì sau khi build, ứng dụng của chúng ta sẽ có **index.html** file)
   - (Tuỳ chọn) Ở mục **Error document** nhập **"404.html"**

{{< img src="images/3.s3/09-s3.png" title="09-s3" >}}

5. Cuối cùng, chọn **"Save Changes"**

{{< img src="images/3.s3/10-s3.png" title="10-s3" >}}