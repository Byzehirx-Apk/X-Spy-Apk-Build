.class public Lcom/google/appinventor/components/runtime/Wallpaper;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->UTILITIES:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/wallpaper.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.WRITE_SETTINGS",
        "android.permission.SET_WALLPAPER",
        "android.permission.READ_EXTERNAL_STORAGE",
        "android.permission.WRITE_EXTERNAL_STORAGE"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Wallpaper$a;,
        Lcom/google/appinventor/components/runtime/Wallpaper$b;
    }
.end annotation


# instance fields
.field private KQG8OTRvHbMOByZu4oimrjMQImUXcBx4aj5wSGopdAdeTIpEFw8C79s3zi6NeXhR:Ljava/lang/String;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 59
    move-object v2, v0

    const-string/jumbo v3, "wallpaperPicture.png"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Wallpaper;->KQG8OTRvHbMOByZu4oimrjMQImUXcBx4aj5wSGopdAdeTIpEFw8C79s3zi6NeXhR:Ljava/lang/String;

    .line 65
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Wallpaper;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 66
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Wallpaper;->context:Landroid/content/Context;

    .line 67
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Wallpaper;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 68
    move-object v2, v0

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Wallpaper;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Wallpaper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/WallpaperManager;

    .line 69
    const-string/jumbo v2, "Wallpaper"

    const-string/jumbo v3, "Wallpaper Created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 70
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Wallpaper;)Landroid/app/WallpaperManager;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Wallpaper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/WallpaperManager;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Wallpaper;)Lcom/google/appinventor/components/runtime/Form;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Wallpaper;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v0, v1

    return-object v0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Z)V
    .locals 9

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 102
    :try_start_0
    new-instance v3, Lcom/google/appinventor/components/runtime/Wallpaper$b;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Wallpaper$b;-><init>(Lcom/google/appinventor/components/runtime/Wallpaper;Z)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Wallpaper$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 105
    .line 107
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 104
    const-string/jumbo v3, "Wallpaper"

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 107
    :cond_0
    goto :goto_0
.end method


# virtual methods
.method public Clear()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove any currently set system wallpaper, reverting to the system\'s built-in wallpaper."
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Wallpaper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/WallpaperManager;

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->clear()V

    .line 77
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Wallpaper;->WallpaperCleared()V

    .line 78
    const-string/jumbo v2, "Wallpaper"

    const-string/jumbo v3, "Wallpaper cleared"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 81
    .line 82
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 80
    const-string/jumbo v2, "Wallpaper"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 82
    goto :goto_0
.end method

.method public ClearWallpaper()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reset all wallpaper to the factory default. This block works only on devices with Android 9+."
    .end annotation

    .prologue
    .line 184
    move-object v0, p0

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 185
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Wallpaper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/WallpaperManager;

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->clearWallpaper()V

    .line 186
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Wallpaper;->WallpaperCleared()V

    .line 187
    const-string/jumbo v2, "Wallpaper"

    const-string/jumbo v3, "Wallpaper cleared"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 191
    .line 192
    :cond_0
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 190
    const-string/jumbo v2, "Wallpaper"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 192
    goto :goto_0
.end method

