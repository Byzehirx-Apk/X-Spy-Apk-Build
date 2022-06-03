.class final Lcom/google/appinventor/components/runtime/multidex/MultiDex$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/multidex/MultiDex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# direct methods
.method static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/ClassLoader;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 489
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v11, v1

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    move v2, v11

    .line 491
    move-object v11, v0

    const-string/jumbo v12, "path"

    invoke-static {v11, v12}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    move-object v3, v11

    .line 493
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v3

    move-object v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v11

    .line 494
    move v11, v2

    new-array v11, v11, [Ljava/lang/String;

    move-object v5, v11

    .line 495
    move v11, v2

    new-array v11, v11, [Ljava/io/File;

    move-object v6, v11

    .line 496
    move v11, v2

    new-array v11, v11, [Ljava/util/zip/ZipFile;

    move-object v7, v11

    .line 497
    move v11, v2

    new-array v11, v11, [Ldalvik/system/DexFile;

    move-object v2, v11

    .line 498
    move-object v11, v1

    invoke-interface {v11}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v11

    move-object v1, v11

    .line 499
    :goto_0
    move-object v11, v1

    invoke-interface {v11}, Ljava/util/ListIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 500
    move-object v11, v1

    invoke-interface {v11}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    .line 501
    move-object v8, v12

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 502
    move-object v11, v4

    const/16 v12, 0x3a

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 503
    move-object v11, v1

    invoke-interface {v11}, Ljava/util/ListIterator;->previousIndex()I

    move-result v11

    move v10, v11

    .line 504
    move-object v11, v5

    move v12, v10

    move-object v13, v9

    aput-object v13, v11, v12

    .line 505
    move-object v11, v6

    move v12, v10

    move-object v13, v8

    aput-object v13, v11, v12

    .line 506
    move-object v11, v7

    move v12, v10

    new-instance v13, Ljava/util/zip/ZipFile;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    move-object v15, v8

    invoke-direct {v14, v15}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    aput-object v13, v11, v12

    .line 507
    move-object v11, v2

    move v12, v10

    move-object v13, v9

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v9

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".dex"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v13

    aput-object v13, v11, v12

    .line 508
    goto :goto_0

    .line 510
    :cond_0
    move-object v11, v3

    move-object v12, v0

    move-object v13, v4

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 511
    move-object v11, v0

    const-string/jumbo v12, "mPaths"

    move-object v13, v5

    invoke-static {v11, v12, v13}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    move-object v11, v0

    const-string/jumbo v12, "mFiles"

    move-object v13, v6

    invoke-static {v11, v12, v13}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    move-object v11, v0

    const-string/jumbo v12, "mZips"

    move-object v13, v7

    invoke-static {v11, v12, v13}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    move-object v11, v0

    const-string/jumbo v12, "mDexs"

    move-object v13, v2

    invoke-static {v11, v12, v13}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 515
    return-void
.end method
