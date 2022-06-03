.class final Lcom/google/appinventor/components/runtime/Image$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Image;->Picture(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Image;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Image;)V
    .locals 4

    .prologue
    .line 171
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Image$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Image;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 174
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v2

    if-eqz v3, :cond_0

    .line 175
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Image$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Image;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Image$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Image;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Image;->access$000(Lcom/google/appinventor/components/runtime/Image;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/Image;->access$100(Lcom/google/appinventor/components/runtime/Image;Ljava/lang/String;)V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Image$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Image;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Image;->access$200(Lcom/google/appinventor/components/runtime/Image;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Image$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Image;

    const-string/jumbo v5, "Picture"

    move-object v6, v1

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    goto :goto_0
.end method
