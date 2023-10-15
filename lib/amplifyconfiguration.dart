const amplifyconfig = ''' {
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "api": {
        "plugins": {
            "awsAPIPlugin": {
                "megapixels": {
                    "endpointType": "GraphQL",
                    "endpoint": "https://uuqj53q7a5dpfldctz2fdwzuve.appsync-api.us-east-1.amazonaws.com/graphql",
                    "region": "us-east-1",
                    "authorizationType": "API_KEY",
                    "apiKey": "da2-5itkbk3gcbbpzlbics2c3oqbhm"
                }
            }
        }
    },
    "auth": {
        "plugins": {
            "awsCognitoAuthPlugin": {
                "UserAgent": "aws-amplify-cli/0.1.0",
                "Version": "0.1.0",
                "IdentityManager": {
                    "Default": {}
                },
                "AppSync": {
                    "Default": {
                        "ApiUrl": "https://uuqj53q7a5dpfldctz2fdwzuve.appsync-api.us-east-1.amazonaws.com/graphql",
                        "Region": "us-east-1",
                        "AuthMode": "API_KEY",
                        "ApiKey": "da2-5itkbk3gcbbpzlbics2c3oqbhm",
                        "ClientDatabasePrefix": "megapixels_API_KEY"
                    },
                    "megapixels_AWS_IAM": {
                        "ApiUrl": "https://uuqj53q7a5dpfldctz2fdwzuve.appsync-api.us-east-1.amazonaws.com/graphql",
                        "Region": "us-east-1",
                        "AuthMode": "AWS_IAM",
                        "ClientDatabasePrefix": "megapixels_AWS_IAM"
                    }
                },
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "us-east-1:0fd71f2c-8377-4411-b9ad-d06e79eb724c",
                            "Region": "us-east-1"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "us-east-1_WGeivnIAV",
                        "AppClientId": "6jqr19favk1jr7dseebjj8sqfk",
                        "Region": "us-east-1"
                    }
                },
                "Auth": {
                    "Default": {
                        "OAuth": {
                            "WebDomain": "s2spwfxitfe2-staging.auth.us-east-1.amazoncognito.com",
                            "AppClientId": "6jqr19favk1jr7dseebjj8sqfk",
                            "SignInRedirectURI": "megapixels://",
                            "SignOutRedirectURI": "megapixels://",
                            "Scopes": [
                                "phone",
                                "email",
                                "openid",
                                "profile",
                                "aws.cognito.signin.user.admin"
                            ]
                        },
                        "authenticationFlowType": "USER_SRP_AUTH",
                        "mfaConfiguration": "OFF",
                        "mfaTypes": [
                            "SMS"
                        ],
                        "passwordProtectionSettings": {
                            "passwordPolicyMinLength": 8,
                            "passwordPolicyCharacters": []
                        },
                        "signupAttributes": [
                            "EMAIL",
                            "NAME",
                            "PICTURE"
                        ],
                        "socialProviders": [
                            "GOOGLE"
                        ],
                        "usernameAttributes": [
                            "EMAIL"
                        ],
                        "verificationMechanisms": [
                            "EMAIL"
                        ]
                    }
                },
                "S3TransferUtility": {
                    "Default": {
                        "Bucket": "megapixels-content121744-staging",
                        "Region": "us-east-1"
                    }
                }
            }
        }
    },
    "storage": {
        "plugins": {
            "awsS3StoragePlugin": {
                "bucket": "megapixels-content121744-staging",
                "region": "us-east-1",
                "defaultAccessLevel": "guest"
            }
        }
    }
}''';