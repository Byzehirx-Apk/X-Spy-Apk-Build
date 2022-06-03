.class public Lcom/google/appinventor/components/runtime/Sound;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A multimedia component that plays sound files and optionally vibrates for the number of milliseconds (thousandths of a second) specified in the Blocks Editor.  The name of the sound file to play can be specified either in the Designer or in the Blocks Editor.</p> <p>For supported sound file formats, see <a href=\"http://developer.android.com/guide/appendix/media-formats.html\" target=\"_blank\">Android Supported Media Formats</a>.</p><p>This <code>Sound</code> component is best for short sound files, such as sound effects, while the <code>Player</code> component is more efficient for longer sounds, such as songs.</p><p>You might get an error if you attempt to play a sound immediately after setting the source.</p>"
    iconName = "images/soundEffect.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.VIBRATE",
        "android.permission.INTERNET"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Sound$a;
    }
.end annotation


# static fields
.field private static final LOOP_MODE_NO_LOOP:I = 0x0

.field private static final MAX_PLAY_DELAY_RETRIES:I = 0xa

.field private static final MAX_STREAMS:I = 0xa

.field private static final PLAYBACK_RATE_NORMAL:F = 1.0f

.field private static final PLAY_DELAY_LENGTH:I = 0x32

.field private static final VOLUME_FULL:F = 1.0f


# instance fields
.field private delayRetries:I

.field private loadComplete:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private minimumInterval:I

.field private final playWaitHandler:Landroid/os/Handler;

.field private soundId:I

.field private final soundMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private soundPool:Landroid/media/SoundPool;

.field private sourcePath:Ljava/lang/String;

.field private streamId:I

.field private final thisComponent:Lcom/google/appinventor/components/runtime/Component;

.field private timeLastPlayed:J

.field private final vibe:Landroid/os/Vibrator;

.field private final waitForLoadToComplete:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 10

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 98
    move-object v3, v0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x8

    if-lt v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Sound;->waitForLoadToComplete:Z

    .line 107
    move-object v3, v0

    new-instance v4, Landroid/os/Handler;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Sound;->playWaitHandler:Landroid/os/Handler;

    .line 115
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Sound;->thisComponent:Lcom/google/appinventor/components/runtime/Component;

    .line 116
    move-object v3, v0

    new-instance v4, Landroid/media/SoundPool;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/16 v6, 0xa

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    .line 117
    move-object v3, v0

    new-instance v4, Ljava/util/HashMap;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Sound;->soundMap:Ljava/util/Map;

    .line 118
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v5, "vibrator"

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Sound;->vibe:Landroid/os/Vibrator;

    .line 119
    move-object v3, v0

    const-string/jumbo v4, ""

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    .line 120
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Sound;->loadComplete:Z

    .line 121
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 122
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 123
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 126
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->setVolumeControlStream(I)V

    .line 129
    move-object v3, v0

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Sound;->MinimumInterval(I)V

    .line 131
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/Sound;->waitForLoadToComplete:Z

    if-eqz v3, :cond_0

    .line 132
    new-instance v3, Lcom/google/appinventor/components/runtime/Sound$a;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Sound$a;-><init>(Lcom/google/appinventor/components/runtime/Sound;B)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    move-object v2, v4

    move-object v1, v3

    .line 1069
    move-object v3, v2

    new-instance v4, Lcom/google/appinventor/components/runtime/Sound$a$1;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/Sound$a$1;-><init>(Lcom/google/appinventor/components/runtime/Sound$a;)V

    invoke-virtual {v3, v4}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 134
    :cond_0
    return-void

    .line 98
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Sound;)Z
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Sound;->loadComplete:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/Sound;Z)Z
    .locals 7

    .prologue
    .line 57
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Sound;->loadComplete:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Sound;)V
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/Sound;->playAndCheckResult()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Sound;)I
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Sound;->delayRetries:I

    move v0, v1

    return v0
.end method

.method static synthetic access$310(Lcom/google/appinventor/components/runtime/Sound;)I
    .locals 7

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    iget v2, v2, Lcom/google/appinventor/components/runtime/Sound;->delayRetries:I

    move-object v5, v1

    move v6, v2

    move v1, v6

    move-object v2, v5

    move v3, v6

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Sound;->delayRetries:I

    move v0, v1

    return v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/Sound;)V
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/Sound;->playWhenLoadComplete()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/Sound;)Lcom/google/appinventor/components/runtime/Component;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sound;->thisComponent:Lcom/google/appinventor/components/runtime/Component;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/Sound;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method private playAndCheckResult()V
    .locals 10

    .prologue
    .line 283
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_1

    .line 284
    move-object v1, v0

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/Sound;->soundId:I

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v2

    iput v2, v1, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    .line 289
    const-string/jumbo v1, "Sound"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const-string/jumbo v4, "SoundPool.play returned stream id "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 290
    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    if-nez v1, :cond_0

    .line 291
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v2, v0

    const-string/jumbo v3, "Play"

    const/16 v4, 0x2bf

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    goto :goto_0
.end method

