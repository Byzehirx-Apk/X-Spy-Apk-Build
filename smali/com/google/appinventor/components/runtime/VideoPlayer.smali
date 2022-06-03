.class public final Lcom/google/appinventor/components/runtime/VideoPlayer;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A multimedia component capable of playing videos. When the application is run, the VideoPlayer will be displayed as a rectangle on-screen.  If the user touches the rectangle, controls will appear to play/pause, skip ahead, and skip backward within the video.  The application can also control behavior by calling the <code>Start</code>, <code>Pause</code>, and <code>SeekTo</code> methods.  <p>Video files should be in 3GPP (.3gp) or MPEG-4 (.mp4) formats.  For more details about legal formats, see <a href=\"http://developer.android.com/guide/appendix/media-formats.html\" target=\"_blank\">Android Supported Media Formats</a>.</p><p>App Inventor for Android only permits video files under 1 MB and limits the total size of an application to 5 MB, not all of which is available for media (video, audio, and sound) files.  If your media files are too large, you may get errors when packaging or installing your application, in which case you should reduce the number of media files or their sizes.  Most video editing software, such as Windows Movie Maker and Apple iMovie, can help you decrease the size of videos by shortening them or re-encoding the video into a more compact format.</p><p>You can also set the media source to a URL that points to a streaming video, but the URL must point to the video file itself, not to a program that plays the video."
    version = 0x8
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/VideoPlayer$a;
    }
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaPlayer;

.field private HThm2UFiN8mNIb2OEGwVoJpkwNLFwrt8FHi6kSBOC6T1EOtocK0hkK9xDo2LJOJZ:Z

.field private R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:Z

.field private aWkZqinykMPj8SPm5jVT2wNdrJPpyMEjt10g4Ng570XD4n7VSaFhL3td3g0Xab2G:Z

.field private final androidUIHandler:Landroid/os/Handler;

.field private hOhK0kjjpreklHpzajOh4zpZ0hDhUAnmvbGmmElshoJmuxQNkJo9K2Sh2YQvTJN:I

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/MediaController;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

