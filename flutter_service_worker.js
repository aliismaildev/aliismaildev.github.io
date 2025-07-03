'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache-1751531924';

const RESOURCES = {"version.json": "e5d57d4e475cc8a711764c8aef61d978",
"splash/img/light-2x.png": "5b20faf545ab44ce77d977cb5ca53bcb",
"splash/img/dark-4x.png": "4859472c19b34e1fbf95bb7af1a1c3d5",
"splash/img/light-3x.png": "71cb61e5c8d050e7a70b31ca975a8408",
"splash/img/dark-3x.png": "71cb61e5c8d050e7a70b31ca975a8408",
"splash/img/light-4x.png": "4859472c19b34e1fbf95bb7af1a1c3d5",
"splash/img/dark-2x.png": "5b20faf545ab44ce77d977cb5ca53bcb",
"splash/img/dark-1x.png": "3417c25ea511894ce2ed29925660582e",
"splash/img/light-1x.png": "3417c25ea511894ce2ed29925660582e",
"splash/splash.js": "123c400b58bea74c1305ca3ac966748d",
"splash/style.css": "1f65ca13e7e483038079986e9057136a",
"index.html": "ecb16dca527319b3f82a29040ce17a77",
"/": "ecb16dca527319b3f82a29040ce17a77",
"main.dart.js": "3333f381239a460fcd09b795a04a12ad",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"icons/favicon.ico": "1eff13b595ec2e729b677a385fb81eb3",
"icons/web-app-manifest-192x192.png": "e994b73b789c214af6cf13a64f07fbd3",
"icons/apple-touch-icon.png": "9f68f1ef0111998f1ddf921487ed3352",
"icons/web-app-manifest-512x512.png": "ba75db64a05d74fa2332e7b30197d6f7",
"icons/site.webmanifest": "9090e674d41e265d5f03c180fe5f6721",
"icons/favicon-96x96.png": "ccfb0b3ebb8bc832423ee93005c301a2",
"icons/favicon.svg": "bb451b09e4292fdf2bd42cfe442b4fa7",
"manifest.json": "858ccb6e11d777d49d35a938293d00ec",
"assets/AssetManifest.json": "8697ea4ed90dff3b61641a9b58e87db1",
"assets/NOTICES": "e1f1d46f166fd39fb58c69b53f320aff",
"assets/FontManifest.json": "d5c53906b6d86d304b23aa61eec71815",
"assets/AssetManifest.bin.json": "e7dd1467f7fee0eb333f3998d2683159",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "4344f47c80a0ba4dc9da4438afbac2cc",
"assets/fonts/MaterialIcons-Regular.otf": "8d2912c245a70730bcd710695567a256",
"assets/assets/images/m5azn.png": "518e272fd6db1fc77bbd0e9664a5e6b3",
"assets/assets/images/highapp.png": "d2f82714c1c7f282f89d7838e227b436",
"assets/assets/images/nibm.png": "2c7b9e171cdb604855512d8b229d525e",
"assets/assets/images/rufoof-banner.png": "9e1722e73ef65fa9446ff03f3c5be5ae",
"assets/assets/images/mms.png": "2ac5fae64b8eb2cdc930a98db292762f",
"assets/assets/images/github.png": "bada3b2dca0911637f07d961cd7da5d5",
"assets/assets/images/m5azn-wms-banner.png": "2df97389e9455d0252ec5adf84c23ae3",
"assets/assets/images/solobits.png": "a30a7fa4dee29adeeb78401ebc720c16",
"assets/assets/images/twsaa-banner.png": "4418c9f216131b745cea93cd58915f23",
"assets/assets/images/splash1.png": "615b33ea39ef0c0435339878d37ca17b",
"assets/assets/images/technovier.png": "d5d0665ff9594f5c0081b1b8ec53038f",
"assets/assets/images/splash.png": "0106cb011fb93902ba343b97f06c20d8",
"assets/assets/images/telebu.png": "61df79bfee05f0a2d042ca7fec9d95e3",
"assets/assets/images/mlsa.png": "ac77090e37e75814439d7134e6f38d28",
"assets/assets/images/logo.jpg": "61ca9d398a07b2f386b2e085fba54bfd",
"assets/assets/images/flutterscope.png": "bf9d96f9660b19b398e0b02316f65523",
"assets/assets/images/magnatec.png": "09670ab5f82073ecf997e049a1432757",
"assets/assets/images/m5azn-banner.png": "74d202e9080ca8436aa2113697e84f22",
"assets/assets/images/mx.png": "99d5f157c1281deae6519eb06dbcbabe",
"assets/assets/icons/telegram.png": "c89ff009e3e05233e29b53baea4b57de",
"assets/assets/icons/website.png": "7515ea009ac2c4f9ef0422737195b66b",
"assets/assets/icons/volunteer.png": "280885c9e9e99cb1c3e6c2806a5933f8",
"assets/assets/icons/instagram.png": "78064309e7314e8399f3f83d715aecc7",
"assets/assets/icons/github.png": "e6b2daf427b81c388625ffee75f2acf4",
"assets/assets/icons/android.png": "461437494df2f170d64aa8afa8bc987a",
"assets/assets/icons/dev.png": "136350fd9f00dc8d1dd1514e40b9f9cd",
"assets/assets/icons/appstore.png": "b264ccd40848aed77b8d1d6fd32d77d1",
"assets/assets/icons/developer.png": "3ac0201437230cb924a4c850124c6579",
"assets/assets/icons/student.png": "0993673a3715300df7449fdbce808a26",
"assets/assets/icons/done.png": "d3786409b1df621a0b55e61d92430590",
"assets/assets/icons/twitter.png": "632f6320a7e3538439ffafd9ee8a03cd",
"assets/assets/icons/linkedin.png": "1816e5c1168ca75e4e824ed21c4f002a",
"assets/assets/icons/hashnode.png": "5830176711a7028847bb9ef5fba9b39b",
"assets/assets/icons/youtube.png": "92d7341ea8fd5c88350cbd570a145f43",
"assets/assets/icons/facebook.png": "cb055867df3c7b03ef1135f77d1a9411",
"assets/assets/fonts/Poppins-Medium.ttf": "bf59c687bc6d3a70204d3944082c5cc0",
"assets/assets/fonts/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/assets/fonts/Poppins-Bold.ttf": "08c20a487911694291bd8c5de41315ad",
"assets/assets/fonts/Poppins-SemiBold.ttf": "6f1520d107205975713ba09df778f93f",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
