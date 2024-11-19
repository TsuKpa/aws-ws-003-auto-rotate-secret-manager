---
title : "Giới thiệu"
date :  "`r Sys.Date()`" 
weight : 1 
chapter : false
pre : " <b> 1. </b> "
---

## Sử dụng CloudFront, S3, IAM Identity Provider, and GitHub Actions để triển khai NextJS app lên AWS S3

{{< img src="images/infrastructure.png" title="Infrastructure" >}}

Hướng dẫn này sẽ hướng dẫn bạn quy trình triển khai trang web tĩnh lên **Amazon S3** bằng cách sử dụng **GitHub Actions** làm CICD. Chúng ta sẽ sử dụng **CloudFront** làm CDN để cải thiện hiệu suất và bảo mật cũng như **Identity Provider IAM** để quản lý quyền truy cập vào tài nguyên AWS.

#### Các thành phần chính

- **GitHub Actions**: Nền tảng tự động hóa quy trình phát triển phần mềm.
- **Amazon S3**: Dịch vụ lưu trữ đối tượng có thể mở rộng để lưu trữ và truy xuất bất kỳ lượng dữ liệu nào từ bất kỳ đâu trên web.
- **Amazon CloudFront**: Mạng lưới phân phối nội dung (CDN) cung cấp nội dung cho người dùng với độ trễ thấp và tốc độ truyền tải cao.
- **IAM Identity Provider (OIDC)**: Cơ chế quản lý danh tính người dùng và quyền truy cập trong môi trường AWS của bạn.

#### Lợi ích của phương pháp này

- **Tự động Deploy**: Tối ưu hóa quy trình triển khai của bạn và giảm thiểu lỗi thủ công.
- **Cải thiện hiệu năng**: Tận dụng mạng lưới toàn cầu của **CloudFront** để cung cấp nội dung nhanh hơn..
- **Bảo mật**: Thực hiện biện pháp bảo mật bằng cách sử dụng IAM Identity Provider STS (Temporary Credentials).

Đến cuối hướng dẫn này, bạn sẽ hiểu rõ về cách triển khai các trang web tĩnh lên S3 bằng cách sử dụng GitHub Actions và tận dụng sức mạnh của dịch vụ AWS để triển khai hiệu quả.
