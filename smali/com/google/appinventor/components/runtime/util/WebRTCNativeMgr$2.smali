.class final Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/PeerConnection$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V
    .locals 4

    .prologue
    .line 137
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAddStream(Lorg/webrtc/MediaStream;)V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public final onAddTrack(Lorg/webrtc/RtpReceiver;[Lorg/webrtc/MediaStream;)V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public final onDataChannel(Lorg/webrtc/DataChannel;)V
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "KodularWebRTC"

    const-string/jumbo v3, "Have Data Channel!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 147
    const-string/jumbo v2, "KodularWebRTC"

    const-string/jumbo v3, "v5"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 149
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$302(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Lorg/webrtc/DataChannel;)Lorg/webrtc/DataChannel;

    move-result-object v2

    .line 150
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->dataObserver:Lorg/webrtc/DataChannel$Observer;

    invoke-virtual {v2, v3}, Lorg/webrtc/DataChannel;->registerObserver(Lorg/webrtc/DataChannel$Observer;)V

    .line 151
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$402(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Z)Z

    move-result v2

    .line 152
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->timer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 154
    const-string/jumbo v2, "KodularWebRTC"

    const-string/jumbo v3, "Poller() Canceled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 156
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$500(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/util/TreeSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TreeSet;->clear()V

    .line 157
    return-void
.end method

.method public final onIceCandidate(Lorg/webrtc/IceCandidate;)V
    .locals 9

    .prologue
    .line 162
    move-object v0, p0

    move-object v1, p1

    :try_start_0
    const-string/jumbo v4, "KodularWebRTC"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "IceCandidate = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    invoke-virtual {v6}, Lorg/webrtc/IceCandidate;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 163
    move-object v4, v1

    iget-object v4, v4, Lorg/webrtc/IceCandidate;->sdp:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 164
    const-string/jumbo v4, "KodularWebRTC"

    const-string/jumbo v5, "IceCandidate is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 170
    :goto_0
    new-instance v4, Lorg/json/JSONObject;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 171
    move-object v2, v5

    const-string/jumbo v5, "nonce"

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$600(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/util/Random;

    move-result-object v6

    const v7, 0x186a0

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    .line 172
    new-instance v4, Lorg/json/JSONObject;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 173
    move-object v3, v5

    const-string/jumbo v5, "candidate"

    move-object v6, v1

    iget-object v6, v6, Lorg/webrtc/IceCandidate;->sdp:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 174
    move-object v4, v3

    const-string/jumbo v5, "sdpMLineIndex"

    move-object v6, v1

    iget v6, v6, Lorg/webrtc/IceCandidate;->sdpMLineIndex:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    .line 175
    move-object v4, v3

    const-string/jumbo v5, "sdpMid"

    move-object v6, v1

    iget-object v6, v6, Lorg/webrtc/IceCandidate;->sdpMid:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 176
    move-object v4, v2

    const-string/jumbo v5, "candidate"

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 177
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$200(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Lorg/json/JSONObject;)V

    .line 180
    .line 181
    :goto_1
    return-void

    .line 166
    :cond_0
    const-string/jumbo v4, "KodularWebRTC"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "IceCandidateSDP = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    iget-object v6, v6, Lorg/webrtc/IceCandidate;->sdp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 178
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 179
    const-string/jumbo v4, "KodularWebRTC"

    const-string/jumbo v5, "Exception during onIceCandidate"

    move-object v6, v2

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 181
    goto :goto_1
.end method

.method public final onIceCandidatesRemoved([Lorg/webrtc/IceCandidate;)V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public final onIceConnectionChange(Lorg/webrtc/PeerConnection$IceConnectionState;)V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public final onIceConnectionReceivingChange(Z)V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public final onIceGatheringChange(Lorg/webrtc/PeerConnection$IceGatheringState;)V
    .locals 5

    .prologue
    .line 194
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "KodularWebRTC"

    const-string/jumbo v3, "onIceGatheringChange: iceGatheringState = "

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 196
    return-void
.end method

.method public final onRemoveStream(Lorg/webrtc/MediaStream;)V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public final onRenegotiationNeeded()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public final onSignalingChange(Lorg/webrtc/PeerConnection$SignalingState;)V
    .locals 5

    .prologue
    .line 206
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "KodularWebRTC"

    const-string/jumbo v3, "onSignalingChange: signalingState = "

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 208
    return-void
.end method
