'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  ".git/COMMIT_EDITMSG": "a8297d555dd34879e8e48e1cf12acefa",
".git/config": "c9dd422b115e3c10dcab0ee9de10a30a",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "b91acca7f3cdb23d0e49f31ff259a351",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "f0a3642eb9a931eb2d458aac4d42cdca",
".git/logs/refs/heads/main": "270b217c004b582a5e6283853e0cfbd9",
".git/logs/refs/remotes/origin/main": "24e91ee2efd17e00c3f85feea0db7c9c",
".git/objects/05/e1dee8cb574e717c37fe25d795933e76d9aed3": "60de3f663378a8dfc903efba79c60593",
".git/objects/0d/0df08f7c3e147a8ae36017cf81a96e35b73717": "106e868f28a72727fb6fb0fa71123633",
".git/objects/16/00a19914f3de26f80e535126ea0b1e61220b0c": "845cfdaf1665d5ca0b3b2b79a4485067",
".git/objects/16/cb11bc7786bc1f939fc474e87e1e1f0404c659": "92395dd1d7d919670744e33be89299ec",
".git/objects/24/b1f14dd348b07c9b8373758bde9ac14d16fd92": "dbf45d6c044044561758a334420e9569",
".git/objects/28/a7c039a3557c2f64a19785f809bf8332903299": "0122ae54f22f85604a1ddcb4a54f02d1",
".git/objects/29/2214367c0af9a2eee8f873b2944224e2fe3f0c": "902d6cf3d5ea70392a74bfc9ded583bb",
".git/objects/2c/612da2ae589dc264deb683f90baf75c8e18e03": "03a0c91f7a95581dd48bc3075b6203c6",
".git/objects/2d/cf3542c874e33cd8ab86ceb6f0ec444228aa78": "66baad0ae5d874f09b6eee790095bc65",
".git/objects/38/5b3c6daa33cbb607b67758966074124fa58a1e": "16b06fe31e68835fc5bf8989b9c6cd4d",
".git/objects/3a/dda96dd996308bf91a9c2cb1b74b117e066f37": "f21bf0b5329d611167967d47b79f56e1",
".git/objects/3a/eabc5bb841c72d0d5276e33771c49b9f63cc7e": "0535b490001934b5dcb9af8418f216f4",
".git/objects/42/b5ad92d1267c89cd303d8593aa6d2b0e5758cd": "4287936f0bd8dfd4cacd484a0bd60c49",
".git/objects/4e/89617a3696bd10c155ec378f4a65a9f89e9e3a": "d8056e20bae90d092b619c895129e982",
".git/objects/4e/c7f78059a77c71db8512551d67b906d5523f2e": "f7425055f24c54618d1f5cf2964a5ea5",
".git/objects/4e/f353984348dfc9a6ad29e16617f59a8c2076d7": "08834e286d978baec5d02033be478c05",
".git/objects/60/ac82d65b962207aef7b300eba19764d27352fe": "fda26a433b20cf4eefccd0b962fa1ded",
".git/objects/67/f0657be9fbea584738ee77aedaeb8abe26d4d2": "b257bd3ae56a24be684620cd82a8c868",
".git/objects/70/c05443884bb545508fcf18fed254263d7aa200": "cf1bcb069fe915a6b6ca720af94a093d",
".git/objects/74/77b3c2658459188d55e238e528adb201859a34": "81ce8b0a3fcf60b594fbc5abae168b38",
".git/objects/75/a47303b01a47f86c1d8cdc5be5c7e0990b76da": "5c2aea310f21cb410be9a5380ebdd72e",
".git/objects/76/8651b2e249c2517c7b37bdbeea0a5d8bfbb707": "495b1c4fefa633f6afe4dc5840ebe18f",
".git/objects/76/e30956a41e07f1182bc4d3c5e516feef08ad7d": "66fcafaa98ca7ebcda810ad2bfe5a024",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/7d/1ae61b55e3a13b992963f3bd304c6f6a041eb3": "f8c1d2e1ade1460031d1dc0890314f6c",
".git/objects/7f/e7bd7cfe712df05d6d56e33b3c5e807b33f695": "d929e56ceeabd0eedaab6a66366bef74",
".git/objects/80/0100bf35da915687af0856a3a8cf645d488781": "340808839899f631b460f0582751148b",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/9f/607b57ea0e6c73217673c7d0a8f189b17d3115": "768ac3fab7c07bb4e22e0c724004acd6",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/ad/bfc467d2d0dd5cdf2b942e5d0cf3aab2b73c3a": "0cd0e59044408cf3154c178da5da82cc",
".git/objects/b0/8979daa64a4678053de7c070556268470991e6": "e3288a16af2a2c2922227599020e1326",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/bc/a05b02c28efde9cdda848728ccb9115b3a97ce": "4314cf3500eabdd0ffdb5a9e11f999f2",
".git/objects/bf/4ab6af4857ae6464da52f41a27783dbfb95a69": "ccd5cc8e225d2203c176524b62c59553",
".git/objects/cd/22076013ce8b84475eae9bb4cd6c60b5460fbe": "81c620e2d6cbe5638d6c90ee25886389",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/da/2b2187cf622948ca6a3aed883be65d9903b621": "a6366046f956471e131660850cb990ea",
".git/objects/dc/2f65457608aa373f249368537f93b461710c16": "194c6349c3af637a281ef4633c894de8",
".git/objects/dc/f16c9d0a402b3a0d538c37b4db449048ca9c20": "d8d9feec279c28bc2f30ea139acef817",
".git/objects/de/28db843d7df6ed23b8a7526f6b6b4a83425fe7": "797e4f7b3d8dced098c51679ff33e848",
".git/objects/e3/c5c04cb92aa8a06aa249f2a9944ddf594369b9": "6c6a73a3cd5061ba4016d1bc006a1c5b",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/e9/e575d0b36ebd696294496017834c26b62e1505": "8eca52e53d59927cc7c00a13888ea67b",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ef/5ae3b43e99637fe8c09fe8eafd2302df88759e": "f175f8d452c0833c0770c75f153f0404",
".git/refs/heads/main": "7ca8cb8c03c539205fcd6831156a1876",
".git/refs/remotes/origin/main": "7ca8cb8c03c539205fcd6831156a1876",
"assets/AssetManifest.json": "40163547f0540e4e3ee18949abdd2c0c",
"assets/assets/fonts/Lato/Lato-Bold.ttf": "eb9532033c2adf99b1314611b5e9cd0e",
"assets/assets/fonts/Lato/Lato-Medium.ttf": "863b7dcd5ec2c3923122af25ce0f7e4c",
"assets/assets/fonts/Lato/Lato-Regular.ttf": "3b9b99039cc0a98dd50c3cbfac57ccb2",
"assets/assets/fonts/Lato/Lato-SemiBold.ttf": "3c6cfb1aebd888a0eb4c8fba94140fa6",
"assets/assets/images/ic_arrow_to_left.svg": "9333036c88ad2d73a8ccb9b66620e49c",
"assets/assets/images/ic_arrow_to_right.svg": "e83629d5070a8e2b50b83c29f97a589f",
"assets/assets/images/ic_boy_right_stand.svg": "ddaedf04caa2b23a0042465e61f79433",
"assets/assets/images/ic_girl_left_stand.svg": "38a02318c3670dcf7dfa0e7e691a7697",
"assets/assets/images/ic_girl_straight_stand.svg": "232859890a17ae656abdb1e7cc938ac9",
"assets/assets/images/ic_hand_shak.svg": "00e1c69545cc8f857d6e0cb102604ae8",
"assets/assets/images/ic_mbl_girl_left_stand.svg": "8e1604543aee3a855b9c7b8405ae8c60",
"assets/assets/images/ic_mbl_girl_standing_straight_curve.svg": "b31c70a6bdb24b7323b5951e77cc0a58",
"assets/assets/images/ic_mbl_handshake.svg": "520d32c3994487d070900e9f28e83b19",
"assets/assets/images/ic_mbl_person_handshakes.svg": "5bebf8a0d2244b6bd02edb238d7028e1",
"assets/FontManifest.json": "699ed66b5126ec7d5507f839454c46fd",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/NOTICES": "5040a2918aae910fc60413e64c643bb4",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "eb2682e33f25cd8f1fc59011497c35f8",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "f083ed9d0869a8d5642627e7114bfcfb",
"/": "f083ed9d0869a8d5642627e7114bfcfb",
"main.dart.js": "859b919a495f4d1f39f0e94f9c6e8f35",
"manifest.json": "228a85c1b329b28d6d6ea399f6c9eb1b",
"version.json": "a4f830c777ff1481ec1d4beb63967106"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
