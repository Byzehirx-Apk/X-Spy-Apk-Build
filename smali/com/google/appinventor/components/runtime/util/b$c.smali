.class final Lcom/google/appinventor/components/runtime/util/b$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/b;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/util/b;)V
    .locals 4

    .prologue
    .line 240
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/b$c;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/b;

    move-object v2, v0

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/util/b;B)V
    .locals 5

    .prologue
    .line 240
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/b$c;-><init>(Lcom/google/appinventor/components/runtime/util/b;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    .line 244
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 260
    :goto_0
    return-void

    .line 246
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/b$c;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/b;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/b;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/b$c;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/b;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/b;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "MapReady"

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->canDispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/b$c;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/b;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/b;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/util/b;)Z

    move-result v2

    .line 248
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/b$c;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/b;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/b;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/util/b$c$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/util/b$c$1;-><init>(Lcom/google/appinventor/components/runtime/util/b$c;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 257
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/b$c;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/b;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/b;)Lorg/osmdroid/views/MapView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->invalidate()V

    goto :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
