.class final Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;
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
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;

.field private l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;)V
    .locals 4

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;

    move-object v2, v0

    invoke-direct {v2}, Landroid/os/AsyncTask;-><init>()V

    .line 119
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;B)V
    .locals 5

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;-><init>(Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, [Ljava/lang/String;

    move-object v2, v4

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    .line 2122
    move-object v1, v4

    move-object v4, v2

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/KodularUtil;->GET_REQUEST(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/lang/String;

    .line 2123
    sget-boolean v3, Lcom/google/appinventor/components/runtime/util/KodularUtil;->REQUEST_SUCCESS:Z

    if-nez v3, :cond_0

    .line 2124
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 2125
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;

    const/4 v4, 0x0

    const-string/jumbo v5, "Error - no data"

    sget-object v6, Lcom/google/appinventor/components/runtime/util/KodularUtil;->REQUEST_ERROR_MESSAGE:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->OnRequestSent(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2126
    .line 2132
    :cond_0
    :goto_0
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/lang/String;

    .line 118
    move-object v0, v3

    return-object v0

    .line 2127
    :cond_1
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 2128
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;

    const/4 v4, 0x0

    const-string/jumbo v5, "Error - no data"

    sget-object v6, Lcom/google/appinventor/components/runtime/util/KodularUtil;->REQUEST_ERROR_MESSAGE:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->OnStatusReceived(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    move-object v2, v6

    move-object v1, v5

    .line 1137
    move-object v5, v2

    const-string/jumbo v6, "data"

    const-string/jumbo v7, "Error - no data"

    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->GetJsonAsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 1138
    move-object v5, v2

    const-string/jumbo v6, "message"

    const-string/jumbo v7, "Error - no message"

    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->GetJsonAsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 1139
    move-object v5, v2

    const-string/jumbo v6, "success"

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->GetJsonAsBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    move v2, v5

    .line 1140
    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1141
    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;

    move v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->OnRequestSent(ZLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 1142
    :cond_0
    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 1143
    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;

    move v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->OnStatusReceived(ZLjava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_1
    goto :goto_0
.end method
