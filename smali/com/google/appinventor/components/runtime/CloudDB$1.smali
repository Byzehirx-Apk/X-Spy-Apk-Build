.class final Lcom/google/appinventor/components/runtime/CloudDB$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/CloudDB;->startListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/CloudDB;)V
    .locals 4

    .prologue
    .line 331
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/CloudDB$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    .line 333
    move-object v1, p0

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/CloudDB$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/CloudDB;->getJedis(Z)Lredis/clients/jedis/Jedis;

    move-result-object v4

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    .line 334
    move-object v2, v5

    if-eqz v4, :cond_1

    .line 336
    move-object v4, v1

    :try_start_0
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/CloudDB$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    new-instance v5, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/CloudDB$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;)V

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/CloudDB;->access$002(Lcom/google/appinventor/components/runtime/CloudDB;Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;)Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    move-result-object v4

    .line 337
    move-object v4, v2

    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/CloudDB$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/CloudDB;->access$000(Lcom/google/appinventor/components/runtime/CloudDB;)Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/CloudDB$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v9}, Lcom/google/appinventor/components/runtime/CloudDB;->access$100(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Lredis/clients/jedis/Jedis;->subscribe(Lredis/clients/jedis/JedisPubSub;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .line 368
    :goto_0
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/CloudDB$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/CloudDB;->access$202(Lcom/google/appinventor/components/runtime/CloudDB;Z)Z

    move-result v4

    .line 369
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/CloudDB$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/CloudDB;->access$300(Lcom/google/appinventor/components/runtime/CloudDB;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/CloudDB$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/CloudDB;->access$400(Lcom/google/appinventor/components/runtime/CloudDB;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 370
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/CloudDB$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/CloudDB;->access$500(Lcom/google/appinventor/components/runtime/CloudDB;)V

    .line 376
    :cond_0
    return-void

    .line 338
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 339
    const-string/jumbo v4, "CloudDB"

    const-string/jumbo v5, "Error in listener thread"

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 341
    move-object v4, v2

    :try_start_1
    invoke-virtual {v4}, Lredis/clients/jedis/Jedis;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 344
    .line 349
    :goto_1
    const-wide/16 v4, 0xbb8

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 351
    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_1

    .line 355
    :catch_2
    move-exception v4

    goto :goto_0

    .line 361
    :cond_1
    const-wide/16 v4, 0xbb8

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 363
    goto :goto_0

    :catch_3
    move-exception v4

    goto :goto_0
.end method
