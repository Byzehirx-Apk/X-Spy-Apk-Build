.class final Lcom/google/appinventor/components/runtime/Surface$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Surface$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Surface$5;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Surface$5;)V
    .locals 4

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Surface$5$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Surface$5;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 390
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v2

    if-eqz v3, :cond_0

    .line 391
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Surface$5$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Surface$5;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Surface$5;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Surface;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/Surface;->access$002(Lcom/google/appinventor/components/runtime/Surface;Z)Z

    move-result v3

    .line 392
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Surface$5$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Surface$5;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Surface$5;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Surface;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Surface;->access$300(Lcom/google/appinventor/components/runtime/Surface;)V

    .line 397
    :goto_0
    return-void

    .line 394
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Surface$5$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Surface$5;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Surface$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Surface;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Surface;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Surface$5$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Surface$5;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Surface$5;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Surface;

    const-string/jumbo v5, "StartPreview"

    const-string/jumbo v6, "android.permission.CAMERA"

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    goto :goto_0
.end method
