.class public Lcom/google/appinventor/components/runtime/util/MemoryLeakUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MemoryLeakUtil;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newTreeMap()Ljava/util/TreeMap;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MemoryLeakUtil;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static checkAllTrackedObjects(ZZ)V
    .locals 12

    .prologue
    .line 83
    move v0, p0

    move v1, p1

    const-string/jumbo v7, "MemoryLeakUtil"

    const-string/jumbo v8, "Checking Tracked Objects ----------------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 84
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 85
    const/4 v7, 0x0

    move v2, v7

    .line 86
    const/4 v7, 0x0

    move v3, v7

    .line 87
    sget-object v7, Lcom/google/appinventor/components/runtime/util/MemoryLeakUtil;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:Ljava/util/Map;

    .line 88
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v4, v7

    :goto_0
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 89
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    .line 90
    move-object v5, v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v6, v7

    .line 91
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    .line 92
    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    .line 93
    move-object v5, v8

    if-eqz v7, :cond_2

    .line 94
    add-int/lit8 v2, v2, 0x1

    .line 101
    :cond_0
    :goto_1
    move v7, v0

    if-eqz v7, :cond_1

    .line 102
    move-object v7, v6

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 103
    const-string/jumbo v7, "MemoryLeakUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "Object with tag "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " has "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    if-eqz v9, :cond_3

    const-string/jumbo v9, "not "

    :goto_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "been garbage collected."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 106
    :cond_1
    goto :goto_0

    .line 96
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 97
    move v7, v1

    if-eqz v7, :cond_0

    .line 98
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 103
    :cond_3
    const-string/jumbo v9, ""

    goto :goto_2

    .line 107
    :cond_4
    const-string/jumbo v7, "MemoryLeakUtil"

    const-string/jumbo v8, "summary: collected "

    move v9, v3

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 108
    const-string/jumbo v7, "MemoryLeakUtil"

    const-string/jumbo v8, "summary: remaining "

    move v9, v2

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 109
    const-string/jumbo v7, "MemoryLeakUtil"

    const-string/jumbo v8, "-----------------------------------------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 110
    return-void
.end method

.method public static isTrackedObjectCollected(Ljava/lang/String;Z)Z
    .locals 9

    .prologue
    .line 58
    move-object v0, p0

    move v1, p1

    invoke-static {}, Ljava/lang/System;->gc()V

    .line 59
    sget-object v4, Lcom/google/appinventor/components/runtime/util/MemoryLeakUtil;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:Ljava/util/Map;

    move-object v5, v0

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 60
    move-object v2, v5

    if-eqz v4, :cond_3

    .line 61
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 62
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 63
    const-string/jumbo v4, "MemoryLeakUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "Object with tag "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    if-eqz v6, :cond_1

    const-string/jumbo v6, "not "

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "been garbage collected."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 65
    move v4, v1

    if-eqz v4, :cond_0

    move-object v4, v2

    if-nez v4, :cond_0

    .line 66
    sget-object v4, Lcom/google/appinventor/components/runtime/util/MemoryLeakUtil;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:Ljava/util/Map;

    move-object v5, v0

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 68
    :cond_0
    move-object v4, v2

    if-nez v4, :cond_2

    const/4 v4, 0x1

    move v0, v4

    :goto_1
    return v0

    .line 63
    :cond_1
    const-string/jumbo v6, ""

    goto :goto_0

    .line 68
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1

    .line 70
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "key not found"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static trackObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/appinventor/components/runtime/util/MemoryLeakUtil;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 43
    :goto_0
    move-object v0, v2

    .line 44
    sget-object v2, Lcom/google/appinventor/components/runtime/util/MemoryLeakUtil;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:Ljava/util/Map;

    move-object v3, v0

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 45
    move-object v2, v0

    move-object v0, v2

    return-object v0

    .line 42
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/appinventor/components/runtime/util/MemoryLeakUtil;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
