library siteverification_v1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_siteverification_v1_api/src/browser_client.dart';
import "package:google_siteverification_v1_api/siteverification_v1_api_client.dart";

/** Lets you programatically verify ownership of websites or domains with Google. */
class SiteVerification extends Client with BrowserClient {

  /** OAuth Scope2: Manage the list of sites and domains you control */
  static const String SITEVERIFICATION_SCOPE = "https://www.googleapis.com/auth/siteverification";

  /** OAuth Scope2: Manage your new site verifications with Google */
  static const String SITEVERIFICATION_VERIFY_ONLY_SCOPE = "https://www.googleapis.com/auth/siteverification.verify_only";

  final oauth.OAuth2 auth;

  SiteVerification([oauth.OAuth2 this.auth]);
}
