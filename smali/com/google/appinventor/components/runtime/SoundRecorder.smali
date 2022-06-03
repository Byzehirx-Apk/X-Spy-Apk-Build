.class public final Lcom/google/appinventor/components/runtime/SoundRecorder;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Multimedia component that records audio.</p>"
    iconName = "images/soundRecorder.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.RECORD_AUDIO",
        "android.permission.WRITE_EXTERNAL_STORAGE",
        "android.permission.READ_EXTERNAL_STORAGE"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/SoundRecorder$a;
    }
.end annotation


# instance fields
.field private T3TEUSUxjrJVucuujQ9pjstrX3UcxHV1L9cOGs7CI5pfz9hjmRfdL7GRyW8ebdVq:Ljava/lang/String;

.field private havePermission:Z

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .prologue
    .line 137
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 58
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/SoundRecorder;->T3TEUSUxjrJVucuujQ9pjstrX3UcxHV1L9cOGs7CI5pfz9hjmRfdL7GRyW8ebdVq:Ljava/lang/String;

    .line 61
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/SoundRecorder;->havePermission:Z

    .line 138
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/SoundRecorder;)Z
    .locals 6

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    move-object v4, v1

    move v5, v2

    move v1, v5

    move-object v2, v4

    move v3, v5

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/SoundRecorder;->havePermission:Z

    move v0, v1

    return v0
.end method


