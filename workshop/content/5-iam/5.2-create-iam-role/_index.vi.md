---
title : "Tạo IAM Role"
date :  "`r Sys.Date()`" 
weight : 2
chapter : false
pre : " <b> 5.2 </b> "
---

1. Ở mục **Identity Providers** Chọn Provider chúng ta đã tạo trước đó

{{< img src="images/5.iam/4-iam.png" title="4-iam" >}}

2. Chọn **"Assign role"**

{{< img src="images/5.iam/5-iam.png" title="5-iam" >}}

3. Chọn **"Create a new role"** -> **"Next"**

{{< img src="images/5.iam/6-iam.png" title="6-iam" >}}

4. Ở bước **Step 1**
   - Ở **Trusted Entity type** Chọn **"Web identity"**
   - Mục **Web Identity**:
     - Chọn **Identity Provider** `https://token.actions.githubusercontent.com`
     - Chọn **Audience** `sts.amazonaws.com`
     - **Github Organization**: Điền Github username của bạn (Có phân biệt hoa thường)
     - Click **Next**

{{< img src="images/5.iam/7-iam.png" title="7-iam" >}}

5. Ở **Step 2** là cho bạn chọn **AWS Managed Policy** nhưng chúng ta sẽ sử dụng inline policy do đó chọn **"Next"**

{{< img src="images/5.iam/8-iam.png" title="8-iam" >}}

6. Ở **Step 3** Bạn điền tên bạn muốn sử dụng và ghi nhớ nó

{{< img src="images/5.iam/8.1-iam.png" title="8.1-iam" >}}

7. Chọn **"Create role"**

{{< img src="images/5.iam/9-iam.png" title="9-iam" >}}

8. Ở menu bên trái chọn **"Roles"** -> Tìm kiếm tên bạn đã tạo trước đó -> Chọn nó

{{< img src="images/5.iam/10-iam.png" title="10-iam" >}}

9. Ở mục **Permission Policies** -> Chọn **"Add permissions"** -> **Create inline policy**

{{< img src="images/5.iam/11-iam.png" title="11-iam" >}}

10.  Mục **Step 1** Chọn định dạng **JSON** và copy paste đoạn json dưới đây (nhớ chỉnh sửa các trường phù hợp):

```json
{
 "Version": "2012-10-17",
 "Statement": [
  {
   "Sid": "SyncToBucket",
   "Effect": "Allow",
   "Action": [
    "s3:PutObject",
    "s3:GetObject",
    "s3:ListBucket",
    "s3:DeleteObject"
   ],
   "Resource": [
    "arn:aws:s3:::YOUR_BUCKET_NAME/*",
    "arn:aws:s3:::YOUR_BUCKET_NAME"
   ]
  },
  {
   "Sid": "FlushCache",
   "Effect": "Allow",
   "Action": "cloudfront:CreateInvalidation",
   "Resource": "arn:aws:cloudfront::YOUR_ACCOUNT_ID:distribution/YOUR_CLOUDFRONT_ID"
  }
 ]
}
```

{{< img src="images/5.iam/12-iam.png" title="12-iam" >}}

Cuối cùng nhấn **"Next"** -> **"Save Changes"** để hoàn thành.
