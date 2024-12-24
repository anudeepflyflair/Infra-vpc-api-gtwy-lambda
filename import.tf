# API Gateway (REST API) Imports
import {
    id = "3drk5yfi26"
    to = "aws_api_gateway_rest_api.intelisys_paymentgateway_api"
  }

# API Gateway Resource Imports
import {
    id = "3drk5yfi26/root/v1/token"
    to = "aws_api_gateway_resource.v1_token_resource"
  }

# API Gateway Method Imports
import {
    id = "3drk5yfi26/v1_token_resource/POST"
    to = "aws_api_gateway_method.v1_token_post_method"
  }


# API Gateway Stage Imports
import {
    id = "3drk5yfi26/Dev"
    to = "aws_api_gateway_stage.dev_stage"
  }

# API Gateway (HTTP API) Imports
import {
    id = "mv0roh4dqj"
    to = "aws_api_gateway_http_api.paymentgateway_intelysis_token_api"
  }

# API Gateway Resource (HTTP API) Imports
import {
    id = "mv0roh4dqj/PaymentGateway_IntelysisToken"
    to = "aws_api_gateway_http_api_resource.paymentgateway_intelysis_token_resource"
  }

# API Gateway Method (HTTP API) Imports
import {
    id = "mv0roh4dqj/PaymentGateway_IntelysisToken/ANY"
    to = "aws_api_gateway_http_api_method.paymentgateway_intelysis_token_any_method"
  }


# API Gateway Stage (HTTP API) Imports
import {
    id = "mv0roh4dqj/default"
    to = "aws_api_gateway_http_api_stage.default_stage"
  }

# Lambda Function Imports
import {
    id = "PaymentGateway_IntelysisToken"
    to = "aws_lambda_function.paymentgateway_intelysis_token_lambda"
  }

import {
    id = "PaymentGateway_Orchestrator"
    to = "aws_lambda_function.PaymentGateway_Orchestrator"
  }

