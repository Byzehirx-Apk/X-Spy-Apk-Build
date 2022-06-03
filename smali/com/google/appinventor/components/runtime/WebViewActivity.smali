.class public final Lcom/google/appinventor/components/runtime/WebViewActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/WebViewActivity;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v0, v4

    .line 1075
    const-string/jumbo v4, "WebView"

    const-string/jumbo v5, "Handling url "

    move-object v6, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1076
    move-object v4, v2

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 1077
    move-object v3, v5

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 1078
    const-string/jumbo v5, "appinventor"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1079
    new-instance v4, Landroid/content/Intent;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 1080
    move-object v1, v5

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    .line 1081
    move-object v4, v0

    const/4 v5, -0x1

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/WebViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 1082
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/WebViewActivity;->finish()V

    .line 1083
    .line 1086
    :goto_0
    const/4 v4, 0x1

    .line 34
    move v0, v4

    return v0

    .line 1084
    :cond_0
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    new-instance v5, Landroid/webkit/WebView;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    .line 42
    move-object v1, v6

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 44
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_1

    .line 45
    move-object v5, v1

    new-instance v6, Lcom/google/appinventor/components/runtime/WebViewActivity$1;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/google/appinventor/components/runtime/WebViewActivity$1;-><init>(Lcom/google/appinventor/components/runtime/WebViewActivity;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 61
    :goto_0
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/WebViewActivity;->setContentView(Landroid/view/View;)V

    .line 63
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    .line 64
    move-object v2, v6

    if-eqz v5, :cond_0

    move-object v5, v2

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 65
    move-object v5, v2

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    .line 66
    move-object v2, v6

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 67
    move-object v5, v2

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 68
    const-string/jumbo v5, "WebView"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "Got intent with URI: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", scheme="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", host="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 70
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void

    .line 52
    :cond_1
    move-object v5, v1

    new-instance v6, Lcom/google/appinventor/components/runtime/WebViewActivity$2;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/google/appinventor/components/runtime/WebViewActivity$2;-><init>(Lcom/google/appinventor/components/runtime/WebViewActivity;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_0
.end method
