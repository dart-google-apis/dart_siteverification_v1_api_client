part of siteverification_v1_api_client;

class SiteVerificationWebResourceGettokenRequest {

  /** The site for which a verification token will be generated. */
  SiteVerificationWebResourceGettokenRequestSite site;

  /** The verification method that will be used to verify this site. For sites, 'FILE' or 'META' methods may be used. For domains, only 'DNS' may be used. */
  String verificationMethod;

  /** Create new SiteVerificationWebResourceGettokenRequest from JSON data */
  SiteVerificationWebResourceGettokenRequest.fromJson(Map json) {
    if (json.containsKey("site")) {
      site = new SiteVerificationWebResourceGettokenRequestSite.fromJson(json["site"]);
    }
    if (json.containsKey("verificationMethod")) {
      verificationMethod = json["verificationMethod"];
    }
  }

  /** Create JSON Object for SiteVerificationWebResourceGettokenRequest */
  Map toJson() {
    var output = new Map();

    if (site != null) {
      output["site"] = site.toJson();
    }
    if (verificationMethod != null) {
      output["verificationMethod"] = verificationMethod;
    }

    return output;
  }

  /** Return String representation of SiteVerificationWebResourceGettokenRequest */
  String toString() => JSON.stringify(this.toJson());

}

/** The site for which a verification token will be generated. */
class SiteVerificationWebResourceGettokenRequestSite {

  /** The site identifier. If the type is set to SITE, the identifier is a URL. If the type is set to INET_DOMAIN, the site identifier is a domain name. */
  String identifier;

  /** The type of resource to be verified. Can be SITE or INET_DOMAIN (domain name). */
  String type;

  /** Create new SiteVerificationWebResourceGettokenRequestSite from JSON data */
  SiteVerificationWebResourceGettokenRequestSite.fromJson(Map json) {
    if (json.containsKey("identifier")) {
      identifier = json["identifier"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for SiteVerificationWebResourceGettokenRequestSite */
  Map toJson() {
    var output = new Map();

    if (identifier != null) {
      output["identifier"] = identifier;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of SiteVerificationWebResourceGettokenRequestSite */
  String toString() => JSON.stringify(this.toJson());

}

class SiteVerificationWebResourceGettokenResponse {

  /** The verification method to use in conjunction with this token. For FILE, the token should be placed in the top-level directory of the site, stored inside a file of the same name. For META, the token should be placed in the HEAD tag of the default page that is loaded for the site. For DNS, the token should be placed in a TXT record of the domain. */
  String method;

  /** The verification token. The token must be placed appropriately in order for verification to succeed. */
  String token;

  /** Create new SiteVerificationWebResourceGettokenResponse from JSON data */
  SiteVerificationWebResourceGettokenResponse.fromJson(Map json) {
    if (json.containsKey("method")) {
      method = json["method"];
    }
    if (json.containsKey("token")) {
      token = json["token"];
    }
  }

  /** Create JSON Object for SiteVerificationWebResourceGettokenResponse */
  Map toJson() {
    var output = new Map();

    if (method != null) {
      output["method"] = method;
    }
    if (token != null) {
      output["token"] = token;
    }

    return output;
  }

  /** Return String representation of SiteVerificationWebResourceGettokenResponse */
  String toString() => JSON.stringify(this.toJson());

}

class SiteVerificationWebResourceListResponse {

  /** The list of sites that are owned by the authenticated user. */
  List<SiteVerificationWebResourceResource> items;

  /** Create new SiteVerificationWebResourceListResponse from JSON data */
  SiteVerificationWebResourceListResponse.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new SiteVerificationWebResourceResource.fromJson(item));
      });
    }
  }

  /** Create JSON Object for SiteVerificationWebResourceListResponse */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of SiteVerificationWebResourceListResponse */
  String toString() => JSON.stringify(this.toJson());

}

class SiteVerificationWebResourceResource {

  /** The string used to identify this site. This value should be used in the "id" portion of the REST URL for the Get, Update, and Delete operations. */
  String id;

  /** The email addresses of all verified owners. */
  List<String> owners;

  /** The address and type of a site that is verified or will be verified. */
  SiteVerificationWebResourceResourceSite site;

  /** Create new SiteVerificationWebResourceResource from JSON data */
  SiteVerificationWebResourceResource.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("owners")) {
      owners = [];
      json["owners"].forEach((item) {
        owners.add(item);
      });
    }
    if (json.containsKey("site")) {
      site = new SiteVerificationWebResourceResourceSite.fromJson(json["site"]);
    }
  }

  /** Create JSON Object for SiteVerificationWebResourceResource */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }
    if (owners != null) {
      output["owners"] = new List();
      owners.forEach((item) {
        output["owners"].add(item);
      });
    }
    if (site != null) {
      output["site"] = site.toJson();
    }

    return output;
  }

  /** Return String representation of SiteVerificationWebResourceResource */
  String toString() => JSON.stringify(this.toJson());

}

/** The address and type of a site that is verified or will be verified. */
class SiteVerificationWebResourceResourceSite {

  /** The site identifier. If the type is set to SITE, the identifier is a URL. If the type is set to INET_DOMAIN, the site identifier is a domain name. */
  String identifier;

  /** The site type. Can be SITE or INET_DOMAIN (domain name). */
  String type;

  /** Create new SiteVerificationWebResourceResourceSite from JSON data */
  SiteVerificationWebResourceResourceSite.fromJson(Map json) {
    if (json.containsKey("identifier")) {
      identifier = json["identifier"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for SiteVerificationWebResourceResourceSite */
  Map toJson() {
    var output = new Map();

    if (identifier != null) {
      output["identifier"] = identifier;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of SiteVerificationWebResourceResourceSite */
  String toString() => JSON.stringify(this.toJson());

}

