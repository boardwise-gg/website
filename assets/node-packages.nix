# This file has been generated by node2nix 1.11.1. Do not edit!

{nodeEnv, fetchurl, fetchgit, nix-gitignore, stdenv, lib, globalBuildInputs ? []}:

let
  sources = {
    "@babel/runtime-7.23.5" = {
      name = "_at_babel_slash_runtime";
      packageName = "@babel/runtime";
      version = "7.23.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/@babel/runtime/-/runtime-7.23.5.tgz";
        sha512 = "NdUTHcPe4C99WxPub+K9l9tK5/lV4UXIoaHSYgzco9BCyjKAAwzdBI+wWtYqHt7LJdbo74ZjRPJgzVweq1sz0w==";
      };
    };
    "@emotion/is-prop-valid-0.8.8" = {
      name = "_at_emotion_slash_is-prop-valid";
      packageName = "@emotion/is-prop-valid";
      version = "0.8.8";
      src = fetchurl {
        url = "https://registry.npmjs.org/@emotion/is-prop-valid/-/is-prop-valid-0.8.8.tgz";
        sha512 = "u5WtneEAr5IDG2Wv65yhunPSMLIpuKsbuOktRojfrEiEvRyC85LgPMZI63cr7NUqT8ZIGdSVg8ZKGxIug4lXcA==";
      };
    };
    "@emotion/memoize-0.7.4" = {
      name = "_at_emotion_slash_memoize";
      packageName = "@emotion/memoize";
      version = "0.7.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/@emotion/memoize/-/memoize-0.7.4.tgz";
        sha512 = "Ja/Vfqe3HpuzRsG1oBtWTHk2PGZ7GR+2Vz5iYGelAw8dx32K0y7PjVuxK6z1nMpZOqAFsRUPCkK1YjJ56qJlgw==";
      };
    };
    "@floating-ui/core-1.5.1" = {
      name = "_at_floating-ui_slash_core";
      packageName = "@floating-ui/core";
      version = "1.5.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/@floating-ui/core/-/core-1.5.1.tgz";
        sha512 = "QgcKYwzcc8vvZ4n/5uklchy8KVdjJwcOeI+HnnTNclJjs2nYsy23DOCf+sSV1kBwD9yDAoVKCkv/gEPzgQU3Pw==";
      };
    };
    "@floating-ui/dom-1.5.3" = {
      name = "_at_floating-ui_slash_dom";
      packageName = "@floating-ui/dom";
      version = "1.5.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/@floating-ui/dom/-/dom-1.5.3.tgz";
        sha512 = "ClAbQnEqJAKCJOEbbLo5IUlZHkNszqhuxS4fHAVxRPXPya6Ysf2G8KypnYcOTpx6I8xcgF9bbHb6g/2KpbV8qA==";
      };
    };
    "@floating-ui/react-dom-2.0.4" = {
      name = "_at_floating-ui_slash_react-dom";
      packageName = "@floating-ui/react-dom";
      version = "2.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/@floating-ui/react-dom/-/react-dom-2.0.4.tgz";
        sha512 = "CF8k2rgKeh/49UrnIBs4BdxPUV6vize/Db1d/YbCLyp9GiVZ0BEwf5AiDSxJRCr6yOkGqTFHtmrULxkEfYZ7dQ==";
      };
    };
    "@floating-ui/utils-0.1.6" = {
      name = "_at_floating-ui_slash_utils";
      packageName = "@floating-ui/utils";
      version = "0.1.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/@floating-ui/utils/-/utils-0.1.6.tgz";
        sha512 = "OfX7E2oUDYxtBvsuS4e/jSn4Q9Qb6DzgeYtsAdkPZ47znpoNsMgZw0+tVijiv3uGNR6dgNlty6r9rzIzHjtd/A==";
      };
    };
    "@mui/base-5.0.0-beta.25" = {
      name = "_at_mui_slash_base";
      packageName = "@mui/base";
      version = "5.0.0-beta.25";
      src = fetchurl {
        url = "https://registry.npmjs.org/@mui/base/-/base-5.0.0-beta.25.tgz";
        sha512 = "Iiv+IcappRRv6IBlknIVmLkXxfp51NEX1+l9f+dIbBuPU4PaRULegr1lCeHKsC45KU5ruxM5xMg4R/de03aJQg==";
      };
    };
    "@mui/types-7.2.10" = {
      name = "_at_mui_slash_types";
      packageName = "@mui/types";
      version = "7.2.10";
      src = fetchurl {
        url = "https://registry.npmjs.org/@mui/types/-/types-7.2.10.tgz";
        sha512 = "wX1vbDC+lzF7FlhT6A3ffRZgEoKWPF8VqRoTu4lZwouFX2t90KyCMsgepMw5DxLak1BSp/KP86CmtZttikb/gQ==";
      };
    };
    "@mui/utils-5.14.19" = {
      name = "_at_mui_slash_utils";
      packageName = "@mui/utils";
      version = "5.14.19";
      src = fetchurl {
        url = "https://registry.npmjs.org/@mui/utils/-/utils-5.14.19.tgz";
        sha512 = "qAHvTXzk7basbyqPvhgWqN6JbmI2wLB/mf97GkSlz5c76MiKYV6Ffjvw9BjKZQ1YRb8rDX9kgdjRezOcoB91oQ==";
      };
    };
    "@popperjs/core-2.11.8" = {
      name = "_at_popperjs_slash_core";
      packageName = "@popperjs/core";
      version = "2.11.8";
      src = fetchurl {
        url = "https://registry.npmjs.org/@popperjs/core/-/core-2.11.8.tgz";
        sha512 = "P1st0aksCrn9sGZhp8GMYwBnQsbvAWsZAX44oXNNvLHGqAOcoVxmjZiohstwQ7SqKnbR47akdNi+uleWD8+g6A==";
      };
    };
    "@remix-run/router-1.13.1" = {
      name = "_at_remix-run_slash_router";
      packageName = "@remix-run/router";
      version = "1.13.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/@remix-run/router/-/router-1.13.1.tgz";
        sha512 = "so+DHzZKsoOcoXrILB4rqDkMDy7NLMErRdOxvzvOKb507YINKUP4Di+shbTZDhSE/pBZ+vr7XGIpcOO0VLSA+Q==";
      };
    };
    "@tanstack/query-core-5.12.1" = {
      name = "_at_tanstack_slash_query-core";
      packageName = "@tanstack/query-core";
      version = "5.12.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/@tanstack/query-core/-/query-core-5.12.1.tgz";
        sha512 = "WbZztNmKq0t6QjdNmHzezbi/uifYo9j6e2GLJkodsYaYUlzMbAp91RDyeHkIZrm7EfO4wa6Sm5sxJZm5SPlh6w==";
      };
    };
    "@tanstack/react-query-5.12.2" = {
      name = "_at_tanstack_slash_react-query";
      packageName = "@tanstack/react-query";
      version = "5.12.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/@tanstack/react-query/-/react-query-5.12.2.tgz";
        sha512 = "BeWZu8zVFH20oRc+S/K9ADPgWjEzP/XQCGBNz5IbApUwPQAdwkQYbXODVL5AyAlWiSxhx+P2xlARPBApj2Yrog==";
      };
    };
    "@types/prop-types-15.7.11" = {
      name = "_at_types_slash_prop-types";
      packageName = "@types/prop-types";
      version = "15.7.11";
      src = fetchurl {
        url = "https://registry.npmjs.org/@types/prop-types/-/prop-types-15.7.11.tgz";
        sha512 = "ga8y9v9uyeiLdpKddhxYQkxNDrfvuPrlFb0N1qnZZByvcElJaXthF1UhvCh9TLWJBEHeNtdnbysW7Y6Uq8CVng==";
      };
    };
    "@types/react-18.2.40" = {
      name = "_at_types_slash_react";
      packageName = "@types/react";
      version = "18.2.40";
      src = fetchurl {
        url = "https://registry.npmjs.org/@types/react/-/react-18.2.40.tgz";
        sha512 = "H+BUhb9C1zBtogDLAk+KCNRKiHDrqSwQT/0z0PVTwMFBxqg3011ByLomADtgkgMkfwj4AMOiXBReyLTUBg681g==";
      };
    };
    "@types/scheduler-0.16.8" = {
      name = "_at_types_slash_scheduler";
      packageName = "@types/scheduler";
      version = "0.16.8";
      src = fetchurl {
        url = "https://registry.npmjs.org/@types/scheduler/-/scheduler-0.16.8.tgz";
        sha512 = "WZLiwShhwLRmeV6zH+GkbOFT6Z6VklCItrDioxUnv+u4Ll+8vKeFySoFyK/0ctcRpOmwAicELfmys1sDc/Rw+A==";
      };
    };
    "asynckit-0.4.0" = {
      name = "asynckit";
      packageName = "asynckit";
      version = "0.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/asynckit/-/asynckit-0.4.0.tgz";
        sha512 = "Oei9OH4tRh0YqU3GxhX79dM/mwVgvbZJaSNaRk+bshkj0S5cfHcgYakreBjrHwatXKbz+IoIdYLxrKim2MjW0Q==";
      };
    };
    "axios-1.6.2" = {
      name = "axios";
      packageName = "axios";
      version = "1.6.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/axios/-/axios-1.6.2.tgz";
        sha512 = "7i24Ri4pmDRfJTR7LDBhsOTtcm+9kjX5WiY1X3wIisx6G9So3pfMkEiU7emUBe46oceVImccTEM3k6C5dbVW8A==";
      };
    };
    "clsx-2.0.0" = {
      name = "clsx";
      packageName = "clsx";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/clsx/-/clsx-2.0.0.tgz";
        sha512 = "rQ1+kcj+ttHG0MKVGBUXwayCCF1oh39BF5COIpRzuCEv8Mwjv0XucrI2ExNTOn9IlLifGClWQcU9BrZORvtw6Q==";
      };
    };
    "combined-stream-1.0.8" = {
      name = "combined-stream";
      packageName = "combined-stream";
      version = "1.0.8";
      src = fetchurl {
        url = "https://registry.npmjs.org/combined-stream/-/combined-stream-1.0.8.tgz";
        sha512 = "FQN4MRfuJeHf7cBbBMJFXhKSDq+2kAArBlmRBvcvFE5BB1HZKXtSFASDhdlz9zOYwxh8lDdnvmMOe/+5cdoEdg==";
      };
    };
    "csstype-3.1.2" = {
      name = "csstype";
      packageName = "csstype";
      version = "3.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/csstype/-/csstype-3.1.2.tgz";
        sha512 = "I7K1Uu0MBPzaFKg4nI5Q7Vs2t+3gWWW648spaF+Rg7pI9ds18Ugn+lvg4SHczUdKlHI5LWBXyqfS8+DufyBsgQ==";
      };
    };
    "delayed-stream-1.0.0" = {
      name = "delayed-stream";
      packageName = "delayed-stream";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/delayed-stream/-/delayed-stream-1.0.0.tgz";
        sha512 = "ZySD7Nf91aLB0RxL4KGrKHBXl7Eds1DAmEdcoVawXnLD7SDhpNgtuII2aAkg7a7QS41jxPSZ17p4VdGnMHk3MQ==";
      };
    };
    "follow-redirects-1.15.3" = {
      name = "follow-redirects";
      packageName = "follow-redirects";
      version = "1.15.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/follow-redirects/-/follow-redirects-1.15.3.tgz";
        sha512 = "1VzOtuEM8pC9SFU1E+8KfTjZyMztRsgEfwQl44z8A25uy13jSzTj6dyK2Df52iV0vgHCfBwLhDWevLn95w5v6Q==";
      };
    };
    "form-data-4.0.0" = {
      name = "form-data";
      packageName = "form-data";
      version = "4.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/form-data/-/form-data-4.0.0.tgz";
        sha512 = "ETEklSGi5t0QMZuiXoA/Q6vcnxcLQP5vdugSpuAyi6SVGi2clPPp+xgEhuMaHC+zGgn31Kd235W35f7Hykkaww==";
      };
    };
    "framer-motion-10.16.12" = {
      name = "framer-motion";
      packageName = "framer-motion";
      version = "10.16.12";
      src = fetchurl {
        url = "https://registry.npmjs.org/framer-motion/-/framer-motion-10.16.12.tgz";
        sha512 = "w7Yzx0OzQ5Uh6uNkxaX+4TuAPuOKz3haSbjmHpdrqDpGuCJCpq6YP9Dy7JJWdZ6mJjndrg3Ao3vUwDajKNikCA==";
      };
    };
    "js-tokens-4.0.0" = {
      name = "js-tokens";
      packageName = "js-tokens";
      version = "4.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/js-tokens/-/js-tokens-4.0.0.tgz";
        sha512 = "RdJUflcE3cUzKiMqQgsCu06FPu9UdIJO0beYbPhHN4k6apgJtifcoCtT9bcxOpYBtpD2kCM6Sbzg4CausW/PKQ==";
      };
    };
    "loose-envify-1.4.0" = {
      name = "loose-envify";
      packageName = "loose-envify";
      version = "1.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/loose-envify/-/loose-envify-1.4.0.tgz";
        sha512 = "lyuxPGr/Wfhrlem2CL/UcnUc1zcqKAImBDzukY7Y5F/yQiNdko6+fRLevlw1HgMySw7f611UIY408EtxRSoK3Q==";
      };
    };
    "mime-db-1.52.0" = {
      name = "mime-db";
      packageName = "mime-db";
      version = "1.52.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/mime-db/-/mime-db-1.52.0.tgz";
        sha512 = "sPU4uV7dYlvtWJxwwxHD0PuihVNiE7TyAbQ5SWxDCB9mUYvOgroQOwYQQOKPJ8CIbE+1ETVlOoK1UC2nU3gYvg==";
      };
    };
    "mime-types-2.1.35" = {
      name = "mime-types";
      packageName = "mime-types";
      version = "2.1.35";
      src = fetchurl {
        url = "https://registry.npmjs.org/mime-types/-/mime-types-2.1.35.tgz";
        sha512 = "ZDY+bPm5zTTF+YpCrAU9nK0UgICYPT0QtT1NZWFv4s++TNkcgVaT0g6+4R2uI4MjQjzysHB1zxuWL50hzaeXiw==";
      };
    };
    "object-assign-4.1.1" = {
      name = "object-assign";
      packageName = "object-assign";
      version = "4.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/object-assign/-/object-assign-4.1.1.tgz";
        sha512 = "rJgTQnkUnH1sFw8yT6VSU3zD3sWmu6sZhIseY8VX+GRu3P6F7Fu+JNDoXfklElbLJSnc3FUQHVe4cU5hj+BcUg==";
      };
    };
    "prop-types-15.8.1" = {
      name = "prop-types";
      packageName = "prop-types";
      version = "15.8.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/prop-types/-/prop-types-15.8.1.tgz";
        sha512 = "oj87CgZICdulUohogVAR7AjlC0327U4el4L6eAvOqCeudMDVU0NThNaV+b9Df4dXgSP1gXMTnPdhfe/2qDH5cg==";
      };
    };
    "proxy-from-env-1.1.0" = {
      name = "proxy-from-env";
      packageName = "proxy-from-env";
      version = "1.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/proxy-from-env/-/proxy-from-env-1.1.0.tgz";
        sha512 = "D+zkORCbA9f1tdWRK0RaCR3GPv50cMxcrz4X8k5LTSUD1Dkw47mKJEZQNunItRTkWwgtaUSo1RVFRIG9ZXiFYg==";
      };
    };
    "react-18.2.0" = {
      name = "react";
      packageName = "react";
      version = "18.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/react/-/react-18.2.0.tgz";
        sha512 = "/3IjMdb2L9QbBdWiW5e3P2/npwMBaU9mHCSCUzNln0ZCYbcfTsGbTJrU/kGemdH2IWmB2ioZ+zkxtmq6g09fGQ==";
      };
    };
    "react-dom-18.2.0" = {
      name = "react-dom";
      packageName = "react-dom";
      version = "18.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/react-dom/-/react-dom-18.2.0.tgz";
        sha512 = "6IMTriUmvsjHUjNtEDudZfuDQUoWXVxKHhlEGSk81n4YFS+r/Kl99wXiwlVXtPBtJenozv2P+hxDsw9eA7Xo6g==";
      };
    };
    "react-hook-form-7.48.2" = {
      name = "react-hook-form";
      packageName = "react-hook-form";
      version = "7.48.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/react-hook-form/-/react-hook-form-7.48.2.tgz";
        sha512 = "H0T2InFQb1hX7qKtDIZmvpU1Xfn/bdahWBN1fH19gSe4bBEqTfmlr7H3XWTaVtiK4/tpPaI1F3355GPMZYge+A==";
      };
    };
    "react-is-16.13.1" = {
      name = "react-is";
      packageName = "react-is";
      version = "16.13.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/react-is/-/react-is-16.13.1.tgz";
        sha512 = "24e6ynE2H+OKt4kqsOvNd8kBpV65zoxbA4BVsEOB3ARVWQki/DHzaUoC5KuON/BiccDaCCTZBuOcfZs70kR8bQ==";
      };
    };
    "react-is-18.2.0" = {
      name = "react-is";
      packageName = "react-is";
      version = "18.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/react-is/-/react-is-18.2.0.tgz";
        sha512 = "xWGDIW6x921xtzPkhiULtthJHoJvBbF3q26fzloPCK0hsvxtPVelvftw3zjbHWSkR2km9Z+4uxbDDK/6Zw9B8w==";
      };
    };
    "react-router-6.20.1" = {
      name = "react-router";
      packageName = "react-router";
      version = "6.20.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/react-router/-/react-router-6.20.1.tgz";
        sha512 = "ccvLrB4QeT5DlaxSFFYi/KR8UMQ4fcD8zBcR71Zp1kaYTC5oJKYAp1cbavzGrogwxca+ubjkd7XjFZKBW8CxPA==";
      };
    };
    "react-router-dom-6.20.1" = {
      name = "react-router-dom";
      packageName = "react-router-dom";
      version = "6.20.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/react-router-dom/-/react-router-dom-6.20.1.tgz";
        sha512 = "npzfPWcxfQN35psS7rJgi/EW0Gx6EsNjfdJSAk73U/HqMEJZ2k/8puxfwHFgDQhBGmS3+sjnGbMdMSV45axPQw==";
      };
    };
    "regenerator-runtime-0.14.0" = {
      name = "regenerator-runtime";
      packageName = "regenerator-runtime";
      version = "0.14.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/regenerator-runtime/-/regenerator-runtime-0.14.0.tgz";
        sha512 = "srw17NI0TUWHuGa5CFGGmhfNIeja30WMBfbslPNhf6JrqQlLN5gcrvig1oqPxiVaXb0oW0XRKtH6Nngs5lKCIA==";
      };
    };
    "scheduler-0.23.0" = {
      name = "scheduler";
      packageName = "scheduler";
      version = "0.23.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/scheduler/-/scheduler-0.23.0.tgz";
        sha512 = "CtuThmgHNg7zIZWAXi3AsyIzA3n4xx7aNyjwC2VJldO2LMVDhFK+63xGqq6CsJH4rTAt6/M+N4GhZiDYPx9eUw==";
      };
    };
    "tslib-2.6.2" = {
      name = "tslib";
      packageName = "tslib";
      version = "2.6.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/tslib/-/tslib-2.6.2.tgz";
        sha512 = "AEYxH93jGFPn/a2iVAwW87VuUIkR1FVUKB77NwMF7nBTDkDrrT/Hpt/IrCJ0QXhW27jTBDcf5ZY7w6RiqTMw2Q==";
      };
    };
  };
  args = {
    name = "boardwise";
    packageName = "boardwise";
    version = "0.1.0";
    src = ./.;
    dependencies = [
      sources."@babel/runtime-7.23.5"
      sources."@emotion/is-prop-valid-0.8.8"
      sources."@emotion/memoize-0.7.4"
      sources."@floating-ui/core-1.5.1"
      sources."@floating-ui/dom-1.5.3"
      sources."@floating-ui/react-dom-2.0.4"
      sources."@floating-ui/utils-0.1.6"
      sources."@mui/base-5.0.0-beta.25"
      sources."@mui/types-7.2.10"
      sources."@mui/utils-5.14.19"
      sources."@popperjs/core-2.11.8"
      sources."@remix-run/router-1.13.1"
      sources."@tanstack/query-core-5.12.1"
      sources."@tanstack/react-query-5.12.2"
      sources."@types/prop-types-15.7.11"
      sources."@types/react-18.2.40"
      sources."@types/scheduler-0.16.8"
      sources."asynckit-0.4.0"
      sources."axios-1.6.2"
      sources."clsx-2.0.0"
      sources."combined-stream-1.0.8"
      sources."csstype-3.1.2"
      sources."delayed-stream-1.0.0"
      sources."follow-redirects-1.15.3"
      sources."form-data-4.0.0"
      sources."framer-motion-10.16.12"
      sources."js-tokens-4.0.0"
      sources."loose-envify-1.4.0"
      sources."mime-db-1.52.0"
      sources."mime-types-2.1.35"
      sources."object-assign-4.1.1"
      (sources."prop-types-15.8.1" // {
        dependencies = [
          sources."react-is-16.13.1"
        ];
      })
      sources."proxy-from-env-1.1.0"
      sources."react-18.2.0"
      sources."react-dom-18.2.0"
      sources."react-hook-form-7.48.2"
      sources."react-is-18.2.0"
      sources."react-router-6.20.1"
      sources."react-router-dom-6.20.1"
      sources."regenerator-runtime-0.14.0"
      sources."scheduler-0.23.0"
      sources."tslib-2.6.2"
    ];
    buildInputs = globalBuildInputs;
    meta = {
    };
    production = true;
    bypassCache = true;
    reconstructLock = false;
  };
in
{
  args = args;
  sources = sources;
  tarball = nodeEnv.buildNodeSourceDist args;
  package = nodeEnv.buildNodePackage args;
  shell = nodeEnv.buildNodeShell args;
  nodeDependencies = nodeEnv.buildNodeDependencies (lib.overrideExisting args {
    src = stdenv.mkDerivation {
      name = args.name + "-package-json";
      src = nix-gitignore.gitignoreSourcePure [
        "*"
        "!package.json"
        "!package-lock.json"
      ] args.src;
      dontBuild = true;
      installPhase = "mkdir -p $out; cp -r ./* $out;";
    };
  });
}
