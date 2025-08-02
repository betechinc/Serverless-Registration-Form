# Serverless Registration Form

## Step 1: Create DynamoDB Table

```sh
Table Name: registration-table
Partition key: email

```

## Step 2: Create IAM Role for Lambda Function
```sh
IAM Role Name: RegistrationFormRole

Permissions:
1. CloudWatch Full Access
2. DynamoDB Full Access

```

## Step 3: Create Lambda Function

```sh
Function Name: registration-form-function
Runtime: Python 3.9

```
Assign role created

## Step 4: Write Lambda Function
Manually paste lambda script or provide s3 bucket ARN

## Step 5: Create API Gateway and Enable CORS
Make sure to add items to DynamoDB Table(email:1, name,password)

Create REST API
API name: registration-api

Create Resource
Resource name: register (Enable CORS)

Create Method
Method type: POST
Integration type: Lambda function
Lambda function: [select arn]

Enable CORS
Select OPTIONS and POST


## Step 6: Test the Project
Update script.js with the API_URL/register


### Enable CORS: 

```sh
Access-Control-Allow-Origin: '*'
Access-Control-Allow-Headers: Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token
Access-Control-Allow-Methods: POST

```

## Step 5: Test the Application



Follow our tutorials here: https://www.youtube.com/@amonkincloud/videos \
Follow our blog here: https://amonkincloud.com/ \
Follow my personal blog here:https://dev.to/yeshwanthlm/ \
Follow us on Instagram: https://www.instagram.com/amonkincloud/ \
For queries write to us at: amonkincloud@gmail.com 
