{ config, pkgs, inputs, ... }:
{
  imports = [];
  programs.firefox = {
    enable = true;
    policies = {

      AutofillAddressEnabled = false;
      AutofillCreditCardEnabled = false;
      DisableFirefoxAccounts = true;
      DisableFirefoxStudies = true;
      DisableMasterPasswordCreation = true;
      DisablePocket = true;
      DisableTelemetry = true;
      DisplayBookmarksToolbar = "never";

      EnableTrackingProtection = {
        Value = true;
        Locked = false;
        Cryptomining = true;
        Fingerprinting = true;
      };
      
      ExtensionSettings = {
        #Bitwarden
        "{446900e4-71c2-419f-a6a7-df9c091e268b}" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/file/4263752/bitwarden_password_manager-2024.4.1.xpi";
          installation_mode = "force_installed";
        };

        #DDG Privacy
        "jid1-ZAdIEUB7XOzOJw@jetpack" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/file/4248904/duckduckgo_for_firefox-2024.3.11.xpi";
          installation_mode = "force_installed";
        };

        #Privacy Badger
        "jid1-MnnxcxisBPnSXQ@jetpack" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/file/4232703/privacy_badger17-2024.2.6.xpi";
          installation_mode = "force_installed";
        };

        #UBlock Origin
        "uBlock0@raymondhill.net" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/file/4261710/ublock_origin-1.57.2.xpi";
          installation_mode = "force_installed";
        };
      };

      FirefoxHome = {
        Search = false;
        TopSites = false;
        SponsoredTopSites = false;
        Highlights = false;
        Pocket = false;
        SponsoredPocket = false;
        Snippets = false;
        Locked = false;
      };

      FirefoxSuggest = {
        WebSuggestions = true;
        SponsoredSuggestions = false;
        ImproveSuggest = false;
        Locked = false;
      };
      
      HardwareAcceleration = true;

      Homepage = {
        Locked = false;
        StartPage = "none";
      };

      NewTabPage = false;
      OfferToSaveLogins = false;
      OverrideFirstRunPage = "";

      PictureInPicture = {
        Enabled = true;
        locked = false;
      };

      PrintingEnabled = false;
      
      SearchEngines = {
        Default = "DuckDuckGo";
      };
    };
  };  
}
