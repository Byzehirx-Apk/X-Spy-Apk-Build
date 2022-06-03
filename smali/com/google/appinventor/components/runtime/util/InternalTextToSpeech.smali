.class public Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/ITextToSpeech;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "InternalTTS"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

.field private volatile isTtsInitialized:Z

.field private mHandler:Landroid/os/Handler;

.field private nextUtteranceId:I

.field private tts:Landroid/speech/tts/TextToSpeech;

.field private ttsMaxRetries:I

.field private ttsRetryDelay:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;)V
    .locals 7

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v3, v0

    new-instance v4, Landroid/os/Handler;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->mHandler:Landroid/os/Handler;

    .line 43
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->nextUtteranceId:I

    .line 46
    move-object v3, v0

    const/16 v4, 0x1f4

    iput v4, v3, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->ttsRetryDelay:I

    .line 51
    move-object v3, v0

    const/16 v4, 0x14

    iput v4, v3, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->ttsMaxRetries:I

    .line 54
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->activity:Landroid/app/Activity;

    .line 55
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    .line 56
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->initializeTts()V

    .line 57
    return-void
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;Z)Z
    .locals 7

    .prologue
    .line 32
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->isTtsInitialized:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;)Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;)Landroid/app/Activity;
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->activity:Landroid/app/Activity;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;Ljava/lang/String;Ljava/util/Locale;I)V
    .locals 8

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->speak(Ljava/lang/String;Ljava/util/Locale;I)V

    return-void
.end method

.method private initializeTts()V
    .locals 9

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    if-nez v1, :cond_0

    .line 61
    const-string/jumbo v1, "InternalTTS"

    const-string/jumbo v2, "INTERNAL TTS is reinitializing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 62
    move-object v1, v0

    new-instance v2, Landroid/speech/tts/TextToSpeech;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->activity:Landroid/app/Activity;

    new-instance v5, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$1;-><init>(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;)V

    invoke-direct {v3, v4, v5}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    .line 71
    :cond_0
    return-void
.end method

.method private speak(Ljava/lang/String;Ljava/util/Locale;I)V
    .locals 13

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    const-string/jumbo v4, "InternalTTS"

    const-string/jumbo v5, "InternalTTS speak called, message = "

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 86
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->ttsMaxRetries:I

    if-le v4, v5, :cond_0

    .line 87
    const-string/jumbo v4, "InternalTTS"

    const-string/jumbo v5, "max number of speak retries exceeded: speak will fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 88
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;->onFailure()V

    .line 92
    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->isTtsInitialized:Z

    if-eqz v4, :cond_2

    .line 93
    const-string/jumbo v4, "InternalTTS"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const-string/jumbo v7, "TTS initialized after "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " retries."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 94
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v4

    .line 95
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    new-instance v5, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$2;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$2;-><init>(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;)V

    invoke-virtual {v4, v5}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    move-result v4

    .line 109
    new-instance v4, Ljava/util/HashMap;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    .line 110
    move-object v2, v5

    const-string/jumbo v5, "utteranceId"

    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->nextUtteranceId:I

    move-object v11, v6

    move v12, v7

    move v6, v12

    move-object v7, v11

    move v8, v12

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->nextUtteranceId:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 111
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    move-result v4

    .line 112
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 113
    const-string/jumbo v4, "InternalTTS"

    const-string/jumbo v5, "speak called and tts.speak result was an error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 114
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;->onFailure()V

    .line 116
    .line 126
    :cond_1
    :goto_0
    return-void

    .line 117
    :cond_2
    const-string/jumbo v4, "InternalTTS"

    const-string/jumbo v5, "speak called when TTS not initialized"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 118
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    move v8, v3

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;-><init>(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;ILjava/lang/String;Ljava/util/Locale;)V

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->ttsRetryDelay:I

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    .line 126
    goto :goto_0
.end method


# virtual methods
.method public isInitialized()Z
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->isTtsInitialized:Z

    move v0, v1

    return v0
.end method

.method public isLanguageAvailable(Ljava/util/Locale;)I
    .locals 4

    .prologue
    .line 162
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 136
    move-object v0, p0

    const-string/jumbo v1, "InternalTTS"

    const-string/jumbo v2, "Internal TTS got onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 137
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 138
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 139
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->isTtsInitialized:Z

    .line 140
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    .line 142
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 146
    move-object v0, p0

    const-string/jumbo v1, "InternalTTS"

    const-string/jumbo v2, "Internal TTS got onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 147
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->initializeTts()V

    .line 148
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 130
    move-object v0, p0

    const-string/jumbo v1, "InternalTTS"

    const-string/jumbo v2, "Internal TTS got onStop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 132
    return-void
.end method

.method public setPitch(F)V
    .locals 4

    .prologue
    .line 152
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    move-result v2

    .line 153
    return-void
.end method

.method public setSpeechRate(F)V
    .locals 4

    .prologue
    .line 157
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    move-result v2

    .line 158
    return-void
.end method

.method public speak(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 7

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string/jumbo v3, "InternalTTS"

    const-string/jumbo v4, "Internal TTS got speak"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 76
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->speak(Ljava/lang/String;Ljava/util/Locale;I)V

    .line 77
    return-void
.end method
