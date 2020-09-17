class VenderDeadLockError < StandardError
end

class Service
  def update(record)
    raise(VenderDeadLockError.new('vender dead lock error'))
  end
end

service = Service.new

retries = 0

begin
  service.update('record')
rescue VenderDeadLockError => e
  raise if retries > 5
  puts(e.to_s)
  retries += 1
  sleep(5 * retries)
  retry
end