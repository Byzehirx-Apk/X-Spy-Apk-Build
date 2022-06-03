.class final Lcom/google/appinventor/components/runtime/multidex/MultiDex$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/multidex/MultiDex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 391
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v6, v0

    const-string/jumbo v7, "pathList"

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 392
    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 393
    new-instance v6, Ljava/util/ArrayList;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v6

    .line 394
    move-object v6, v3

    const-string/jumbo v7, "dexElements"

    move-object v8, v3

    new-instance v9, Ljava/util/ArrayList;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v1

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v10, v2

    move-object v11, v4

    move-object v5, v11

    move-object v3, v10

    move-object v2, v9

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    .line 1433
    move-object v1, v9

    const-string/jumbo v9, "makeDexElements"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    const-class v13, Ljava/util/ArrayList;

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    const-class v13, Ljava/io/File;

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x2

    const-class v13, Ljava/util/ArrayList;

    aput-object v13, v11, v12

    .line 1434
    invoke-static {v8, v9, v10}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 1437
    move-object v9, v1

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

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

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    .line 394
    invoke-static {v6, v7, v8}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    move-object v6, v4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 398
    move-object v6, v4

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v6

    :goto_0
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/IOException;

    move-object v2, v6

    .line 399
    const-string/jumbo v6, "MultiDex"

    const-string/jumbo v7, "Exception in makeDexElement"

    move-object v8, v2

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    .line 400
    goto :goto_0

    .line 401
    :cond_0
    move-object v6, v0

    const-string/jumbo v7, "dexElementsSuppressedExceptions"

    .line 402
    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    .line 403
    move-object v1, v7

    move-object v7, v0

    .line 404
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/io/IOException;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    .line 406
    move-object v2, v7

    if-nez v6, :cond_2

    .line 407
    move-object v6, v4

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    .line 409
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/io/IOException;

    .line 408
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/io/IOException;

    move-object v2, v6

    .line 420
    :goto_1
    move-object v6, v1

    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 422
    :cond_1
    return-void

    .line 411
    :cond_2
    move-object v6, v4

    .line 412
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move-object v7, v2

    array-length v7, v7

    add-int/2addr v6, v7

    new-array v6, v6, [Ljava/io/IOException;

    move-object v3, v6

    .line 414
    move-object v6, v4

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .line 415
    move-object v6, v2

    const/4 v7, 0x0

    move-object v8, v3

    move-object v9, v4

    .line 416
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move-object v10, v2

    array-length v10, v10

    .line 415
    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    move-object v6, v3

    move-object v2, v6

    goto :goto_1
.end method
