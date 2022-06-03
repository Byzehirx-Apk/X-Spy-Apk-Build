.class final Lcom/google/appinventor/components/runtime/Sound$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Sound;->playWhenLoadComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Sound;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Sound;)V
    .locals 4

    .prologue
    .line 265
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Sound$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Sound;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    .line 268
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sound$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Sound;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Sound;->access$000(Lcom/google/appinventor/components/runtime/Sound;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sound$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Sound;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Sound;->access$200(Lcom/google/appinventor/components/runtime/Sound;)V

    .line 277
    :goto_0
    return-void

    .line 270
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sound$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Sound;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Sound;->access$300(Lcom/google/appinventor/components/runtime/Sound;)I

    move-result v1

    if-lez v1, :cond_1

    .line 271
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sound$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Sound;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Sound;->access$310(Lcom/google/appinventor/components/runtime/Sound;)I

    move-result v1

    .line 272
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sound$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Sound;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Sound;->access$400(Lcom/google/appinventor/components/runtime/Sound;)V

    goto :goto_0

    .line 274
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sound$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Sound;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Sound$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Sound;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Sound;->access$500(Lcom/google/appinventor/components/runtime/Sound;)Lcom/google/appinventor/components/runtime/Component;

    move-result-object v2

    const-string/jumbo v3, "Play"

    const/16 v4, 0x2c6

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/Sound$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Sound;

    .line 275
    invoke-static {v8}, Lcom/google/appinventor/components/runtime/Sound;->access$600(Lcom/google/appinventor/components/runtime/Sound;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 274
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 277
    goto :goto_0
.end method
