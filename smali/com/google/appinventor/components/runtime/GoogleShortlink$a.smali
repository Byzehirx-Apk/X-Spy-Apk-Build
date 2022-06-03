.class final Lcom/google/appinventor/components/runtime/GoogleShortlink$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/GoogleShortlink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GoogleShortlink;

.field private url:Ljava/net/URL;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/GoogleShortlink;)V
    .locals 4

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/GoogleShortlink$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GoogleShortlink;

    move-object v2, v0

    invoke-direct {v2}, Landroid/os/AsyncTask;-><init>()V

    .line 169
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/GoogleShortlink$a;->url:Ljava/net/URL;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/GoogleShortlink;B)V
    .locals 5

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/GoogleShortlink$a;-><init>(Lcom/google/appinventor/components/runtime/GoogleShortlink;)V

    return-void
.end method

.method private varargs hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 174
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/GoogleShortlink$a;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .line 179
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleShortlink$a;->url:Ljava/net/URL;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/GoogleShortlink;->getFinalURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0

    .line 175
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 176
    const-string/jumbo v2, "MalformedURLException"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v4}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, [Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/GoogleShortlink$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    move-object v2, v4

    move-object v1, v3

    .line 1183
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1187
    move-object v3, v1

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleShortlink$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GoogleShortlink;

    const/4 v4, 0x1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/GoogleShortlink;->GotResponse(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1191
    :goto_0
    return-void

    .line 1188
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1189
    const-string/jumbo v3, "Exception"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1190
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleShortlink$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GoogleShortlink;

    const/4 v4, 0x0

    const-string/jumbo v5, "There was a error. Please try again.."

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/GoogleShortlink;->GotResponse(ZLjava/lang/String;)V

    .line 168
    :cond_0
    goto :goto_0
.end method
