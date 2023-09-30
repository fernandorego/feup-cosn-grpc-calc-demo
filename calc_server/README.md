## Prerequisites 
- Ruby version 2 or higher

### Install gRPC
`$ gem install grpc`

### Install gRPC tools
`$ gem install grpc-tools`

### Generate code
`$ grpc_tools_ruby_protoc -I ../protos/ --ruby_out=lib --grpc_out=lib ../protos/calculator.proto`


### Run server
`$ ruby main.rb`

### Client server
`$ ruby test_client.rb`
