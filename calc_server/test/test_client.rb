this_dir = File.expand_path(File.dirname(__FILE__))
lib_dir = File.join(this_dir, 'lib')
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

require 'grpc'
require 'calculator_services_pb'

def main
  user = ARGV.size > 0 ?  ARGV[0] : 'world'
  hostname = ARGV.size > 1 ?  ARGV[1] : 'localhost:50051'
  stub = Calculator::Calculator::Stub.new(hostname, :this_channel_is_insecure)

  # sum
  begin
    res = stub.sum(Calculator::CalcRequest.new(x: 4, y: 2)).res
    p "Sum 4 + 2 = #{res}"
  rescue GRPC::BadStatus => e
    abort "ERROR: #{e.res}"
  end

  # sub
  begin
    res = stub.sub(Calculator::CalcRequest.new(x: 4, y: 2)).res
    p "Sub 4 - 2 = #{res}"
  rescue GRPC::BadStatus => e
    abort "ERROR: #{e.res}"
  end

  # mul
  begin
    res = stub.mul(Calculator::CalcRequest.new(x: 4, y: 2)).res
    p "Mul 4 * 2 = #{res}"
  rescue GRPC::BadStatus => e
    abort "ERROR: #{e.res}"
  end

  # div
  begin
    res = stub.div(Calculator::CalcRequest.new(x: 4, y: 2)).res
    p "Mul 4 / 2 = #{res}"
  rescue GRPC::BadStatus => e
    abort "ERROR: #{e.res}"
  end
end

main
