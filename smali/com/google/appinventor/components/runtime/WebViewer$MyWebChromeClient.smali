.class public Lcom/google/appinventor/components/runtime/WebViewer$MyWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/WebViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyWebChromeClient"
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/WebViewer;)V
    .locals 4

    .prologue
    .line 370
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/WebViewer$MyWebChromeClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    move-object v2, v0

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 6

    .prologue
    .line 378
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/WebViewer$MyWebChromeClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    move-object v3, v1

    invoke-virtual {v3}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/WebViewer;->OnConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 379
    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 5

    .prologue
    .line 373
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/WebViewer$MyWebChromeClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/WebViewer;->ProgressChanged(I)V

    .line 374
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 385
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    .line 386
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/WebViewer$MyWebChromeClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/WebViewer;->access$400(Lcom/google/appinventor/components/runtime/WebViewer;)Landroid/webkit/ValueCallback;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 387
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/WebViewer$MyWebChromeClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/WebViewer;->access$400(Lcom/google/appinventor/components/runtime/WebViewer;)Landroid/webkit/ValueCallback;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 388
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/WebViewer$MyWebChromeClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/WebViewer;->access$402(Lcom/google/appinventor/components/runtime/WebViewer;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    move-result-object v4

    .line 390
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/WebViewer$MyWebChromeClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/WebViewer;->access$402(Lcom/google/appinventor/components/runtime/WebViewer;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    move-result-object v4

    .line 392
    move-object v4, v3

    invoke-virtual {v4}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object v4

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 393
    move-object v1, v5

    const-string/jumbo v5, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    .line 394
    move-object v4, v1

    const-string/jumbo v5, "*/*"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 396
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/WebViewer$MyWebChromeClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/WebViewer;->access$600(Lcom/google/appinventor/components/runtime/WebViewer;)Landroid/app/Activity;

    move-result-object v4

    move-object v5, v1

    const-string/jumbo v6, "Choose file"

    invoke-static {v5, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-static {}, Lcom/google/appinventor/components/runtime/WebViewer;->access$500()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    .line 401
    :goto_0
    const/4 v4, 0x1

    move v0, v4

    .line 403
    :goto_1
    return v0

    .line 397
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 398
    const-string/jumbo v4, "WebViewer"

    const-string/jumbo v5, "No activity found to handle file chooser intent."

    move-object v6, v1

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 399
    move-object v4, v2

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 403
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method
