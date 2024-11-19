---
title : "Tạo S3 bucket"
date : "`r Sys.Date()`"
weight : 1
chapter : false
pre : " <b> 3.1. </b> "
---

1. Ở giao diện **AWS Console**, tìm từ khoá *"s3"* và chọn **S3**

{{< img src="images/3.s3/01-s3.png" title="01-s3" >}}

2. Chọn **"Create Bucket"**

{{< img src="images/3.s3/02-s3.png" title="02-s3" >}}

3. Ở giao diện của S3, chúng ta sẽ:

   - Chọn danh mục region ở phía trên bên phải
   - Chọn **"ap-southeast-1"** để latency thấp
   - Nhập tên bucket `my-nextjs-app-bucket-1` <--- Chúng ta sẽ sử dụng tên bucket sau này

{{% notice info %}}
**Tên bucket** là duy nhất trên toàn cầu.
{{% /notice %}}

{{< img src="images/3.s3/03-1-s3.png" title="03-1-s3" >}}

4. Người sở hữu object:

   - Chọn **"ACLs enabled"**
   - Như bạn đã thấy, với tuỳ chọn như hình chúng ta sẽ là người giữ những object đó

{{< img src="images/3.s3/03-2-s3.png" title="03-2-s3" >}}

5. Chặn truy cập công cộng: Chọn **"Block all public access"** bởi vì chúng ta sử dụng **Cloudfront** để ứng dụng có thể truy cập nhanh hơn và chỉ muốn user truy cập ứng dụng từ cloudfront

{{< img src="images/3.s3/04-s3.png" title="04-s3" >}}

6. Cuối cùng, scroll tới cuối trang và chọn **"Create Bucket"**

{{< img src="images/3.s3/05-s3.png" title="05-s3" >}}