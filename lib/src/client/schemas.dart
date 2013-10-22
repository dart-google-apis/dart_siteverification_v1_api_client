part of siteverification_v1_api;

class SiteVerificationWebResourceGettokenRequest {

  /** The site for which a verification token will be generated. */
  SiteVerificationWebResourceGettokenRequestSite site;

  /** The verification method that will be used to verify this site. For sites, 'FILE' or 'META' methods may be used. For domains, only 'DNS' may be used. */
  core.String verificationMethod;

  /** Create new SiteVerificationWebResourceGettokenRequest from JSON data */
  SiteVerificationWebResourceGettokenRequest.fromJson(core.Map json) {
    if (json.containsKey("site")) {
      site = new SiteVerificationWebResourceGettokenRequestSite.fromJson(json["site"]);
    }
    if (json.containsKey("verificationMethod")) {
      verificationMethod = json["verificationMethod"];
    }
  }

  /** Create JSON Object for SiteVerificationWebResourceGettokenRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (site != null) {
      output["site"] = site.toJson();
    }
    if (verificationMethod != null) {
      output["verificationMethod"] = verificationMethod;
    }

    return output;
  }

  /** Return String representation of SiteVerificationWebResourceGettokenRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** The site for which a verification token will be generated. */
class SiteVerificationWebResourceGettokenRequestSite {

  /** The site identifier. If the type is set to SITE, the identifier is a URL. If the type is set to INET_DOMAIN, the site identifier is a domain name. */
  core.String identifier;

  /** The type of resource to be verified. Can be SITE or INET_DOMAIN (domain name). */
  core.String type;

  /** Create new SiteVerificationWebResourceGettokenRequestSite from JSON data */
  SiteVerificationWebResourceGettokenRequestSite.fromJson(core.Map json) {
    if (json.containsKey("identifier")) {
      identifier = json["identifier"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for SiteVerificationWebResourceGettokenRequestSite */
  core.Map toJson() {
    var output = new core.Map();

    if (identifier != null) {
      output["identifier"] = identifier;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of SiteVerificationWebResourceGettokenRequestSite */
  core.String toString() => JSON.encode(this.toJson());

}

class SiteVerificationWebResourceGettokenResponse {

  /** The verification method to use in conjunction with this token. For FILE, the token should be placed in the top-level directory of the site, stored inside a file of the same name. For META, the token should be placed in the HEAD tag of the default page that is loaded for the site. For DNS, the token should be placed in a TXT record of the domain. */
  core.String method;

  /** The verification token. The token must be placed appropriately in order for verification to succeed. */
  core.String token;

  /** Create new SiteVerificationWebResourceGettokenResponse from JSON data */
  SiteVerificationWebResourceGettokenResponse.fromJson(core.Map json) {
    if (json.containsKey("method")) {
      method = json["method"];
    }
    if (json.containsKey("token")) {
      token = json["token"];
    }
  }

  /** Create JSON Object for SiteVerificationWebResourceGettokenResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (method != null) {
      output["method"] = method;
    }
    if (token != null) {
      output["token"] = token;
    }

    return output;
  }

  /** Return String representation of SiteVerificationWebResourceGettokenResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class SiteVerificationWebResourceListResponse {

  /** The list of sites that are owned by the authenticated user. */
  core.List<SiteVerificationWebResourceResource> items;

  /** Create new SiteVerificationWebResourceListResponse from JSON data */
  SiteVerificationWebResourceListResponse.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new SiteVerificationWebResourceResource.fromJson(itemsItem)).toList();
    }
  }

  /** Create JSON Object for SiteVerificationWebResourceListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of SiteVerificationWebResourceListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class SiteVerificationWebResourceResource {

  /** The string used to identify this site. This value should be used in the "id" portion of the REST URL for the Get, Update, and Delete operations. */
  core.String id;

  /** The email addresses of all verified owners. */
  core.List<core.String> owners;

  /** The address and type of a site that is verified or will be verified. */
  SiteVerificationWebResourceResourceSite site;

  /** Create new SiteVerificationWebResourceResource from JSON data */
  SiteVerificationWebResourceResource.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("owners")) {
      owners = json["owners"].toList();
    }
    if (json.containsKey("site")) {
      site = new SiteVerificationWebResourceResourceSite.fromJson(json["site"]);
    }
  }

  /** Create JSON Object for SiteVerificationWebResourceResource */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (owners != null) {
      output["owners"] = owners.toList();
    }
    if (site != null) {
      output["site"] = site.toJson();
    }

    return output;
  }

  /** Return String representation of SiteVerificationWebResourceResource */
  core.String toString() => JSON.encode(this.toJson());

}

/** The address and type of a site that is verified or will be verified. */
class SiteVerificationWebResourceResourceSite {

  /** The site identifier. If the type is set to SITE, the identifier is a URL. If the type is set to INET_DOMAIN, the site identifier is a domain name. */
  core.String identifier;

  /** The site type. Can be SITE or INET_DOMAIN (domain name). */
  core.String type;

  /** Create new SiteVerificationWebResourceResourceSite from JSON data */
  SiteVerificationWebResourceResourceSite.fromJson(core.Map json) {
    if (json.containsKey("identifier")) {
      identifier = json["identifier"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for SiteVerificationWebResourceResourceSite */
  core.Map toJson() {
    var output = new core.Map();

    if (identifier != null) {
      output["identifier"] = identifier;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of SiteVerificationWebResourceResourceSite */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
