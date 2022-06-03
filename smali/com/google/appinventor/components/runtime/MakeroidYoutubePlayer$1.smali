.class final Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/listeners/YouTubePlayerInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
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
    .line 71
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitSuccess(Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;)V
    .locals 4
    .param p1    # Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 74
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    move-result-object v2

    .line 75
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/utils/YouTubePlayerTracker;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;->addListener(Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/listeners/YouTubePlayerListener;)Z

    move-result v2

    .line 76
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;->getPlayerUIController()Lcom/pierfrancescosoffritti/androidyoutubeplayer/ui/PlayerUIController;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;Lcom/pierfrancescosoffritti/androidyoutubeplayer/ui/PlayerUIController;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/ui/PlayerUIController;

    move-result-object v2

    .line 77
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;)V

    .line 78
    return-void
.end method
