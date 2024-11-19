---
title : "Introduction"
date :  "`r Sys.Date()`" 
weight : 1 
chapter : false
pre : " <b> 1. </b> "
---

## Leveraging CloudFront, S3, IAM Identity Provider, and GitHub Actions to deploy NextJS App to AWS S3

{{< img src="images/infrastructure.png" title="Infrastructure" >}}

This guide will walk you through the process of deploying a static website to **Amazon S3** using **GitHub Actions** as a continuous deployment pipeline. We'll utilize **CloudFront** as a content delivery network (CDN) to improve performance and security, and **IAM Identity Provider** to manage access to your AWS resources.

#### Key Components

- **GitHub Actions**: A platform for automating software development workflows.
- **Amazon S3**: A scalable object storage service for storing and retrieving any amount of data, at any time, from anywhere on the web.
- **Amazon CloudFront**: A content delivery network (CDN) service that delivers content to users with low latency and high transfer speeds.
- **IAM Identity Provider (OIDC)**: A mechanism for managing user identities and permissions within your AWS environment.

#### Benefits of This Approach

- **Automated Deployment**: Streamline your deployment process and reduce manual errors.
- **Performance Optimization**: Utilize CloudFront's global network for faster content delivery.
- **Security**: Implement robust security measures using IAM Identity Provider STS.

By the end of this guide, you'll have a solid understanding of how to deploy static websites to S3 using GitHub Actions and leverage the power of AWS services for efficient and scalable deployments.
