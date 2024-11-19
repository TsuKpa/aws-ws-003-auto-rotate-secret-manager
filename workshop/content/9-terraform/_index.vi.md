+++
title = "IaC (Terraform)"
date = 2024
weight = 9
chapter = false
pre = "<b>9. </b>"
+++

Ở mục này, tôi sẽ hướng dẫn các bạn sử dụng Terraform để tạo infrastucture

## 1. Cài đặt

### 1.1. Cài đặt Terraform

Tải Terraform CLI tại [link](https://developer.hashicorp.com/terraform/install). Sau đó, bạn có thể kiểm tra terraform CLI đã hoạt động hay chưa bằng câu lệnh:

```bash
terraform --version
```

### 1.2. Cài đặt Github Token

Vào cài đặt tài khoản Github của bạn tại [link](https://github.com/settings/tokens?type=beta). Tạo Fine-grained personal access tokens với full quyền. Sau đó hãy copy token của bạn để sử dụng ở bước tiếp theo.

### 1.3. Cài đặt AWS CLI và credentials

Cài đặt AWS CLI tại [link](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html). Kiểm tra AWS CLI với câu lệnh

```bash
aws --version
```

Bạn cần phải setup AWS Credentials cho AWS CLI của mình theo hướng dẫn [link](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html)

## 2. Tiến hành

Đây là source code tree của chúng ta

```markdown
.
├── main.tf
├── modules
│   ├── cloudfront
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   ├── github
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   ├── iam-role
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   └── s3
│       ├── main.tf
│       ├── outputs.tf
│       └── variables.tf
├── outputs.tf
├── providers.tf
├── terraform.tfvars.example (You must copy and rename this file to "terraform.tfvars")
└── variables.tf
```

### 2.1. Copy IaC vào thư mục khác

Đầu tiên, bạn cần phải clone hoặc tải source code của workshop về máy tại [link](https://github.com/TsuKpa/001-deploy-static-site-to-s3). Sau đó bạn cần copy 2 folders `terraform` và `next-app` vào thư mục khác (2 thư mục này phải nằm chung thư mục).

```markdown
any-directory
├── terraform/
├── next-app/
```

Tiếp theo, tại thư mục `terraform` chúng ta cần copy file `terraform.tfvars.example` thành `terraform.tfvars`, Kiểm tra 2 biến là: `github_token` là token chúng ta đã tạo ở bước `1.2` và `github_owner` là tài khoản github của bạn (Có phân biệt hoa thường).

### 2.2. Init terraform

Vào thư mục `terraform`

```bash
cd terraform
```

Khởi tạo Provider

```bash
terraform init
```

Kiểm tra state hiện tại và các biến

```bash
terraform plan
```

Nếu như không có lỗi nào xảy ra, chúng ta có thể đi tiếp

### 2.3. Tạo tài nguyên

```bash
terraform apply -auto-approve
```

Nếu như câu lệnh này chạy không có lỗi nào, chúng ta có thể thấy output ở terminal là URL của Cloudfront sau khi được tạo xong.

### 2.4. Dọn dẹp và xoá tài nguyên

```bash
terraform destroy -auto-approve
```
