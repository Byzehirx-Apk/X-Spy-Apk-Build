.class public Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/util/ITextToSpeech;


# instance fields
.field private final callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private requestCode:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;)V
    .locals 5

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 43
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 44
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    .line 45
    return-void
.end method


# virtual methods
.method public isInitialized()Z
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method public isLanguageAvailable(Ljava/util/Locale;)I
    .locals 3

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, p1

    const/4 v2, -0x1

    move v0, v2

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    .line 89
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->requestCode:I

    if-ne v4, v5, :cond_0

    move v4, v2

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    .line 90
    :goto_0
    if-eqz v4, :cond_1

    .line 91
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;->onSuccess()V

    .line 95
    :goto_1
    return-void

    .line 89
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 93
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;->onFailure()V

    .line 95
    goto :goto_1
.end method

.method public setPitch(F)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public setSpeechRate(F)V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public speak(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 8

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Landroid/content/Intent;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "com.google.tts.makeBagel"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 50
    move-object v3, v5

    const/high16 v5, 0x20000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 51
    move-object v4, v3

    const/high16 v5, 0x800000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 52
    move-object v4, v3

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 53
    move-object v4, v3

    const-string/jumbo v5, "message"

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 54
    move-object v4, v3

    const-string/jumbo v5, "language"

    move-object v6, v2

    invoke-virtual {v6}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 55
    move-object v4, v3

    const-string/jumbo v5, "country"

    move-object v6, v2

    invoke-virtual {v6}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 56
    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->requestCode:I

    if-nez v4, :cond_0

    .line 57
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v5

    iput v5, v4, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->requestCode:I

    .line 59
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->requestCode:I

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 60
    return-void
.end method
