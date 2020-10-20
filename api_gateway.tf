resource "aws_api_gateway_rest_api" "one"{
    name = local.api_gateway
    description = ""
}

# Exporting id and name to logs/api_gateway_data.txt
resource "local_file" "api_gateway" {
    content     =  "id: ${aws_api_gateway_rest_api.one.id} \nname: ${aws_api_gateway_rest_api.one.name}"
    filename = "logs/api_gateway_data.txt"
}
