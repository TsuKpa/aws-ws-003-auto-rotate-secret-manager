---
title : "Enable Static Web Hosting"
date : "`r Sys.Date()`"
weight : 2
chapter : false
pre : " <b> 3.2. </b> "
---

1. After created S3 bucket we choose our bucket **"my-nextjs-app-bucket-1"**

{{< img src="images/3.s3/06-s3.png" title="06-s3" >}}

2. Choose **"Properties"** tab

{{< img src="images/3.s3/07-s3.png" title="07-s3" >}}

3. Scroll down and at the tab **Static Website Hosting** choose **"Edit"**

{{< img src="images/3.s3/08-s3.png" title="08-s3" >}}

4. Static website hosting
   - Choose **"Enable"**
   - At **Index document** we type **"index.html"** (Because after build, our app will have an **index.html** file)
   - (Optional) At **Error document** we type **"404.html"**

{{< img src="images/3.s3/09-s3.png" title="09-s3" >}}

5. Final, click **"Save Changes"**

{{< img src="images/3.s3/10-s3.png" title="10-s3" >}}