.method private playWhenLoadComplete()V
    .locals 7

    .prologue
    .line 258
    move-object v1, p0

    move-object v2, v1

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Sound;->loadComplete:Z

    if-nez v2, :cond_0

    move-object v2, v1

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Sound;->waitForLoadToComplete:Z

    if-nez v2, :cond_1

    .line 259
    :cond_0
    move-object v2, v1

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/Sound;->playAndCheckResult()V

    .line 280
    :goto_0
    return-void

    .line 261
    :cond_1
    const-string/jumbo v2, "Sound"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Sound not ready:  retrying.  Remaining retries = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    iget v4, v4, Lcom/google/appinventor/components/runtime/Sound;->delayRetries:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 265
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Sound;->playWaitHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/Sound$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/Sound$1;-><init>(Lcom/google/appinventor/components/runtime/Sound;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 280
    goto :goto_0
.end method

.method private prepareToDie()V
    .locals 3

    .prologue
    .line 407
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    if-eqz v1, :cond_0

    .line 408
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 409
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->unload(I)Z

    move-result v1

    .line 411
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    .line 412
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sound;->vibe:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 414
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    .line 415
    return-void
.end method


# virtual methods
.method public MinimumInterval()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The minimum interval, in milliseconds, between sounds.  If you play a sound, all further Play() calls will be ignored until the interval has elapsed."
    .end annotation

    .prologue
    .line 211
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Sound;->minimumInterval:I

    move v0, v1

    return v0
.end method

.method public MinimumInterval(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "500"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 225
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Sound;->minimumInterval:I

    .line 226
    return-void
.end method

.method public Pause()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pauses playing the sound if it is being played."
    .end annotation

    .prologue
    .line 302
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    if-eqz v1, :cond_0

    .line 303
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->pause(I)V

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    const-string/jumbo v1, "Sound"

    const-string/jumbo v2, "Unable to pause. Did you remember to call the Play function?"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 307
    goto :goto_0
.end method

.method public Play()V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Plays the sound specified by the Source property."
    .end annotation

    .prologue
    .line 237
    move-object v1, p0

    move-object v4, v1

    iget v4, v4, Lcom/google/appinventor/components/runtime/Sound;->soundId:I

    if-eqz v4, :cond_2

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide v2, v4

    .line 239
    move-object v4, v1

    iget-wide v4, v4, Lcom/google/appinventor/components/runtime/Sound;->timeLastPlayed:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    move-wide v4, v2

    move-object v6, v1

    iget-wide v6, v6, Lcom/google/appinventor/components/runtime/Sound;->timeLastPlayed:J

    move-object v8, v1

    iget v8, v8, Lcom/google/appinventor/components/runtime/Sound;->minimumInterval:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 240
    :cond_0
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Lcom/google/appinventor/components/runtime/Sound;->timeLastPlayed:J

    .line 241
    move-object v4, v1

    const/16 v5, 0xa

    iput v5, v4, Lcom/google/appinventor/components/runtime/Sound;->delayRetries:I

    .line 242
    move-object v4, v1

    invoke-direct {v4}, Lcom/google/appinventor/components/runtime/Sound;->playWhenLoadComplete()V

    .line 254
    :goto_0
    return-void

    .line 245
    :cond_1
    const-string/jumbo v4, "Sound"

    const-string/jumbo v5, "Unable to play because MinimumInterval has not elapsed since last play."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 247
    goto :goto_0

    .line 250
    :cond_2
    const-string/jumbo v4, "Sound"

    const-string/jumbo v5, "Sound Id was 0. Did you remember to set the Source property?"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 251
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v1

    const-string/jumbo v6, "Play"

    const/16 v7, 0x2bf

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    iget-object v11, v11, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 254
    goto :goto_0
.end method

.method public Resume()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resumes playing the sound after a pause."
    .end annotation

    .prologue
    .line 314
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    if-eqz v1, :cond_0

    .line 315
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->resume(I)V

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_0
    const-string/jumbo v1, "Sound"

    const-string/jumbo v2, "Unable to resume. Did you remember to call the Play function?"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 319
    goto :goto_0
.end method

.method public SoundNormal()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Ringer mode that may be audible and may vibrate."
    .end annotation

    .prologue
    .line 357
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sound;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 358
    return-void
.end method

.method public SoundSilent()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Ringer mode that will be silent and will not vibrate."
    .end annotation

    .prologue
    .line 363
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sound;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 364
    return-void
.end method

.method public SoundVibrate()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Ringer mode that will be silent and will vibrate."
    .end annotation

    .prologue
    .line 369
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sound;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 370
    return-void
.end method

.method public Source()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The name of the sound file.  Only certain formats are supported.  See http://developer.android.com/guide/appendix/media-formats.html."
    .end annotation

    .prologue
    .line 146
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public Source(Ljava/lang/String;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "audio_asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_1

    const-string/jumbo v3, ""

    :goto_0
    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    .line 164
    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    if-eqz v2, :cond_0

    .line 165
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->stop(I)V

    .line 166
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    .line 168
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/Sound;->soundId:I

    .line 170
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 171
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Sound;->soundMap:Ljava/util/Map;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    .line 172
    move-object v1, v3

    if-eqz v2, :cond_2

    .line 173
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/google/appinventor/components/runtime/Sound;->soundId:I

    .line 197
    :goto_1
    return-void

    .line 161
    :cond_1
    move-object v3, v1

    goto :goto_0

    .line 176
    :cond_2
    const-string/jumbo v2, "Sound"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const-string/jumbo v5, "No existing sound with path "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 178
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->loadSoundPool(Landroid/media/SoundPool;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)I

    move-result v2

    move v10, v2

    move v2, v10

    move v3, v10

    .line 179
    move v1, v3

    if-eqz v2, :cond_3

    .line 180
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Sound;->soundMap:Ljava/util/Map;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    move v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 181
    const-string/jumbo v2, "Sound"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const-string/jumbo v5, "Successfully began loading sound: setting soundId to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 182
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Sound;->soundId:I

    .line 184
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Sound;->loadComplete:Z

    goto :goto_1

    .line 186
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

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

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 194
    goto/16 :goto_1

    .line 189
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 190
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    const-string/jumbo v4, "Source"

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 194
    goto/16 :goto_1

    .line 192
    :catch_1
    move-exception v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

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

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 197
    :cond_4
    goto/16 :goto_1
.end method

.method public Stop()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stops playing the sound if it is being played."
    .end annotation

    .prologue
    .line 326
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    if-eqz v1, :cond_0

    .line 327
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 328
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_0
    const-string/jumbo v1, "Sound"

    const-string/jumbo v2, "Unable to stop. Did you remember to call the Play function?"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 332
    goto :goto_0
.end method

.method public Vibrate(I)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Vibrates for the specified number of milliseconds."
    .end annotation

    .prologue
    .line 339
    move-object v1, p0

    move v2, p1

    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Sound;->vibe:Landroid/os/Vibrator;

    move v4, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 340
    return-void
.end method

.method public VibratePattern(IIZ)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Vibrate with a given pattern"
    .end annotation

    .prologue
    .line 345
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, v4

    if-eqz v5, :cond_0

    .line 346
    const/4 v5, 0x0

    move v4, v5

    .line 350
    :goto_0
    const/4 v5, 0x3

    new-array v5, v5, [J

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v6, v7

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x1

    move v8, v2

    int-to-long v8, v8

    aput-wide v8, v6, v7

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x2

    move v8, v3

    int-to-long v8, v8

    aput-wide v8, v6, v7

    move-object v2, v5

    .line 351
    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Sound;->vibe:Landroid/os/Vibrator;

    move-object v6, v2

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 352
    return-void

    .line 348
    :cond_0
    const/4 v5, -0x1

    move v4, v5

    goto :goto_0
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 403
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/Sound;->prepareToDie()V

    .line 404
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 396
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/Sound;->prepareToDie()V

    .line 397
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 386
    move-object v0, p0

    const-string/jumbo v1, "Sound"

    const-string/jumbo v2, "Got onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 387
    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_0

    .line 388
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->resume(I)V

    .line 390
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 376
    move-object v0, p0

    const-string/jumbo v1, "Sound"

    const-string/jumbo v2, "Got onStop"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 377
    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_0

    .line 378
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->pause(I)V

    .line 380
    :cond_0
    return-void
.end method
