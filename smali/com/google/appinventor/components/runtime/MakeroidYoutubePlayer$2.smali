.class final Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$2;
.super Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/listeners/AbstractYouTubePlayerListener;
.source "SourceFile"


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
    .line 109
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;

    move-object v2, v0

    invoke-direct {v2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/listeners/AbstractYouTubePlayerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/PlayerConstants$PlayerError;)V
    .locals 4
    .param p1    # Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/PlayerConstants$PlayerError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;

    move-object v3, v1

    invoke-virtual {v3}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/PlayerConstants$PlayerError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->Error(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public final onPlaybackQualityChange(Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/PlayerConstants$PlaybackQuality;)V
    .locals 4
    .param p1    # Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/PlayerConstants$PlaybackQuality;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;

    move-object v3, v1

    invoke-virtual {v3}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/PlayerConstants$PlaybackQuality;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->PlaybackQualityChanged(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public final onPlaybackRateChange(Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/PlayerConstants$PlaybackRate;)V
    .locals 4
    .param p1    # Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/PlayerConstants$PlaybackRate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 127
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;

    move-object v3, v1

    invoke-virtual {v3}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/PlayerConstants$PlaybackRate;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->PlaybackRateChanged(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public final onReady()V
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->Initialized()V

    .line 113
    return-void
.end method

.method public final onStateChange(Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/PlayerConstants$PlayerState;)V
    .locals 4
    .param p1    # Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/PlayerConstants$PlayerState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 117
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;

    move-object v3, v1

    invoke-virtual {v3}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/PlayerConstants$PlayerState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->StateChanged(Ljava/lang/String;)V

    .line 118
    return-void
.end method
