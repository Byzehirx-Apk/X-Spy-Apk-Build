.class public Landroidx/lifecycle/Lifecycling;
.super Ljava/lang/Object;
.source "Lifecycling.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final GENERATED_CALLBACK:I = 0x2

.field private static final REFLECTIVE_CALLBACK:I = 0x1

.field private static sCallbackCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sClassToAdapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroidx/lifecycle/GeneratedAdapter;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/lifecycle/Lifecycling;->sCallbackCache:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/Lifecycling;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 183
    return-void
.end method

.method private static createGeneratedAdapter(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Landroidx/lifecycle/GeneratedAdapter;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroidx/lifecycle/GeneratedAdapter;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroidx/lifecycle/GeneratedAdapter;"
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroidx/lifecycle/GeneratedAdapter;>;"
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;
    move-object v3, v0

    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/GeneratedAdapter;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v3

    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroidx/lifecycle/GeneratedAdapter;>;"
    return-object v0

    .line 80
    .restart local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroidx/lifecycle/GeneratedAdapter;>;"
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 81
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 82
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 83
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 84
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v3

    move-object v2, v3

    .line 85
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static generatedConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 13
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroidx/lifecycle/GeneratedAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v7, v0

    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v7

    move-object v1, v7

    .line 93
    .local v1, "aPackage":Ljava/lang/Package;
    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 94
    .local v2, "name":Ljava/lang/String;
    move-object v7, v1

    if-eqz v7, :cond_1

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v7

    :goto_0
    move-object v3, v7

    .line 95
    .local v3, "fullPackage":Ljava/lang/String;
    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v2

    :goto_1
    invoke-static {v7}, Landroidx/lifecycle/Lifecycling;->getAdapterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 98
    .local v4, "adapterName":Ljava/lang/String;
    move-object v7, v3

    .line 100
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v4

    .line 99
    :goto_2
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    move-object v5, v7

    .line 101
    .local v5, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/lifecycle/GeneratedAdapter;>;"
    move-object v7, v5

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v0

    aput-object v11, v9, v10

    .line 102
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    move-object v6, v7

    .line 103
    .local v6, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroidx/lifecycle/GeneratedAdapter;>;"
    move-object v7, v6

    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v7

    if-nez v7, :cond_0

    .line 104
    move-object v7, v6

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 106
    :cond_0
    move-object v7, v6

    move-object v0, v7

    .line 108
    .end local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "aPackage":Ljava/lang/Package;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "fullPackage":Ljava/lang/String;
    .end local v4    # "adapterName":Ljava/lang/String;
    .end local v5    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/lifecycle/GeneratedAdapter;>;"
    .end local v6    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroidx/lifecycle/GeneratedAdapter;>;"
    :goto_3
    return-object v0

    .line 94
    .restart local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "aPackage":Ljava/lang/Package;
    .restart local v2    # "name":Ljava/lang/String;
    :cond_1
    const-string/jumbo v7, ""

    goto :goto_0

    .line 95
    .restart local v3    # "fullPackage":Ljava/lang/String;
    :cond_2
    move-object v7, v2

    move-object v8, v3

    .line 96
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 100
    .restart local v4    # "adapterName":Ljava/lang/String;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    goto :goto_2

    .line 107
    .end local v1    # "aPackage":Ljava/lang/Package;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "fullPackage":Ljava/lang/String;
    .end local v4    # "adapterName":Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 108
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_3

    .line 109
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 111
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public static getAdapterName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "className":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    const-string/jumbo v3, "."

    const-string/jumbo v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_LifecycleAdapter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "className":Ljava/lang/String;
    return-object v0
.end method

.method static getCallback(Ljava/lang/Object;)Landroidx/lifecycle/GenericLifecycleObserver;
    .locals 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "object":Ljava/lang/Object;
    move-object v6, v0

    instance-of v6, v6, Landroidx/lifecycle/FullLifecycleObserver;

    if-eqz v6, :cond_0

    .line 49
    new-instance v6, Landroidx/lifecycle/FullLifecycleObserverAdapter;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    check-cast v8, Landroidx/lifecycle/FullLifecycleObserver;

    invoke-direct {v7, v8}, Landroidx/lifecycle/FullLifecycleObserverAdapter;-><init>(Landroidx/lifecycle/FullLifecycleObserver;)V

    move-object v0, v6

    .line 72
    .end local v0    # "object":Ljava/lang/Object;
    .local v1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v2, "type":I
    :goto_0
    return-object v0

    .line 52
    .end local v1    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "type":I
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_0
    move-object v6, v0

    instance-of v6, v6, Landroidx/lifecycle/GenericLifecycleObserver;

    if-eqz v6, :cond_1

    .line 53
    move-object v6, v0

    check-cast v6, Landroidx/lifecycle/GenericLifecycleObserver;

    move-object v0, v6

    goto :goto_0

    .line 56
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move-object v1, v6

    .line 57
    .restart local v1    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v6, v1

    invoke-static {v6}, Landroidx/lifecycle/Lifecycling;->getObserverConstructorType(Ljava/lang/Class;)I

    move-result v6

    move v2, v6

    .line 58
    .restart local v2    # "type":I
    move v6, v2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 59
    sget-object v6, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    move-object v7, v1

    .line 60
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move-object v3, v6

    .line 61
    .local v3, "constructors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Constructor<+Landroidx/lifecycle/GeneratedAdapter;>;>;"
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 62
    move-object v6, v3

    const/4 v7, 0x0

    .line 63
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Constructor;

    move-object v7, v0

    .line 62
    invoke-static {v6, v7}, Landroidx/lifecycle/Lifecycling;->createGeneratedAdapter(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Landroidx/lifecycle/GeneratedAdapter;

    move-result-object v6

    move-object v4, v6

    .line 64
    .local v4, "generatedAdapter":Landroidx/lifecycle/GeneratedAdapter;
    new-instance v6, Landroidx/lifecycle/SingleGeneratedAdapterObserver;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v4

    invoke-direct {v7, v8}, Landroidx/lifecycle/SingleGeneratedAdapterObserver;-><init>(Landroidx/lifecycle/GeneratedAdapter;)V

    move-object v0, v6

    goto :goto_0

    .line 66
    .end local v4    # "generatedAdapter":Landroidx/lifecycle/GeneratedAdapter;
    :cond_2
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroidx/lifecycle/GeneratedAdapter;

    move-object v4, v6

    .line 67
    .local v4, "adapters":[Landroidx/lifecycle/GeneratedAdapter;
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_1
    move v6, v5

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 68
    move-object v6, v4

    move v7, v5

    move-object v8, v3

    move v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Constructor;

    move-object v9, v0

    invoke-static {v8, v9}, Landroidx/lifecycle/Lifecycling;->createGeneratedAdapter(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Landroidx/lifecycle/GeneratedAdapter;

    move-result-object v8

    aput-object v8, v6, v7

    .line 67
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 70
    :cond_3
    new-instance v6, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v4

    invoke-direct {v7, v8}, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;-><init>([Landroidx/lifecycle/GeneratedAdapter;)V

    move-object v0, v6

    goto :goto_0

    .line 72
    .end local v3    # "constructors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Constructor<+Landroidx/lifecycle/GeneratedAdapter;>;>;"
    .end local v4    # "adapters":[Landroidx/lifecycle/GeneratedAdapter;
    .end local v5    # "i":I
    :cond_4
    new-instance v6, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;-><init>(Ljava/lang/Object;)V

    move-object v0, v6

    goto/16 :goto_0
.end method

.method private static getObserverConstructorType(Ljava/lang/Class;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Landroidx/lifecycle/Lifecycling;->sCallbackCache:Ljava/util/Map;

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    sget-object v2, Landroidx/lifecycle/Lifecycling;->sCallbackCache:Ljava/util/Map;

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v0, v2

    .line 121
    .end local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v1, "type":I
    :goto_0
    return v0

    .line 119
    .end local v1    # "type":I
    .restart local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    move-object v2, v0

    invoke-static {v2}, Landroidx/lifecycle/Lifecycling;->resolveObserverCallbackType(Ljava/lang/Class;)I

    move-result v2

    move v1, v2

    .line 120
    .restart local v1    # "type":I
    sget-object v2, Landroidx/lifecycle/Lifecycling;->sCallbackCache:Ljava/util/Map;

    move-object v3, v0

    move v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 121
    move v2, v1

    move v0, v2

    goto :goto_0
.end method

.method private static isLifecycleParent(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, v0

    if-eqz v1, :cond_0

    const-class v1, Landroidx/lifecycle/LifecycleObserver;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return v0

    .restart local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static resolveObserverCallbackType(Ljava/lang/Class;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    .line 127
    const/4 v9, 0x1

    move v0, v9

    .line 168
    .end local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroidx/lifecycle/GeneratedAdapter;>;"
    :goto_0
    return v0

    .line 130
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroidx/lifecycle/GeneratedAdapter;>;"
    .restart local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    move-object v9, v0

    invoke-static {v9}, Landroidx/lifecycle/Lifecycling;->generatedConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    move-object v1, v9

    .line 131
    .restart local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroidx/lifecycle/GeneratedAdapter;>;"
    move-object v9, v1

    if-eqz v9, :cond_1

    .line 132
    sget-object v9, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    move-object v10, v0

    move-object v11, v1

    .line 133
    invoke-static {v11}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 132
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 134
    const/4 v9, 0x2

    move v0, v9

    goto :goto_0

    .line 137
    :cond_1
    sget-object v9, Landroidx/lifecycle/ClassesInfoCache;->sInstance:Landroidx/lifecycle/ClassesInfoCache;

    move-object v10, v0

    invoke-virtual {v9, v10}, Landroidx/lifecycle/ClassesInfoCache;->hasLifecycleMethods(Ljava/lang/Class;)Z

    move-result v9

    move v2, v9

    .line 138
    .local v2, "hasLifecycleMethods":Z
    move v9, v2

    if-eqz v9, :cond_2

    .line 139
    const/4 v9, 0x1

    move v0, v9

    goto :goto_0

    .line 142
    :cond_2
    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    move-object v3, v9

    .line 143
    .local v3, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x0

    move-object v4, v9

    .line 144
    .local v4, "adapterConstructors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Constructor<+Landroidx/lifecycle/GeneratedAdapter;>;>;"
    move-object v9, v3

    invoke-static {v9}, Landroidx/lifecycle/Lifecycling;->isLifecycleParent(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 145
    move-object v9, v3

    invoke-static {v9}, Landroidx/lifecycle/Lifecycling;->getObserverConstructorType(Ljava/lang/Class;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 146
    const/4 v9, 0x1

    move v0, v9

    goto :goto_0

    .line 148
    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    sget-object v11, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    move-object v12, v3

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v4, v9

    .line 151
    :cond_4
    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v9

    move-object v5, v9

    move-object v9, v5

    array-length v9, v9

    move v6, v9

    const/4 v9, 0x0

    move v7, v9

    :goto_1
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_8

    move-object v9, v5

    move v10, v7

    aget-object v9, v9, v10

    move-object v8, v9

    .line 152
    .local v8, "intrface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v9, v8

    invoke-static {v9}, Landroidx/lifecycle/Lifecycling;->isLifecycleParent(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 153
    .line 151
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 155
    :cond_5
    move-object v9, v8

    invoke-static {v9}, Landroidx/lifecycle/Lifecycling;->getObserverConstructorType(Ljava/lang/Class;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 156
    const/4 v9, 0x1

    move v0, v9

    goto :goto_0

    .line 158
    :cond_6
    move-object v9, v4

    if-nez v9, :cond_7

    .line 159
    new-instance v9, Ljava/util/ArrayList;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v9

    .line 161
    :cond_7
    move-object v9, v4

    sget-object v10, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    move-object v11, v8

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v9

    goto :goto_2

    .line 163
    .end local v8    # "intrface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    move-object v9, v4

    if-eqz v9, :cond_9

    .line 164
    sget-object v9, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    move-object v10, v0

    move-object v11, v4

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 165
    const/4 v9, 0x2

    move v0, v9

    goto/16 :goto_0

    .line 168
    :cond_9
    const/4 v9, 0x1

    move v0, v9

    goto/16 :goto_0
.end method
