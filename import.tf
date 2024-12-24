
import {
    id = "PaymentGateway_IntelysisToken"
    to = "aws_lambda_function.PaymentGateway_IntelysisToken"
}

import {
    id = "3drk5yfi26"
    to = "aws_api_gateway_rest_api.intelisys_paymentgateway_api"
}

import {
    id = "mv0roh4dqj"
    to = "aws_api_gateway_rest_api.PaymentGateway_IntelysisToken-API"
}

import {
    id = "PaymentGateway_Orchestrator"
    to = "aws_lambda_function.PaymentGateway_Orchestrator"
}