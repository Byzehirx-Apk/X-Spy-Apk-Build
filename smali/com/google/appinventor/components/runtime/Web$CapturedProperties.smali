.class Lcom/google/appinventor/components/runtime/Web$CapturedProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Web;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CapturedProperties"
.end annotation


# instance fields
.field final allowCookies:Z

.field final cookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final responseFileName:Ljava/lang/String;

.field final saveResponse:Z

.field final timeout:I

.field final url:Ljava/net/URL;

.field final urlString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Web;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Lcom/google/appinventor/components/runtime/Web$b;
        }
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 146
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Web;->access$000(Lcom/google/appinventor/components/runtime/Web;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->urlString:Ljava/lang/String;

    .line 147
    move-object v3, v0

    new-instance v4, Ljava/net/URL;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->urlString:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->url:Ljava/net/URL;

    .line 148
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Web;->access$100(Lcom/google/appinventor/components/runtime/Web;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->allowCookies:Z

    .line 149
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Web;->access$200(Lcom/google/appinventor/components/runtime/Web;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->saveResponse:Z

    .line 150
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Web;->access$300(Lcom/google/appinventor/components/runtime/Web;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->responseFileName:Ljava/lang/String;

    .line 151
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Web;->access$400(Lcom/google/appinventor/components/runtime/Web;)I

    move-result v4

    iput v4, v3, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->timeout:I

    .line 152
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Web;->access$500(Lcom/google/appinventor/components/runtime/Web;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Web;->access$600(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->requestHeaders:Ljava/util/Map;

    .line 154
    const/4 v3, 0x0

    move-object v2, v3

    .line 155
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->allowCookies:Z

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Web;->access$700(Lcom/google/appinventor/components/runtime/Web;)Ljava/net/CookieHandler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 157
    move-object v3, v1

    :try_start_0
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Web;->access$700(Lcom/google/appinventor/components/runtime/Web;)Ljava/net/CookieHandler;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->requestHeaders:Ljava/util/Map;

    invoke-virtual {v3, v4, v5}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    move-object v2, v3

    .line 162
    .line 164
    :cond_0
    :goto_0
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->cookies:Ljava/util/Map;

    .line 165
    return-void

    .line 162
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0
.end method
