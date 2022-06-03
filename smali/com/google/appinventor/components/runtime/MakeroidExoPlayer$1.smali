.class final Lcom/google/appinventor/components/runtime/MakeroidExoPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;)V
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadingChanged(Z)V
    .locals 7

    .prologue
    .line 215
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;)Z

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;)Z

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;)Z

    move-result v5

    move v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->StatusChanged(ZZZZ)V

    .line 216
    return-void
.end method

.method public final onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method public final onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 6

    .prologue
    .line 244
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->OnPlayerError(Ljava/lang/String;)V

    .line 245
    const-string/jumbo v2, "ExoPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 246
    return-void
.end method

.method public final onPlayerStateChanged(ZI)V
    .locals 5

    .prologue
    .line 220
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 222
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 223
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;)Z

    move-result v3

    .line 224
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R(Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;)Z

    move-result v3

    .line 225
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE(Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;)Z

    move-result v3

    .line 227
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->Completed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .line 232
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 229
    const-string/jumbo v3, "ExoPlayer"

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 232
    :cond_1
    goto :goto_0
.end method

.method public final onPositionDiscontinuity(I)V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public final onRepeatModeChanged(I)V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method public final onSeekProcessed()V
    .locals 0

    .prologue
    .line 258
    return-void
.end method

.method public final onShuffleModeEnabledChanged(Z)V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public final onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public final onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 21

    .prologue
    .line 119
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v14, "ERROR"

    move-object v2, v14

    .line 120
    const-string/jumbo v14, "ERROR"

    move-object v3, v14

    .line 121
    const-string/jumbo v14, "ERROR"

    move-object v4, v14

    .line 122
    const-string/jumbo v14, "ERROR"

    move-object v5, v14

    .line 123
    const-string/jumbo v14, "ERROR"

    move-object v6, v14

    .line 125
    const/4 v14, 0x0

    move v7, v14

    :goto_0
    move v14, v7

    move-object v15, v1

    iget v15, v15, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v14, v15, :cond_8

    .line 126
    move-object v14, v1

    move v15, v7

    invoke-virtual {v14, v15}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v14

    move-object v8, v14

    .line 127
    const/4 v14, 0x0

    move v9, v14

    :goto_1
    move v14, v9

    move-object v15, v8

    iget v15, v15, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v14, v15, :cond_7

    .line 128
    move-object v14, v8

    move v15, v9

    invoke-virtual {v14, v15}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v14

    iget-object v14, v14, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    .line 129
    move-object v10, v15

    if-eqz v14, :cond_6

    .line 130
    const/4 v14, 0x0

    move v11, v14

    :goto_2
    move v14, v11

    move-object v15, v10

    invoke-virtual {v15}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v15

    if-ge v14, v15, :cond_6

    .line 131
    move-object v14, v10

    move v15, v11

    invoke-virtual {v14, v15}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v14

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    .line 132
    move-object v12, v15

    instance-of v14, v14, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    if-eqz v14, :cond_5

    .line 133
    move-object v14, v12

    check-cast v14, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    .line 134
    move-object v12, v15

    iget-object v14, v14, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->id:Ljava/lang/String;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    .line 135
    move-object v13, v15

    if-eqz v14, :cond_0

    move-object v14, v13

    const-string/jumbo v15, "TALB"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 136
    move-object v14, v12

    iget-object v14, v14, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    move-object v4, v14

    .line 138
    :cond_0
    move-object v14, v13

    if-eqz v14, :cond_1

    move-object v14, v13

    const-string/jumbo v15, "TIT2"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 139
    move-object v14, v12

    iget-object v14, v14, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    move-object v3, v14

    .line 141
    :cond_1
    move-object v14, v13

    if-eqz v14, :cond_2

    move-object v14, v13

    const-string/jumbo v15, "TPE1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 142
    move-object v14, v12

    iget-object v14, v14, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    move-object v2, v14

    .line 144
    :cond_2
    move-object v14, v13

    if-eqz v14, :cond_3

    move-object v14, v13

    const-string/jumbo v15, "TPE2"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 145
    move-object v14, v12

    iget-object v14, v14, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    move-object v5, v14

    .line 147
    :cond_3
    move-object v14, v13

    if-eqz v14, :cond_4

    move-object v14, v13

    const-string/jumbo v15, "TRCK"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 148
    move-object v14, v12

    iget-object v14, v14, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    move-object v6, v14

    .line 150
    :cond_4
    move-object v14, v0

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    invoke-virtual/range {v14 .. v19}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->GotMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 127
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 125
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 156
    :cond_8
    return-void
.end method
