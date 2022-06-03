.class public Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "KodularWebRTC"

.field private static final utf8Decoder:Ljava/nio/charset/CharsetDecoder;


# instance fields
.field private dataChannel:Lorg/webrtc/DataChannel;

.field dataObserver:Lorg/webrtc/DataChannel$Observer;

.field private first:Z

.field private form:Lcom/google/appinventor/components/runtime/ReplForm;

.field private volatile haveLocalDescription:Z

.field private haveOffer:Z

.field private iceServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/PeerConnection$IceServer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile keepPolling:Z

.field observer:Lorg/webrtc/PeerConnection$Observer;

.field private peerConnection:Lorg/webrtc/PeerConnection;

.field private rCode:Ljava/lang/String;

.field private random:Ljava/util/Random;

.field private rendezvousServer:Ljava/lang/String;

.field private rendezvousServer2:Ljava/lang/String;

.field sdpObserver:Lorg/webrtc/SdpObserver;

.field private seenNonces:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 234
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 75
    move-object v5, v0

    new-instance v6, Ljava/util/TreeSet;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/TreeSet;-><init>()V

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->seenNonces:Ljava/util/TreeSet;

    .line 76
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->haveOffer:Z

    .line 78
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->keepPolling:Z

    .line 79
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->haveLocalDescription:Z

    .line 80
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->first:Z

    .line 81
    move-object v5, v0

    new-instance v6, Ljava/util/Random;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->random:Ljava/util/Random;

    .line 82
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->dataChannel:Lorg/webrtc/DataChannel;

    .line 83
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rendezvousServer:Ljava/lang/String;

    .line 84
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rendezvousServer2:Ljava/lang/String;

    .line 85
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->iceServers:Ljava/util/List;

    .line 87
    move-object v5, v0

    new-instance v6, Ljava/util/Timer;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/Timer;-><init>()V

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->timer:Ljava/util/Timer;

    .line 90
    move-object v5, v0

    new-instance v6, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$1;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$1;-><init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->sdpObserver:Lorg/webrtc/SdpObserver;

    .line 137
    move-object v5, v0

    new-instance v6, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;-><init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->observer:Lorg/webrtc/PeerConnection$Observer;

    .line 212
    move-object v5, v0

    new-instance v6, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$3;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$3;-><init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->dataObserver:Lorg/webrtc/DataChannel$Observer;

    .line 235
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rendezvousServer:Ljava/lang/String;

    .line 236
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v2

    const-string/jumbo v6, "OK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 238
    :cond_0
    const-string/jumbo v5, "{\"rendezvous2\" : \"rendezvous.creator.kodular.io\",\"iceservers\" : [{ \"server\" : \"turn:turn.creator.kodular.io:3478\",\"username\" : \"kodular\",\"password\" : \"yxUJKuyWzUW6R94uz96jZnAvBpzJSavb\"}]}"

    move-object v2, v5

    .line 245
    :cond_1
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .line 246
    move-object v5, v0

    move-object v6, v1

    const-string/jumbo v7, "rendezvous2"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rendezvousServer2:Ljava/lang/String;

    .line 247
    move-object v5, v1

    const-string/jumbo v6, "iceservers"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move-object v1, v5

    .line 248
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->iceServers:Ljava/util/List;

    .line 249
    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 250
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    .line 251
    move-object v3, v6

    const-string/jumbo v6, "server"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/webrtc/PeerConnection$IceServer;->builder(Ljava/lang/String;)Lorg/webrtc/PeerConnection$IceServer$Builder;

    move-result-object v5

    move-object v4, v5

    .line 253
    const-string/jumbo v5, "KodularWebRTC"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "Adding iceServer = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v3

    const-string/jumbo v8, "server"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 255
    move-object v5, v3

    const-string/jumbo v6, "username"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 256
    move-object v5, v4

    move-object v6, v3

    const-string/jumbo v7, "username"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/webrtc/PeerConnection$IceServer$Builder;->setUsername(Ljava/lang/String;)Lorg/webrtc/PeerConnection$IceServer$Builder;

    move-result-object v5

    .line 258
    :cond_2
    move-object v5, v3

    const-string/jumbo v6, "password"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 259
    move-object v5, v4

    move-object v6, v3

    const-string/jumbo v7, "password"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/webrtc/PeerConnection$IceServer$Builder;->setPassword(Ljava/lang/String;)Lorg/webrtc/PeerConnection$IceServer$Builder;

    move-result-object v5

    .line 261
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->iceServers:Ljava/util/List;

    move-object v6, v4

    invoke-virtual {v6}, Lorg/webrtc/PeerConnection$IceServer$Builder;->createIceServer()Lorg/webrtc/PeerConnection$IceServer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 249
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    .line 266
    :cond_4
    :goto_1
    return-void

    .line 263
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 264
    const-string/jumbo v5, "KodularWebRTC"

    const-string/jumbo v6, "parsing iceServers:"

    move-object v7, v1

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    .line 266
    goto :goto_1
