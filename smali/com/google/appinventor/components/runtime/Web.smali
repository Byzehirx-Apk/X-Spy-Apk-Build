.class public Lcom/google/appinventor/components/runtime/Web;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that provides functions for HTTP GET, POST, PUT, and DELETE requests."
    iconName = "images/web.png"
    nonVisible = true
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "json.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.WRITE_EXTERNAL_STORAGE",
        "android.permission.READ_EXTERNAL_STORAGE"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Web$CapturedProperties;,
        Lcom/google/appinventor/components/runtime/Web$a;,
        Lcom/google/appinventor/components/runtime/Web$b;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Web"

.field private static final mimeTypeToExtension:Ljava/util/Map;
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


# instance fields
.field private final activity:Landroid/app/Activity;

.field private allowCookies:Z

.field private final cookieHandler:Ljava/net/CookieHandler;

.field private requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

.field private responseFileName:Ljava/lang/String;

.field private saveResponse:Z

.field private timeout:I

.field private urlString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 172
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    .line 173
    sput-object v1, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string/jumbo v1, "application/pdf"

    const-string/jumbo v2, "pdf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 174
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string/jumbo v1, "application/zip"

    const-string/jumbo v2, "zip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 175
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string/jumbo v1, "audio/mpeg"

    const-string/jumbo v2, "mpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 176
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string/jumbo v1, "audio/mp3"

    const-string/jumbo v2, "mp3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 177
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string/jumbo v1, "audio/mp4"

    const-string/jumbo v2, "mp4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 178
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string/jumbo v1, "image/gif"

    const-string/jumbo v2, "gif"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 179
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string/jumbo v1, "image/jpeg"

    const-string/jumbo v2, "jpg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 180
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string/jumbo v1, "image/png"

    const-string/jumbo v2, "png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 181
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string/jumbo v1, "image/tiff"

    const-string/jumbo v2, "tiff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 182
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string/jumbo v1, "text/plain"

    const-string/jumbo v2, "txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 183
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string/jumbo v1, "text/html"

    const-string/jumbo v2, "html"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 184
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string/jumbo v1, "text/xml"

    const-string/jumbo v2, "xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 186
    return-void
.end method

