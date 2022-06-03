.class final Lcom/google/appinventor/components/runtime/WebViewer$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/WebViewer$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer$3;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/WebViewer$3;)V
    .locals 4

    .prologue
    .line 695
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/WebViewer$3$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer$3;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 698
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v2

    if-eqz v3, :cond_0

    .line 699
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/WebViewer$3$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer$3;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/WebViewer$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/WebViewer;->access$902(Lcom/google/appinventor/components/runtime/WebViewer;Z)Z

    move-result v3

    .line 700
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/WebViewer$3$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer$3;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/WebViewer$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/WebViewer$3$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer$3;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/WebViewer$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/WebViewer;->access$800(Lcom/google/appinventor/components/runtime/WebViewer;)Landroid/webkit/WebView;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/WebViewer$3$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer$3;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/WebViewer$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/WebViewer;->access$600(Lcom/google/appinventor/components/runtime/WebViewer;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/WebViewer;->setupWebViewGeoLoc(Lcom/google/appinventor/components/runtime/WebViewer;Landroid/webkit/WebView;Landroid/app/Activity;)V

    .line 701
    const-string/jumbo v3, "WebViewer"

    const-string/jumbo v4, "Permission Granted"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 706
    :goto_0
    return-void

    .line 703
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/WebViewer$3$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer$3;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/WebViewer$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/WebViewer;->access$902(Lcom/google/appinventor/components/runtime/WebViewer;Z)Z

    move-result v3

    .line 704
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/WebViewer$3$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer$3;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/WebViewer$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/WebViewer;->access$300(Lcom/google/appinventor/components/runtime/WebViewer;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/WebViewer$3$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer$3;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/WebViewer$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    const-string/jumbo v5, "UsesLocation"

    const-string/jumbo v6, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    goto :goto_0
.end method
