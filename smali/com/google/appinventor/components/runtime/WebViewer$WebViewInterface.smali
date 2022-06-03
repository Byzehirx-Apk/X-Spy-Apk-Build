.class public Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/WebViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebViewInterface"
.end annotation


# instance fields
.field private PSE7l4KPPlsF25SGtLyfrRQNAOx6mjYRNm7iKMXDtxC5YDpv0OiYAkqPZjvcwjm5:Ljava/lang/String;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/Context;

.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/WebViewer;Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 1086
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1087
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/Context;

    .line 1088
    move-object v3, v0

    const-string/jumbo v4, ""

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->PSE7l4KPPlsF25SGtLyfrRQNAOx6mjYRNm7iKMXDtxC5YDpv0OiYAkqPZjvcwjm5:Ljava/lang/String;

    .line 1089
    return-void
.end method


# virtual methods
.method public getWebViewString()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1098
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->PSE7l4KPPlsF25SGtLyfrRQNAOx6mjYRNm7iKMXDtxC5YDpv0OiYAkqPZjvcwjm5:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public setWebViewString(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1108
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->PSE7l4KPPlsF25SGtLyfrRQNAOx6mjYRNm7iKMXDtxC5YDpv0OiYAkqPZjvcwjm5:Ljava/lang/String;

    .line 1109
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/WebViewer;->access$300(Lcom/google/appinventor/components/runtime/WebViewer;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface$1;-><init>(Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1114
    return-void
.end method

.method public setWebViewStringFromBlocks(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1117
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->PSE7l4KPPlsF25SGtLyfrRQNAOx6mjYRNm7iKMXDtxC5YDpv0OiYAkqPZjvcwjm5:Ljava/lang/String;

    .line 1118
    return-void
.end method
