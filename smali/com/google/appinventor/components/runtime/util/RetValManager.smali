.class public Lcom/google/appinventor/components/runtime/util/RetValManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final semaphore:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 30
    new-instance v0, Ljava/lang/Object;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static appendReturnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-object v5, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v3, v6

    monitor-enter v5

    .line 53
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v5

    .line 55
    move-object v5, v4

    :try_start_1
    const-string/jumbo v6, "status"

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 56
    move-object v5, v4

    const-string/jumbo v6, "type"

    const-string/jumbo v7, "return"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 57
    move-object v5, v4

    const-string/jumbo v6, "value"

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 58
    move-object v5, v4

    const-string/jumbo v6, "blockid"

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 62
    .line 63
    :try_start_2
    sget-object v5, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    move v0, v5

    .line 64
    sget-object v5, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 65
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getUseWebRTC()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 66
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv()V

    .line 70
    :cond_0
    :goto_0
    move-object v5, v3

    monitor-exit v5

    :goto_1
    return-void

    .line 59
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 60
    const-string/jumbo v5, "RetValManager"

    const-string/jumbo v6, "Error building retval"

    move-object v7, v0

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    .line 61
    move-object v5, v3

    monitor-exit v5

    goto :goto_1

    .line 67
    :cond_1
    move v5, v0

    if-eqz v5, :cond_0

    .line 68
    sget-object v5, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v5

    move-object v0, v5

    move-object v5, v3

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v0

    throw v5
.end method