.end method

.method private Poller()V
    .locals 14

    .prologue
    .line 298
    move-object v0, p0

    move-object v7, v0

    :try_start_0
    iget-boolean v7, v7, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->keepPolling:Z

    if-nez v7, :cond_0

    .line 299
    .line 431
    :goto_0
    return-void

    .line 303
    :cond_0
    const-string/jumbo v7, "KodularWebRTC"

    const-string/jumbo v8, "Poller() Called"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 304
    const-string/jumbo v7, "KodularWebRTC"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string/jumbo v10, "Poller: rendezvousServer2 = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rendezvousServer2:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 306
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    move-object v1, v7

    .line 307
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string/jumbo v11, "https://"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rendezvousServer:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/rendezvous2/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "-s"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object v2, v7

    .line 308
    move-object v7, v1

    move-object v8, v2

    invoke-interface {v7, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    move-object v1, v7

    .line 309
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v2, v7

    .line 311
    const/4 v7, 0x0

    move-object v3, v7

    .line 313
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    new-instance v9, Ljava/io/InputStreamReader;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v1

    .line 315
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v7

    .line 317
    :goto_1
    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v1, v8

    if-eqz v7, :cond_1

    .line 318
    move-object v7, v2

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    goto :goto_1

    .line 322
    :cond_1
    move-object v7, v3

    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 326
    move-object v7, v0

    iget-boolean v7, v7, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->keepPolling:Z

    if-nez v7, :cond_3

    .line 328
    const-string/jumbo v7, "KodularWebRTC"

    const-string/jumbo v8, "keepPolling is false, we\'re done!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 330
    goto/16 :goto_0

    .line 321
    :catchall_0
    move-exception v7

    move-object v1, v7

    move-object v7, v3

    if-eqz v7, :cond_2

    .line 322
    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 324
    :cond_2
    move-object v7, v1

    throw v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 424
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 425
    const-string/jumbo v7, "KodularWebRTC"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string/jumbo v10, "Caught IOException: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v9, v1

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v1

    invoke-static {v7, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v7

    .line 430
    goto/16 :goto_0

    .line 333
    :cond_3
    move-object v7, v2

    :try_start_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 336
    const-string/jumbo v7, "KodularWebRTC"

    const-string/jumbo v8, "response = "

    move-object v9, v1

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 339
    move-object v7, v1

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 341
    const-string/jumbo v7, "KodularWebRTC"

    const-string/jumbo v8, "Received an empty response"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 344
    goto/16 :goto_0

    .line 347
    :cond_4
    new-instance v7, Lorg/json/JSONArray;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v1

    invoke-direct {v8, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v1, v7

    .line 349
    const-string/jumbo v7, "KodularWebRTC"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string/jumbo v10, "jsonArray.length() = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v9, v1

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 351
    const/4 v7, 0x0

    move v2, v7

    .line 352
    :goto_2
    move v7, v2

    move-object v8, v1

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_b

    .line 354
    const-string/jumbo v7, "KodularWebRTC"

    const-string/jumbo v8, "i = "

    move v9, v2

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 355
    const-string/jumbo v7, "KodularWebRTC"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string/jumbo v10, "element = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v9, v1

    move v10, v2

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 357
    move-object v7, v1

    move v8, v2

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    move-object v3, v7

    .line 358
    move-object v7, v0

    iget-boolean v7, v7, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->haveOffer:Z

    if-nez v7, :cond_7

    .line 359
    move-object v7, v3

    const-string/jumbo v8, "offer"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 360
    add-int/lit8 v2, v2, 0x1

    .line 361
    goto :goto_2

    .line 363
    :cond_5
    move-object v7, v3

    const-string/jumbo v8, "offer"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    .line 364
    move-object v4, v8

    const-string/jumbo v8, "sdp"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 365
    move-object v7, v4

    const-string/jumbo v8, "type"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 366
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->haveOffer:Z

    .line 368
    const-string/jumbo v7, "KodularWebRTC"

    const-string/jumbo v8, "sdb = "

    move-object v9, v3

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 369
    const-string/jumbo v7, "KodularWebRTC"

    const-string/jumbo v8, "type = "

    move-object v9, v5

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 370
    const-string/jumbo v7, "KodularWebRTC"

    const-string/jumbo v8, "About to set remote offer"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 373
    const-string/jumbo v7, "KodularWebRTC"

    const-string/jumbo v8, "Got offer, about to set remote description (maincode)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 375
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->peerConnection:Lorg/webrtc/PeerConnection;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->sdpObserver:Lorg/webrtc/SdpObserver;

    new-instance v9, Lorg/webrtc/SessionDescription;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    sget-object v11, Lorg/webrtc/SessionDescription$Type;->OFFER:Lorg/webrtc/SessionDescription$Type;

    move-object v12, v3

    invoke-direct {v10, v11, v12}, Lorg/webrtc/SessionDescription;-><init>(Lorg/webrtc/SessionDescription$Type;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Lorg/webrtc/PeerConnection;->setRemoteDescription(Lorg/webrtc/SdpObserver;Lorg/webrtc/SessionDescription;)V

    .line 377
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->peerConnection:Lorg/webrtc/PeerConnection;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->sdpObserver:Lorg/webrtc/SdpObserver;

    new-instance v9, Lorg/webrtc/MediaConstraints;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Lorg/webrtc/MediaConstraints;-><init>()V

    invoke-virtual {v7, v8, v9}, Lorg/webrtc/PeerConnection;->createAnswer(Lorg/webrtc/SdpObserver;Lorg/webrtc/MediaConstraints;)V

    .line 379
    const-string/jumbo v7, "KodularWebRTC"

    const-string/jumbo v8, "createAnswer returned"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 381
    const/4 v7, -0x1

    move v2, v7

    .line 419
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 420
    goto/16 :goto_2

    .line 382
    :cond_7
    move-object v7, v3

    const-string/jumbo v8, "nonce"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 383
    move-object v7, v0

    iget-boolean v7, v7, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->haveLocalDescription:Z

    if-nez v7, :cond_8

    .line 385
    const-string/jumbo v7, "KodularWebRTC"

    const-string/jumbo v8, "Incoming candidate before local description set, punting"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 387
    goto/16 :goto_0

    .line 389
    :cond_8
    move-object v7, v3

    const-string/jumbo v8, "offer"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 390
    add-int/lit8 v2, v2, 0x1

    .line 392
    const-string/jumbo v7, "KodularWebRTC"

    const-string/jumbo v8, "skipping offer, already processed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 394
    goto/16 :goto_2

    .line 396
    :cond_9
    move-object v7, v3

    const-string/jumbo v8, "candidate"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 397
    add-int/lit8 v2, v2, 0x1

    .line 399
    goto/16 :goto_2

    .line 401
    :cond_a
    move-object v7, v3

    const-string/jumbo v8, "nonce"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 402
    move-object v7, v3

    const-string/jumbo v8, "candidate"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    .line 403
    move-object v3, v8

    const-string/jumbo v8, "candidate"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 404
    move-object v7, v3

    const-string/jumbo v8, "sdpMid"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 405
    move-object v7, v3

    const-string/jumbo v8, "sdpMLineIndex"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    move v3, v7

    .line 406
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->seenNonces:Ljava/util/TreeSet;

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 407
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->seenNonces:Ljava/util/TreeSet;

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 409
    const-string/jumbo v7, "KodularWebRTC"

    const-string/jumbo v8, "new nonce, about to add candidate!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 410
    const-string/jumbo v7, "KodularWebRTC"

    const-string/jumbo v8, "candidate = "

    move-object v9, v5

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 412
    new-instance v7, Lorg/webrtc/IceCandidate;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v6

    move v10, v3

    move-object v11, v5

    invoke-direct {v8, v9, v10, v11}, Lorg/webrtc/IceCandidate;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v3, v7

    .line 413
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->peerConnection:Lorg/webrtc/PeerConnection;

    move-object v8, v3

    invoke-virtual {v7, v8}, Lorg/webrtc/PeerConnection;->addIceCandidate(Lorg/webrtc/IceCandidate;)Z

    move-result v7

    .line 415
    const-string/jumbo v7, "KodularWebRTC"

    const-string/jumbo v8, "addIceCandidate returned"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_3

    .line 422
    :cond_b
    const-string/jumbo v7, "KodularWebRTC"

    const-string/jumbo v8, "exited loop"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v7

    .line 430
    goto/16 :goto_0

    .line 426
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 427
    const-string/jumbo v7, "KodularWebRTC"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string/jumbo v10, "Caught JSONException: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v9, v1

    invoke-virtual {v9}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v1

    invoke-static {v7, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v7

    .line 430
    goto/16 :goto_0

    .line 428
    :catch_2
    move-exception v7

    move-object v1, v7

    .line 429
    const-string/jumbo v7, "KodularWebRTC"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string/jumbo v10, "Caught Exception: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v1

    invoke-static {v7, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v7

    .line 431
    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Lorg/webrtc/PeerConnection;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->peerConnection:Lorg/webrtc/PeerConnection;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Z
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->first:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$1002(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Z)Z
    .locals 7

    .prologue
    .line 63
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->first:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$102(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Z)Z
    .locals 7

    .prologue
    .line 63
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->haveLocalDescription:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$1100(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rCode:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rendezvousServer2:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->sendRendezvous(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$302(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Lorg/webrtc/DataChannel;)Lorg/webrtc/DataChannel;
    .locals 7

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->dataChannel:Lorg/webrtc/DataChannel;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Z)Z
    .locals 7

    .prologue
    .line 63
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->keepPolling:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/util/TreeSet;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->seenNonces:Ljava/util/TreeSet;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/util/Random;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->random:Ljava/util/Random;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$700()Ljava/nio/charset/CharsetDecoder;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Lcom/google/appinventor/components/runtime/ReplForm;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->Poller()V

    return-void
.end method

.method private sendRendezvous(Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    .line 434
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;-><init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Lorg/json/JSONObject;)V

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 461
    return-void
.end method


# virtual methods
.method public initiate(Lcom/google/appinventor/components/runtime/ReplForm;Landroid/content/Context;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 270
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    .line 271
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rCode:Ljava/lang/String;

    .line 273
    move-object v4, v2

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/webrtc/PeerConnectionFactory;->initializeAndroidGlobals(Landroid/content/Context;Z)V

    .line 275
    new-instance v4, Lorg/webrtc/PeerConnectionFactory$Options;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Lorg/webrtc/PeerConnectionFactory$Options;-><init>()V

    move-object v1, v4

    .line 277
    new-instance v4, Lorg/webrtc/PeerConnectionFactory;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    invoke-direct {v5, v6}, Lorg/webrtc/PeerConnectionFactory;-><init>(Lorg/webrtc/PeerConnectionFactory$Options;)V

    move-object v1, v4

    .line 279
    new-instance v4, Lorg/webrtc/PeerConnection$RTCConfiguration;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->iceServers:Ljava/util/List;

    invoke-direct {v5, v6}, Lorg/webrtc/PeerConnection$RTCConfiguration;-><init>(Ljava/util/List;)V

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    .line 280
    move-object v2, v5

    sget-object v5, Lorg/webrtc/PeerConnection$ContinualGatheringPolicy;->GATHER_CONTINUALLY:Lorg/webrtc/PeerConnection$ContinualGatheringPolicy;

    iput-object v5, v4, Lorg/webrtc/PeerConnection$RTCConfiguration;->continualGatheringPolicy:Lorg/webrtc/PeerConnection$ContinualGatheringPolicy;

    .line 281
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    new-instance v7, Lorg/webrtc/MediaConstraints;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lorg/webrtc/MediaConstraints;-><init>()V

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->observer:Lorg/webrtc/PeerConnection$Observer;

    invoke-virtual {v5, v6, v7, v8}, Lorg/webrtc/PeerConnectionFactory;->createPeerConnection(Lorg/webrtc/PeerConnection$RTCConfiguration;Lorg/webrtc/MediaConstraints;Lorg/webrtc/PeerConnection$Observer;)Lorg/webrtc/PeerConnection;

    move-result-object v5

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->peerConnection:Lorg/webrtc/PeerConnection;

    .line 283
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->timer:Ljava/util/Timer;

    new-instance v5, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;-><init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x3e8

    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 289
    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 465
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->dataChannel:Lorg/webrtc/DataChannel;

    if-nez v2, :cond_0

    .line 466
    const-string/jumbo v2, "KodularWebRTC"

    const-string/jumbo v3, "No Data Channel in Send"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 467
    .line 475
    :goto_0
    return-void

    .line 469
    :cond_0
    move-object v2, v1

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v1, v2

    .line 470
    new-instance v2, Lorg/webrtc/DataChannel$Buffer;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lorg/webrtc/DataChannel$Buffer;-><init>(Ljava/nio/ByteBuffer;Z)V

    move-object v1, v2

    .line 471
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->dataChannel:Lorg/webrtc/DataChannel;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/webrtc/DataChannel;->send(Lorg/webrtc/DataChannel$Buffer;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 474
    goto :goto_0

    .line 472
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 473
    const-string/jumbo v2, "KodularWebRTC"

    const-string/jumbo v3, "While encoding data to send to companion"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 475
    goto :goto_0
.end method
