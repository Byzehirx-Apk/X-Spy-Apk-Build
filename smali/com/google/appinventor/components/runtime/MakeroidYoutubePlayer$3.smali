.class final Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/listeners/YouTubePlayerFullScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;)V
    .locals 4

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onYouTubePlayerEnterFullScreen()V
    .locals 3

    .prologue
    .line 139
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->Fullscreen(Z)V

    .line 140
    return-void
.end method

.method public final onYouTubePlayerExitFullScreen()V
    .locals 3

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->Fullscreen(Z)V

    .line 145
    return-void
.end method
