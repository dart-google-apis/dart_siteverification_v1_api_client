part of siteverification_v1_api;

class WebResourceResource_ {

  final Client _client;

  WebResourceResource_(Client client) :
      _client = client;

  /**
   * Relinquish ownership of a website or domain.
   *
   * [id] - The id of a verified site or domain.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String id, {core.Map optParams}) {
    var url = "webResource/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Get the most current data for a website or domain.
   *
   * [id] - The id of a verified site or domain.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<SiteVerificationWebResourceResource> get(core.String id, {core.Map optParams}) {
    var url = "webResource/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new SiteVerificationWebResourceResource.fromJson(data));
  }

  /**
   * Get a verification token for placing on a website or domain.
   *
   * [request] - SiteVerificationWebResourceGettokenRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<SiteVerificationWebResourceGettokenResponse> getToken(SiteVerificationWebResourceGettokenRequest request, {core.Map optParams}) {
    var url = "token";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new SiteVerificationWebResourceGettokenResponse.fromJson(data));
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
  async.Future<SiteVerificationWebResourceResource> insert(SiteVerificationWebResourceResource request, core.String verificationMethod, {core.Map optParams}) {
    var url = "webResource";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new SiteVerificationWebResourceResource.fromJson(data));
  }

  /**
   * Get the list of your verified websites and domains.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<SiteVerificationWebResourceListResponse> list({core.Map optParams}) {
    var url = "webResource";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new SiteVerificationWebResourceListResponse.fromJson(data));
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
  async.Future<SiteVerificationWebResourceResource> patch(SiteVerificationWebResourceResource request, core.String id, {core.Map optParams}) {
    var url = "webResource/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new SiteVerificationWebResourceResource.fromJson(data));
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
  async.Future<SiteVerificationWebResourceResource> update(SiteVerificationWebResourceResource request, core.String id, {core.Map optParams}) {
    var url = "webResource/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new SiteVerificationWebResourceResource.fromJson(data));
  }
}