.field private sourcePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 8

    .prologue
    .line 138
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 115
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:Z

    .line 120
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->HThm2UFiN8mNIb2OEGwVoJpkwNLFwrt8FHi6kSBOC6T1EOtocK0hkK9xDo2LJOJZ:Z

    .line 122
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->aWkZqinykMPj8SPm5jVT2wNdrJPpyMEjt10g4Ng570XD4n7VSaFhL3td3g0Xab2G:Z

    .line 126
    move-object v2, v0

    new-instance v3, Landroid/os/Handler;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->androidUIHandler:Landroid/os/Handler;

    .line 130
    move-object v2, v0

    const/16 v3, 0x32

    iput v3, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->hOhK0kjjpreklHpzajOh4zpZ0hDhUAnmvbGmmElshoJmuxQNkJo9K2Sh2YQvTJN:I

    .line 139
    move-object v2, v1

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 140
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;-><init>(Lcom/google/appinventor/components/runtime/VideoPlayer;Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    .line 142
    move-object v2, v0

    new-instance v3, Landroid/widget/MediaController;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/MediaController;

    .line 143
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/MediaController;

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->setMediaController(Landroid/widget/MediaController;)V

    .line 145
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 146
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 147
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 150
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 152
    move-object v2, v1

    move-object v3, v0

    const/16 v4, 0xb0

    invoke-interface {v2, v3, v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 154
    move-object v2, v1

    move-object v3, v0

    const/16 v4, 0x90

    invoke-interface {v2, v3, v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 158
    move-object v2, v1

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->setVolumeControlStream(I)V

    .line 160
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    .line 161
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/VideoPlayer;)Landroid/os/Handler;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/VideoPlayer;->androidUIHandler:Landroid/os/Handler;

    move-object v0, v1

    return-object v0
.end method

.method private prepareToDie()V
    .locals 7

    .prologue
    .line 438
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 439
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->stopPlayback()V

    .line 442
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->setVideoURI(Landroid/net/Uri;)V

    .line 443
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->clearAnimation()V

    .line 446
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->aWkZqinykMPj8SPm5jVT2wNdrJPpyMEjt10g4Ng570XD4n7VSaFhL3td3g0Xab2G:Z

    .line 447
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->HThm2UFiN8mNIb2OEGwVoJpkwNLFwrt8FHi6kSBOC6T1EOtocK0hkK9xDo2LJOJZ:Z

    .line 449
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:Z

    if-eqz v2, :cond_1

    .line 450
    new-instance v2, Landroid/os/Bundle;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    .line 451
    move-object v1, v3

    const-string/jumbo v3, "FullScreenKey"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 452
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    const/16 v3, 0xc3

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v2

    .line 455
    :cond_1
    return-void
.end method


# virtual methods
.method public final Completed()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 378
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "Completed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 379
    return-void
.end method

.method public final CurrentPosition()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the current position of the source file that is playing."
    .end annotation

    .prologue
    .line 237
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->getCurrentPosition()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public final FullScreen(Z)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .prologue
    .line 532
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    .line 533
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v0

    const-string/jumbo v4, "FullScreen(true)"

    const/16 v5, 0x517

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 535
    .line 572
    :goto_0
    return-void

    .line 538
    :cond_0
    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/VideoPlayer;->R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:Z

    if-eq v2, v3, :cond_4

    .line 539
    move v2, v1

    if-eqz v2, :cond_2

    .line 540
    new-instance v2, Landroid/os/Bundle;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    .line 541
    move-object v1, v3

    const-string/jumbo v3, "PositionKey"

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    .line 542
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->getCurrentPosition()I

    move-result v4

    .line 541
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 543
    move-object v2, v1

    const-string/jumbo v3, "PlayingKey"

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    .line 544
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->isPlaying()Z

    move-result v4

    .line 543
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 545
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->pause()V

    .line 546
    move-object v2, v1

    const-string/jumbo v3, "FullScreenKey"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 547
    move-object v2, v1

    const-string/jumbo v3, "SourceKey"

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    const/16 v3, 0xc3

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v2

    .line 550
    const-string/jumbo v3, "ActionSuccess"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 551
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:Z

    goto :goto_0

    .line 553
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:Z

    .line 554
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v0

    const-string/jumbo v4, "FullScreen"

    const/16 v5, 0x515

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const-string/jumbo v9, ""

    aput-object v9, v7, v8

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 557
    goto/16 :goto_0

    .line 558
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    .line 559
    move-object v1, v3

    const-string/jumbo v3, "FullScreenKey"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 560
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    const/16 v3, 0xc3

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v2

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    .line 563
    move-object v1, v3

    const-string/jumbo v3, "ActionSuccess"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 564
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/VideoPlayer;->fullScreenKilled(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 566
    :cond_3
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:Z

    .line 567
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v0

    const-string/jumbo v4, "FullScreen"

    const/16 v5, 0x516

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const-string/jumbo v9, ""

    aput-object v9, v7, v8

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 572
    :cond_4
    goto/16 :goto_0
.end method

.method public final FullScreen()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 518
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/VideoPlayer;->R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:Z

    move v0, v1

    return v0
.end method

.method public final GetDuration()I
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns duration of the video in milliseconds."
    .end annotation

    .prologue
    .line 352
    move-object v0, p0

    const-string/jumbo v2, "VideoPlayer"

    const-string/jumbo v3, "Calling GetDuration"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 353
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:Z

    if-eqz v2, :cond_1

    .line 354
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    const/16 v3, 0xc4

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v2

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    .line 356
    move-object v1, v3

    const-string/jumbo v3, "ActionSuccess"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    move-object v2, v1

    const-string/jumbo v3, "ActionData"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    .line 362
    :goto_0
    return v0

    .line 359
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 362
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->getDuration()I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public final Height()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 493
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public final Height(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .prologue
    .line 505
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 508
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    iget v3, v3, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->iMWvjaqDlqi8shqdETWDeLkDbaCwtdVfJFSzyvUX79cgwtU4Twvc8XyMVbnGcmik:I

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(II)V

    .line 509
    return-void
.end method

.method public final IsPlaying()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Reports whether the media is playing."
    .end annotation

    .prologue
    .line 228
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->isPlaying()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public final Pause()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pauses playback of the video.  Playback can be resumed at the same location by calling the <code>Start</code> method."
    .end annotation

    .prologue
    .line 307
    move-object v0, p0

    const-string/jumbo v1, "VideoPlayer"

    const-string/jumbo v2, "Calling Pause"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 308
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/VideoPlayer;->R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:Z

    if-eqz v1, :cond_0

    .line 309
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const/16 v2, 0xc0

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v1

    .line 311
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/VideoPlayer;->aWkZqinykMPj8SPm5jVT2wNdrJPpyMEjt10g4Ng570XD4n7VSaFhL3td3g0Xab2G:Z

    .line 316
    :goto_0
    return-void

    .line 313
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/VideoPlayer;->aWkZqinykMPj8SPm5jVT2wNdrJPpyMEjt10g4Ng570XD4n7VSaFhL3td3g0Xab2G:Z

    .line 314
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->pause()V

    .line 316
    goto :goto_0
.end method

.method public final SeekTo(I)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Seeks to the requested time (specified in milliseconds) in the video. If the video is paused, the frame shown will not be updated by the seek. The player can jump only to key frames in the video, so seeking to times that differ by short intervals may not actually move to different frames."
    .end annotation

    .prologue
    .line 336
    move-object v0, p0

    move v1, p1

    const-string/jumbo v2, "VideoPlayer"

    const-string/jumbo v3, "Calling SeekTo"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 337
    move v2, v1

    if-gez v2, :cond_0

    .line 338
    const/4 v2, 0x0

    move v1, v2

    .line 340
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:Z

    if-eqz v2, :cond_1

    .line 341
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    const/16 v3, 0xbe

    move-object v4, v0

    move v5, v1

    .line 342
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 341
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v2

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->seekTo(I)V

    .line 347
    goto :goto_0
.end method

.method public final ShowControls(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled the user will see the control buttons."
    .end annotation

    .prologue
    .line 578
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    .line 579
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/MediaController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/MediaController;->setVisibility(I)V

    .line 583
    :goto_0
    return-void

    .line 581
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/MediaController;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/MediaController;->setVisibility(I)V

    .line 583
    goto :goto_0
.end method

.method public final Source(Ljava/lang/String;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "video_asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The \"path\" to the video.  Usually, this will be the name of the video file, which should be added in the Designer."
    .end annotation

    .prologue
    .line 185
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:Z

    if-eqz v2, :cond_0

    .line 186
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    const/16 v3, 0xc2

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v2

    .line 221
    :goto_0
    return-void

    .line 189
    :cond_0
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_3

    const-string/jumbo v3, ""

    :goto_1
    iput-object v3, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    .line 194
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb()V

    .line 197
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->stopPlayback()V

    .line 200
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->setVideoURI(Landroid/net/Uri;)V

    .line 201
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->clearAnimation()V

    .line 203
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 204
    const-string/jumbo v2, "VideoPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const-string/jumbo v5, "Source path is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 207
    move-object v2, v0

    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->HThm2UFiN8mNIb2OEGwVoJpkwNLFwrt8FHi6kSBOC6T1EOtocK0hkK9xDo2LJOJZ:Z

    .line 208
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->loadVideoView(Landroid/widget/VideoView;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 216
    .line 218
    const-string/jumbo v2, "VideoPlayer"

    const-string/jumbo v3, "loading video succeeded"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 221
    :cond_2
    goto :goto_0

    .line 189
    :cond_3
    move-object v3, v1

    goto :goto_1

    .line 209
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 210
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v0

    const-string/jumbo v4, "Source"

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 211
    goto/16 :goto_0

    .line 213
    :catch_1
    move-exception v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v0

    const-string/jumbo v4, "Source"

    const/16 v5, 0x2bd

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 215
    goto/16 :goto_0
.end method

.method public final Start()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Starts playback of the video."
    .end annotation

    .prologue
    .line 250
    move-object v0, p0

    const-string/jumbo v1, "VideoPlayer"

    const-string/jumbo v2, "Calling Start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 251
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/VideoPlayer;->R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:Z

    if-eqz v1, :cond_0

    .line 252
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const/16 v2, 0xbf

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v1

    .line 261
    :goto_0
    return-void

    .line 255
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/VideoPlayer;->HThm2UFiN8mNIb2OEGwVoJpkwNLFwrt8FHi6kSBOC6T1EOtocK0hkK9xDo2LJOJZ:Z

    if-eqz v1, :cond_1

    .line 256
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->start()V

    goto :goto_0

    .line 258
    :cond_1
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/VideoPlayer;->aWkZqinykMPj8SPm5jVT2wNdrJPpyMEjt10g4Ng570XD4n7VSaFhL3td3g0Xab2G:Z

    .line 261
    goto :goto_0
.end method

.method public final Stop()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resets to start of video and pauses it if video was playing."
    .end annotation

    .prologue
    .line 321
    move-object v0, p0

    const-string/jumbo v1, "VideoPlayer"

    const-string/jumbo v2, "Calling Stop"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 325
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Start()V

    .line 326
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/VideoPlayer;->SeekTo(I)V

    .line 327
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Pause()V

    .line 328
    return-void
.end method

.method public final VideoPlayerError(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The VideoPlayerError event is no longer used. Please use the Screen.ErrorOccurred event instead."
        userVisible = false
    .end annotation

    .prologue
    .line 421
    return-void
.end method

.method public final Volume()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the volume."
    .end annotation

    .prologue
    .line 291
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/VideoPlayer;->hOhK0kjjpreklHpzajOh4zpZ0hDhUAnmvbGmmElshoJmuxQNkJo9K2Sh2YQvTJN:I

    move v0, v1

    return v0
.end method

.method public final Volume(I)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "50"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the volume to a number between 0 and 100. Values less than 0 will be treated as 0, and values greater than 100 will be treated as 100."
    .end annotation

    .prologue
    .line 278
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 279
    const/16 v3, 0x64

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v1, v2

    .line 280
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 281
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaPlayer;

    move v3, v1

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    move v4, v1

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 282
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/VideoPlayer;->hOhK0kjjpreklHpzajOh4zpZ0hDhUAnmvbGmmElshoJmuxQNkJo9K2Sh2YQvTJN:I

    .line 284
    :cond_0
    return-void
.end method

.method public final Width()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 466
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public final Width(I)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .prologue
    .line 478
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 481
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    move v5, v2

    move-object v6, v3

    move-object v2, v6

    move v3, v5

    move-object v4, v6

    iget v4, v4, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->iz2AUXs4pv4EMA73duiR1R3OfWItF7gDqk3oMKKRO3MIyuqvZdoefifHvTvEAhn:I

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(II)V

    .line 482
    return-void
.end method

.method public final delayedStart()V
    .locals 3

    .prologue
    .line 299
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/VideoPlayer;->aWkZqinykMPj8SPm5jVT2wNdrJPpyMEjt10g4Ng570XD4n7VSaFhL3td3g0Xab2G:Z

    .line 300
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Start()V

    .line 301
    return-void
.end method

.method public final fullScreenKilled(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 592
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/VideoPlayer;->R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:Z

    .line 593
    move-object v3, v1

    const-string/jumbo v4, "SourceKey"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 594
    move-object v2, v4

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 595
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Source(Ljava/lang/String;)V

    .line 597
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->setVisibility(I)V

    .line 598
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->requestLayout()V

    .line 599
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "PositionKey"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/VideoPlayer;->SeekTo(I)V

    .line 600
    move-object v3, v1

    const-string/jumbo v4, "PlayingKey"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 601
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Start()V

    .line 603
    :cond_1
    return-void
.end method

.method public final getPassedHeight()I
    .locals 2

    .prologue
    .line 618
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    iget v1, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->iz2AUXs4pv4EMA73duiR1R3OfWItF7gDqk3oMKKRO3MIyuqvZdoefifHvTvEAhn:I

    move v0, v1

    return v0
.end method

.method public final getPassedWidth()I
    .locals 2

    .prologue
    .line 610
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    iget v1, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->iMWvjaqDlqi8shqdETWDeLkDbaCwtdVfJFSzyvUX79cgwtU4Twvc8XyMVbnGcmik:I

    move v0, v1

    return v0
.end method

.method public final getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    move-object v0, v1

    return-object v0
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 370
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Completed()V

    .line 371
    return-void
.end method

.method public final onDelete()V
    .locals 2

    .prologue
    .line 434
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/VideoPlayer;->prepareToDie()V

    .line 435
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .prologue
    .line 427
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/VideoPlayer;->prepareToDie()V

    .line 428
    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 13

    .prologue
    .line 393
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb()V

    .line 395
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/VideoPlayer;->aWkZqinykMPj8SPm5jVT2wNdrJPpyMEjt10g4Ng570XD4n7VSaFhL3td3g0Xab2G:Z

    .line 396
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/VideoPlayer;->HThm2UFiN8mNIb2OEGwVoJpkwNLFwrt8FHi6kSBOC6T1EOtocK0hkK9xDo2LJOJZ:Z

    .line 398
    const-string/jumbo v4, "VideoPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const-string/jumbo v7, "onError: what is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    .line 399
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", extra is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v3

    .line 400
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 398
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 401
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    move-object v5, v0

    const-string/jumbo v6, "Source"

    const/16 v7, 0x2bd

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 403
    const/4 v4, 0x1

    move v0, v4

    return v0
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6

    .prologue
    .line 408
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/VideoPlayer;->HThm2UFiN8mNIb2OEGwVoJpkwNLFwrt8FHi6kSBOC6T1EOtocK0hkK9xDo2LJOJZ:Z

    .line 409
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/VideoPlayer;->aWkZqinykMPj8SPm5jVT2wNdrJPpyMEjt10g4Ng570XD4n7VSaFhL3td3g0Xab2G:Z

    .line 410
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/VideoPlayer;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaPlayer;

    .line 411
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/VideoPlayer;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaPlayer;

    move-object v2, v4

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 1823
    move-object v1, v4

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/media/MediaPlayer;

    .line 1824
    move-object v3, v1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/lang/Boolean;

    .line 1827
    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->forceLayout()V

    .line 1828
    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->invalidate()V

    .line 412
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/VideoPlayer;->aWkZqinykMPj8SPm5jVT2wNdrJPpyMEjt10g4Ng570XD4n7VSaFhL3td3g0Xab2G:Z

    if-eqz v3, :cond_0

    .line 413
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Start()V

    .line 415
    :cond_0
    return-void
.end method
