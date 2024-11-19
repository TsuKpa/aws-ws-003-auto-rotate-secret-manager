+++
title = "Xoá tài nguyên"
date = 2024
weight = 8
chapter = false
pre = "<b>8. </b>"
+++

Chúng ta có các bước để xoá resource

### Xoá Cloudfront

1. Bạn cần phải vào **Cloudfront** -> Chọn Cloudfront -> **Disable**
{{< img src="images/6.clean/cloudfront/03-clean.png" title="03-clean" >}}

2. Đợi khoảng 10 phút để Cloudfront disable và bạn có thể xoá
{{< img src="images/6.clean/cloudfront/04-clean.png" title="04-clean" >}}

3. Xoá
{{< img src="images/6.clean/cloudfront/11-clean.png" title="11-clean" >}}

### Xoá S3

1. Chúng ta cần phải xoá tất cả các object bên trong bằng cách chọn tất cả sau đó chọn **"Delete"**
{{< img src="images/6.clean/s3/05-clean.png" title="05-clean" >}}

2. Gõ text xác nhận và click **"Delete objects"**
{{< img src="images/6.clean/s3/06-clean.png" title="06-clean" >}}

3. Click **"Close"**
{{< img src="images/6.clean/s3/07-clean.png" title="07-clean" >}}

1. Sau khi bucket đã rỗng, chúng ta quay lại
{{< img src="images/6.clean/s3/08-clean.png" title="08-clean" >}}

2. Chọn bucket để xoá
{{< img src="images/6.clean/s3/09-clean.png" title="09-clean" >}}

3. Xác nhận
{{< img src="images/6.clean/s3/10-clean.png" title="10-clean" >}}

### Xoá IAM

1. Xoá Role đã tạo bằng cách chọn và click **"Delete"**
{{< img src="images/6.clean/iam/12-clean.png" title="12-clean" >}}

2. Xoá Identity Provider bằng cách chọn và click **"Delete"**
{{< img src="images/6.clean/iam/14-clean.png" title="14-clean" >}}

### Xoá Github Repository

1. Xoá environment secrets
{{< img src="images/6.clean/github/16-clean.png" title="16-clean" >}}

2. Click **"I understand, delete this environment"**
{{< img src="images/6.clean/github/17-clean.png" title="17-clean" >}}

3. Xoá repository
{{< img src="images/6.clean/github/19-clean.png" title="19-clean" >}}
