.class public Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field public static final ACTION_DATA:Ljava/lang/String; = "ActionData"

.field public static final ACTION_SUCESS:Ljava/lang/String; = "ActionSuccess"

.field public static final FULLSCREEN_VIDEO_ACTION_DURATION:I = 0xc4

.field public static final FULLSCREEN_VIDEO_ACTION_FULLSCREEN:I = 0xc3

.field public static final FULLSCREEN_VIDEO_ACTION_PAUSE:I = 0xc0

.field public static final FULLSCREEN_VIDEO_ACTION_PLAY:I = 0xbf

.field public static final FULLSCREEN_VIDEO_ACTION_SEEK:I = 0xbe

.field public static final FULLSCREEN_VIDEO_ACTION_SOURCE:I = 0xc2

.field public static final FULLSCREEN_VIDEO_ACTION_STOP:I = 0xc1

.field public static final FULLSCREEN_VIDEO_DIALOG_FLAG:I = 0xbd

.field public static final VIDEOPLAYER_FULLSCREEN:Ljava/lang/String; = "FullScreenKey"

.field public static final VIDEOPLAYER_PLAYING:Ljava/lang/String; = "PlayingKey"

.field public static final VIDEOPLAYER_POSITION:Ljava/lang/String; = "PositionKey"

.field public static final VIDEOPLAYER_SOURCE:Ljava/lang/String; = "SourceKey"


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/Dialog;

.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/os/Bundle;

.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/CustomMediaController;

.field private mHandler:Landroid/os/Handler;

.field private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/FrameLayout$LayoutParams;

