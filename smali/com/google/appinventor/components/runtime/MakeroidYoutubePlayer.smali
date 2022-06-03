.class public Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->GOOGLE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/youtubePlayer.png"
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "youtube-player.jar",
        "youtube-player.aar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET"
    }
.end annotation


# instance fields
.field private DHXdVBD10imZD254vgJdvVnoNnGi6ltYnt493xQ866MP9unX6nAi8XBtATXxBfV8:Z

.field private DQyzcUACK1E7EOZ6u3x9ArvpeLM1Qtq6g7Sbq12R8AspY4PE6CpW0lfACU69Eund:I

.field private YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:F

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/ui/PlayerUIController;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/utils/YouTubePlayerTracker;

.field private symWhrqAyHWXMObHLoQEIMlJvqdZFvcp7UyC2VmDxP3CgSs0pkdkxz6qiaDBzrEK:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 7

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 56
    move-object v2, v0

    const/16 v3, 0x32

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->DQyzcUACK1E7EOZ6u3x9ArvpeLM1Qtq6g7Sbq12R8AspY4PE6CpW0lfACU69Eund:I

    .line 57
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:F

    .line 59
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->DHXdVBD10imZD254vgJdvVnoNnGi6ltYnt493xQ866MP9unX6nAi8XBtATXxBfV8:Z

    .line 65
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 66
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->context:Landroid/content/Context;

    .line 68
    move-object v2, v0

    new-instance v3, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;

    .line 69
    move-object v2, v0

    new-instance v3, Lcom/pierfrancescosoffritti/androidyoutubeplayer/utils/YouTubePlayerTracker;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/utils/YouTubePlayerTracker;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/utils/YouTubePlayerTracker;

    .line 71
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;

    new-instance v3, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$1;-><init>(Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;->initialize(Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/listeners/YouTubePlayerInitListener;Z)V

    .line 82
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 85
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->StartSecond(F)V

    .line 86
    move-object v2, v0

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->Volume(I)V

    .line 87
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->EnableLiveVideoUI(Z)V

    .line 89
    const-string/jumbo v2, "Kodular Youtube Player"

    const-string/jumbo v3, "Makeroid Youtube Player Created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 90
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;
    .locals 7

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;Lcom/pierfrancescosoffritti/androidyoutubeplayer/ui/PlayerUIController;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/ui/PlayerUIController;
    .locals 7

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/ui/PlayerUIController;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/utils/YouTubePlayerTracker;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/utils/YouTubePlayerTracker;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;)V
    .locals 6

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    .line 1109
    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    new-instance v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$2;-><init>(Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;)V

    invoke-interface {v1, v2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;->addListener(Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/listeners/YouTubePlayerListener;)Z

    move-result v1

    .line 1136
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;

    new-instance v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$3;-><init>(Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;)V

    invoke-virtual {v1, v2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;->addFullScreenListener(Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/listeners/YouTubePlayerFullScreenListener;)Z

    move-result v1

    .line 47
    return-void
.end method

.method private static vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 339
    move-object v0, p0

    const-string/jumbo v3, "https://www.youtube.com/watch?v="

    move-object v1, v3

    .line 340
    const-string/jumbo v3, "www.youtube.com/watch?v="

    move-object v2, v3

    .line 342
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 343
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 347
    :goto_0
    return-object v0

    .line 344
    :cond_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 345
    move-object v3, v0

    move-object v4, v2

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 347
    :cond_1
    move-object v3, v0

    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method public EnableLiveVideoUI(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 324
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->DHXdVBD10imZD254vgJdvVnoNnGi6ltYnt493xQ866MP9unX6nAi8XBtATXxBfV8:Z

    .line 325
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/ui/PlayerUIController;

    if-eqz v2, :cond_0

    .line 326
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/ui/PlayerUIController;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/ui/PlayerUIController;->enableLiveVideoUI(Z)V

    .line 328
    :cond_0
    return-void
.end method

.method public EnableLiveVideoUI()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If you want to play live videos you must setup the UI accordingly, by calling this method. If enabled, the user can not select a second on the video progress bar."
    .end annotation

    .prologue
    .line 335
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->DHXdVBD10imZD254vgJdvVnoNnGi6ltYnt493xQ866MP9unX6nAi8XBtATXxBfV8:Z

    move v0, v1

    return v0
.end method

.method public EnterFullscreen()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enter the video in fullscreen mode."
    .end annotation

    .prologue
    .line 281
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;

    invoke-virtual {v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;->enterFullScreen()V

    .line 282
    return-void
.end method

.method public Error(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Use this event to detect that there was any error with the player. Return values: \'UNKNOWN\', \'INVALID_PARAMETER_IN_REQUEST\', \'HTML_5_PLAYER\', \'VIDEO_NOT_FOUND\', \'VIDEO_NOT_PLAYABLE_IN_EMBEDDED_PLAYER\', \'INVALID_VOLUME\' or \'INVALID_SEEK_TO\'."
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "Error"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 189
    return-void
.end method

.method public ExitFullscreen()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Exit the video from fullscreen mode."
    .end annotation

    .prologue
    .line 286
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;

    invoke-virtual {v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;->exitFullScreen()V

    .line 287
    return-void
.end method

.method public Fullscreen(Z)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to get notified when the player enters or exits fullscreen. The variable \'fullscreen\' returns true or false."
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "Fullscreen"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 154
    return-void
.end method

.method public GetCurrentSecond()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the current second."
    .end annotation

    .prologue
    .line 291
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    if-eqz v1, :cond_0

    .line 292
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/utils/YouTubePlayerTracker;

    invoke-virtual {v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/utils/YouTubePlayerTracker;->getCurrentSecond()F

    move-result v1

    move v0, v1

    .line 294
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public GetThumbnailFromVideoId(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This block will return the thumbnail image path from a video id. Use only as example \'_bZj-LOXdH8\' from a youtube video."
    .end annotation

    .prologue
    .line 317
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "https://img.youtube.com/vi/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/0.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public GetVideoDuration()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the video duration in seconds."
    .end annotation

    .prologue
    .line 300
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    if-eqz v1, :cond_0

    .line 301
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/utils/YouTubePlayerTracker;

    invoke-virtual {v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/utils/YouTubePlayerTracker;->getVideoDuration()F

    move-result v1

    move v0, v1

    .line 303
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public Initialized()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Use this event to start the playing of a normal or instant youtube video."
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "Initialized"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 159
    return-void
.end method

.method public InstantLoad(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block together with the \'Youtube Player\' Initialized event. Loads and automatically plays the specified youtube video. Use only as example \'_bZj-LOXdH8\' from a youtube video."
    .end annotation

    .prologue
    .line 194
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    if-eqz v2, :cond_0

    .line 195
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    move-object v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:F

    invoke-interface {v2, v3, v4}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;->loadVideo(Ljava/lang/String;F)V

    .line 197
    :cond_0
    return-void
.end method

.method public IsFullscreen()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if the player is in fullscreen mode."
    .end annotation

    .prologue
    .line 271
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;

    invoke-virtual {v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;->isFullScreen()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public Load(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads the specified video\'s thumbnail and prepares the player to play the video. Does not automatically play the video. Use only as example \'_bZj-LOXdH8\' from a youtube video."
    .end annotation

    .prologue
    .line 203
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    if-eqz v2, :cond_0

    .line 204
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    move-object v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:F

    invoke-interface {v2, v3, v4}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;->cueVideo(Ljava/lang/String;F)V

    .line 206
    :cond_0
    return-void
.end method

.method public Pause()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pause the youtube video."
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    if-eqz v1, :cond_0

    .line 218
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    invoke-interface {v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;->pause()V

    .line 220
    :cond_0
    return-void
.end method

.method public Play()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Plays the youtube video."
    .end annotation

    .prologue
    .line 210
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    if-eqz v1, :cond_0

    .line 211
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    invoke-interface {v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;->play()V

    .line 213
    :cond_0
    return-void
.end method

.method public PlaybackQualityChanged(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Use this event to detect that the playback quality was changed. Return values: \'UNKNOWN\', \'SMALL\', \'MEDIUM\', \'LARGE\', \'HD720\', \'HD1080\', \'HIGH_RES\' or \'DEFAULT\'."
    .end annotation

    .prologue
    .line 172
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "PlaybackQualityChanged"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 173
    return-void
.end method

.method public PlaybackRateChanged(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Use this event to detect that the playback rate was changed. Return values: \'UNKNOWN\', \'RATE_0_25\', \'RATE_0_5\', \'RATE_1\', \'RATE_1_5\' or \'RATE_2\'."
    .end annotation

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "PlaybackRateChanged"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 180
    return-void
.end method

.method public SeekTo(F)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set a position where the youtube video should start playing in seconds."
    .end annotation

    .prologue
    .line 238
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    if-eqz v2, :cond_0

    .line 240
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;->seekTo(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .line 246
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 242
    const-string/jumbo v2, "Kodular Youtube Player"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 243
    move-object v2, v0

    const-string/jumbo v3, "INVALID_SEEK_TO"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->Error(Ljava/lang/String;)V

    .line 246
    :cond_0
    goto :goto_0
.end method

.method public StartSecond()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 232
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:F

    move v0, v1

    return v0
.end method

.method public StartSecond(F)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The time from which the video should start playing."
    .end annotation

    .prologue
    .line 226
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:F

    .line 227
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->symWhrqAyHWXMObHLoQEIMlJvqdZFvcp7UyC2VmDxP3CgSs0pkdkxz6qiaDBzrEK:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public StateChanged(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Use this event to detect that the state changes. Return values: \'UNKNOWN\', \'UNSTARTED\', \'ENDED\', \'PLAYING\', \'PAUSED\', \'BUFFERING\' or \'VIDEO_CUED\'."
    .end annotation

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "StateChanged"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 166
    return-void
.end method

.method public TestVideoId()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Use this block to test the youtube player. Powered by Kodular.io"
    .end annotation

    .prologue
    .line 310
    move-object v0, p0

    const-string/jumbo v1, "_bZj-LOXdH8"

    move-object v0, v1

    return-object v0
.end method

.method public ToggleFullscreen()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Toggle the state of the video player."
    .end annotation

    .prologue
    .line 276
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;

    invoke-virtual {v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;->toggleFullScreen()V

    .line 277
    return-void
.end method

.method public Volume()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the player volume."
    .end annotation

    .prologue
    .line 266
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->DQyzcUACK1E7EOZ6u3x9ArvpeLM1Qtq6g7Sbq12R8AspY4PE6CpW0lfACU69Eund:I

    move v0, v1

    return v0
.end method

.method public Volume(I)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "50"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the volume to a number between 0 and 100.Use only integer numbers."
    .end annotation

    .prologue
    .line 253
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/16 v3, 0x64

    if-gt v2, v3, :cond_0

    move v2, v1

    if-gez v2, :cond_1

    .line 254
    :cond_0
    move-object v2, v0

    const-string/jumbo v3, "INVALID_VOLUME"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->Error(Ljava/lang/String;)V

    .line 262
    :goto_0
    return-void

    .line 256
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    if-eqz v2, :cond_2

    .line 257
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->symWhrqAyHWXMObHLoQEIMlJvqdZFvcp7UyC2VmDxP3CgSs0pkdkxz6qiaDBzrEK:Ljava/lang/String;

    .line 258
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->DQyzcUACK1E7EOZ6u3x9ArvpeLM1Qtq6g7Sbq12R8AspY4PE6CpW0lfACU69Eund:I

    .line 259
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;->setVolume(I)V

    .line 262
    :cond_2
    goto :goto_0
.end method

.method public Width(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 103
    const/4 v2, -0x2

    move v1, v2

    .line 105
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 106
    return-void
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->getView()Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getView()Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;

    move-object v0, v1

    return-object v0
.end method
