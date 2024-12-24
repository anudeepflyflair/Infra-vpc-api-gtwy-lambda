imports = [
  {
    id = "3drk5yfi26"
    to = "aws_api_gateway_rest_api.intelisys_paymentgateway_api"
  },
  {
    id = "3drk5yfi26/root/v1/token"
    to = "aws_api_gateway_resource.v1_token_resource"
  },
  {
    id = "3drk5yfi26/v1_token_resource/POST"
    to = "aws_api_gateway_method.v1_token_post_method"
  },
  {
    id = "3drk5yfi26/Dev"
    to = "aws_api_gateway_stage.dev_stage"
  },
  {
    id = "mv0roh4dqj"
    to = "aws_api_gateway_http_api.paymentgateway_intelysis_token_api"
  },
  {
    id = "mv0roh4dqj/PaymentGateway_IntelysisToken"
    to = "aws_api_gateway_http_api_resource.paymentgateway_intelysis_token_resource"
  },
  {
    id = "mv0roh4dqj/PaymentGateway_IntelysisToken/ANY"
    to = "aws_api_gateway_http_api_method.paymentgateway_intelysis_token_any_method"
  },
  {
    id = "mv0roh4dqj/default"
    to = "aws_api_gateway_http_api_stage.default_stage"
  },
  {
    id = "PaymentGateway_IntelysisToken"
    to = "aws_lambda_function.paymentgateway_intelysis_token_lambda"
  },
  {
    id = "PaymentGateway_Orchestrator"
    to = "aws_lambda_function.PaymentGateway_Orchestrator"
  },
]
