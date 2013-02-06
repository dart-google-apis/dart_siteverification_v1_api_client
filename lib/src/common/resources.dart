part of siteverification_v1_api_client;

class WebResourceResource extends Resource {

  WebResourceResource(Client client) : super(client) {
  }

  /**
   * Relinquish ownership of a website or domain.
   *
   * [id] - The id of a verified site or domain.
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> delete(String id, {Map optParams}) {
    var completer = new Completer();
    var url = "webResource/{id}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Get the most current data for a website or domain.
   *
   * [id] - The id of a verified site or domain.
   *
   * [optParams] - Additional query parameters
   */
  Future<SiteVerificationWebResourceResource> get(String id, {Map optParams}) {
    var completer = new Completer();
    var url = "webResource/{id}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new SiteVerificationWebResourceResource.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Get a verification token for placing on a website or domain.
   *
   * [request] - SiteVerificationWebResourceGettokenRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  Future<SiteVerificationWebResourceGettokenResponse> getToken(SiteVerificationWebResourceGettokenRequest request, {Map optParams}) {
    var completer = new Completer();
    var url = "token";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new SiteVerificationWebResourceGettokenResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Attempt verification of a website or domain.
   *
   * [request] - SiteVerificationWebResourceResource to send in this request
   *
   * [verificationMethod] - The method to use for verifying a site or domain.
   *
   * [optParams] - Additional query parameters
   */
  Future<SiteVerificationWebResourceResource> insert(SiteVerificationWebResourceResource request, String verificationMethod, {Map optParams}) {
    var completer = new Completer();
    var url = "webResource";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (verificationMethod == null) paramErrors.add("verificationMethod is required");
    if (verificationMethod != null) queryParams["verificationMethod"] = verificationMethod;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new SiteVerificationWebResourceResource.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Get the list of your verified websites and domains.
   *
   * [optParams] - Additional query parameters
   */
  Future<SiteVerificationWebResourceListResponse> list({Map optParams}) {
    var completer = new Completer();
    var url = "webResource";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new SiteVerificationWebResourceListResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Modify the list of owners for your website or domain. This method supports patch semantics.
   *
   * [request] - SiteVerificationWebResourceResource to send in this request
   *
   * [id] - The id of a verified site or domain.
   *
   * [optParams] - Additional query parameters
   */
  Future<SiteVerificationWebResourceResource> patch(SiteVerificationWebResourceResource request, String id, {Map optParams}) {
    var completer = new Completer();
    var url = "webResource/{id}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new SiteVerificationWebResourceResource.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Modify the list of owners for your website or domain.
   *
   * [request] - SiteVerificationWebResourceResource to send in this request
   *
   * [id] - The id of a verified site or domain.
   *
   * [optParams] - Additional query parameters
   */
  Future<SiteVerificationWebResourceResource> update(SiteVerificationWebResourceResource request, String id, {Map optParams}) {
    var completer = new Completer();
    var url = "webResource/{id}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new SiteVerificationWebResourceResource.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

