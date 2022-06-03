.class public Lcom/google/appinventor/components/runtime/Audio;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->UTILITIES:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/audio.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.MODIFY_AUDIO_SETTINGS"
    }
.end annotation


# instance fields
.field private KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Z

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 37
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Audio;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Z

    .line 42
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Audio;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 43
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Audio;->context:Landroid/content/Context;

    .line 44
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Audio;->context:Landroid/content/Context;

    const-string/jumbo v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    .line 45
    const-string/jumbo v2, "Audio"

    const-string/jumbo v3, "Audio Created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 46
    return-void
.end method


# virtual methods
.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when a error occurred."
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "ErrorOccurred"

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

    .line 52
    return-void
.end method

.method public GetAudioMode()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the current audio mode as string. Possible returns are \"NORMAL\", \"RINGTONE\", \"CALL\" or \"COMMUNICATION\"."
    .end annotation

    .prologue
    .line 151
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    move v1, v3

    .line 152
    const-string/jumbo v3, "Not found"

    move-object v2, v3

    .line 153
    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 167
    :goto_0
    move-object v3, v2

    move-object v0, v3

    return-object v0

    .line 155
    :pswitch_0
    const-string/jumbo v3, "NORMAL"

    move-object v2, v3

    .line 156
    goto :goto_0

    .line 158
    :pswitch_1
    const-string/jumbo v3, "RINGTONE"

    move-object v2, v3

    .line 159
    goto :goto_0

    .line 161
    :pswitch_2
    const-string/jumbo v3, "CALL"

    move-object v2, v3

    .line 162
    goto :goto_0

    .line 164
    :pswitch_3
    const-string/jumbo v3, "COMMUNICATION"

    move-object v2, v3

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public IsSoundEffectsEnabled(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true whether a component should have sound effects enabled for events such as clicking and touching."
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v2

    .line 181
    invoke-virtual {v2}, Landroid/view/View;->isSoundEffectsEnabled()Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public RingerModeNormal()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the ringer mode to \"normal\"."
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 69
    const-string/jumbo v2, "Audio"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 70
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Audio;->ErrorOccurred(Ljava/lang/String;)V

    .line 72
    goto :goto_0
.end method

.method public RingerModeSilent()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the ringer mode to \"silent\"."
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 79
    const-string/jumbo v2, "Audio"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 80
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Audio;->ErrorOccurred(Ljava/lang/String;)V

    .line 82
    goto :goto_0
.end method

.method public RingerModeVibrate()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the ringer mode to \"vibrate\"."
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 59
    const-string/jumbo v2, "Audio"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 60
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Audio;->ErrorOccurred(Ljava/lang/String;)V

    .line 62
    goto :goto_0
.end method

.method public ShowUI(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true you will see system ui."
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Audio;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Z

    .line 142
    return-void
.end method

.method public ShowUI()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 146
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Audio;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Z

    move v0, v1

    return v0
.end method

.method public SoundEffectsEnabled(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Z)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set whether a component should have sound effects enabled for events such as clicking and touching."
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v3

    .line 174
    move v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 175
    return-void
.end method

.method public VolumeAlarm()I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the current volume index in percent."
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    move v1, v3

    .line 123
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    move v2, v3

    .line 124
    move v3, v1

    const/16 v4, 0x64

    mul-int/lit8 v3, v3, 0x64

    move v4, v2

    div-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method public VolumeAlarm(I)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the volume index for a particular stream in percent."
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    move v1, p1

    const/4 v3, 0x1

    move v2, v3

    .line 130
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/Audio;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Z

    if-nez v3, :cond_0

    .line 131
    const/4 v3, 0x0

    move v2, v3

    .line 133
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    .line 134
    move v4, v1

    mul-int/2addr v3, v4

    const/16 v4, 0x64

    div-int/lit8 v3, v3, 0x64

    move v1, v3

    .line 135
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    const/4 v4, 0x4

    move v5, v1

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 136
    return-void
.end method

.method public VolumeMusic()I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the current volume index in percent."
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    move v1, v3

    .line 105
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    move v2, v3

    .line 106
    move v3, v1

    const/16 v4, 0x64

    mul-int/lit8 v3, v3, 0x64

    move v4, v2

    div-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method public VolumeMusic(I)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the volume index for a particular stream in percent."
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    move v1, p1

    const/4 v3, 0x1

    move v2, v3

    .line 112
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/Audio;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Z

    if-nez v3, :cond_0

    .line 113
    const/4 v3, 0x0

    move v2, v3

    .line 115
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    .line 116
    move v4, v1

    mul-int/2addr v3, v4

    const/16 v4, 0x64

    div-int/lit8 v3, v3, 0x64

    move v1, v3

    .line 117
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    const/4 v4, 0x3

    move v5, v1

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 118
    return-void
.end method

.method public VolumeRing()I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the current volume index in percent."
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    move v1, v3

    .line 87
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    move v2, v3

    .line 88
    move v3, v1

    const/16 v4, 0x64

    mul-int/lit8 v3, v3, 0x64

    move v4, v2

    div-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method public VolumeRing(I)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the volume index for a particular stream in percent."
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    move v1, p1

    const/4 v3, 0x1

    move v2, v3

    .line 94
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/Audio;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Z

    if-nez v3, :cond_0

    .line 95
    const/4 v3, 0x0

    move v2, v3

    .line 97
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    .line 98
    move v4, v1

    mul-int/2addr v3, v4

    const/16 v4, 0x64

    div-int/lit8 v3, v3, 0x64

    move v1, v3

    .line 99
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    const/4 v4, 0x2

    move v5, v1

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 100
    return-void
.end method
