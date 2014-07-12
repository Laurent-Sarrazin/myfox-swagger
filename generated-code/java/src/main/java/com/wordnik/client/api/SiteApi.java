package com.wordnik.client.api;

import com.wordnik.client.common.ApiException;
import com.wordnik.client.common.ApiInvoker;

import com.wordnik.client.model.Security;
import com.wordnik.client.model.GroupShutter;
import com.wordnik.client.model.Binary;
import com.wordnik.client.model.TemperatureRecordCollection;
import com.wordnik.client.model.Stream;
import com.wordnik.client.model.GateCollection;
import com.wordnik.client.model.ImageCollection;
import com.wordnik.client.model.DeviceWithStateCollection;
import com.wordnik.client.model.TemperatureRecord;
import com.wordnik.client.model.Video;
import com.wordnik.client.model.GroupShutterCollection;
import com.wordnik.client.model.GroupElectricCollection;
import com.wordnik.client.model.Gate;
import com.wordnik.client.model.DeviceWithStateState;
import com.wordnik.client.model.GroupElectric;
import com.wordnik.client.model.Snapshot;
import com.wordnik.client.model.ShutterCollection;
import com.wordnik.client.model.VideoCollection;
import com.wordnik.client.model.Recording;
import com.wordnik.client.model.Camera;
import com.wordnik.client.model.Socket;
import com.wordnik.client.model.SiteEventCollection;
import com.wordnik.client.model.SiteEvent;
import com.wordnik.client.model.Scenario;
import com.wordnik.client.model.Heater;
import com.wordnik.client.model.CameraCollection;
import com.wordnik.client.model.TemperatureSensor;
import com.wordnik.client.model.Image;
import com.wordnik.client.model.SocketCollection;
import com.wordnik.client.model.VideoPlayHLS;
import com.wordnik.client.model.Shutter;
import com.wordnik.client.model.TemperatureSensorCollection;
import com.wordnik.client.model.HeaterCollection;
import com.wordnik.client.model.ScenarioCollection;
import java.io.File;
import java.util.*;

public class SiteApi {
  String basePath = "https://api.myfox.me/v2";
  ApiInvoker apiInvoker = ApiInvoker.getInstance();

  public ApiInvoker getInvoker() {
    return apiInvoker;
  }
  
  public void setBasePath(String basePath) {
    this.basePath = basePath;
  }
  
  public String getBasePath() {
    return basePath;
  }