.method public DesiredMinimumHeight()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the desired minimum height for the wallpaper."
    .end annotation

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Wallpaper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public DesiredMinimumWidth()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the desired minimum width for the wallpaper."
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Wallpaper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public GetWallpaper()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Retrieve the current system wallpaper; if no wallpaper is set, the system built-in static wallpaper is returned."
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Wallpaper;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    new-instance v3, Lcom/google/appinventor/components/runtime/Wallpaper$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/Wallpaper$1;-><init>(Lcom/google/appinventor/components/runtime/Wallpaper;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 206
    return-void
.end method

.method public GotWallpaper(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that the component got the current system wallpaper."
    .end annotation

    .prologue
    .line 210
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "GotWallpaper"

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

    .line 211
    return-void
.end method

.method public IsSetWallpaperAllowed()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns whether the calling package is allowed to set the wallpaper for the calling user. This block works only on devices with Android 7+."
    .end annotation

    .prologue
    .line 166
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 167
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Wallpaper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->isSetWallpaperAllowed()Z

    move-result v1

    move v0, v1

    .line 169
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public IsWallpaperSupported()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns whether wallpapers are supported for the calling user. This block works only on devices with Android 6+."
    .end annotation

    .prologue
    .line 174
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 175
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Wallpaper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    move-result v1

    move v0, v1

    .line 177
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public SaveUtil(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 239
    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move-object v2, v4

    .line 241
    move-object v4, v1

    :try_start_0
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v1, v4

    .line 242
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v3, v4

    .line 243
    move-object v4, v1

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v6, 0x0

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    .line 244
    new-instance v4, Ljava/io/File;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Wallpaper;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStorageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Wallpaper;->KQG8OTRvHbMOByZu4oimrjMQImUXcBx4aj5wSGopdAdeTIpEFw8C79s3zi6NeXhR:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 245
    new-instance v4, Ljava/io/FileOutputStream;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 246
    move-object v2, v5

    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 247
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 248
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 249
    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    move-object v1, v4

    .line 259
    move-object v4, v2

    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 260
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 263
    .line 249
    :goto_0
    move-object v4, v1

    move-object v0, v4

    .line 266
    :goto_1
    return-object v0

    .line 261
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 262
    const-string/jumbo v4, "Wallpaper"

    move-object v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 250
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 251
    move-object v4, v0

    :try_start_2
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Wallpaper;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    const-string/jumbo v6, "GetWallpaper"

    move-object v7, v1

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 257
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 259
    move-object v4, v2

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 260
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 263
    .line 266
    :cond_0
    :goto_2
    const-string/jumbo v4, "ERROR"

    move-object v0, v4

    goto :goto_1

    .line 261
    :catch_2
    move-exception v4

    move-object v1, v4

    .line 262
    const-string/jumbo v4, "Wallpaper"

    move-object v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 263
    goto :goto_2

    .line 252
    :catch_3
    move-exception v4

    move-object v1, v4

    .line 253
    :try_start_4
    const-string/jumbo v4, "Wallpaper"

    move-object v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    .line 257
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 259
    move-object v4, v2

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 260
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 263
    goto :goto_2

    .line 261
    :catch_4
    move-exception v4

    move-object v1, v4

    .line 262
    const-string/jumbo v4, "Wallpaper"

    move-object v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 263
    goto :goto_2

    .line 254
    :catch_5
    move-exception v4

    move-object v1, v4

    .line 255
    :try_start_6
    const-string/jumbo v4, "Wallpaper"

    move-object v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v4

    .line 257
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 259
    move-object v4, v2

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 260
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 263
    goto :goto_2

    .line 261
    :catch_6
    move-exception v4

    move-object v1, v4

    .line 262
    const-string/jumbo v4, "Wallpaper"

    move-object v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 263
    goto :goto_2

    .line 257
    :catchall_0
    move-exception v4

    move-object v1, v4

    move-object v4, v2

    if-eqz v4, :cond_1

    .line 259
    move-object v4, v2

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 260
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 263
    .line 265
    :cond_1
    :goto_3
    move-object v4, v1

    throw v4

    .line 261
    :catch_7
    move-exception v4

    move-object v2, v4

    .line 262
    const-string/jumbo v4, "Wallpaper"

    move-object v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_3
.end method

.method public SaveWallpaperAs(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "wallpaperPicture.png"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "After the user clicked on \"Get Wallpaper\" this will be the name for the wallpaper picture."
    .end annotation

    .prologue
    .line 230
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 231
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Wallpaper;->KQG8OTRvHbMOByZu4oimrjMQImUXcBx4aj5wSGopdAdeTIpEFw8C79s3zi6NeXhR:Ljava/lang/String;

    .line 235
    :goto_0
    const-string/jumbo v2, "Wallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Wallpaper save name is: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Wallpaper;->KQG8OTRvHbMOByZu4oimrjMQImUXcBx4aj5wSGopdAdeTIpEFw8C79s3zi6NeXhR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 236
    return-void

    .line 233
    :cond_0
    move-object v2, v0

    const-string/jumbo v3, "wallpaperPicture.png"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Wallpaper;->KQG8OTRvHbMOByZu4oimrjMQImUXcBx4aj5wSGopdAdeTIpEFw8C79s3zi6NeXhR:Ljava/lang/String;

    goto :goto_0
.end method

.method public SetLockScreenWallpaper(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Change the current lock screen wallpaper. This block works only on devices with Android 7+."
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/Wallpaper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Z)V

    .line 97
    return-void
.end method

.method public SetWallpaper(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Change the current system wallpaper."
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/Wallpaper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Z)V

    .line 92
    return-void
.end method

.method public WallpaperChanged(Z)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that the user has changed the wallpaper. This event will be invoked by the \"Set Wallpaper\" function."
    .end annotation

    .prologue
    .line 151
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "WallpaperChanged"

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

    .line 152
    return-void
.end method

.method public WallpaperCleared()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that the user has cleared/deleted the wallpaper."
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "WallpaperCleared"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 87
    return-void
.end method
