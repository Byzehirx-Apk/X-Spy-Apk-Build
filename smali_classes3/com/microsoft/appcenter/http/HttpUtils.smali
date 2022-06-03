.class public Lcom/microsoft/appcenter/http/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final API_KEY_PATTERN:Ljava/util/regex/Pattern;

.field private static final CONNECTION_ISSUE_PATTERN:Ljava/util/regex/Pattern;

.field public static final CONNECT_TIMEOUT:I = 0x2710

.field static final MAX_CHARACTERS_DISPLAYED_FOR_SECRET:I = 0x8
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final READ_BUFFER_SIZE:I = 0x400

.field public static final READ_TIMEOUT:I = 0x2710

.field private static final RECOVERABLE_EXCEPTIONS:[Ljava/lang/Class;

.field public static final THREAD_STATS_TAG:I = -0x27c223e7

.field private static final TOKEN_VALUE_PATTERN:Ljava/util/regex/Pattern;

.field public static final WRITE_BUFFER_SIZE:I = 0x400


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 70
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-class v3, Ljava/io/EOFException;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-class v3, Ljava/io/InterruptedIOException;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-class v3, Ljava/net/SocketException;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-class v3, Ljava/net/UnknownHostException;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-class v3, Ljava/util/concurrent/RejectedExecutionException;

    aput-object v3, v1, v2

    sput-object v0, Lcom/microsoft/appcenter/http/HttpUtils;->RECOVERABLE_EXCEPTIONS:[Ljava/lang/Class;

    .line 80
    const-string/jumbo v0, "connection (time|reset|abort)|failure in ssl library, usually a protocol error|anchor for certification path not found"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/microsoft/appcenter/http/HttpUtils;->CONNECTION_ISSUE_PATTERN:Ljava/util/regex/Pattern;

    .line 85
    const-string/jumbo v0, ":[^\"]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/microsoft/appcenter/http/HttpUtils;->TOKEN_VALUE_PATTERN:Ljava/util/regex/Pattern;

    .line 90
    const-string/jumbo v0, "-[^,]+(,|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/microsoft/appcenter/http/HttpUtils;->API_KEY_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method public static createHttpClient(Landroid/content/Context;)Lcom/microsoft/appcenter/http/HttpClient;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/http/HttpUtils;->createHttpClient(Landroid/content/Context;Z)Lcom/microsoft/appcenter/http/HttpClient;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method public static createHttpClient(Landroid/content/Context;Z)Lcom/microsoft/appcenter/http/HttpClient;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "compressionEnabled":Z
    new-instance v2, Lcom/microsoft/appcenter/http/HttpClientRetryer;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move v5, v1

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/http/HttpUtils;->createHttpClientWithoutRetryer(Landroid/content/Context;Z)Lcom/microsoft/appcenter/http/HttpClient;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/microsoft/appcenter/http/HttpClientRetryer;-><init>(Lcom/microsoft/appcenter/http/HttpClient;)V

    move-object v0, v2

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method public static createHttpClientWithoutRetryer(Landroid/content/Context;Z)Lcom/microsoft/appcenter/http/HttpClient;
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "compressionEnabled":Z
    new-instance v4, Lcom/microsoft/appcenter/http/DefaultHttpClient;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move v6, v1

    invoke-direct {v5, v6}, Lcom/microsoft/appcenter/http/DefaultHttpClient;-><init>(Z)V

    move-object v2, v4

    .line 203
    .local v2, "httpClient":Lcom/microsoft/appcenter/http/HttpClient;
    move-object v4, v0

    invoke-static {v4}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->getSharedInstance(Landroid/content/Context;)Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    move-result-object v4

    move-object v3, v4

    .line 204
    .local v3, "networkStateHelper":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    new-instance v4, Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;-><init>(Lcom/microsoft/appcenter/http/HttpClient;Lcom/microsoft/appcenter/utils/NetworkStateHelper;)V

    move-object v2, v4

    .line 205
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method public static createHttpsConnection(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 7
    .param p0    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "url":Ljava/net/URL;
    const-string/jumbo v3, "https"

    move-object v4, v0

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 218
    new-instance v3, Ljava/io/IOException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "App Center support only HTTPS connection."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 220
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    move-object v1, v3

    .line 222
    .local v1, "urlConnection":Ljava/net/URLConnection;
    move-object v3, v1

    instance-of v3, v3, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v3, :cond_2

    .line 223
    move-object v3, v1

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v3

    .line 241
    .local v2, "httpsURLConnection":Ljavax/net/ssl/HttpsURLConnection;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-gt v3, v4, :cond_1

    .line 242
    move-object v3, v2

    new-instance v4, Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;-><init>()V

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 246
    :cond_1
    move-object v3, v2

    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 247
    move-object v3, v2

    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 248
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "url":Ljava/net/URL;
    return-object v0

    .line 225
    .end local v2    # "httpsURLConnection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v0    # "url":Ljava/net/URL;
    :cond_2
    new-instance v3, Ljava/io/IOException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "App Center supports only HTTPS connection."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static hideApiKeys(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "apiKeys":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v4

    .line 165
    .local v1, "buffer":Ljava/lang/StringBuilder;
    sget-object v4, Lcom/microsoft/appcenter/http/HttpUtils;->API_KEY_PATTERN:Ljava/util/regex/Pattern;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    move-object v2, v4

    .line 166
    .local v2, "matcher":Ljava/util/regex/Matcher;
    const/4 v4, 0x0

    move v3, v4

    .line 167
    .local v3, "lastEnd":I
    :goto_0
    move-object v4, v2

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 168
    move-object v4, v1

    move-object v5, v0

    move v6, v3

    move-object v7, v2

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 169
    move-object v4, v1

    const-string/jumbo v5, "-***"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 172
    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 173
    move-object v4, v2

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    move v3, v4

    goto :goto_0

    .line 175
    :cond_0
    move v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 176
    move-object v4, v1

    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 178
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "apiKeys":Ljava/lang/String;
    return-object v0
.end method

.method public static hideSecret(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "secret":Ljava/lang/String;
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-lt v4, v5, :cond_0

    const/16 v4, 0x8

    :goto_0
    sub-int/2addr v3, v4

    move v1, v3

    .line 150
    .local v1, "hidingEndIndex":I
    move v3, v1

    new-array v3, v3, [C

    move-object v2, v3

    .line 151
    .local v2, "fill":[C
    move-object v3, v2

    const/16 v4, 0x2a

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([CC)V

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/String;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "secret":Ljava/lang/String;
    return-object v0

    .line 149
    .end local v1    # "hidingEndIndex":I
    .end local v2    # "fill":[C
    .restart local v0    # "secret":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static hideTickets(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "tickets":Ljava/lang/String;
    sget-object v1, Lcom/microsoft/appcenter/http/HttpUtils;->TOKEN_VALUE_PATTERN:Ljava/util/regex/Pattern;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string/jumbo v2, ":***"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "tickets":Ljava/lang/String;
    return-object v0
.end method

.method public static isRecoverableError(Ljava/lang/Throwable;)Z
    .locals 9

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "t":Ljava/lang/Throwable;
    move-object v6, v0

    instance-of v6, v6, Lcom/microsoft/appcenter/http/HttpException;

    if-eqz v6, :cond_2

    .line 106
    move-object v6, v0

    check-cast v6, Lcom/microsoft/appcenter/http/HttpException;

    move-object v1, v6

    .line 107
    .local v1, "exception":Lcom/microsoft/appcenter/http/HttpException;
    move-object v6, v1

    invoke-virtual {v6}, Lcom/microsoft/appcenter/http/HttpException;->getHttpResponse()Lcom/microsoft/appcenter/http/HttpResponse;

    move-result-object v6

    invoke-virtual {v6}, Lcom/microsoft/appcenter/http/HttpResponse;->getStatusCode()I

    move-result v6

    move v2, v6

    .line 108
    .local v2, "code":I
    move v6, v2

    const/16 v7, 0x1f4

    if-ge v6, v7, :cond_0

    move v6, v2

    const/16 v7, 0x198

    if-eq v6, v7, :cond_0

    move v6, v2

    const/16 v7, 0x1ad

    if-ne v6, v7, :cond_1

    :cond_0
    const/4 v6, 0x1

    :goto_0
    move v0, v6

    .line 137
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v2    # "code":I
    .local v1, "cause":Ljava/lang/Throwable;
    :goto_1
    return v0

    .line 108
    .restart local v0    # "t":Ljava/lang/Throwable;
    .local v1, "exception":Lcom/microsoft/appcenter/http/HttpException;
    .restart local v2    # "code":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 112
    .end local v1    # "exception":Lcom/microsoft/appcenter/http/HttpException;
    .end local v2    # "code":I
    :cond_2
    sget-object v6, Lcom/microsoft/appcenter/http/HttpUtils;->RECOVERABLE_EXCEPTIONS:[Ljava/lang/Class;

    move-object v1, v6

    move-object v6, v1

    array-length v6, v6

    move v2, v6

    const/4 v6, 0x0

    move v3, v6

    :goto_2
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_4

    move-object v6, v1

    move v7, v3

    aget-object v6, v6, v7

    move-object v4, v6

    .line 113
    .local v4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v6, v4

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 114
    const/4 v6, 0x1

    move v0, v6

    goto :goto_1

    .line 112
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 119
    .end local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    move-object v1, v6

    .line 120
    .local v1, "cause":Ljava/lang/Throwable;
    move-object v6, v1

    if-eqz v6, :cond_6

    .line 121
    sget-object v6, Lcom/microsoft/appcenter/http/HttpUtils;->RECOVERABLE_EXCEPTIONS:[Ljava/lang/Class;

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_3
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_6

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 122
    .local v5, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 123
    const/4 v6, 0x1

    move v0, v6

    goto :goto_1

    .line 121
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 129
    .end local v5    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    move-object v6, v0

    instance-of v6, v6, Ljavax/net/ssl/SSLException;

    if-eqz v6, :cond_7

    .line 130
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 133
    .local v2, "message":Ljava/lang/String;
    move-object v6, v2

    if-eqz v6, :cond_7

    sget-object v6, Lcom/microsoft/appcenter/http/HttpUtils;->CONNECTION_ISSUE_PATTERN:Ljava/util/regex/Pattern;

    move-object v7, v2

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 134
    const/4 v6, 0x1

    move v0, v6

    goto :goto_1

    .line 137
    .end local v2    # "message":Ljava/lang/String;
    :cond_7
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1
.end method
