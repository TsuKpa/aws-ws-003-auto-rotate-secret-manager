---
title : "Cấu hình Github"
date : "`r Sys.Date()`"
weight : 6
chapter : false
pre : " <b> 6. </b> "
---

#### Chuẩn bị

Đầu tiên, bạn cần phải download source code NextJS ở [link](https://github.com/TsuKpa/001-deploy-static-site-to-s3) source code là thư mục `next-app`, sau đó bạn cần đẩy chúng lên Github repository của bạn.

#### Nội dung

1. Ở Github repository đã push lên, chọn **"Settings"** -> Ở mục "Secrets and variables" Chọn **Actions** -> **"Manage Environment Secrets"**

{{< img src="images/6.github/02-github.png" title="02-github" >}}

2. Chọn **"New Environment"** nếu bạn chưa có cấu hình nào

{{< img src="images/6.github/03-github.png" title="03-github" >}}

3. Sau đó nhập tên môi trường và click **"Configure environment"**

{{< img src="images/6.github/04-github.png" title="04-github" >}}

4. Chọn **"Add environment secret"**

{{< img src="images/6.github/05-github.png" title="05-github" >}}

5. Bạn cần phải thêm tất cả các biến phía dưới để thực hiện bài workshop này

   - `AWS_ACCOUNT_ID` nằm ở trên cùng bên phải AWS Console của bạn
   - `AWS_REGION` VD: `ap-southeast-1`
   - `AWS_S3_ASSUME_ROLE` là tên của IAM Role mà chúng ta đã tạo ở bước trước
   - `BUCKET_NAME`: Tên của S3 bucket đã tạo
   - `CF_DISTRIBUTION_ID`: Cloudfront ID đã tạo \
  VD: **arn:aws:cloudfront::<YOUR_ACCOUNT_ID>:distribution/<CF_DISTRIBUTION_ID`>** <--- Cloudfront ID ở đây

{{< img src="images/6.github/06-github.png" title="06-github" >}}

6. Thêm biến môi trường thành công

{{< img src="images/6.github/07-github.png" title="07-github" >}}