.method public static assetTransferred(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 157
    move-object v0, p0

    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v1, v4

    monitor-enter v3

    .line 158
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 160
    move-object v3, v2

    :try_start_1
    const-string/jumbo v4, "status"

    const-string/jumbo v5, "OK"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 161
    move-object v3, v2

    const-string/jumbo v4, "type"

    const-string/jumbo v5, "assetTransferred"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 162
    move-object v3, v0

    if-eqz v3, :cond_0

    .line 163
    move-object v3, v2

    const-string/jumbo v4, "value"

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 167
    .line 168
    :cond_0
    :try_start_2
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    move v0, v3

    .line 169
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 170
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getUseWebRTC()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 171
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv()V

    .line 175
    :cond_1
    :goto_0
    move-object v3, v1

    monitor-exit v3

    :goto_1
    return-void

    .line 164
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 165
    const-string/jumbo v3, "RetValManager"

    const-string/jumbo v4, "Error building retval"

    move-object v5, v0

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 166
    move-object v3, v1

    monitor-exit v3

    goto :goto_1

    .line 172
    :cond_2
    move v3, v0

    if-eqz v3, :cond_1

    .line 173
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v3

    move-object v0, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v0

    throw v3
.end method

.method public static extensionsLoaded()V
    .locals 7

    .prologue
    .line 183
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v0, v4

    monitor-enter v3

    .line 184
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    .line 186
    move-object v3, v1

    :try_start_1
    const-string/jumbo v4, "status"

    const-string/jumbo v5, "OK"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 187
    move-object v3, v1

    const-string/jumbo v4, "type"

    const-string/jumbo v5, "extensionsLoaded"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 191
    .line 192
    :try_start_2
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    move v2, v3

    .line 193
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 194
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getUseWebRTC()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv()V

    .line 199
    :cond_0
    :goto_0
    move-object v3, v0

    monitor-exit v3

    :goto_1
    return-void

    .line 188
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 189
    const-string/jumbo v3, "RetValManager"

    const-string/jumbo v4, "Error building retval"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 190
    move-object v3, v0

    monitor-exit v3

    goto :goto_1

    .line 196
    :cond_1
    move v3, v2

    if-eqz v3, :cond_0

    .line 197
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v3

    move-object v1, v3

    move-object v3, v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v1

    throw v3
.end method

.method public static fetch(Z)Ljava/lang/String;
    .locals 9

    .prologue
    .line 211
    move v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide v1, v4

    .line 212
    sget-object v4, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v3, v5

    monitor-enter v4

    .line 213
    :goto_0
    :try_start_0
    sget-object v4, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v0

    if-eqz v4, :cond_0

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 215
    move-wide v6, v1

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x26ac

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 218
    :try_start_1
    sget-object v4, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    goto :goto_0

    .line 221
    :catch_0
    move-exception v4

    goto :goto_0

    .line 222
    :cond_0
    :try_start_2
    new-instance v4, Lorg/json/JSONArray;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sget-object v6, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    move-object v0, v4

    .line 223
    new-instance v4, Lorg/json/JSONObject;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v4

    .line 225
    move-object v4, v1

    :try_start_3
    const-string/jumbo v5, "status"

    const-string/jumbo v6, "OK"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 226
    move-object v4, v1

    const-string/jumbo v5, "values"

    move-object v6, v0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .line 230
    .line 231
    :try_start_4
    sget-object v4, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 232
    move-object v4, v1

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    monitor-exit v5

    move-object v0, v4

    :goto_1
    return-object v0

    .line 227
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 228
    const-string/jumbo v4, "RetValManager"

    const-string/jumbo v5, "Error fetching retvals"

    move-object v6, v0

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 229
    const-string/jumbo v4, "{\"status\" : \"BAD\", \"message\" : \"Failure in RetValManager\"}"

    move-object v5, v3

    monitor-exit v5

    move-object v0, v4

    goto :goto_1

    .line 233
    :catchall_0
    move-exception v4

    move-object v0, v4

    move-object v4, v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v4, v0

    throw v4
.end method

.method private static n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv()V
    .locals 7

    .prologue
    .line 240
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    .line 241
    move-object v0, v2

    const-string/jumbo v2, "status"

    const-string/jumbo v3, "OK"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 242
    move-object v1, v0

    const-string/jumbo v2, "values"

    new-instance v3, Lorg/json/JSONArray;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    sget-object v5, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 243
    move-object v1, v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ReplForm;->returnRetvals(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .line 248
    sget-object v1, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 249
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 245
    const-string/jumbo v1, "RetValManager"

    const-string/jumbo v2, "Error building retval"

    move-object v3, v0

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    .line 246
    goto :goto_0
.end method

.method public static popScreen(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 130
    move-object v0, p0

    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v1, v4

    monitor-enter v3

    .line 131
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 133
    move-object v3, v2

    :try_start_1
    const-string/jumbo v4, "status"

    const-string/jumbo v5, "OK"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 134
    move-object v3, v2

    const-string/jumbo v4, "type"

    const-string/jumbo v5, "popScreen"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 135
    move-object v3, v0

    if-eqz v3, :cond_0

    .line 136
    move-object v3, v2

    const-string/jumbo v4, "value"

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 140
    .line 141
    :cond_0
    :try_start_2
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    move v0, v3

    .line 142
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 143
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getUseWebRTC()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 144
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv()V

    .line 148
    :cond_1
    :goto_0
    move-object v3, v1

    monitor-exit v3

    :goto_1
    return-void

    .line 137
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 138
    const-string/jumbo v3, "RetValManager"

    const-string/jumbo v4, "Error building retval"

    move-object v5, v0

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 139
    move-object v3, v1

    monitor-exit v3

    goto :goto_1

    .line 145
    :cond_2
    move v3, v0

    if-eqz v3, :cond_1

    .line 146
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v3

    move-object v0, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v0

    throw v3
.end method

.method public static pushScreen(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, p1

    sget-object v4, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 102
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    .line 104
    move-object v4, v3

    :try_start_1
    const-string/jumbo v5, "status"

    const-string/jumbo v6, "OK"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 105
    move-object v4, v3

    const-string/jumbo v5, "type"

    const-string/jumbo v6, "pushScreen"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 106
    move-object v4, v3

    const-string/jumbo v5, "screen"

    move-object v6, v0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 107
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 108
    move-object v4, v3

    const-string/jumbo v5, "value"

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 112
    .line 113
    :cond_0
    :try_start_2
    sget-object v4, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    move v0, v4

    .line 114
    sget-object v4, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 115
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getUseWebRTC()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 116
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv()V

    .line 120
    :cond_1
    :goto_0
    move-object v4, v2

    monitor-exit v4

    :goto_1
    return-void

    .line 109
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 110
    const-string/jumbo v4, "RetValManager"

    const-string/jumbo v5, "Error building retval"

    move-object v6, v0

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 111
    move-object v4, v2

    monitor-exit v4

    goto :goto_1

    .line 117
    :cond_2
    move v4, v0

    if-eqz v4, :cond_1

    .line 118
    sget-object v4, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v4

    move-object v0, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v0

    throw v4
.end method

.method public static sendError(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 74
    move-object v0, p0

    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v1, v4

    monitor-enter v3

    .line 75
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 77
    move-object v3, v2

    :try_start_1
    const-string/jumbo v4, "status"

    const-string/jumbo v5, "OK"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 78
    move-object v3, v2

    const-string/jumbo v4, "type"

    const-string/jumbo v5, "error"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 79
    move-object v3, v2

    const-string/jumbo v4, "value"

    move-object v5, v0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 83
    .line 84
    :try_start_2
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    move v0, v3

    .line 85
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 86
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getUseWebRTC()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv()V

    .line 91
    :cond_0
    :goto_0
    move-object v3, v1

    monitor-exit v3

    :goto_1
    return-void

    .line 80
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 81
    const-string/jumbo v3, "RetValManager"

    const-string/jumbo v4, "Error building retval"

    move-object v5, v0

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 82
    move-object v3, v1

    monitor-exit v3

    goto :goto_1

    .line 88
    :cond_1
    move v3, v0

    if-eqz v3, :cond_0

    .line 89
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v3

    move-object v0, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v0

    throw v3
.end method
