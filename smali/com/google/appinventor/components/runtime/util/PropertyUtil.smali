.class public Lcom/google/appinventor/components/runtime/util/PropertyUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyComponentProperties(Lcom/google/appinventor/components/runtime/Component;Lcom/google/appinventor/components/runtime/Component;)Lcom/google/appinventor/components/runtime/Component;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 31
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 32
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const-string/jumbo v11, "Source and target classes must be identical"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 35
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    .line 36
    move-object v2, v10

    invoke-virtual {v9}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    .line 37
    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v3, v10

    array-length v9, v9

    move v4, v9

    const/4 v9, 0x0

    move v5, v9

    :goto_0
    move v9, v5

    move v10, v4

    if-ge v9, v10, :cond_4

    move-object v9, v3

    move v10, v5

    aget-object v9, v9, v10

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    .line 39
    move-object v6, v10

    const-class v10, Lcom/google/appinventor/components/annotations/SimpleProperty;

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v6

    .line 40
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 43
    move-object v9, v6

    :try_start_0
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 46
    const-string/jumbo v9, "Copy"

    move-object v10, v7

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v2

    .line 47
    invoke-static {v9, v10}, Lcom/google/appinventor/components/runtime/util/PropertyUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    .line 48
    move-object v8, v10

    if-eqz v9, :cond_2

    .line 49
    move-object v9, v8

    move-object v10, v1

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v0

    aput-object v14, v12, v13

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 50
    .line 37
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 55
    :cond_2
    move-object v9, v2

    move-object v10, v7

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    move-object v7, v9

    .line 56
    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    move-object v8, v9

    .line 59
    move-object v9, v7

    const-class v10, Lcom/google/appinventor/components/annotations/SimpleProperty;

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v8

    move-object v10, v7

    .line 60
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 61
    move-object v9, v7

    move-object v10, v0

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v7, v9

    .line 62
    move-object v9, v6

    move-object v10, v1

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v7

    aput-object v14, v12, v13

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 70
    :cond_3
    goto :goto_1

    .line 66
    :catch_0
    move-exception v9

    goto :goto_1

    .line 69
    :catch_1
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    throw v9

    .line 73
    :cond_4
    move-object v9, v1

    move-object v0, v9

    return-object v0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 10

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, p1

    :cond_0
    move-object v3, v1

    move-object v4, v0

    const/4 v5, 0x1

    :try_start_0
    new-array v5, v5, [Ljava/lang/Class;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    .line 85
    move-object v2, v4

    const-class v4, Lcom/google/appinventor/components/annotations/SimplePropertyCopier;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    move-object v3, v2

    move-object v0, v3

    .line 95
    :goto_0
    return-object v0

    .line 90
    .line 91
    :cond_1
    :goto_1
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    .line 92
    move-object v1, v4

    if-nez v3, :cond_0

    .line 95
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method
