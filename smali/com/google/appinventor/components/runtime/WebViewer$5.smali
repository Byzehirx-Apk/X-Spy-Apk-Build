.class final Lcom/google/appinventor/components/runtime/WebViewer$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/WebViewer;->EvaluateJS(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/WebViewer;)V
    .locals 4

    .prologue
    .line 977
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/WebViewer$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 977
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    move-object v2, v4

    move-object v1, v3

    .line 1980
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1981
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/WebViewer$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/WebViewer;->AfterJSEvaluated(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 1983
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/WebViewer$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    const-string/jumbo v4, "null"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/WebViewer;->AfterJSEvaluated(Ljava/lang/String;)V

    .line 977
    goto :goto_0
.end method