  public CameraCollection deviceCameraItems (Integer siteId) throws ApiException {
    // verify required params are set
    if(siteId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/camera/items".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (CameraCollection) ApiInvoker.deserialize(response, "", CameraCollection.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public List<Camera> deviceCameraList (Integer siteId) throws ApiException {
    // verify required params are set
    if(siteId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/camera/list".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (List<Camera>) ApiInvoker.deserialize(response, "Array", Camera.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public void cameraLiveExtend (Integer siteId, Integer cameraId) throws ApiException {
    // verify required params are set
    if(siteId == null || cameraId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/{cameraId}/camera/live/extend".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString())).replaceAll("\\{" + "cameraId" + "\\}", apiInvoker.escapeString(cameraId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "POST", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return ;
      }
      else {
        return ;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return ;
      }
      else {
        throw ex;
      }
    }
  }
  public Stream cameraLiveStart (Integer siteId, Integer cameraId, String protocol) throws ApiException {
    // verify required params are set
    if(siteId == null || cameraId == null || protocol == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/{cameraId}/camera/live/start/{protocol}".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString())).replaceAll("\\{" + "cameraId" + "\\}", apiInvoker.escapeString(cameraId.toString())).replaceAll("\\{" + "protocol" + "\\}", apiInvoker.escapeString(protocol.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "POST", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (Stream) ApiInvoker.deserialize(response, "", Stream.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public Boolean cameraLiveStop (Integer siteId, Integer cameraId) throws ApiException {
    // verify required params are set
    if(siteId == null || cameraId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/{cameraId}/camera/live/stop".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString())).replaceAll("\\{" + "cameraId" + "\\}", apiInvoker.escapeString(cameraId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "POST", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (Boolean) ApiInvoker.deserialize(response, "", Boolean.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public binary cameraPreviewTake (Integer siteId, Integer cameraId) throws ApiException {
    // verify required params are set
    if(siteId == null || cameraId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/{cameraId}/camera/preview/take".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString())).replaceAll("\\{" + "cameraId" + "\\}", apiInvoker.escapeString(cameraId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "POST", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (binary) ApiInvoker.deserialize(response, "", binary.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public Recording cameraRecordingStart (Integer siteId, Integer cameraId) throws ApiException {
    // verify required params are set
    if(siteId == null || cameraId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/{cameraId}/camera/recording/start".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString())).replaceAll("\\{" + "cameraId" + "\\}", apiInvoker.escapeString(cameraId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "POST", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (Recording) ApiInvoker.deserialize(response, "", Recording.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public void cameraRecordingStop (Integer siteId, Integer cameraId) throws ApiException {
    // verify required params are set
    if(siteId == null || cameraId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/{cameraId}/camera/recording/stop".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString())).replaceAll("\\{" + "cameraId" + "\\}", apiInvoker.escapeString(cameraId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "POST", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return ;
      }
      else {
        return ;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return ;
      }
      else {
        throw ex;
      }
    }
  }
  public Snapshot cameraSnapshotTake (Integer siteId, Integer cameraId) throws ApiException {
    // verify required params are set
    if(siteId == null || cameraId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/{cameraId}/camera/snapshot/take".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString())).replaceAll("\\{" + "cameraId" + "\\}", apiInvoker.escapeString(cameraId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "POST", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (Snapshot) ApiInvoker.deserialize(response, "", Snapshot.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public DeviceWithStateCollection deviceDataStateItems (Integer siteId) throws ApiException {
    // verify required params are set
    if(siteId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/data/state/items".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (DeviceWithStateCollection) ApiInvoker.deserialize(response, "", DeviceWithStateCollection.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public DeviceWithStateState deviceDataState (Integer siteId, Integer deviceId) throws ApiException {
    // verify required params are set
    if(siteId == null || deviceId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/{deviceId}/data/state".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString())).replaceAll("\\{" + "deviceId" + "\\}", apiInvoker.escapeString(deviceId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (DeviceWithStateState) ApiInvoker.deserialize(response, "", DeviceWithStateState.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public TemperatureSensorCollection deviceDataTemperatureItems (Integer siteId) throws ApiException {
    // verify required params are set
    if(siteId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/data/temperature/items".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (TemperatureSensorCollection) ApiInvoker.deserialize(response, "", TemperatureSensorCollection.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public List<TemperatureSensor> deviceDataTemperatureList (Integer siteId) throws ApiException {
    // verify required params are set
    if(siteId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/data/temperature/list".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (List<TemperatureSensor>) ApiInvoker.deserialize(response, "Array", TemperatureSensor.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public TemperatureRecordCollection deviceDataTemperatureGet (Integer siteId, Integer deviceId, String dateFrom, String dateTo) throws ApiException {
    // verify required params are set
    if(siteId == null || deviceId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/{deviceId}/data/temperature".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString())).replaceAll("\\{" + "deviceId" + "\\}", apiInvoker.escapeString(deviceId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(!"null".equals(String.valueOf(dateFrom)))
      queryParams.put("dateFrom", String.valueOf(dateFrom));
    if(!"null".equals(String.valueOf(dateTo)))
      queryParams.put("dateTo", String.valueOf(dateTo));
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (TemperatureRecordCollection) ApiInvoker.deserialize(response, "", TemperatureRecordCollection.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public List<TemperatureRecord> deviceDataTemperatureGet_deprecated (Integer siteId, Integer deviceId) throws ApiException {
    // verify required params are set
    if(siteId == null || deviceId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/{deviceId}/data/temperature/get".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString())).replaceAll("\\{" + "deviceId" + "\\}", apiInvoker.escapeString(deviceId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (List<TemperatureRecord>) ApiInvoker.deserialize(response, "Array", TemperatureRecord.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public GateCollection deviceGateItems (Integer siteId) throws ApiException {
    // verify required params are set
    if(siteId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/gate/items".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (GateCollection) ApiInvoker.deserialize(response, "", GateCollection.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public List<Gate> deviceGateList (Integer siteId) throws ApiException {
    // verify required params are set
    if(siteId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/gate/list".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (List<Gate>) ApiInvoker.deserialize(response, "Array", Gate.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public void deviceGatePerformOne (Integer siteId, Integer deviceId) throws ApiException {
    // verify required params are set
    if(siteId == null || deviceId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/{deviceId}/gate/perform/one".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString())).replaceAll("\\{" + "deviceId" + "\\}", apiInvoker.escapeString(deviceId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "POST", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return ;
      }
      else {
        return ;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return ;
      }
      else {
        throw ex;
      }
    }
  }
  public void deviceGatePerformTwo (Integer siteId, Integer deviceId) throws ApiException {
    // verify required params are set
    if(siteId == null || deviceId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/{deviceId}/gate/perform/two".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString())).replaceAll("\\{" + "deviceId" + "\\}", apiInvoker.escapeString(deviceId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "POST", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return ;
      }
      else {
        return ;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return ;
      }
      else {
        throw ex;
      }
    }
  }
  public HeaterCollection deviceHeaterItems (Integer siteId) throws ApiException {
    // verify required params are set
    if(siteId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/heater/items".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (HeaterCollection) ApiInvoker.deserialize(response, "", HeaterCollection.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public List<Heater> deviceHeaterList (Integer siteId) throws ApiException {
    // verify required params are set
    if(siteId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/heater/list".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (List<Heater>) ApiInvoker.deserialize(response, "Array", Heater.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public void deviceHeaterOn (Integer siteId, Integer deviceId) throws ApiException {
    // verify required params are set
    if(siteId == null || deviceId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/{deviceId}/heater/eco".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString())).replaceAll("\\{" + "deviceId" + "\\}", apiInvoker.escapeString(deviceId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "POST", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return ;
      }
      else {
        return ;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return ;
      }
      else {
        throw ex;
      }
    }
  }
  public void deviceHeaterOn_SiteApi_0 (Integer siteId, Integer deviceId) throws ApiException {
    // verify required params are set
    if(siteId == null || deviceId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/{deviceId}/heater/frost".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString())).replaceAll("\\{" + "deviceId" + "\\}", apiInvoker.escapeString(deviceId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "POST", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return ;
      }
      else {
        return ;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return ;
      }
      else {
        throw ex;
      }
    }
  }
  public void deviceHeaterOff (Integer siteId, Integer deviceId) throws ApiException {
    // verify required params are set
    if(siteId == null || deviceId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/{deviceId}/heater/off".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString())).replaceAll("\\{" + "deviceId" + "\\}", apiInvoker.escapeString(deviceId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "POST", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return ;
      }
      else {
        return ;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return ;
      }
      else {
        throw ex;
      }
    }
  }
  public void deviceHeaterOn_SiteApi_1 (Integer siteId, Integer deviceId) throws ApiException {
    // verify required params are set
    if(siteId == null || deviceId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/{deviceId}/heater/on".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString())).replaceAll("\\{" + "deviceId" + "\\}", apiInvoker.escapeString(deviceId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "POST", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return ;
      }
      else {
        return ;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return ;
      }
      else {
        throw ex;
      }
    }
  }
  public ShutterCollection deviceShutterItems (Integer siteId) throws ApiException {
    // verify required params are set
    if(siteId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/shutter/items".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (ShutterCollection) ApiInvoker.deserialize(response, "", ShutterCollection.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public List<Shutter> deviceShutterList (Integer siteId) throws ApiException {
    // verify required params are set
    if(siteId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/shutter/list".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (List<Shutter>) ApiInvoker.deserialize(response, "Array", Shutter.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public void deviceShutterClose (Integer siteId, Integer deviceId) throws ApiException {
    // verify required params are set
    if(siteId == null || deviceId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/{deviceId}/shutter/close".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString())).replaceAll("\\{" + "deviceId" + "\\}", apiInvoker.escapeString(deviceId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "POST", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return ;
      }
      else {
        return ;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return ;
      }
      else {
        throw ex;
      }
    }
  }
  public void deviceShutterOpen (Integer siteId, Integer deviceId) throws ApiException {
    // verify required params are set
    if(siteId == null || deviceId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/{deviceId}/shutter/open".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString())).replaceAll("\\{" + "deviceId" + "\\}", apiInvoker.escapeString(deviceId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "POST", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return ;
      }
      else {
        return ;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return ;
      }
      else {
        throw ex;
      }
    }
  }
  public SocketCollection deviceSocketItems (Integer siteId) throws ApiException {
    // verify required params are set
    if(siteId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/socket/items".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (SocketCollection) ApiInvoker.deserialize(response, "", SocketCollection.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public List<Socket> deviceSocketList (Integer siteId) throws ApiException {
    // verify required params are set
    if(siteId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/socket/list".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (List<Socket>) ApiInvoker.deserialize(response, "Array", Socket.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public void deviceSocketOff (Integer siteId, Integer deviceId) throws ApiException {
    // verify required params are set
    if(siteId == null || deviceId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/{deviceId}/socket/off".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString())).replaceAll("\\{" + "deviceId" + "\\}", apiInvoker.escapeString(deviceId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "POST", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return ;
      }
      else {
        return ;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return ;
      }
      else {
        throw ex;
      }
    }
  }
  public void deviceSocketOn (Integer siteId, Integer deviceId) throws ApiException {
    // verify required params are set
    if(siteId == null || deviceId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/device/{deviceId}/socket/on".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString())).replaceAll("\\{" + "deviceId" + "\\}", apiInvoker.escapeString(deviceId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "POST", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return ;
      }
      else {
        return ;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return ;
      }
      else {
        throw ex;
      }
    }
  }
  public GroupElectricCollection groupElectricItems (Integer siteId) throws ApiException {
    // verify required params are set
    if(siteId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/group/electric/items".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (GroupElectricCollection) ApiInvoker.deserialize(response, "", GroupElectricCollection.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public List<GroupElectric> groupElectricList (Integer siteId) throws ApiException {
    // verify required params are set
    if(siteId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/group/electric/list".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (List<GroupElectric>) ApiInvoker.deserialize(response, "Array", GroupElectric.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public void groupElectricOff (Integer siteId, Integer groupId) throws ApiException {
    // verify required params are set
    if(siteId == null || groupId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/group/{groupId}/electric/off".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString())).replaceAll("\\{" + "groupId" + "\\}", apiInvoker.escapeString(groupId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "POST", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return ;
      }
      else {
        return ;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return ;
      }
      else {
        throw ex;
      }
    }
  }
  public void groupElectricOn (Integer siteId, Integer groupId) throws ApiException {
    // verify required params are set
    if(siteId == null || groupId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/group/{groupId}/electric/on".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString())).replaceAll("\\{" + "groupId" + "\\}", apiInvoker.escapeString(groupId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "POST", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return ;
      }
      else {
        return ;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return ;
      }
      else {
        throw ex;
      }
    }
  }
  public GroupShutterCollection groupShutterItems (Integer siteId) throws ApiException {
    // verify required params are set
    if(siteId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/group/shutter/items".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (GroupShutterCollection) ApiInvoker.deserialize(response, "", GroupShutterCollection.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public List<GroupShutter> groupShutterList (Integer siteId) throws ApiException {
    // verify required params are set
    if(siteId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/group/shutter/list".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (List<GroupShutter>) ApiInvoker.deserialize(response, "Array", GroupShutter.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public void groupShutterClose (Integer siteId, Integer groupId) throws ApiException {
    // verify required params are set
    if(siteId == null || groupId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/group/{groupId}/shutter/close".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString())).replaceAll("\\{" + "groupId" + "\\}", apiInvoker.escapeString(groupId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "POST", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return ;
      }
      else {
        return ;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return ;
      }
      else {
        throw ex;
      }
    }
  }
  public void groupShutterOpen (Integer siteId, Integer groupId) throws ApiException {
    // verify required params are set
    if(siteId == null || groupId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/group/{groupId}/shutter/open".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString())).replaceAll("\\{" + "groupId" + "\\}", apiInvoker.escapeString(groupId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "POST", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return ;
      }
      else {
        return ;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return ;
      }
      else {
        throw ex;
      }
    }
  }
  public SiteEventCollection siteHistory (Integer siteId, Date dateFrom, Date dateTo, Integer dateOrder, String type) throws ApiException {
    // verify required params are set
    if(siteId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/history".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(!"null".equals(String.valueOf(dateFrom)))
      queryParams.put("dateFrom", String.valueOf(dateFrom));
    if(!"null".equals(String.valueOf(dateTo)))
      queryParams.put("dateTo", String.valueOf(dateTo));
    if(!"null".equals(String.valueOf(dateOrder)))
      queryParams.put("dateOrder", String.valueOf(dateOrder));
    if(!"null".equals(String.valueOf(type)))
      queryParams.put("type", String.valueOf(type));
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (SiteEventCollection) ApiInvoker.deserialize(response, "", SiteEventCollection.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public List<SiteEvent> siteHistoryGet (Integer siteId) throws ApiException {
    // verify required params are set
    if(siteId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/history/get".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (List<SiteEvent>) ApiInvoker.deserialize(response, "Array", SiteEvent.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public ImageCollection libraryImageItems (Integer siteId, Integer cameraId, String dateFrom, String dateTo, Integer dateOrder) throws ApiException {
    // verify required params are set
    if(siteId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/library/image/items".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(!"null".equals(String.valueOf(cameraId)))
      queryParams.put("cameraId", String.valueOf(cameraId));
    if(!"null".equals(String.valueOf(dateFrom)))
      queryParams.put("dateFrom", String.valueOf(dateFrom));
    if(!"null".equals(String.valueOf(dateTo)))
      queryParams.put("dateTo", String.valueOf(dateTo));
    if(!"null".equals(String.valueOf(dateOrder)))
      queryParams.put("dateOrder", String.valueOf(dateOrder));
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (ImageCollection) ApiInvoker.deserialize(response, "", ImageCollection.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public List<Image> libraryImageGet (Integer siteId) throws ApiException {
    // verify required params are set
    if(siteId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/library/image/list".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (List<Image>) ApiInvoker.deserialize(response, "Array", Image.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public VideoCollection libraryVideoItems (Integer siteId, Integer cameraId, String dateFrom, String dateTo, Integer dateOrder, Boolean isRecording) throws ApiException {
    // verify required params are set
    if(siteId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/library/video/items".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(!"null".equals(String.valueOf(cameraId)))
      queryParams.put("cameraId", String.valueOf(cameraId));
    if(!"null".equals(String.valueOf(dateFrom)))
      queryParams.put("dateFrom", String.valueOf(dateFrom));
    if(!"null".equals(String.valueOf(dateTo)))
      queryParams.put("dateTo", String.valueOf(dateTo));
    if(!"null".equals(String.valueOf(dateOrder)))
      queryParams.put("dateOrder", String.valueOf(dateOrder));
    if(!"null".equals(String.valueOf(isRecording)))
      queryParams.put("isRecording", String.valueOf(isRecording));
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (VideoCollection) ApiInvoker.deserialize(response, "", VideoCollection.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public List<Video> libraryVideoGet (Integer siteId) throws ApiException {
    // verify required params are set
    if(siteId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/library/video/list".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (List<Video>) ApiInvoker.deserialize(response, "Array", Video.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public VideoPlayHLS libraryVideoPlay (Integer siteId, Integer videoId) throws ApiException {
    // verify required params are set
    if(siteId == null || videoId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/library/video/{videoId}/play".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString())).replaceAll("\\{" + "videoId" + "\\}", apiInvoker.escapeString(videoId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (VideoPlayHLS) ApiInvoker.deserialize(response, "", VideoPlayHLS.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public ScenarioCollection scenarioList (Integer siteId) throws ApiException {
    // verify required params are set
    if(siteId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/scenario/items".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (ScenarioCollection) ApiInvoker.deserialize(response, "", ScenarioCollection.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public List<Scenario> deviceDataTemperatureGet_deprecated_SiteApi_0 (Integer siteId) throws ApiException {
    // verify required params are set
    if(siteId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/scenario/list".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (List<Scenario>) ApiInvoker.deserialize(response, "Array", Scenario.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public void scenarioDisable (Integer siteId, Integer scenarioId) throws ApiException {
    // verify required params are set
    if(siteId == null || scenarioId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/scenario/{scenarioId}/disable".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString())).replaceAll("\\{" + "scenarioId" + "\\}", apiInvoker.escapeString(scenarioId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "POST", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return ;
      }
      else {
        return ;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return ;
      }
      else {
        throw ex;
      }
    }
  }
  public void scenarioEnable (Integer siteId, Integer scenarioId) throws ApiException {
    // verify required params are set
    if(siteId == null || scenarioId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/scenario/{scenarioId}/enable".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString())).replaceAll("\\{" + "scenarioId" + "\\}", apiInvoker.escapeString(scenarioId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "POST", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return ;
      }
      else {
        return ;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return ;
      }
      else {
        throw ex;
      }
    }
  }
  public void scenarioPlay (Integer siteId, Integer scenarioId) throws ApiException {
    // verify required params are set
    if(siteId == null || scenarioId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/scenario/{scenarioId}/play".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString())).replaceAll("\\{" + "scenarioId" + "\\}", apiInvoker.escapeString(scenarioId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "POST", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return ;
      }
      else {
        return ;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return ;
      }
      else {
        throw ex;
      }
    }
  }
  public List<Security> siteSeclevGet (Integer siteId) throws ApiException {
    // verify required params are set
    if(siteId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/security".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (List<Security>) ApiInvoker.deserialize(response, "Array", Security.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public Security deprecated_siteSeclevGet (Integer siteId) throws ApiException {
    // verify required params are set
    if(siteId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/security/get".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return (Security) ApiInvoker.deserialize(response, "", Security.class);
      }
      else {
        return null;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return null;
      }
      else {
        throw ex;
      }
    }
  }
  public void siteSeclevSet (Integer siteId, String securityLevel) throws ApiException {
    // verify required params are set
    if(siteId == null || securityLevel == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/site/{siteId}/security/set/{securityLevel}".replaceAll("\\{format\\}","json").replaceAll("\\{" + "siteId" + "\\}", apiInvoker.escapeString(siteId.toString())).replaceAll("\\{" + "securityLevel" + "\\}", apiInvoker.escapeString(securityLevel.toString()));

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    try {
      String response = apiInvoker.invokeAPI(basePath, path, "POST", queryParams, null, headerParams, formParams, contentType);
      if(response != null){
        return ;
      }
      else {
        return ;
      }
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	return ;
      }
      else {
        throw ex;
      }
    }
  }
  }

