#!/bin/bash

# List of Lambda function ARNs to import (comma-separated)
FUNCTION_ARNs="arn:aws:lambda:ca-central-1:017820679929:function:PaymentGateway_IntelysisToken,arn:aws:lambda:ca-central-1:017820679929:function:PaymentGateway_Orchestrator"

# Split the list of ARNs into an array
IFS=',' read -r -a FUNCTION_ARNs_array <<< "$FUNCTION_ARNs"

# Process each Lambda function ARN
for arn in "${FUNCTION_ARNs_array[@]}"; do
  # Extract the Lambda function name from the ARN (last part after ':')
  name=$(echo "$arn" | awk -F: '{print $NF}')
  
  # Debug: Print the ARN and function name
  echo "Processing ARN: $arn"
  echo "Lambda function name: $name"

  # Add the resource block to the Terraform configuration file (main.tf)
  echo "resource \"aws_lambda_function\" \"$name\" {}" >> lambda_function.tf
  echo "Terraform resource added for $name"

  # Attempt to import the Lambda function
  terraform import aws_lambda_function.$name "$arn"
  
  # Check for successful import
  if [ $? -ne 0 ]; then
    echo "Error importing $name with ARN $arn"
    exit 1
  else
    echo "Successfully imported $name"
  fi
done

echo "All specified Lambda functions imported successfully."
