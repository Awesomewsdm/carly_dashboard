'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "a65d30b837f0337c4d5483349175b693",
"assets/AssetManifest.json": "9a806e1deb0f77e08d0f75fc2d04306b",
"assets/assets/fonts/IBMPlexSans-Bold.ttf": "999fb50e1c3537c3e5039f3cf8579347",
"assets/assets/fonts/IBMPlexSans-ExtraLight.ttf": "89293b5a931434322648d5ccb769202f",
"assets/assets/fonts/IBMPlexSans-Light.ttf": "341cd5ba84b31a9a949eac15e96e2bf5",
"assets/assets/fonts/IBMPlexSans-Medium.ttf": "424d6e28fe50c7fb5d665d4b0fdf0cb1",
"assets/assets/fonts/IBMPlexSans-Regular.ttf": "2470b0f5dce95a820b228c5bdfc95eca",
"assets/assets/fonts/IBMPlexSans-SemiBold.ttf": "f1f29edcd875f315e596c24b9fbb8c19",
"assets/assets/fonts/IBMPlexSans-Thin.ttf": "a825187b19b83404f4be06879a9895eb",
"assets/assets/images/app-logo%2520(2).png": "d330f56ad5afaaefb98035b5b1049e20",
"assets/assets/images/app-logo.png": "99c79a502e1324017a63a43b77a13e0a",
"assets/assets/images/Arrow%2520-%2520Down.png": "a99e6d08b65212caecdffef90f621ece",
"assets/assets/images/avatar.png": "5aad78214cf890564ddc640ba02c561f",
"assets/assets/images/Bag%25203.png": "e4416786f4a63751cebacd10f202065e",
"assets/assets/images/dashboard.svg": "c13edd6fb7c7bbcfc6a37b5d9188e1f5",
"assets/assets/images/notifications.png": "5edd2b8c33231b423e609287f4ea1a88",
"assets/assets/images/pie-chart.png": "3781c256e1430bdbf34acf32017e15cf",
"assets/assets/images/Profile.png": "c13edd6fb7c7bbcfc6a37b5d9188e1f5",
"assets/assets/images/Wallet.png": "3b55aa4cba2b1a94d5682f89899f0177",
"assets/assets/svg/burn.svg": "17878d64166afc53d13e59310ef0715c",
"assets/assets/svg/chat.svg": "489cd2acdc01af4bf361600fa52122f3",
"assets/assets/svg/dashboard.svg": "e3ddd82aa2125f9c7f46882d02601d3f",
"assets/assets/svg/distance.svg": "04ebe03355fa88675711ef92640eff04",
"assets/assets/svg/exercise.svg": "742d6c5a839fbdd352ba279d7a41a86c",
"assets/assets/svg/eye.svg": "d4a8a9bc2a50b75bf59f4e60068a644b",
"assets/assets/svg/filter.svg": "c76eb4e4b9647f788a0df57714e934ac",
"assets/assets/svg/history.svg": "86fcbe39b9bce9664e88283b1a260b98",
"assets/assets/svg/home.svg": "cf6b258752d57b52ec605c3eb56d4936",
"assets/assets/svg/message.svg": "9c46e0749aeaec4aa99d9760fcbd6f2a",
"assets/assets/svg/more.svg": "beac4b50442fde8b2e171116f03f0b4e",
"assets/assets/svg/partners.svg": "cb448d7b9a587ffb0780e9982035058d",
"assets/assets/svg/products.svg": "ab03cad517a023793e26823f0dff9391",
"assets/assets/svg/profile.svg": "4c8bbe7a24e05b79fd5228d16f8346d8",
"assets/assets/svg/promos%2520&%2520awards.svg": "c9ffb41f2cc1d1f639e848f7967ca483",
"assets/assets/svg/search.svg": "93908ae1d286be70b16bbb2e4f44ef52",
"assets/assets/svg/setting.svg": "00fe6c326ccd297646a64e53bf670258",
"assets/assets/svg/signout.svg": "f00d50221b54596fcc1f85ac83590583",
"assets/assets/svg/sleep.svg": "6430bf754369547fb87ecb09b7adf9c4",
"assets/assets/svg/steps.svg": "99d568f08403d1fc3301694015861139",
"assets/assets/svg/transactions.svg": "4e95523b7e6982a4d5c0c21f8eaf7829",
"assets/assets/svg/verify.svg": "5ae39442858b96e028c79bf20a15cfb1",
"assets/assets/svg/wallet.svg": "43708870e4771e080a18390ce2f7adcd",
"assets/FontManifest.json": "b58031e51561a32cd5e4308f3b929e09",
"assets/fonts/MaterialIcons-Regular.otf": "3895b881d466653636dbf9611945f6f4",
"assets/NOTICES": "839f2bb3f4fa89b8447cf6cdefd3dfbd",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "bbf39143dfd758d8d847453b120c8ebb",
"canvaskit/canvaskit.wasm": "19d8b35640d13140fe4e6f3b8d450f04",
"canvaskit/chromium/canvaskit.js": "96ae916cd2d1b7320fff853ee22aebb0",
"canvaskit/chromium/canvaskit.wasm": "1165572f59d51e963a5bf9bdda61e39b",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "d1fde2560be92c0b07ad9cf9acb10d05",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "9978edaed79636c1fe7e748b5af2770d",
"/": "9978edaed79636c1fe7e748b5af2770d",
"main.dart.js": "cd7c64334e795cfb4bc1aeaa180a0c14",
"manifest.json": "24a1223a12c07ecb5cd192e7e298cddf",
"version.json": "c3f2e7a2f787a5d26168ca8ed8acb241"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
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