# virtual methods
.method public final AfterSoundRecorded(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Provides the location of the newly created sound."
    .end annotation

    .prologue
    .line 338
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "AfterSoundRecorded"

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

    .line 339
    return-void
.end method

.method public final Pause()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to pause the sound recorder. Works only on Android 6 and above."
    .end annotation

    .prologue
    .line 321
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    if-eqz v2, :cond_0

    .line 322
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    move-object v1, v2

    .line 1116
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 1117
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->pause()V

    .line 1118
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/SoundRecorder;->PausedRecording()V

    .line 324
    :cond_0
    return-void
.end method

.method public final PausedRecording()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the recorder has paused, and can be resumed again."
    .end annotation

    .prologue
    .line 353
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "PausedRecording"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 354
    return-void
.end method

.method public final Resume()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to resume the sound recorder. Works only on Android 6 and above."
    .end annotation

    .prologue
    .line 331
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    if-eqz v2, :cond_0

    .line 332
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    move-object v1, v2

    .line 1123
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 1124
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->resume()V

    .line 1125
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/SoundRecorder;->ResumedRecording()V

    .line 334
    :cond_0
    return-void
.end method

.method public final ResumedRecording()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the recorder has resumed, and can be started again."
    .end annotation

    .prologue
    .line 358
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "ResumedRecording"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 359
    return-void
.end method

.method public final SavedRecording()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the path to the file where the recording should be stored. If this property is the empty string, then starting a recording will create a file in an appropriate location.  If the property is not the empty string, it should specify a complete path to a file in an existing directory, including a file name with the extension .3gp."
    .end annotation

    .prologue
    .line 154
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/SoundRecorder;->T3TEUSUxjrJVucuujQ9pjstrX3UcxHV1L9cOGs7CI5pfz9hjmRfdL7GRyW8ebdVq:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public final SavedRecording(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 166
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/SoundRecorder;->T3TEUSUxjrJVucuujQ9pjstrX3UcxHV1L9cOGs7CI5pfz9hjmRfdL7GRyW8ebdVq:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public final Start()V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to start the sound recorder."
    .end annotation

    .prologue
    .line 175
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/SoundRecorder;->havePermission:Z

    if-nez v2, :cond_1

    .line 176
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/SoundRecorder;->T3TEUSUxjrJVucuujQ9pjstrX3UcxHV1L9cOGs7CI5pfz9hjmRfdL7GRyW8ebdVq:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v3, Lcom/google/appinventor/components/runtime/SoundRecorder$1;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    move-object v5, v0

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const-string/jumbo v7, "Start"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    const-string/jumbo v11, "android.permission.RECORD_AUDIO"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    const-string/jumbo v11, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v11, v9, v10

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/SoundRecorder$1;-><init>(Lcom/google/appinventor/components/runtime/SoundRecorder;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    .line 237
    :goto_0
    return-void

    .line 186
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v3, Lcom/google/appinventor/components/runtime/SoundRecorder$2;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    move-object v5, v0

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const-string/jumbo v7, "Start"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    const-string/jumbo v11, "android.permission.RECORD_AUDIO"

    aput-object v11, v9, v10

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/SoundRecorder$2;-><init>(Lcom/google/appinventor/components/runtime/SoundRecorder;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    .line 195
    goto :goto_0

    .line 198
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    if-eqz v2, :cond_2

    .line 199
    const-string/jumbo v2, "SoundRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    const-string/jumbo v5, "Start() called, but already recording to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->ZFwQoaMsdRwNqOTkWG5sFNIKnTcrKyb4dIRsDmVa68cFIA9m1jUiaqOHngvgXrvD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 200
    goto :goto_0

    .line 202
    :cond_2
    const-string/jumbo v2, "SoundRecorder"

    const-string/jumbo v3, "Start() called"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 203
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/SoundRecorder;->T3TEUSUxjrJVucuujQ9pjstrX3UcxHV1L9cOGs7CI5pfz9hjmRfdL7GRyW8ebdVq:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 204
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    const-string/jumbo v4, "Start"

    const/16 v5, 0x2c1

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 206
    goto :goto_0

    .line 210
    :cond_3
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundRecorder;->T3TEUSUxjrJVucuujQ9pjstrX3UcxHV1L9cOGs7CI5pfz9hjmRfdL7GRyW8ebdVq:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 211
    new-instance v2, Ljava/io/File;

    move-object v12, v2

    move-object v2, v12

    move-object v3, v12

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/SoundRecorder;->T3TEUSUxjrJVucuujQ9pjstrX3UcxHV1L9cOGs7CI5pfz9hjmRfdL7GRyW8ebdVq:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    move-object v12, v2

    move-object v2, v12

    move-object v3, v12

    .line 212
    move-object v1, v3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 213
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    .line 216
    :cond_4
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    move-object v5, v0

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/SoundRecorder;->T3TEUSUxjrJVucuujQ9pjstrX3UcxHV1L9cOGs7CI5pfz9hjmRfdL7GRyW8ebdVq:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/SoundRecorder$a;-><init>(Lcom/google/appinventor/components/runtime/SoundRecorder;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 224
    .line 226
    move-object v2, v0

    :try_start_1
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    move-object v1, v2

    .line 1092
    const-string/jumbo v2, "SoundRecorder"

    const-string/jumbo v3, "starting"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-result v2

    .line 1095
    move-object v2, v1

    :try_start_2
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 1104
    .line 236
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StartedRecording()V

    .line 237
    goto/16 :goto_0

    .line 217
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 218
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    const-string/jumbo v4, "Start"

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 219
    goto/16 :goto_0

    .line 220
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 221
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    const-string/jumbo v4, "Start"

    const/16 v5, 0x322

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v1

    .line 222
    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 221
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 223
    goto/16 :goto_0

    .line 1096
    :catch_2
    move-exception v2

    move-object v1, v2

    .line 1100
    :try_start_3
    const-string/jumbo v2, "SoundRecorder"

    const-string/jumbo v3, "got IllegalStateException. Are there two recorders running?"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 1103
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v12, v2

    move-object v2, v12

    move-object v3, v12

    const-string/jumbo v4, "Is there another recording running?"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 227
    :catch_3
    move-exception v2

    move-object v1, v2

    .line 231
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    .line 232
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    const-string/jumbo v4, "Start"

    const/16 v5, 0x322

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v1

    .line 233
    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 232
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 234
    goto/16 :goto_0
.end method

.method public final StartedRecording()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the recorder has started, and can be stopped."
    .end annotation

    .prologue
    .line 343
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "StartedRecording"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 344
    return-void
.end method

.method public final Stop()V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to stop the sound recorder."
    .end annotation

    .prologue
    .line 298
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    if-nez v2, :cond_0

    .line 299
    const-string/jumbo v2, "SoundRecorder"

    const-string/jumbo v3, "Stop() called, but already stopped."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 300
    .line 313
    :goto_0
    return-void

    .line 303
    :cond_0
    :try_start_0
    const-string/jumbo v2, "SoundRecorder"

    const-string/jumbo v3, "Stop() called"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 304
    const-string/jumbo v2, "SoundRecorder"

    const-string/jumbo v3, "stopping"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 305
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->stop()V

    .line 306
    const-string/jumbo v2, "SoundRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "Firing AfterSoundRecorded with "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->ZFwQoaMsdRwNqOTkWG5sFNIKnTcrKyb4dIRsDmVa68cFIA9m1jUiaqOHngvgXrvD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 307
    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->ZFwQoaMsdRwNqOTkWG5sFNIKnTcrKyb4dIRsDmVa68cFIA9m1jUiaqOHngvgXrvD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/SoundRecorder;->AfterSoundRecorded(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    .line 312
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    .line 313
    goto :goto_0

    .line 309
    :catch_0
    move-exception v2

    move-object v2, v0

    :try_start_1
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    const-string/jumbo v4, "Stop"

    const/16 v5, 0x321

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    .line 312
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    .line 313
    goto :goto_0

    .line 311
    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    .line 312
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    .line 313
    move-object v2, v1

    throw v2
.end method

.method public final StoppedRecording()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the recorder has stopped, and can be started again."
    .end annotation

    .prologue
    .line 348
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "StoppedRecording"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 349
    return-void
.end method

.method public final onError(Landroid/media/MediaRecorder;II)V
    .locals 10

    .prologue
    .line 241
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    if-eqz v4, :cond_0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/MediaRecorder;

    if-eq v4, v5, :cond_1

    .line 242
    :cond_0
    const-string/jumbo v4, "SoundRecorder"

    const-string/jumbo v5, "onError called with wrong recorder. Ignoring."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 243
    .line 253
    :goto_0
    return-void

    .line 245
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    const-string/jumbo v6, "onError"

    const/16 v7, 0x321

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 247
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->stop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    .line 252
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    .line 253
    goto :goto_0

    .line 248
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 249
    :try_start_1
    const-string/jumbo v4, "SoundRecorder"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 251
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    .line 252
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    .line 253
    goto :goto_0

    .line 251
    :catchall_0
    move-exception v4

    move-object v1, v4

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    .line 252
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    .line 253
    move-object v4, v1

    throw v4
.end method

.method public final onInfo(Landroid/media/MediaRecorder;II)V
    .locals 9

    .prologue
    .line 258
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    if-eqz v4, :cond_0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/MediaRecorder;

    if-eq v4, v5, :cond_1

    .line 259
    :cond_0
    const-string/jumbo v4, "SoundRecorder"

    const-string/jumbo v5, "onInfo called with wrong recorder. Ignoring."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 260
    .line 290
    :goto_0
    return-void

    .line 262
    :cond_1
    move v4, v2

    sparse-switch v4, :sswitch_data_0

    .line 278
    goto :goto_0

    .line 264
    :sswitch_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    const-string/jumbo v6, "recording"

    const/16 v7, 0x324

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 266
    .line 281
    :goto_1
    :try_start_0
    const-string/jumbo v4, "SoundRecorder"

    const-string/jumbo v5, "Recoverable condition while recording. Will attempt to stop normally."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 282
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    .line 289
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    .line 290
    goto :goto_0

    .line 268
    :sswitch_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    const-string/jumbo v6, "recording"

    const/16 v7, 0x325

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 270
    goto :goto_1

    .line 272
    :sswitch_2
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    const-string/jumbo v6, "recording"

    const/16 v7, 0x321

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 273
    goto :goto_1

    .line 283
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 284
    :try_start_1
    const-string/jumbo v4, "SoundRecorder"

    const-string/jumbo v5, "SoundRecorder was not in a recording state."

    move-object v6, v1

    invoke-static {v4, v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 285
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    const-string/jumbo v6, "Stop"

    const/16 v7, 0x323

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEventDialog(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    .line 289
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    .line 290
    goto :goto_0

    .line 288
    :catchall_0
    move-exception v4

    move-object v1, v4

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    .line 289
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    .line 290
    move-object v4, v1

    throw v4

    .line 262
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x320 -> :sswitch_0
        0x321 -> :sswitch_1
    .end sparse-switch
.end method
