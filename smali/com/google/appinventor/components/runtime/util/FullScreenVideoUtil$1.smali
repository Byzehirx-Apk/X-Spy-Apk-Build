.class final Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$1;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;-><init>(Lcom/google/appinventor/components/runtime/Form;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    move-object v3, v0

    move-object v4, v2

    const v5, 0x1030007

    invoke-direct {v3, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 7

    .prologue
    .line 108
    move-object v0, p0

    new-instance v2, Landroid/os/Bundle;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    .line 109
    move-object v1, v3

    const-string/jumbo v3, "PositionKey"

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    .line 110
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)Landroid/widget/VideoView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v4

    .line 109
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    move-object v2, v1

    const-string/jumbo v3, "PlayingKey"

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    .line 112
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)Landroid/widget/VideoView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v4

    .line 111
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 113
    move-object v2, v1

    const-string/jumbo v3, "SourceKey"

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    .line 114
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "SourceKey"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)Lcom/google/appinventor/components/runtime/VideoPlayer;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/VideoPlayer;->fullScreenKilled(Landroid/os/Bundle;)V

    .line 116
    move-object v2, v0

    invoke-super {v2}, Landroid/app/Dialog;->onBackPressed()V

    .line 117
    return-void
.end method

.method public final onStart()V
    .locals 2

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/app/Dialog;->onStart()V

    .line 122
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->startDialog()V

    .line 123
    return-void
.end method
