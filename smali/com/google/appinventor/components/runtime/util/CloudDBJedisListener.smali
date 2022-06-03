.class public Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;
.super Lredis/clients/jedis/JedisPubSub;
.source "SourceFile"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field public cloudDB:Lcom/google/appinventor/components/runtime/CloudDB;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "CloudDB"

    sput-object v0, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/CloudDB;)V
    .locals 4

    .prologue
    .line 29
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lredis/clients/jedis/JedisPubSub;-><init>()V

    .line 30
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->cloudDB:Lcom/google/appinventor/components/runtime/CloudDB;

    .line 31
    move-object v2, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Thread;

    .line 32
    return-void
.end method


# virtual methods
.method public onMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v2

    const/4 v6, 0x0

    :try_start_0
    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    .line 53
    move-object v1, v6

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v2, v5

    .line 54
    move-object v5, v1

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 55
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v5

    :goto_0
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 58
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->cloudDB:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/CloudDB;->getForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    move-object v6, v3

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentationIfValueFileName(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    .line 59
    move-object v4, v6

    if-nez v5, :cond_0

    .line 60
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->cloudDB:Lcom/google/appinventor/components/runtime/CloudDB;

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/CloudDB;->DataChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->cloudDB:Lcom/google/appinventor/components/runtime/CloudDB;

    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/CloudDB;->DataChanged(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 70
    .line 71
    :cond_1
    :goto_1
    return-void

    .line 65
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 66
    sget-object v5, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "onMessage: JSONException"

    move-object v7, v1

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    .line 69
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->cloudDB:Lcom/google/appinventor/components/runtime/CloudDB;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "System Error: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v1

    invoke-virtual {v7}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 71
    goto :goto_1
.end method

.method public onSubscribe(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public terminate()V
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 75
    return-void
.end method
