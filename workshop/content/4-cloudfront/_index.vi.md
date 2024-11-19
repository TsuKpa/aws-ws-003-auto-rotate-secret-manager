---
title : "Cấu hình Cloudfront"
date :  "`r Sys.Date()`" 
weight : 4 
chapter : false
pre : " <b> 4. </b> "
---

{{< img src="images/4.cloudfront/cloudfront.png" title="cloudfront logo" >}}

### Tổng quan

**Amazon CloudFront** là một dịch vụ web giúp tăng tốc độ phân phối nội dung web tĩnh và động của bạn, chẳng hạn như các tệp .html, .css, .js và hình ảnh, tới người dùng.

**CloudFront** cung cấp nội dung của bạn thông qua mạng lưới trung tâm dữ liệu trên toàn thế giới được gọi là edge locations. Khi người dùng yêu cầu nội dung mà bạn đang phân phối bằng **CloudFront**, yêu cầu đó sẽ được chuyển đến edge locations có độ trễ thấp nhất (độ trễ thời gian), để nội dung đó được phân phối với hiệu suất tốt nhất có thể.

Bạn có thể sử dụng **Cloudfront** để chuyển hướng HTTP sang HTTPS cho **Static Web Hosting S3**, đồng thời triển khai **WAF** để tăng cường bảo mật.

### Content

1. Tại **AWS Console**, tìm kiếm *"cloudfront"* và chọn **Cloudfront**

{{< img src="images/4.cloudfront/01-cloudfront.png" title="01-cloudfront" >}}

2. Chọn **"Create a CloudFront distribution"**

{{< img src="images/4.cloudfront/02-cloudfront.png" title="02-cloudfront" >}}

3. Tại mục **Origin domain** chúng ta chọn bucket đã tạo ở mục trước

{{< img src="images/4.cloudfront/03-cloudfront.png" title="04-cloudfront" >}}

4. Tại mục **Origin access** chúng ta chọn:
   - Chọn **"Legacy access identities"**
   - Chọn **"Yes, update the bucket policy"**
   - Chọn **"Create new OAI"**

{{< img src="images/4.cloudfront/04-cloudfront.png" title="04-cloudfront" >}}

5. Chọn **"Create"**

{{< img src="images/4.cloudfront/05-cloudfront.png" title="05-cloudfront" >}}

6. Tại **Default Cache Behavior** > **"View"** Chọn **"Redirect HTTP to HTTPS"**

{{< img src="images/4.cloudfront/06-cloudfront.png" title="06-cloudfront" >}}

7. Để mặc định

{{< img src="images/4.cloudfront/07-cloudfront.png" title="07-cloudfront" >}}

8. Tại mục **"Web Application Firewall"** chúng ta chọn **"Do not enable security protection"**, và ở mục **"Settings"** chọn **"Use North America, Europe, Asia, Middle East, and Africa"**

{{< img src="images/4.cloudfront/08-cloudfront.png" title="08-cloudfront" >}}

9. Cuối cùng, scroll tới cuối và chọn  **"Create distribution"**

{{< img src="images/4.cloudfront/09-cloudfront.png" title="09-cloudfront" >}}
