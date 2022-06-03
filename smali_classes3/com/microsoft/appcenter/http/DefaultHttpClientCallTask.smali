.class Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;
.super Landroid/os/AsyncTask;
.source "DefaultHttpClientCallTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask$Tracker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_STRING_BUILDER_CAPACITY:I = 0x10

.field private static final MAX_PRETTIFY_LOG_LENGTH:I = 0x1000

.field private static final MIN_GZIP_LENGTH:I = 0x578

.field private static final REDIRECT_URI_REGEX_JSON:Ljava/util/regex/Pattern;

.field private static final TOKEN_REGEX_JSON:Ljava/util/regex/Pattern;

.field private static final TOKEN_REGEX_URL_ENCODED:Ljava/util/regex/Pattern;


# instance fields
.field private final mCallTemplate:Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;

.field private final mCompressionEnabled:Z

.field private final mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMethod:Ljava/lang/String;

.field private final mServiceCallback:Lcom/microsoft/appcenter/http/ServiceCallback;

.field private final mTracker:Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask$Tracker;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string/jumbo v0, "token=[^&]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->TOKEN_REGEX_URL_ENCODED:Ljava/util/regex/Pattern;

    .line 73
    const-string/jumbo v0, "token\":\"[^\"]+\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->TOKEN_REGEX_JSON:Ljava/util/regex/Pattern;

    .line 78
    const-string/jumbo v0, "redirect_uri\":\"[^\"]+\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->REDIRECT_URI_REGEX_JSON:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;Lcom/microsoft/appcenter/http/ServiceCallback;Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask$Tracker;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;",
            "Lcom/microsoft/appcenter/http/ServiceCallback;",
            "Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask$Tracker;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object v2, p2

    .local v2, "method":Ljava/lang/String;
    move-object v3, p3

    .local v3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v4, p4

    .local v4, "callTemplate":Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;
    move-object v5, p5

    .local v5, "serviceCallback":Lcom/microsoft/appcenter/http/ServiceCallback;
    move-object/from16 v6, p6

    .local v6, "tracker":Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask$Tracker;
    move/from16 v7, p7

    .local v7, "compressionEnabled":Z
    move-object v8, v0

    invoke-direct {v8}, Landroid/os/AsyncTask;-><init>()V

    .line 95
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->mUrl:Ljava/lang/String;

    .line 96
    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->mMethod:Ljava/lang/String;

    .line 97
    move-object v8, v0

    move-object v9, v3

    iput-object v9, v8, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->mHeaders:Ljava/util/Map;

    .line 98
    move-object v8, v0

    move-object v9, v4

    iput-object v9, v8, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->mCallTemplate:Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;

    .line 99
    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->mServiceCallback:Lcom/microsoft/appcenter/http/ServiceCallback;

    .line 100
    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->mTracker:Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask$Tracker;

    .line 101
    move-object v8, v0

    move v9, v7

    iput-boolean v9, v8, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->mCompressionEnabled:Z

    .line 102
    return-void
.end method

