---
title : "Tạo Identity Provider OIDC"
date :  "`r Sys.Date()`" 
weight : 1
chapter : false
pre : " <b> 5.1 </b> "
---

1. Ở **AWS Console**, tìm kiếm *"iam"* và chọn **IAM**

{{< img src="images/5.iam/1-iam.png" title="1-iam" >}}

2. Ở mục **Access Management** chọn **Identity Providers**

{{< img src="images/5.iam/2-iam.png" title="2-iam" >}}

3. Ở mục **Identity Providers** điền vào form với nội dung như sau:
    - **Provider type**: Chọn **"OpenID Connect"**
    - **Provider URL**: `https://token.actions.githubusercontent.com`
    - **Audience**: `sts.amazonaws.com`
    - Click **"Add Provider"**

{{< img src="images/5.iam/3-iam.png" title="3-iam" >}}

4. Ở mục **Access Management** chọn **Identity Providers**

{{< img src="images/5.iam/5-iam.png" title="5-iam" >}}