.method protected constructor <init>()V
    .locals 5

    .prologue
    .line 216
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 191
    move-object v1, v0

    const-string/jumbo v2, ""

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    .line 193
    move-object v1, v0

    new-instance v2, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Web;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 195
    move-object v1, v0

    const-string/jumbo v2, ""

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Web;->responseFileName:Ljava/lang/String;

    .line 196
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/appinventor/components/runtime/Web;->timeout:I

    .line 217
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Web;->activity:Landroid/app/Activity;

    .line 218
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    .line 219
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .prologue
    .line 204
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 191
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    .line 193
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Web;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 195
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Web;->responseFileName:Ljava/lang/String;

    .line 196
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/Web;->timeout:I

    .line 205
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Web;->activity:Landroid/app/Activity;

    .line 207
    move-object v2, v0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_0

    .line 208
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->newCookieManager()Ljava/net/CookieHandler;

    move-result-object v3

    :goto_0
    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    .line 210
    return-void

    .line 208
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Web;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Web;)Z
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Web;->allowCookies:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Web;)Z
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Web;->saveResponse:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Web;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Web;->responseFileName:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/Web;)I
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Web;->timeout:I

    move v0, v1

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/Web;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Web;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/Web$b;
        }
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Web;->processRequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/Web;)Ljava/net/CookieHandler;
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Web;->performRequest(Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;
    .locals 12

    .prologue
    .line 1244
    move-object v0, p0

    move-object v1, p1

    :try_start_0
    new-instance v3, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;-><init>(Lcom/google/appinventor/components/runtime/Web;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/appinventor/components/runtime/Web$b; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v3

    .line 1251
    :goto_0
    return-object v0

    .line 1246
    :catch_0
    move-exception v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    move-object v5, v1

    const/16 v6, 0x455

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1250
    .line 1251
    :goto_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 1248
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 1249
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    iget v6, v6, Lcom/google/appinventor/components/runtime/Web$b;->fAlnFrzRyM2sCUVmNXgAumx383He1buRJXamXMT9T0hNFh1WxfF7xQU1M3W9TIGM:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v2

    iget v10, v10, Lcom/google/appinventor/components/runtime/Web$b;->jsy7Kz77rNyAY3JWsGLNrUoUOR8HajCK4Ef1UopjrJy4hdX7ElFJvGzBTGAF3HB:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
        }
    .end annotation

    .prologue
    .line 1163
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1164
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getExternalFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    move-object v0, v3

    .line 1178
    :goto_0
    return-object v0

    .line 1170
    :cond_0
    move-object v3, v2

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    move v6, v3

    move v3, v6

    move v4, v6

    .line 1171
    move v1, v4

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 1172
    move-object v3, v2

    const/4 v4, 0x0

    move v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1174
    :cond_1
    sget-object v3, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 1175
    move-object v1, v4

    if-nez v3, :cond_2

    .line 1176
    const-string/jumbo v3, "tmp"

    move-object v1, v3

    .line 1178
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getDownloadFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method static decodeJsonText(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 829
    move-object v0, p0

    move-object v1, v0

    :try_start_0
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v0, v1

    return-object v0

    .line 831
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "jsonText is not a legal JSON value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getConnectionStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .prologue
    .line 1151
    move-object v0, p0

    move-object v1, v0

    :try_start_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v0, v1

    .line 1156
    :goto_0
    return-object v0

    .line 1153
    :catch_0
    move-exception v1

    throw v1

    .line 1156
    :catch_1
    move-exception v1

    move-object v1, v0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method private static getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1099
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 1100
    move-object v1, v5

    if-nez v4, :cond_0

    .line 1101
    const-string/jumbo v4, "UTF-8"

    move-object v1, v4

    .line 1103
    :cond_0
    new-instance v4, Ljava/io/InputStreamReader;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Web;->getConnectionStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v6

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v1, v4

    .line 1105
    move-object v4, v0

    :try_start_0
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    move v8, v4

    move v4, v8

    move v5, v8

    .line 1106
    move v0, v5

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move v6, v0

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    move-object v0, v4

    .line 1109
    const/16 v4, 0x400

    new-array v4, v4, [C

    move-object v2, v4

    .line 1111
    :goto_1
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    move v8, v4

    move v4, v8

    move v5, v8

    move v3, v5

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 1112
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_1

    .line 1106
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1116
    :catchall_0
    move-exception v4

    move-object v0, v4

    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 1117
    move-object v4, v0

    throw v4

    .line 1114
    :cond_2
    move-object v4, v0

    :try_start_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    move-object v0, v4

    .line 1116
    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 1114
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method private static getResponseType(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1080
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    .line 1081
    move-object v0, v2

    if-eqz v1, :cond_0

    move-object v1, v0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, ""

    move-object v0, v1

    goto :goto_0
.end method

.method private static openConnection(Lcom/google/appinventor/components/runtime/Web$CapturedProperties;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassCastException;,
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 999
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    .line 1000
    move-object v2, v7

    move-object v7, v0

    iget v7, v7, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->timeout:I

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1001
    move-object v6, v2

    move-object v7, v0

    iget v7, v7, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->timeout:I

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1003
    move-object v6, v1

    const-string/jumbo v7, "PUT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v1

    const-string/jumbo v7, "DELETE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1006
    :cond_0
    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1010
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->requestHeaders:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v6

    :goto_0
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    .line 1011
    move-object v3, v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v4, v6

    .line 1012
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_1
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v5, v6

    .line 1013
    move-object v6, v2

    move-object v7, v4

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    goto :goto_1

    .line 1015
    :cond_2
    goto :goto_0

    .line 1018
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->cookies:Ljava/util/Map;

    if-eqz v6, :cond_5

    .line 1019
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->cookies:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v6

    :goto_2
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    .line 1020
    move-object v3, v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v4, v6

    .line 1021
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_3
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v5, v6

    .line 1022
    move-object v6, v2

    move-object v7, v4

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    goto :goto_3

    .line 1024
    :cond_4
    goto :goto_2

    .line 1027
    :cond_5
    move-object v6, v2

    move-object v0, v6

    return-object v0
.end method

.method private performRequest(Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 928
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v6, v1

    move-object v7, v4

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/Web;->openConnection(Lcom/google/appinventor/components/runtime/Web$CapturedProperties;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v6

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    .line 929
    move-object v4, v7

    if-eqz v6, :cond_3

    .line 931
    move-object v6, v2

    if-eqz v6, :cond_1

    .line 932
    move-object v6, v4

    move-object v7, v2

    :try_start_0
    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/Web;->writeRequestData(Ljava/net/HttpURLConnection;[B)V

    .line 938
    :cond_0
    :goto_0
    move-object v6, v4

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    move v2, v6

    .line 939
    move-object v6, v4

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Web;->getResponseType(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 940
    move-object v6, v0

    move-object v7, v4

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/Web;->processResponseCookies(Ljava/net/HttpURLConnection;)V

    .line 942
    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/appinventor/components/runtime/Web;->saveResponse:Z

    if-eqz v6, :cond_2

    .line 943
    move-object v6, v0

    move-object v7, v4

    move-object v8, v1

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->responseFileName:Ljava/lang/String;

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Web;->saveResponseContent(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 947
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Web;->activity:Landroid/app/Activity;

    new-instance v7, Lcom/google/appinventor/components/runtime/Web$6;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v0

    move-object v10, v1

    move v11, v2

    move-object v12, v3

    move-object v13, v5

    invoke-direct/range {v8 .. v13}, Lcom/google/appinventor/components/runtime/Web$6;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    .line 981
    :goto_1
    move-object v6, v4

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 982
    .line 984
    :goto_2
    return-void

    .line 933
    :cond_1
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 934
    move-object v6, v0

    move-object v7, v4

    move-object v8, v3

    :try_start_1
    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/Web;->writeRequestFile(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 973
    :catch_0
    move-exception v6

    move-object v6, v0

    :try_start_2
    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Web;->activity:Landroid/app/Activity;

    new-instance v7, Lcom/google/appinventor/components/runtime/Web$8;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v0

    move-object v10, v1

    invoke-direct {v8, v9, v10}, Lcom/google/appinventor/components/runtime/Web$8;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 979
    new-instance v6, Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    invoke-direct {v7}, Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException;-><init>()V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 981
    :catchall_0
    move-exception v6

    move-object v1, v6

    move-object v6, v4

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 982
    move-object v6, v1

    throw v6

    .line 956
    :cond_2
    move-object v6, v4

    :try_start_3
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Web;->getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    move-object v5, v6

    .line 959
    .line 963
    :goto_3
    move-object v6, v0

    :try_start_4
    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Web;->activity:Landroid/app/Activity;

    new-instance v7, Lcom/google/appinventor/components/runtime/Web$7;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v0

    move-object v10, v1

    move v11, v2

    move-object v12, v3

    move-object v13, v5

    invoke-direct/range {v8 .. v13}, Lcom/google/appinventor/components/runtime/Web$7;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 957
    :catch_1
    move-exception v6

    move-object v5, v6

    .line 958
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v6

    move-object v5, v6

    goto :goto_3

    .line 984
    :cond_3
    goto :goto_2
.end method

.method private static processRequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/Web$b;
        }
    .end annotation

    .prologue
    .line 1188
    move-object v0, p0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v8

    move-object v1, v8

    .line 1189
    const/4 v8, 0x0

    move v2, v8

    :goto_0
    move v8, v2

    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 1190
    move-object v8, v0

    move v9, v2

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v8

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    .line 1192
    move-object v3, v9

    instance-of v8, v8, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v8, :cond_3

    .line 1193
    move-object v8, v3

    check-cast v8, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    .line 1194
    move-object v3, v9

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 1196
    move-object v8, v3

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 1198
    move-object v8, v3

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v8

    move-object v3, v8

    .line 1202
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    move-object v5, v8

    .line 1207
    move-object v8, v3

    instance-of v8, v8, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v8, :cond_1

    .line 1209
    move-object v8, v3

    check-cast v8, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v3, v8

    .line 1210
    const/4 v8, 0x0

    move v6, v8

    :goto_1
    move v8, v6

    move-object v9, v3

    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 1211
    move-object v8, v3

    move v9, v6

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    .line 1212
    move-object v8, v5

    move-object v9, v7

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 1210
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1214
    .line 1220
    :cond_0
    :goto_2
    move-object v8, v1

    move-object v9, v4

    move-object v10, v5

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1221
    .line 1189
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1217
    :cond_1
    move-object v8, v5

    move-object v9, v3

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_2

    .line 1223
    :cond_2
    new-instance v8, Lcom/google/appinventor/components/runtime/Web$b;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/16 v10, 0x457

    move v11, v2

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    invoke-direct {v9, v10, v11}, Lcom/google/appinventor/components/runtime/Web$b;-><init>(II)V

    throw v8

    .line 1228
    :cond_3
    new-instance v8, Lcom/google/appinventor/components/runtime/Web$b;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/16 v10, 0x456

    move v11, v2

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    invoke-direct {v9, v10, v11}, Lcom/google/appinventor/components/runtime/Web$b;-><init>(II)V

    throw v8

    .line 1232
    :cond_4
    move-object v8, v1

    move-object v0, v8

    return-object v0
.end method

.method private processResponseCookies(Ljava/net/HttpURLConnection;)V
    .locals 6

    .prologue
    .line 1085
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/Web;->allowCookies:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    if-eqz v3, :cond_0

    .line 1087
    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    move-object v2, v3

    .line 1088
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    move-object v4, v1

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1093
    .line 1095
    :goto_0
    return-void

    .line 1093
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    .line 1095
    :cond_0
    goto :goto_0
.end method

.method private requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    .prologue
    .line 619
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v6, v0

    move-object v7, v3

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/Web;->capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    move-result-object v6

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    .line 620
    move-object v5, v7

    if-nez v6, :cond_0

    .line 622
    .line 658
    :goto_0
    return-void

    .line 625
    :cond_0
    new-instance v6, Lcom/google/appinventor/components/runtime/Web$5;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v0

    move-object v9, v2

    move-object v10, v1

    move-object v11, v3

    move-object v12, v5

    move-object v13, v4

    invoke-direct/range {v7 .. v13}, Lcom/google/appinventor/components/runtime/Web$5;-><init>(Lcom/google/appinventor/components/runtime/Web;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 658
    goto :goto_0
.end method

.method private saveResponseContent(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1122
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/Web;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    move-object v2, v5

    .line 1124
    new-instance v5, Ljava/io/BufferedInputStream;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/Web;->getConnectionStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v7

    const/16 v8, 0x1000

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v1, v5

    .line 1126
    :try_start_0
    new-instance v5, Ljava/io/BufferedOutputStream;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/io/FileOutputStream;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v2

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v8, 0x1000

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, v5

    .line 1130
    :goto_0
    move-object v5, v1

    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->read()I

    move-result v5

    move v10, v5

    move v5, v10

    move v6, v10

    .line 1131
    move v4, v6

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 1134
    move-object v5, v3

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1135
    goto :goto_0

    .line 1137
    :cond_0
    move-object v5, v3

    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1138
    .line 1140
    move-object v5, v1

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 1141
    .line 1143
    move-object v5, v2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    return-object v0

    .line 1137
    :catchall_0
    move-exception v5

    move-object v2, v5

    move-object v5, v3

    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 1138
    move-object v5, v2

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1140
    :catchall_1
    move-exception v5

    move-object v2, v5

    move-object v5, v1

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 1141
    move-object v5, v2

    throw v5
.end method

.method private static writeRequestData(Ljava/net/HttpURLConnection;[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1036
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1038
    move-object v2, v0

    move-object v3, v1

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 1039
    new-instance v2, Ljava/io/BufferedOutputStream;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v2

    .line 1041
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    :try_start_0
    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 1042
    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1044
    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 1045
    return-void

    .line 1044
    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 1045
    move-object v2, v1

    throw v2
.end method

.method private writeRequestFile(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1052
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Ljava/io/BufferedInputStream;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v2

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v4

    .line 1059
    move-object v4, v1

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1060
    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 1061
    new-instance v4, Ljava/io/BufferedOutputStream;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, v4

    .line 1064
    :goto_0
    move-object v4, v2

    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    move v8, v4

    move v4, v8

    move v5, v8

    .line 1065
    move v3, v5

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 1068
    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 1069
    goto :goto_0

    .line 1070
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1072
    move-object v4, v1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1073
    .line 1075
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 1076
    return-void

    .line 1072
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 1073
    move-object v4, v3

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1075
    :catchall_1
    move-exception v4

    move-object v1, v4

    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 1076
    move-object v4, v1

    throw v4
.end method


# virtual methods
.method public AllowCookies(Z)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "false"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 286
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Web;->allowCookies:Z

    .line 287
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    if-nez v2, :cond_0

    .line 288
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    const-string/jumbo v4, "AllowCookies"

    const/4 v5, 0x4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 291
    :cond_0
    return-void
.end method

.method public AllowCookies()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the cookies from a response should be saved and used in subsequent requests. Cookies are only supported on Android version 2.3 or greater."
    .end annotation

    .prologue
    .line 276
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Web;->allowCookies:Z

    move v0, v1

    return v0
.end method

.method public BuildRequestData(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 710
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    :try_start_0
    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Web;->buildRequestData(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/Web$a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 713
    :goto_0
    return-object v0

    .line 711
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 712
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    const-string/jumbo v4, "BuildRequestData"

    move-object v5, v1

    iget v5, v5, Lcom/google/appinventor/components/runtime/Web$a;->fAlnFrzRyM2sCUVmNXgAumx383He1buRJXamXMT9T0hNFh1WxfF7xQU1M3W9TIGM:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    iget v9, v9, Lcom/google/appinventor/components/runtime/Web$a;->jsy7Kz77rNyAY3JWsGLNrUoUOR8HajCK4Ef1UopjrJy4hdX7ElFJvGzBTGAF3HB:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 713
    const-string/jumbo v2, ""

    move-object v0, v2

    goto :goto_0
.end method

.method public ClearCookies()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clears all cookies for this Web component."
    .end annotation

    .prologue
    .line 363
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    if-eqz v1, :cond_0

    .line 364
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->clearCookies(Ljava/net/CookieHandler;)Z

    move-result v1

    .line 369
    :goto_0
    return-void

    .line 366
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v2, v0

    const-string/jumbo v3, "ClearCookies"

    const/4 v4, 0x4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 369
    goto :goto_0
.end method

.method public Delete()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 575
    move-object v0, p0

    move-object v2, v0

    const-string/jumbo v3, "Delete"

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Web;->capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    move-result-object v2

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    .line 576
    move-object v1, v3

    if-nez v2, :cond_0

    .line 578
    .line 598
    :goto_0
    return-void

    .line 581
    :cond_0
    new-instance v2, Lcom/google/appinventor/components/runtime/Web$4;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Web$4;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;)V

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 598
    goto :goto_0
.end method

.method public Get()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 384
    move-object v0, p0

    move-object v2, v0

    const-string/jumbo v3, "Get"

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Web;->capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    move-result-object v2

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    .line 385
    move-object v1, v3

    if-nez v2, :cond_0

    .line 387
    .line 410
    :goto_0
    return-void

    .line 390
    :cond_0
    new-instance v2, Lcom/google/appinventor/components/runtime/Web$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Web$1;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;)V

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 410
    goto :goto_0
.end method

.method public GotFile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 686
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    const-string/jumbo v6, "GotFile"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    move-object v10, v3

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x3

    move-object v10, v4

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v5

    .line 687
    return-void
.end method

.method public GotText(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 671
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    const-string/jumbo v6, "GotText"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    move-object v10, v3

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x3

    move-object v10, v4

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v5

    .line 673
    return-void
.end method

.method public HtmlTextDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Decodes the given HTML text value. HTML character entities such as &amp;amp;, &amp;lt;, &amp;gt;, &amp;apos;, and &amp;quot; are changed to &amp;, &lt;, &gt;, &#39;, and &quot;. Entities such as &amp;#xhhhh, and &amp;#nnnn are changed to the appropriate characters."
    .end annotation

    .prologue
    .line 894
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    :try_start_0
    invoke-static {v2}, Lcom/google/appinventor/components/common/HtmlEntities;->decodeHtmlText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 898
    :goto_0
    return-object v0

    .line 896
    :catch_0
    move-exception v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    const-string/jumbo v4, "HtmlTextDecode"

    const/16 v5, 0x452

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 898
    const-string/jumbo v2, ""

    move-object v0, v2

    goto :goto_0
.end method

.method public JsonTextDecode(Ljava/lang/String;)Ljava/lang/Object;
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 811
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    :try_start_0
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Web;->decodeJsonText(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 815
    :goto_0
    return-object v0

    .line 813
    :catch_0
    move-exception v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    const-string/jumbo v4, "JsonTextDecode"

    const/16 v5, 0x451

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 815
    const-string/jumbo v2, ""

    move-object v0, v2

    goto :goto_0
.end method

.method public PostFile(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP POST request using the Url property and data from the specified file.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    .prologue
    .line 461
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string/jumbo v4, "PostFile"

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/Web;->capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    move-result-object v3

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    .line 462
    move-object v2, v4

    if-nez v3, :cond_0

    .line 464
    .line 485
    :goto_0
    return-void

    .line 467
    :cond_0
    new-instance v3, Lcom/google/appinventor/components/runtime/Web$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v2

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Web$2;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 485
    goto :goto_0
.end method

.method public PostText(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP POST request using the Url property and the specified text.<br>The characters of the text are encoded using UTF-8 encoding.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The responseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    .prologue
    .line 425
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "UTF-8"

    const-string/jumbo v5, "PostText"

    const-string/jumbo v6, "POST"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Web;->requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method public PostTextWithEncoding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP POST request using the Url property and the specified text.<br>The characters of the text are encoded using the given encoding.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    .prologue
    .line 443
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const-string/jumbo v6, "PostTextWithEncoding"

    const-string/jumbo v7, "POST"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Web;->requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method public PutFile(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP PUT request using the Url property and data from the specified file.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    .prologue
    .line 536
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string/jumbo v4, "PutFile"

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/Web;->capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    move-result-object v3

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    .line 537
    move-object v2, v4

    if-nez v3, :cond_0

    .line 539
    .line 560
    :goto_0
    return-void

    .line 542
    :cond_0
    new-instance v3, Lcom/google/appinventor/components/runtime/Web$3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v2

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Web$3;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 560
    goto :goto_0
.end method

.method public PutText(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP PUT request using the Url property and the specified text.<br>The characters of the text are encoded using UTF-8 encoding.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The responseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    .prologue
    .line 500
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "UTF-8"

    const-string/jumbo v5, "PutText"

    const-string/jumbo v6, "PUT"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Web;->requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    return-void
.end method

.method public PutTextWithEncoding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP PUT request using the Url property and the specified text.<br>The characters of the text are encoded using the given encoding.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    .prologue
    .line 518
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const-string/jumbo v6, "PutTextWithEncoding"

    const-string/jumbo v7, "PUT"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Web;->requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method public RequestHeaders()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The request headers, as a list of two-element sublists. The first element of each sublist represents the request header field name. The second element of each sublist represents the request header field values, either a single value or a list containing multiple values."
    .end annotation

    .prologue
    .line 249
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Web;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v0, v1

    return-object v0
.end method

.method public RequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 262
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    :try_start_0
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Web;->processRequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;

    move-result-object v2

    .line 263
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Web;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/Web$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .line 267
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 265
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    const-string/jumbo v4, "RequestHeaders"

    move-object v5, v1

    iget v5, v5, Lcom/google/appinventor/components/runtime/Web$b;->fAlnFrzRyM2sCUVmNXgAumx383He1buRJXamXMT9T0hNFh1WxfF7xQU1M3W9TIGM:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    iget v9, v9, Lcom/google/appinventor/components/runtime/Web$b;->jsy7Kz77rNyAY3JWsGLNrUoUOR8HajCK4Ef1UopjrJy4hdX7ElFJvGzBTGAF3HB:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 267
    goto :goto_0
.end method

.method public ResponseFileName()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The name of the file where the response should be saved. If SaveResponse is true and ResponseFileName is empty, then a new file name will be generated."
    .end annotation

    .prologue
    .line 321
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Web;->responseFileName:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public ResponseFileName(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 333
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Web;->responseFileName:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public SaveResponse(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "false"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 309
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Web;->saveResponse:Z

    .line 310
    return-void
.end method

.method public SaveResponse()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the response should be saved in a file."
    .end annotation

    .prologue
    .line 299
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Web;->saveResponse:Z

    move v0, v1

    return v0
.end method

.method public TimedOut(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 697
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "TimedOut"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 698
    return-void
.end method

.method public Timeout()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The number of milliseconds that a web request will wait for a response before giving up. If set to 0, then there is no time limit on how long the request will wait."
    .end annotation

    .prologue
    .line 344
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Web;->timeout:I

    move v0, v1

    return v0
.end method

.method public Timeout(I)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 355
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-gez v2, :cond_0

    .line 356
    new-instance v2, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Web Timeout must be a non-negative integer."

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 358
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Web;->timeout:I

    .line 359
    return-void
.end method

.method public UriDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 781
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    :try_start_0
    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 787
    :goto_0
    return-object v0

    .line 782
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 786
    const-string/jumbo v2, "Web"

    const-string/jumbo v3, "UTF-8 is unsupported?"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 787
    const-string/jumbo v2, ""

    move-object v0, v2

    goto :goto_0
.end method

.method public UriEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 761
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    :try_start_0
    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 767
    :goto_0
    return-object v0

    .line 762
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 766
    const-string/jumbo v2, "Web"

    const-string/jumbo v3, "UTF-8 is unsupported?"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 767
    const-string/jumbo v2, ""

    move-object v0, v2

    goto :goto_0
.end method

.method public Url()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The URL for the web request."
    .end annotation

    .prologue
    .line 227
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public Url(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 237
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public XMLTextDecode(Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Decodes the given XML string to produce a list structure.  See the App Inventor documentation on \"Other topics, notes, and details\" for information."
    .end annotation

    .prologue
    .line 863
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    :try_start_0
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->toJSONObject(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Web;->JsonTextDecode(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 872
    :goto_0
    return-object v0

    .line 864
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 868
    const-string/jumbo v2, "Exception in XMLTextDecode"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 869
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    const-string/jumbo v4, "XMLTextDecode"

    const/16 v5, 0x451

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v1

    .line 870
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 869
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 872
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method buildRequestData(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/Web$a;
        }
    .end annotation

    .prologue
    .line 727
    move-object v0, p0

    move-object v1, p1

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v7

    .line 728
    const-string/jumbo v7, ""

    move-object v3, v7

    .line 729
    const/4 v7, 0x0

    move v4, v7

    :goto_0
    move v7, v4

    move-object v8, v1

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 730
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    .line 732
    move-object v5, v8

    instance-of v7, v7, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v7, :cond_1

    .line 733
    move-object v7, v5

    check-cast v7, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    .line 734
    move-object v5, v8

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 736
    move-object v7, v5

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 738
    move-object v7, v5

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 739
    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/Web;->UriEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/Web;->UriEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 740
    .line 747
    const-string/jumbo v7, "&"

    move-object v3, v7

    .line 729
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 741
    :cond_0
    new-instance v7, Lcom/google/appinventor/components/runtime/Web$a;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/16 v9, 0x459

    move v10, v4

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-direct {v8, v9, v10}, Lcom/google/appinventor/components/runtime/Web$a;-><init>(II)V

    throw v7

    .line 745
    :cond_1
    new-instance v7, Lcom/google/appinventor/components/runtime/Web$a;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/16 v9, 0x458

    move v10, v4

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-direct {v8, v9, v10}, Lcom/google/appinventor/components/runtime/Web$a;-><init>(II)V

    throw v7

    .line 749
    :cond_2
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method
