require "uri"

class Site_api
  basePath = "https://api.myfox.me/v2"
  # apiInvoker = APIInvoker

  def self.escapeString(string)
    URI.encode(string.to_s)
  end

  def self.device_camera_items (site_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/camera/items".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    CameraCollection.new(response)

  end

def self.device_camera_list (site_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/camera/list".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|Camera.new(response)}

  end

def self.camera_live_extend (site_id,camera_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    raise "camera_id is required" if camera_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id,
      :camera_id => camera_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/{cameraId}/camera/live/extend".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    .sub('{' + 'cameraId' + '}', escapeString(camera_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    

  end

def self.camera_live_start (site_id,camera_id,protocol,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    raise "camera_id is required" if camera_id.nil?
    raise "protocol is required" if protocol.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id,
      :camera_id => camera_id,
      :protocol => protocol}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/{cameraId}/camera/live/start/{protocol}".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    .sub('{' + 'cameraId' + '}', escapeString(camera_id))
    .sub('{' + 'protocol' + '}', escapeString(protocol))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    Stream.new(response)

  end

def self.camera_live_stop (site_id,camera_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    raise "camera_id is required" if camera_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id,
      :camera_id => camera_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/{cameraId}/camera/live/stop".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    .sub('{' + 'cameraId' + '}', escapeString(camera_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    boolean.new(response)

  end

def self.camera_preview_take (site_id,camera_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    raise "camera_id is required" if camera_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id,
      :camera_id => camera_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/{cameraId}/camera/preview/take".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    .sub('{' + 'cameraId' + '}', escapeString(camera_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    binary.new(response)

  end

def self.camera_recording_start (site_id,camera_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    raise "camera_id is required" if camera_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id,
      :camera_id => camera_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/{cameraId}/camera/recording/start".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    .sub('{' + 'cameraId' + '}', escapeString(camera_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    Recording.new(response)

  end

def self.camera_recording_stop (site_id,camera_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    raise "camera_id is required" if camera_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id,
      :camera_id => camera_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/{cameraId}/camera/recording/stop".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    .sub('{' + 'cameraId' + '}', escapeString(camera_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    

  end

def self.camera_snapshot_take (site_id,camera_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    raise "camera_id is required" if camera_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id,
      :camera_id => camera_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/{cameraId}/camera/snapshot/take".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    .sub('{' + 'cameraId' + '}', escapeString(camera_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    Snapshot.new(response)

  end

def self.device_data_state_items (site_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/data/state/items".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    DeviceWithStateCollection.new(response)

  end

def self.device_data_state (site_id,device_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    raise "device_id is required" if device_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id,
      :device_id => device_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/{deviceId}/data/state".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    .sub('{' + 'deviceId' + '}', escapeString(device_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    DeviceWithStateState.new(response)

  end

def self.device_data_temperature_items (site_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/data/temperature/items".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    TemperatureSensorCollection.new(response)

  end

def self.device_data_temperature_list (site_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/data/temperature/list".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|TemperatureSensor.new(response)}

  end

def self.device_data_temperature_get (site_id,device_id,date_from,date_to,opts={})
    query_param_keys = [:date_from,:date_to]

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    raise "device_id is required" if device_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id,
      :device_id => device_id,
      :date_from => date_from,
      :date_to => date_to}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/{deviceId}/data/temperature".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    .sub('{' + 'deviceId' + '}', escapeString(device_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    TemperatureRecordCollection.new(response)

  end

def self.device_data_temperature_get_deprecated (site_id,device_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    raise "device_id is required" if device_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id,
      :device_id => device_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/{deviceId}/data/temperature/get".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    .sub('{' + 'deviceId' + '}', escapeString(device_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|TemperatureRecord.new(response)}

  end

def self.device_gate_items (site_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/gate/items".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GateCollection.new(response)

  end

def self.device_gate_list (site_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/gate/list".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|Gate.new(response)}

  end

def self.device_gate_perform_one (site_id,device_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    raise "device_id is required" if device_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id,
      :device_id => device_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/{deviceId}/gate/perform/one".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    .sub('{' + 'deviceId' + '}', escapeString(device_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    

  end

def self.device_gate_perform_two (site_id,device_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    raise "device_id is required" if device_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id,
      :device_id => device_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/{deviceId}/gate/perform/two".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    .sub('{' + 'deviceId' + '}', escapeString(device_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    

  end

def self.device_heater_items (site_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/heater/items".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    HeaterCollection.new(response)

  end

def self.device_heater_list (site_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/heater/list".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|Heater.new(response)}

  end

def self.device_heater_on (site_id,device_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    raise "device_id is required" if device_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id,
      :device_id => device_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/{deviceId}/heater/eco".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    .sub('{' + 'deviceId' + '}', escapeString(device_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    

  end

def self.device_heater_on_Site_api_0 (site_id,device_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    raise "device_id is required" if device_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id,
      :device_id => device_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/{deviceId}/heater/frost".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    .sub('{' + 'deviceId' + '}', escapeString(device_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    

  end

def self.device_heater_off (site_id,device_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    raise "device_id is required" if device_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id,
      :device_id => device_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/{deviceId}/heater/off".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    .sub('{' + 'deviceId' + '}', escapeString(device_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    

  end

def self.device_heater_on_Site_api_1 (site_id,device_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    raise "device_id is required" if device_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id,
      :device_id => device_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/{deviceId}/heater/on".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    .sub('{' + 'deviceId' + '}', escapeString(device_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    

  end

def self.device_shutter_items (site_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/shutter/items".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    ShutterCollection.new(response)

  end

def self.device_shutter_list (site_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/shutter/list".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|Shutter.new(response)}

  end

def self.device_shutter_close (site_id,device_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    raise "device_id is required" if device_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id,
      :device_id => device_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/{deviceId}/shutter/close".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    .sub('{' + 'deviceId' + '}', escapeString(device_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    

  end

def self.device_shutter_open (site_id,device_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    raise "device_id is required" if device_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id,
      :device_id => device_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/{deviceId}/shutter/open".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    .sub('{' + 'deviceId' + '}', escapeString(device_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    

  end

def self.device_socket_items (site_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/socket/items".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SocketCollection.new(response)

  end

def self.device_socket_list (site_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/socket/list".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|Socket.new(response)}

  end

def self.device_socket_off (site_id,device_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    raise "device_id is required" if device_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id,
      :device_id => device_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/{deviceId}/socket/off".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    .sub('{' + 'deviceId' + '}', escapeString(device_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    

  end

def self.device_socket_on (site_id,device_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    raise "device_id is required" if device_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id,
      :device_id => device_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/device/{deviceId}/socket/on".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    .sub('{' + 'deviceId' + '}', escapeString(device_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    

  end

def self.group_electric_items (site_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/group/electric/items".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GroupElectricCollection.new(response)

  end

def self.group_electric_list (site_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/group/electric/list".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|GroupElectric.new(response)}

  end

def self.group_electric_off (site_id,group_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    raise "group_id is required" if group_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id,
      :group_id => group_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/group/{groupId}/electric/off".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    .sub('{' + 'groupId' + '}', escapeString(group_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    

  end

def self.group_electric_on (site_id,group_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    raise "group_id is required" if group_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id,
      :group_id => group_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/group/{groupId}/electric/on".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    .sub('{' + 'groupId' + '}', escapeString(group_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    

  end

def self.group_shutter_items (site_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/group/shutter/items".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GroupShutterCollection.new(response)

  end

def self.group_shutter_list (site_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/group/shutter/list".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|GroupShutter.new(response)}

  end

def self.group_shutter_close (site_id,group_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    raise "group_id is required" if group_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id,
      :group_id => group_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/group/{groupId}/shutter/close".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    .sub('{' + 'groupId' + '}', escapeString(group_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    

  end

def self.group_shutter_open (site_id,group_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    raise "group_id is required" if group_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id,
      :group_id => group_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/group/{groupId}/shutter/open".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    .sub('{' + 'groupId' + '}', escapeString(group_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    

  end

def self.site_history (site_id,date_from,date_to,date_order,type,opts={})
    query_param_keys = [:date_from,:date_to,:date_order,:type]

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id,
      :date_from => date_from,
      :date_to => date_to,
      :date_order => date_order,
      :type => type}.merge(opts)

    #resource path
    path = "/site/{siteId}/history".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SiteEventCollection.new(response)

  end

def self.site_history_get (site_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/history/get".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|SiteEvent.new(response)}

  end

def self.library_image_items (site_id,camera_id,date_from,date_to,date_order,opts={})
    query_param_keys = [:camera_id,:date_from,:date_to,:date_order]

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id,
      :camera_id => camera_id,
      :date_from => date_from,
      :date_to => date_to,
      :date_order => date_order}.merge(opts)

    #resource path
    path = "/site/{siteId}/library/image/items".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    ImageCollection.new(response)

  end

def self.library_image_get (site_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/library/image/list".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|Image.new(response)}

  end

def self.library_video_items (site_id,camera_id,date_from,date_to,date_order,is_recording,opts={})
    query_param_keys = [:camera_id,:date_from,:date_to,:date_order,:is_recording]

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id,
      :camera_id => camera_id,
      :date_from => date_from,
      :date_to => date_to,
      :date_order => date_order,
      :is_recording => is_recording}.merge(opts)

    #resource path
    path = "/site/{siteId}/library/video/items".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    VideoCollection.new(response)

  end

def self.library_video_get (site_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/library/video/list".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|Video.new(response)}

  end

def self.library_video_play (site_id,video_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    raise "video_id is required" if video_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id,
      :video_id => video_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/library/video/{videoId}/play".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    .sub('{' + 'videoId' + '}', escapeString(video_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    VideoPlayHLS.new(response)

  end

def self.scenario_list (site_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/scenario/items".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    ScenarioCollection.new(response)

  end

def self.device_data_temperature_get_deprecated_Site_api_0 (site_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/scenario/list".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|Scenario.new(response)}

  end

def self.scenario_disable (site_id,scenario_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    raise "scenario_id is required" if scenario_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id,
      :scenario_id => scenario_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/scenario/{scenarioId}/disable".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    .sub('{' + 'scenarioId' + '}', escapeString(scenario_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    

  end

def self.scenario_enable (site_id,scenario_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    raise "scenario_id is required" if scenario_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id,
      :scenario_id => scenario_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/scenario/{scenarioId}/enable".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    .sub('{' + 'scenarioId' + '}', escapeString(scenario_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    

  end

def self.scenario_play (site_id,scenario_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    raise "scenario_id is required" if scenario_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id,
      :scenario_id => scenario_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/scenario/{scenarioId}/play".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    .sub('{' + 'scenarioId' + '}', escapeString(scenario_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    

  end

def self.site_seclev_get (site_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/security".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|Security.new(response)}

  end

def self.deprecated_site_seclev_get (site_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id}.merge(opts)

    #resource path
    path = "/site/{siteId}/security/get".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    Security.new(response)

  end

def self.site_seclev_set (site_id,security_level,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    raise "security_level is required" if security_level.nil?
    # set default values and merge with input
    options = {
    :site_id => site_id,
      :security_level => security_level}.merge(opts)

    #resource path
    path = "/site/{siteId}/security/set/{securityLevel}".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    .sub('{' + 'securityLevel' + '}', escapeString(security_level))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    

  end

end

