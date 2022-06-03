.class final Lcom/google/appinventor/components/runtime/CloudDB$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/CloudDB;->StoreValue(Ljava/lang/String;Ljava/lang/Object;)V
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
    .line 593
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/CloudDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .prologue
    .line 595
    move-object v0, p0

    const/4 v6, 0x0

    move-object v1, v6

    .line 596
    const/4 v6, 0x0

    move-object v2, v6

    .line 597
    const/4 v6, 0x0

    move-object v3, v6

    .line 604
    :goto_0
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/google/appinventor/components/runtime/CloudDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/CloudDB;->access$600(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/List;

    move-result-object v6

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v5, v7

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    move-object v6, v0

    :try_start_1
    iget-object v6, v6, Lcom/google/appinventor/components/runtime/CloudDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/CloudDB;->access$600(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 609
    if-nez v6, :cond_1

    .line 613
    const/4 v6, 0x0

    move-object v4, v6

    .line 623
    :goto_1
    move-object v6, v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 627
    move-object v6, v4

    if-nez v6, :cond_2

    .line 629
    move-object v6, v2

    if-eqz v6, :cond_0

    .line 630
    move-object v6, v1

    :try_start_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 634
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/CloudDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    const-string/jumbo v7, "local key = KEYS[1];local value = ARGV[1];local topublish = cjson.decode(ARGV[2]);local project = ARGV[3];local newtable = {};table.insert(newtable, key);table.insert(newtable, topublish);redis.call(\"publish\", project, cjson.encode(newtable));return redis.call(\'set\', project .. \":\" .. key, value);"

    const-string/jumbo v8, "765978e4c340012f50733280368a0ccc4a14dfb7"

    const/4 v9, 0x1

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v2

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move-object v13, v3

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x2

    move-object v13, v5

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x3

    move-object v13, v0

    iget-object v13, v13, Lcom/google/appinventor/components/runtime/CloudDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v13}, Lcom/google/appinventor/components/runtime/CloudDB;->access$100(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/CloudDB;->jEval(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    .line 639
    .line 682
    :cond_0
    :goto_2
    return-void

    .line 618
    :cond_1
    move-object v6, v0

    :try_start_3
    iget-object v6, v6, Lcom/google/appinventor/components/runtime/CloudDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/CloudDB;->access$600(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/appinventor/components/runtime/CloudDB$a;

    move-object v4, v6

    goto :goto_1

    .line 623
    :catchall_0
    move-exception v6

    move-object v1, v6

    move-object v6, v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v6, v1

    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 679
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 680
    const-string/jumbo v6, "CloudDB"

    const-string/jumbo v7, "Exception in store worker!"

    move-object v8, v4

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    .line 682
    goto :goto_2

    .line 636
    :catch_1
    move-exception v6

    move-object v5, v6

    .line 637
    move-object v6, v0

    :try_start_5
    iget-object v6, v6, Lcom/google/appinventor/components/runtime/CloudDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v5

    invoke-virtual {v8}, Lredis/clients/jedis/exceptions/JedisException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 638
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/CloudDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/CloudDB;->access$700(Lcom/google/appinventor/components/runtime/CloudDB;Z)V

    .line 640
    goto :goto_2

    .line 643
    :cond_2
    move-object v6, v4

    .line 1240
    iget-object v6, v6, Lcom/google/appinventor/components/runtime/CloudDB$a;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:Ljava/lang/String;

    .line 643
    move-object v5, v6

    .line 644
    move-object v6, v4

    .line 1244
    iget-object v6, v6, Lcom/google/appinventor/components/runtime/CloudDB$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/json/JSONArray;

    .line 644
    move-object v4, v6

    .line 654
    move-object v6, v2

    if-nez v6, :cond_3

    .line 655
    move-object v6, v5

    move-object v2, v6

    .line 656
    move-object v6, v4

    move-object v1, v6

    .line 657
    move-object v6, v4

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    goto/16 :goto_0

    .line 658
    :cond_3
    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 659
    move-object v6, v4

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 660
    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v6

    goto/16 :goto_0

    .line 663
    :cond_4
    move-object v6, v1

    :try_start_6
    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 667
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/CloudDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    const-string/jumbo v7, "local key = KEYS[1];local value = ARGV[1];local topublish = cjson.decode(ARGV[2]);local project = ARGV[3];local newtable = {};table.insert(newtable, key);table.insert(newtable, topublish);redis.call(\"publish\", project, cjson.encode(newtable));return redis.call(\'set\', project .. \":\" .. key, value);"

    const-string/jumbo v8, "765978e4c340012f50733280368a0ccc4a14dfb7"

    const/4 v9, 0x1

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v2

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move-object v13, v3

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x2

    move-object v13, v1

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x3

    move-object v13, v0

    iget-object v13, v13, Lcom/google/appinventor/components/runtime/CloudDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v13}, Lcom/google/appinventor/components/runtime/CloudDB;->access$100(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/CloudDB;->jEval(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;
    :try_end_6
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v6

    .line 673
    .line 674
    move-object v6, v5

    move-object v2, v6

    .line 675
    move-object v6, v4

    move-object v1, v6

    .line 676
    move-object v6, v4

    const/4 v7, 0x0

    :try_start_7
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 678
    goto/16 :goto_0

    .line 668
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 669
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/CloudDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v1

    invoke-virtual {v8}, Lredis/clients/jedis/exceptions/JedisException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 670
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/CloudDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/CloudDB;->access$700(Lcom/google/appinventor/components/runtime/CloudDB;Z)V

    .line 671
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/CloudDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/CloudDB;->access$600(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 672
    goto/16 :goto_2
.end method
