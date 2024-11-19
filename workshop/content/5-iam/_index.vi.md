---
title : "Cấu hình IAM"
date :  "`r Sys.Date()`" 
weight : 5 
chapter : false
pre : " <b> 5. </b> "
---

{{< img src="images/5.iam/iam.png" title="iam logo" >}}

### Tổng quan

**AWS Identity and Access Management (IAM)** là dịch vụ web giúp bạn kiểm soát quyền truy cập vào tài nguyên **AWS** một cách an toàn. Với IAM, bạn có thể quản lý các quyền kiểm soát những tài nguyên **AWS** nào mà người dùng có thể truy cập.

Bạn sử dụng **IAM** để kiểm soát ai được xác thực (đăng nhập) và được ủy quyền (có quyền) để sử dụng tài nguyên. IAM cung cấp cơ sở hạ tầng cần thiết để kiểm soát việc xác thực và ủy quyền cho các tài khoản **AWS** của bạn.

**AWS Security Token Service (AWS STS)** sử dụng để tạo và cung cấp cho người dùng đáng tin cậy thông tin xác thực bảo mật tạm thời có thể kiểm soát quyền truy cập vào tài nguyên AWS của bạn.

### Nội dung

5.1. [Tạo Identity Provider (OIDC)](5.1-create-oidc/)\
5.2. [Tạo IAM Role](5.2-create-iam-role/)