.method private doHttpCall()Lcom/microsoft/appcenter/http/HttpResponse;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 159
    move-object/from16 v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;
    new-instance v13, Ljava/net/URL;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v0

    iget-object v15, v15, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->mUrl:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v1, v13

    .line 160
    .local v1, "url":Ljava/net/URL;
    move-object v13, v1

    invoke-static {v13}, Lcom/microsoft/appcenter/http/HttpUtils;->createHttpsConnection(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v13

    move-object v2, v13

    .line 164
    .local v2, "httpsURLConnection":Ljavax/net/ssl/HttpsURLConnection;
    move-object v13, v2

    move-object v14, v0

    :try_start_0
    iget-object v14, v14, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->mMethod:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 165
    const/4 v13, 0x0

    move-object v3, v13

    .line 166
    .local v3, "payload":Ljava/lang/String;
    const/4 v13, 0x0

    move-object v4, v13

    .line 167
    .local v4, "binaryPayload":[B
    const/4 v13, 0x0

    move v5, v13

    .line 168
    .local v5, "shouldCompress":Z
    move-object v13, v0

    iget-object v13, v13, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->mMethod:Ljava/lang/String;

    const-string/jumbo v14, "POST"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    move v6, v13

    .line 169
    .local v6, "isPost":Z
    move v13, v6

    if-eqz v13, :cond_0

    move-object v13, v0

    iget-object v13, v13, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->mCallTemplate:Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;

    if-eqz v13, :cond_0

    .line 172
    move-object v13, v0

    iget-object v13, v13, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->mCallTemplate:Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;

    invoke-interface {v13}, Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;->buildRequestBody()Ljava/lang/String;

    move-result-object v13

    move-object v3, v13

    .line 173
    move-object v13, v3

    const-string/jumbo v14, "UTF-8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    move-object v4, v13

    .line 174
    move-object v13, v0

    iget-boolean v13, v13, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->mCompressionEnabled:Z

    if-eqz v13, :cond_2

    move-object v13, v4

    array-length v13, v13

    const/16 v14, 0x578

    if-lt v13, v14, :cond_2

    const/4 v13, 0x1

    :goto_0
    move v5, v13

    .line 177
    move-object v13, v0

    iget-object v13, v13, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->mHeaders:Ljava/util/Map;

    const-string/jumbo v14, "Content-Type"

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 178
    move-object v13, v0

    iget-object v13, v13, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->mHeaders:Ljava/util/Map;

    const-string/jumbo v14, "Content-Type"

    const-string/jumbo v15, "application/json"

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 183
    :cond_0
    move v13, v5

    if-eqz v13, :cond_1

    .line 184
    move-object v13, v0

    iget-object v13, v13, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->mHeaders:Ljava/util/Map;

    const-string/jumbo v14, "Content-Encoding"

    const-string/jumbo v15, "gzip"

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 188
    :cond_1
    move-object v13, v0

    iget-object v13, v13, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->mHeaders:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v7, v13

    :goto_1
    move-object v13, v7

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    move-object v13, v7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    move-object v8, v13

    .line 189
    .local v8, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v13, v2

    move-object v14, v8

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object v15, v8

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    goto :goto_1

    .line 174
    .end local v8    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 191
    :cond_3
    move-object v13, v0

    invoke-virtual {v13}, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v13

    if-eqz v13, :cond_4

    .line 192
    const/4 v13, 0x0

    move-object v7, v13

    .line 269
    move-object v13, v2

    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 192
    move-object v13, v7

    move-object v0, v13

    .line 261
    .end local v0    # "this":Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;
    :goto_2
    return-object v0

    .line 196
    .restart local v0    # "this":Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;
    :cond_4
    move-object v13, v0

    :try_start_1
    iget-object v13, v13, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->mCallTemplate:Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;

    if-eqz v13, :cond_5

    .line 197
    move-object v13, v0

    iget-object v13, v13, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->mCallTemplate:Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;

    move-object v14, v1

    move-object v15, v0

    iget-object v15, v15, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->mHeaders:Ljava/util/Map;

    invoke-interface {v13, v14, v15}, Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;->onBeforeCalling(Ljava/net/URL;Ljava/util/Map;)V

    .line 201
    :cond_5
    move-object v13, v4

    if-eqz v13, :cond_9

    .line 204
    invoke-static {}, Lcom/microsoft/appcenter/utils/AppCenterLog;->getLogLevel()I

    move-result v13

    const/4 v14, 0x2

    if-gt v13, v14, :cond_7

    .line 205
    move-object v13, v3

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x1000

    if-ge v13, v14, :cond_6

    .line 206
    sget-object v13, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->TOKEN_REGEX_URL_ENCODED:Ljava/util/regex/Pattern;

    move-object v14, v3

    invoke-virtual {v13, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    const-string/jumbo v14, "token=***"

    invoke-virtual {v13, v14}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v3, v13

    .line 207
    const-string/jumbo v13, "application/json"

    move-object v14, v0

    iget-object v14, v14, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->mHeaders:Ljava/util/Map;

    const-string/jumbo v15, "Content-Type"

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 208
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v3

    invoke-direct {v14, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v13

    move-object v3, v13

    .line 211
    :cond_6
    const-string/jumbo v13, "AppCenter"

    move-object v14, v3

    invoke-static {v13, v14}, Lcom/microsoft/appcenter/utils/AppCenterLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_7
    move v13, v5

    if-eqz v13, :cond_8

    .line 216
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v4

    array-length v15, v15

    invoke-direct {v14, v15}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v7, v13

    .line 217
    .local v7, "gzipBuffer":Ljava/io/ByteArrayOutputStream;
    new-instance v13, Ljava/util/zip/GZIPOutputStream;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v7

    invoke-direct {v14, v15}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v8, v13

    .line 218
    .local v8, "gzipStream":Ljava/util/zip/GZIPOutputStream;
    move-object v13, v8

    move-object v14, v4

    invoke-virtual {v13, v14}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 219
    move-object v13, v8

    invoke-virtual {v13}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 220
    move-object v13, v7

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    move-object v4, v13

    .line 224
    .end local v7    # "gzipBuffer":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    :cond_8
    move-object v13, v2

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 225
    move-object v13, v2

    move-object v14, v4

    array-length v14, v14

    invoke-virtual {v13, v14}, Ljavax/net/ssl/HttpsURLConnection;->setFixedLengthStreamingMode(I)V

    .line 226
    move-object v13, v2

    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v13

    move-object v7, v13

    .line 230
    .local v7, "out":Ljava/io/OutputStream;
    move-object v13, v0

    move-object v14, v7

    move-object v15, v4

    :try_start_2
    invoke-direct {v13, v14, v15}, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->writePayload(Ljava/io/OutputStream;[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    move-object v13, v7

    :try_start_3
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 233
    .line 235
    .end local v7    # "out":Ljava/io/OutputStream;
    :cond_9
    move-object v13, v0

    invoke-virtual {v13}, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->isCancelled()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v13

    if-eqz v13, :cond_a

    .line 236
    const/4 v13, 0x0

    move-object v7, v13

    .line 269
    move-object v13, v2

    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 236
    move-object v13, v7

    move-object v0, v13

    goto/16 :goto_2

    .line 232
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v13

    move-object v9, v13

    move-object v13, v7

    :try_start_4
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 233
    move-object v13, v9

    throw v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 269
    .end local v3    # "payload":Ljava/lang/String;
    .end local v4    # "binaryPayload":[B
    .end local v5    # "shouldCompress":Z
    .end local v6    # "isPost":Z
    .end local v7    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v13

    move-object v12, v13

    move-object v13, v2

    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 270
    move-object v13, v12

    throw v13

    .line 240
    .restart local v3    # "payload":Ljava/lang/String;
    .restart local v4    # "binaryPayload":[B
    .restart local v5    # "shouldCompress":Z
    .restart local v6    # "isPost":Z
    :cond_a
    move-object v13, v2

    :try_start_5
    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v13

    move v7, v13

    .line 241
    .local v7, "status":I
    move-object v13, v0

    move-object v14, v2

    invoke-direct {v13, v14}, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->readResponse(Ljavax/net/ssl/HttpsURLConnection;)Ljava/lang/String;

    move-result-object v13

    move-object v8, v13

    .line 242
    .local v8, "response":Ljava/lang/String;
    invoke-static {}, Lcom/microsoft/appcenter/utils/AppCenterLog;->getLogLevel()I

    move-result v13

    const/4 v14, 0x2

    if-gt v13, v14, :cond_c

    .line 243
    move-object v13, v2

    const-string/jumbo v14, "Content-Type"

    invoke-virtual {v13, v14}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    .line 245
    .local v9, "contentType":Ljava/lang/String;
    move-object v13, v9

    if-eqz v13, :cond_b

    move-object v13, v9

    const-string/jumbo v14, "text/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_b

    move-object v13, v9

    const-string/jumbo v14, "application/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 246
    :cond_b
    sget-object v13, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->TOKEN_REGEX_JSON:Ljava/util/regex/Pattern;

    move-object v14, v8

    invoke-virtual {v13, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    const-string/jumbo v14, "token\":\"***\""

    invoke-virtual {v13, v14}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 247
    .local v10, "logPayload":Ljava/lang/String;
    sget-object v13, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->REDIRECT_URI_REGEX_JSON:Ljava/util/regex/Pattern;

    move-object v14, v10

    invoke-virtual {v13, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    const-string/jumbo v14, "redirect_uri\":\"***\""

    invoke-virtual {v13, v14}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 251
    :goto_3
    const-string/jumbo v13, "AppCenter"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "HTTP response status="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " payload="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v10

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/microsoft/appcenter/utils/AppCenterLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .end local v9    # "contentType":Ljava/lang/String;
    .end local v10    # "logPayload":Ljava/lang/String;
    :cond_c
    new-instance v13, Ljava/util/HashMap;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    move-object v9, v13

    .line 254
    .local v9, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v13, v2

    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v10, v13

    :goto_4
    move-object v13, v10

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    move-object v13, v10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    move-object v11, v13

    .line 255
    .local v11, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object v13, v9

    move-object v14, v11

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v11

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 256
    goto :goto_4

    .line 249
    .end local v11    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local v9, "contentType":Ljava/lang/String;
    :cond_d
    const-string/jumbo v13, "<binary>"

    move-object v10, v13

    .restart local v10    # "logPayload":Ljava/lang/String;
    goto :goto_3

    .line 257
    .end local v10    # "logPayload":Ljava/lang/String;
    .local v9, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_e
    new-instance v13, Lcom/microsoft/appcenter/http/HttpResponse;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    invoke-direct/range {v14 .. v17}, Lcom/microsoft/appcenter/http/HttpResponse;-><init>(ILjava/lang/String;Ljava/util/Map;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v10, v13

    .line 260
    .local v10, "httpResponse":Lcom/microsoft/appcenter/http/HttpResponse;
    move v13, v7

    const/16 v14, 0xc8

    if-lt v13, v14, :cond_f

    move v13, v7

    const/16 v14, 0x12c

    if-ge v13, v14, :cond_f

    .line 261
    move-object v13, v10

    move-object v11, v13

    .line 269
    move-object v13, v2

    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 261
    move-object v13, v11

    move-object v0, v13

    goto/16 :goto_2

    .line 265
    :cond_f
    :try_start_6
    new-instance v13, Lcom/microsoft/appcenter/http/HttpException;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v10

    invoke-direct {v14, v15}, Lcom/microsoft/appcenter/http/HttpException;-><init>(Lcom/microsoft/appcenter/http/HttpResponse;)V

    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method private static getInputStream(Ljavax/net/ssl/HttpsURLConnection;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "httpsURLConnection":Ljavax/net/ssl/HttpsURLConnection;
    move-object v2, v0

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    move v1, v2

    .line 106
    .local v1, "status":I
    move v2, v1

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_0

    move v2, v1

    const/16 v3, 0x190

    if-ge v2, v3, :cond_0

    .line 107
    move-object v2, v0

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    .line 109
    .end local v0    # "httpsURLConnection":Ljavax/net/ssl/HttpsURLConnection;
    :goto_0
    return-object v0

    .restart local v0    # "httpsURLConnection":Ljavax/net/ssl/HttpsURLConnection;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method private readResponse(Ljavax/net/ssl/HttpsURLConnection;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;
    move-object v1, p1

    .local v1, "httpsURLConnection":Ljavax/net/ssl/HttpsURLConnection;
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v1

    invoke-virtual {v11}, Ljavax/net/ssl/HttpsURLConnection;->getContentLength()I

    move-result v11

    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v9

    .line 136
    .local v2, "builder":Ljava/lang/StringBuilder;
    move-object v9, v1

    invoke-static {v9}, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->getInputStream(Ljavax/net/ssl/HttpsURLConnection;)Ljava/io/InputStream;

    move-result-object v9

    move-object v3, v9

    .line 140
    .local v3, "stream":Ljava/io/InputStream;
    :try_start_0
    new-instance v9, Ljava/io/InputStreamReader;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v3

    const-string/jumbo v12, "UTF-8"

    invoke-direct {v10, v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v4, v9

    .line 141
    .local v4, "reader":Ljava/io/Reader;
    const/16 v9, 0x400

    new-array v9, v9, [C

    move-object v5, v9

    .line 143
    .local v5, "buffer":[C
    :cond_0
    move-object v9, v4

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/io/Reader;->read([C)I

    move-result v9

    move v13, v9

    move v9, v13

    move v10, v13

    move v6, v10

    .local v6, "len":I
    if-lez v9, :cond_1

    .line 144
    move-object v9, v2

    move-object v10, v5

    const/4 v11, 0x0

    move v12, v6

    invoke-virtual {v9, v10, v11, v12}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 145
    move-object v9, v0

    invoke-virtual {v9}, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 146
    .line 149
    :cond_1
    move-object v9, v2

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    move-object v7, v9

    .line 151
    move-object v9, v3

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 149
    move-object v9, v7

    move-object v0, v9

    .end local v0    # "this":Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;
    return-object v0

    .line 151
    .end local v4    # "reader":Ljava/io/Reader;
    .end local v5    # "buffer":[C
    .end local v6    # "len":I
    .restart local v0    # "this":Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v3

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 152
    move-object v9, v8

    throw v9
.end method

.method private writePayload(Ljava/io/OutputStream;[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;
    move-object v1, p1

    .local v1, "out":Ljava/io/OutputStream;
    move-object v2, p2

    .local v2, "payload":[B
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v2

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 118
    move-object v4, v1

    move-object v5, v2

    move v6, v3

    move-object v7, v2

    array-length v7, v7

    move v8, v3

    sub-int/2addr v7, v8

    const/16 v8, 0x400

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 119
    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 120
    .line 123
    :cond_0
    return-void

    .line 117
    :cond_1
    add-int/lit16 v3, v3, 0x400

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;
    move-object v1, p1

    .local v1, "params":[Ljava/lang/Void;
    const v5, -0x27c223e7

    invoke-static {v5}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 279
    move-object v5, v0

    :try_start_0
    invoke-direct {v5}, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->doHttpCall()Lcom/microsoft/appcenter/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    move-object v2, v5

    .line 283
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 279
    move-object v5, v2

    move-object v0, v5

    .line 281
    .end local v0    # "this":Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;
    :goto_0
    return-object v0

    .line 280
    .restart local v0    # "this":Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 281
    .local v2, "e":Ljava/lang/Exception;
    move-object v5, v2

    move-object v3, v5

    .line 283
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 281
    move-object v5, v3

    move-object v0, v5

    goto :goto_0

    .line 283
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    move-object v4, v5

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 284
    move-object v5, v4

    throw v5
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;
    move-object v1, p1

    .local v1, "result":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lcom/microsoft/appcenter/http/HttpResponse;

    if-nez v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Lcom/microsoft/appcenter/http/HttpException;

    if-eqz v2, :cond_1

    .line 308
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->onPostExecute(Ljava/lang/Object;)V

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->mTracker:Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask$Tracker;

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask$Tracker;->onFinish(Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;)V

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;
    move-object v1, p1

    .local v1, "result":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->mTracker:Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask$Tracker;

    move-object v4, v0

    invoke-interface {v3, v4}, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask$Tracker;->onFinish(Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;)V

    .line 295
    move-object v3, v1

    instance-of v3, v3, Ljava/lang/Exception;

    if-eqz v3, :cond_0

    .line 296
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->mServiceCallback:Lcom/microsoft/appcenter/http/ServiceCallback;

    move-object v4, v1

    check-cast v4, Ljava/lang/Exception;

    invoke-interface {v3, v4}, Lcom/microsoft/appcenter/http/ServiceCallback;->onCallFailed(Ljava/lang/Exception;)V

    .line 301
    :goto_0
    return-void

    .line 298
    :cond_0
    move-object v3, v1

    check-cast v3, Lcom/microsoft/appcenter/http/HttpResponse;

    move-object v2, v3

    .line 299
    .local v2, "response":Lcom/microsoft/appcenter/http/HttpResponse;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->mServiceCallback:Lcom/microsoft/appcenter/http/ServiceCallback;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/microsoft/appcenter/http/ServiceCallback;->onCallSucceeded(Lcom/microsoft/appcenter/http/HttpResponse;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->mTracker:Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask$Tracker;

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask$Tracker;->onStart(Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;)V

    .line 290
    return-void
.end method
