.class final Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ATUMLOoHHffbHqXfKo1DqLB6OFxsAaTmX7VyjvAowYdVLTiF9JXThRDL9odeah0z:Ljava/lang/String;

.field private synthetic IcqbZ1XwOARXF8EHuumMwNxYO8BwpgyR4LeWhkJKdlM2Ka3G59guM7muYO6MGvD4:I

.field private synthetic Sh2mKYKwuehs0F1mmv0TRntZIP9rdF7C9GwSzNCd1X4nGlljhrD3h4lWlup0CGLh:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 316
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient;

    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient$1;->IcqbZ1XwOARXF8EHuumMwNxYO8BwpgyR4LeWhkJKdlM2Ka3G59guM7muYO6MGvD4:I

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient$1;->Sh2mKYKwuehs0F1mmv0TRntZIP9rdF7C9GwSzNCd1X4nGlljhrD3h4lWlup0CGLh:Ljava/lang/String;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient$1;->ATUMLOoHHffbHqXfKo1DqLB6OFxsAaTmX7VyjvAowYdVLTiF9JXThRDL9odeah0z:Ljava/lang/String;

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 318
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    const-string/jumbo v2, "ErrorOccurred"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient$1;->IcqbZ1XwOARXF8EHuumMwNxYO8BwpgyR4LeWhkJKdlM2Ka3G59guM7muYO6MGvD4:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient$1;->Sh2mKYKwuehs0F1mmv0TRntZIP9rdF7C9GwSzNCd1X4nGlljhrD3h4lWlup0CGLh:Ljava/lang/String;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient$1;->ATUMLOoHHffbHqXfKo1DqLB6OFxsAaTmX7VyjvAowYdVLTiF9JXThRDL9odeah0z:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 319
    return-void
.end method
