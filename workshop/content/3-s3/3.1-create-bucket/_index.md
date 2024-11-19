---
title : "Create S3 bucket"
date : "`r Sys.Date()`"
weight : 1
chapter : false
pre : " <b> 3.1. </b> "
---

1. In the **AWS Console**, search *"s3"* and choose **S3**

{{< img src="images/3.s3/01-s3.png" title="01-s3" >}}

2. Choose **"Create Bucket"**

{{< img src="images/3.s3/02-s3.png" title="02-s3" >}}

3. In the S3 service, we choose:

   - Choose the top right for listing regions
   - Choose **"ap-southeast-1"** for low latency
   - Enter your bucket name `my-nextjs-app-bucket-1` <--- we will remember this name

{{% notice info %}}
**Bucket name** is unique in global.
{{% /notice %}}

{{< img src="images/3.s3/03-1-s3.png" title="03-1-s3" >}}

4. Object ownership:

   - Choose **"ACLs enabled"**
   - As you can see, we will own any objects in our bucket

{{< img src="images/3.s3/03-2-s3.png" title="03-2-s3" >}}

5. Block all public access: We choose **"Block all public access"** because we use **Cloudfront** for fast performance and only want user access from **Cloudfront**

{{< img src="images/3.s3/04-s3.png" title="04-s3" >}}

6. Final, scroll down and choose **"Create Bucket"**

{{< img src="images/3.s3/05-s3.png" title="05-s3" >}}