.field private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Form;

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form;Landroid/os/Handler;)V
    .locals 10

    .prologue
    .line 99
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 76
    move-object v3, v0

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, -0x1

    const/4 v7, -0x2

    const/16 v8, 0x50

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/FrameLayout$LayoutParams;

    .line 82
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer;

    .line 101
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Form;

    .line 102
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mHandler:Landroid/os/Handler;

    .line 104
    move-object v3, v0

    new-instance v4, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$1;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$1;-><init>(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;Landroid/content/Context;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/Dialog;

    .line 125
    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/VideoPlayer;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    .prologue
    .line 240
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string/jumbo v4, "Form.doFullScreenVideoAction"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "Source:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " Data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 241
    new-instance v4, Landroid/os/Bundle;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 242
    move-object v3, v5

    const-string/jumbo v5, "ActionSuccess"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 243
    move-object v4, v2

    const-string/jumbo v5, "FullScreenKey"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 244
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer;

    .line 245
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/os/Bundle;

    .line 246
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 247
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0xbd

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->showDialog(I)V

    .line 248
    move-object v4, v3

    move-object v0, v4

    .line 273
    :goto_0
    return-object v0

    .line 250
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->pause()V

    .line 251
    move-object v4, v3

    const-string/jumbo v5, "ActionSuccess"

    move-object v6, v0

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/os/Bundle;

    const-string/jumbo v8, "SourceKey"

    .line 252
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 251
    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->setSource(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 253
    move-object v4, v3

    move-object v0, v4

    goto :goto_0

    .line 256
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->showing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 257
    move-object v4, v3

    const-string/jumbo v5, "PlayingKey"

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    .line 258
    invoke-virtual {v6}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v6

    .line 257
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 259
    move-object v4, v3

    const-string/jumbo v5, "PositionKey"

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    .line 260
    invoke-virtual {v6}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v6

    .line 259
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    move-object v4, v3

    const-string/jumbo v5, "SourceKey"

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/os/Bundle;

    const-string/jumbo v7, "SourceKey"

    .line 263
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 261
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer;

    .line 266
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/os/Bundle;

    .line 268
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0xbd

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dismissDialog(I)V

    .line 269
    move-object v4, v3

    move-object v0, v4

    goto :goto_0

    .line 272
    :cond_2
    move-object v4, v3

    const-string/jumbo v5, "ActionSuccess"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 273
    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/os/Bundle;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)Landroid/widget/VideoView;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)Lcom/google/appinventor/components/runtime/VideoPlayer;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public createFullScreenVideoDialog()Landroid/app/Dialog;
    .locals 9

    .prologue
    .line 283
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/os/Bundle;

    if-nez v2, :cond_0

    .line 284
    const-string/jumbo v2, "Form.createFullScreenVideoDialog"

    const-string/jumbo v3, "mFullScreenVideoBundle is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 286
    :cond_0
    move-object v2, v0

    new-instance v3, Landroid/widget/VideoView;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v4, v5}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    .line 287
    move-object v2, v0

    new-instance v3, Landroid/widget/FrameLayout;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/FrameLayout;

    .line 288
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/util/CustomMediaController;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/util/CustomMediaController;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/CustomMediaController;

    .line 290
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setId(I)V

    .line 291
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/FrameLayout;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 293
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/CustomMediaController;

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 295
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    new-instance v3, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$2;-><init>(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 303
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/CustomMediaController;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->setAnchorView(Landroid/view/View;)V

    .line 305
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->ScreenOrientation()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    .line 306
    move-object v1, v3

    const-string/jumbo v3, "landscape"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    const-string/jumbo v3, "sensorLandscape"

    .line 307
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    const-string/jumbo v3, "reverseLandscape"

    .line 308
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 309
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, -0x2

    const/4 v6, -0x1

    const/16 v7, 0x11

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 318
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/FrameLayout;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 325
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/CustomMediaController;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/FrameLayout;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->addTo(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    .line 328
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/Dialog;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 329
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/Dialog;

    move-object v0, v2

    return-object v0

    .line 313
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, -0x1

    const/4 v6, -0x2

    const/16 v7, 0x11

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public dialogInitialized()Z
    .locals 2

    .prologue
    .line 348
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 401
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer;

    if-eqz v2, :cond_0

    .line 402
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Completed()V

    .line 404
    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7

    .prologue
    .line 411
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "FullScreenVideoUtil..onPrepared"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Seeking to:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/os/Bundle;

    const-string/jumbo v5, "PositionKey"

    .line 415
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 411
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 416
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/os/Bundle;

    const-string/jumbo v4, "PositionKey"

    .line 417
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 416
    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->seekTo(I)V

    .line 418
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/os/Bundle;

    const-string/jumbo v3, "PlayingKey"

    .line 419
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 420
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 431
    :goto_0
    return-void

    .line 422
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 423
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$3;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$3;-><init>(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 431
    goto :goto_0
.end method

.method public declared-synchronized performAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 12

    .prologue
    .line 164
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v10, p0

    monitor-enter v10

    :try_start_0
    const-string/jumbo v5, "Form.fullScreenVideoAction"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string/jumbo v8, "Actions:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " Source:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": Current Source:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " Data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 166
    new-instance v5, Landroid/os/Bundle;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    .line 167
    move-object v4, v6

    const-string/jumbo v6, "ActionSuccess"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 168
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer;

    if-ne v5, v6, :cond_7

    .line 169
    move v5, v1

    packed-switch v5, :pswitch_data_0

    .line 213
    .line 232
    :cond_0
    move-object v5, v4

    const-string/jumbo v6, "ActionSuccess"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    move-object v5, v4

    move-object v0, v5

    :goto_0
    monitor-exit v10

    return-object v0

    .line 171
    :pswitch_0
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    :try_start_1
    check-cast v7, Landroid/os/Bundle;

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/VideoPlayer;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 173
    :pswitch_1
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->showing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 174
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    invoke-virtual {v5}, Landroid/widget/VideoView;->pause()V

    .line 175
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    .line 177
    :cond_1
    move-object v5, v4

    const-string/jumbo v6, "ActionSuccess"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 178
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    .line 180
    :pswitch_2
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->showing()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 181
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    invoke-virtual {v5}, Landroid/widget/VideoView;->start()V

    .line 182
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    .line 184
    :cond_2
    move-object v5, v4

    const-string/jumbo v6, "ActionSuccess"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 185
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    .line 187
    :pswitch_3
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->showing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 188
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    move-object v6, v3

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/VideoView;->seekTo(I)V

    .line 189
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    .line 191
    :cond_3
    move-object v5, v4

    const-string/jumbo v6, "ActionSuccess"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    .line 194
    :pswitch_4
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->showing()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 195
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    invoke-virtual {v5}, Landroid/widget/VideoView;->stopPlayback()V

    .line 196
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    .line 198
    :cond_4
    move-object v5, v4

    const-string/jumbo v6, "ActionSuccess"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 199
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    .line 201
    :pswitch_5
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->showing()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 202
    move-object v5, v4

    const-string/jumbo v6, "ActionSuccess"

    move-object v7, v0

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->setSource(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 203
    move-object v5, v4

    move-object v0, v5

    goto/16 :goto_0

    .line 205
    :cond_5
    move-object v5, v4

    const-string/jumbo v6, "ActionSuccess"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 206
    move-object v5, v4

    move-object v0, v5

    goto/16 :goto_0

    .line 208
    :pswitch_6
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->showing()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 209
    move-object v5, v4

    const-string/jumbo v6, "ActionData"

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    invoke-virtual {v7}, Landroid/widget/VideoView;->getDuration()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    move-object v5, v4

    move-object v0, v5

    goto/16 :goto_0

    .line 212
    :cond_6
    move-object v5, v4

    const-string/jumbo v6, "ActionSuccess"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 213
    move-object v5, v4

    move-object v0, v5

    goto/16 :goto_0

    .line 215
    :cond_7
    move v5, v1

    const/16 v6, 0xc3

    if-ne v5, v6, :cond_0

    .line 217
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->showing()Z

    move-result v5

    if-eqz v5, :cond_8

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer;

    if-eqz v5, :cond_8

    .line 218
    new-instance v5, Landroid/os/Bundle;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    .line 219
    move-object v1, v6

    const-string/jumbo v6, "PositionKey"

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    .line 220
    invoke-virtual {v7}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v7

    .line 219
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    move-object v5, v1

    const-string/jumbo v6, "PlayingKey"

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    .line 222
    invoke-virtual {v7}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v7

    .line 221
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 223
    move-object v5, v1

    const-string/jumbo v6, "SourceKey"

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/os/Bundle;

    const-string/jumbo v8, "SourceKey"

    .line 225
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 223
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/VideoPlayer;->fullScreenKilled(Landroid/os/Bundle;)V

    .line 228
    :cond_8
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    check-cast v7, Landroid/os/Bundle;

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/VideoPlayer;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    move-object v0, v5

    goto/16 :goto_0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0xbe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public prepareFullScreenVideoDialog(Landroid/app/Dialog;)V
    .locals 4

    .prologue
    .line 340
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 341
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 342
    return-void
.end method

.method public setSource(Ljava/lang/String;Z)Z
    .locals 12

    .prologue
    .line 377
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v2

    if-eqz v3, :cond_0

    .line 378
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/os/Bundle;

    const-string/jumbo v4, "PositionKey"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 381
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->loadVideoView(Landroid/widget/VideoView;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V

    .line 383
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/os/Bundle;

    const-string/jumbo v4, "SourceKey"

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 385
    const/4 v3, 0x1

    move v0, v3

    .line 392
    :goto_0
    return v0

    .line 386
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 387
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer;

    const-string/jumbo v5, "Source"

    move-object v6, v1

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 388
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 390
    :catch_1
    move-exception v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer;

    const-string/jumbo v5, "Source"

    const/16 v6, 0x2bd

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 392
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public showing()Z
    .locals 2

    .prologue
    .line 356
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->dialogInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public startDialog()V
    .locals 13

    .prologue
    .line 438
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/os/Bundle;

    const-string/jumbo v5, "SourceKey"

    .line 440
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 438
    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->loadVideoView(Landroid/widget/VideoView;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 448
    :goto_0
    return-void

    .line 441
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 442
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer;

    const-string/jumbo v4, "Source"

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 448
    goto :goto_0

    .line 443
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 444
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer;

    const-string/jumbo v4, "Source"

    const/16 v5, 0x2bd

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/os/Bundle;

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v1

    .line 446
    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 444
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 447
    goto :goto_0
.end method
