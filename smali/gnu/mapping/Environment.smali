.class public abstract Lgnu/mapping/Environment;
.super Lgnu/mapping/PropertySet;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/mapping/Environment$InheritedLocal;
    }
.end annotation


# static fields
.field static final CAN_DEFINE:I = 0x1

.field static final CAN_IMPLICITLY_DEFINE:I = 0x4

.field static final CAN_REDEFINE:I = 0x2

.field static final DIRECT_INHERITED_ON_SET:I = 0x10

.field public static final INDIRECT_DEFINES:I = 0x20

.field static final THREAD_SAFE:I = 0x8

.field protected static final curEnvironment:Lgnu/mapping/Environment$InheritedLocal;

.field static final envTable:Ljava/util/Hashtable;

.field static global:Lgnu/mapping/Environment;


# instance fields
.field flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 340
    new-instance v0, Ljava/util/Hashtable;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lgnu/mapping/Environment;->envTable:Ljava/util/Hashtable;

    .line 371
    new-instance v0, Lgnu/mapping/Environment$InheritedLocal;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lgnu/mapping/Environment$InheritedLocal;-><init>()V

    sput-object v0, Lgnu/mapping/Environment;->curEnvironment:Lgnu/mapping/Environment$InheritedLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/PropertySet;-><init>()V

    .line 43
    move-object v1, v0

    const/16 v2, 0x17

    iput v2, v1, Lgnu/mapping/Environment;->flags:I

    .line 485
    return-void
.end method

.method public static current()Lgnu/mapping/Environment;
    .locals 1

    .prologue
    .line 369
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrent()Lgnu/mapping/Environment;
    .locals 5

    .prologue
    .line 375
    sget-object v1, Lgnu/mapping/Environment;->curEnvironment:Lgnu/mapping/Environment$InheritedLocal;

    invoke-virtual {v1}, Lgnu/mapping/Environment$InheritedLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/Environment;

    move-object v0, v1

    .line 376
    .local v0, "env":Lgnu/mapping/Environment;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 378
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lgnu/mapping/Environment;->global:Lgnu/mapping/Environment;

    invoke-static {v1, v2}, Lgnu/mapping/Environment;->make(Ljava/lang/String;Lgnu/mapping/Environment;)Lgnu/mapping/InheritingEnvironment;

    move-result-object v1

    move-object v0, v1

    .line 379
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lgnu/mapping/Environment;->flags:I

    const/16 v3, 0x8

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Lgnu/mapping/Environment;->flags:I

    .line 380
    sget-object v1, Lgnu/mapping/Environment;->curEnvironment:Lgnu/mapping/Environment$InheritedLocal;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/mapping/Environment$InheritedLocal;->set(Ljava/lang/Object;)V

    .line 382
    :cond_0
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "env":Lgnu/mapping/Environment;
    return-object v0
.end method

.method public static getGlobal()Lgnu/mapping/Environment;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lgnu/mapping/Environment;->global:Lgnu/mapping/Environment;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lgnu/mapping/Environment;
    .locals 8

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v4, v0

    if-nez v4, :cond_0

    .line 345
    const-string/jumbo v4, ""

    move-object v0, v4

    .line 346
    :cond_0
    sget-object v4, Lgnu/mapping/Environment;->envTable:Ljava/util/Hashtable;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v1, v5

    monitor-enter v4

    .line 348
    :try_start_0
    sget-object v4, Lgnu/mapping/Environment;->envTable:Ljava/util/Hashtable;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/Environment;

    move-object v2, v4

    .line 349
    .local v2, "env":Lgnu/mapping/Environment;
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 350
    move-object v4, v2

    move-object v5, v1

    monitor-exit v5

    move-object v0, v4

    .line 354
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 351
    .restart local v0    # "name":Ljava/lang/String;
    :cond_1
    new-instance v4, Lgnu/mapping/SimpleEnvironment;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lgnu/mapping/SimpleEnvironment;-><init>()V

    move-object v2, v4

    .line 352
    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v4, v5}, Lgnu/mapping/Environment;->setName(Ljava/lang/String;)V

    .line 353
    sget-object v4, Lgnu/mapping/Environment;->envTable:Ljava/util/Hashtable;

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 354
    move-object v4, v2

    move-object v5, v1

    monitor-exit v5

    move-object v0, v4

    goto :goto_0

    .line 355
    .end local v2    # "env":Lgnu/mapping/Environment;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public static make(Ljava/lang/String;Lgnu/mapping/Environment;)Lgnu/mapping/InheritingEnvironment;
    .locals 7

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, p1

    .local v1, "parent":Lgnu/mapping/Environment;
    new-instance v2, Lgnu/mapping/InheritingEnvironment;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lgnu/mapping/InheritingEnvironment;-><init>(Ljava/lang/String;Lgnu/mapping/Environment;)V

    move-object v0, v2

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static make()Lgnu/mapping/SimpleEnvironment;
    .locals 3

    .prologue
    .line 418
    new-instance v0, Lgnu/mapping/SimpleEnvironment;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/mapping/SimpleEnvironment;-><init>()V

    return-object v0
.end method

.method public static make(Ljava/lang/String;)Lgnu/mapping/SimpleEnvironment;
    .locals 5

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    new-instance v1, Lgnu/mapping/SimpleEnvironment;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleEnvironment;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static restoreCurrent(Lgnu/mapping/Environment;)V
    .locals 3

    .prologue
    .line 399
    move-object v0, p0

    .local v0, "saved":Lgnu/mapping/Environment;
    sget-object v1, Lgnu/mapping/Environment;->curEnvironment:Lgnu/mapping/Environment$InheritedLocal;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/mapping/Environment$InheritedLocal;->set(Ljava/lang/Object;)V

    .line 400
    return-void
.end method

.method public static setCurrent(Lgnu/mapping/Environment;)V
    .locals 3

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "env":Lgnu/mapping/Environment;
    sget-object v1, Lgnu/mapping/Environment;->curEnvironment:Lgnu/mapping/Environment$InheritedLocal;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/mapping/Environment$InheritedLocal;->set(Ljava/lang/Object;)V

    .line 388
    return-void
.end method

.method public static setGlobal(Lgnu/mapping/Environment;)V
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "env":Lgnu/mapping/Environment;
    move-object v1, v0

    sput-object v1, Lgnu/mapping/Environment;->global:Lgnu/mapping/Environment;

    .line 21
    return-void
.end method

.method public static setSaveCurrent(Lgnu/mapping/Environment;)Lgnu/mapping/Environment;
    .locals 4

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "env":Lgnu/mapping/Environment;
    sget-object v2, Lgnu/mapping/Environment;->curEnvironment:Lgnu/mapping/Environment$InheritedLocal;

    invoke-virtual {v2}, Lgnu/mapping/Environment$InheritedLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/Environment;

    move-object v1, v2

    .line 393
    .local v1, "save":Lgnu/mapping/Environment;
    sget-object v2, Lgnu/mapping/Environment;->curEnvironment:Lgnu/mapping/Environment$InheritedLocal;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/mapping/Environment$InheritedLocal;->set(Ljava/lang/Object;)V

    .line 394
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "env":Lgnu/mapping/Environment;
    return-object v0
.end method

.method public static user()Lgnu/mapping/Environment;
    .locals 1

    .prologue
    .line 402
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;
.end method

.method public final addLocation(Lgnu/mapping/EnvironmentKey;Lgnu/mapping/Location;)V
    .locals 7

    .prologue
    .line 413
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "key":Lgnu/mapping/EnvironmentKey;
    move-object v2, p2

    .local v2, "loc":Lgnu/mapping/Location;
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lgnu/mapping/EnvironmentKey;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v5}, Lgnu/mapping/EnvironmentKey;->getKeyProperty()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    move-result-object v3

    .line 414
    return-void
.end method

.method public final addLocation(Lgnu/mapping/NamedLocation;)V
    .locals 6

    .prologue
    .line 406
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "loc":Lgnu/mapping/NamedLocation;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/mapping/NamedLocation;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/mapping/NamedLocation;->getKeyProperty()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    move-result-object v2

    .line 407
    return-void
.end method

.method cloneForThread()Lgnu/mapping/SimpleEnvironment;
    .locals 15

    .prologue
    .line 444
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    new-instance v9, Lgnu/mapping/InheritingEnvironment;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move-object v12, v0

    invoke-direct {v10, v11, v12}, Lgnu/mapping/InheritingEnvironment;-><init>(Ljava/lang/String;Lgnu/mapping/Environment;)V

    move-object v1, v9

    .line 449
    .local v1, "env":Lgnu/mapping/InheritingEnvironment;
    move-object v9, v0

    instance-of v9, v9, Lgnu/mapping/InheritingEnvironment;

    if-eqz v9, :cond_0

    .line 451
    move-object v9, v0

    check-cast v9, Lgnu/mapping/InheritingEnvironment;

    move-object v2, v9

    .line 452
    .local v2, "p":Lgnu/mapping/InheritingEnvironment;
    move-object v9, v2

    iget v9, v9, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    move v3, v9

    .line 453
    .local v3, "numInherited":I
    move-object v9, v1

    move v10, v3

    iput v10, v9, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    .line 454
    move-object v9, v1

    move v10, v3

    new-array v10, v10, [Lgnu/mapping/Environment;

    iput-object v10, v9, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    .line 455
    const/4 v9, 0x0

    move v4, v9

    .local v4, "i":I
    :goto_0
    move v9, v4

    move v10, v3

    if-ge v9, v10, :cond_0

    .line 456
    move-object v9, v1

    iget-object v9, v9, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    move v10, v4

    move-object v11, v2

    iget-object v11, v11, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    move v12, v4

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 455
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 459
    .end local v2    # "p":Lgnu/mapping/InheritingEnvironment;
    .end local v3    # "numInherited":I
    .end local v4    # "i":I
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/mapping/Environment;->enumerateLocations()Lgnu/mapping/LocationEnumeration;

    move-result-object v9

    move-object v2, v9

    .line 460
    .local v2, "e":Lgnu/mapping/LocationEnumeration;
    :goto_1
    move-object v9, v2

    invoke-virtual {v9}, Lgnu/mapping/LocationEnumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 462
    move-object v9, v2

    invoke-virtual {v9}, Lgnu/mapping/LocationEnumeration;->nextLocation()Lgnu/mapping/Location;

    move-result-object v9

    move-object v3, v9

    .line 464
    .local v3, "loc":Lgnu/mapping/Location;
    move-object v9, v3

    invoke-virtual {v9}, Lgnu/mapping/Location;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v9

    move-object v4, v9

    .line 465
    .local v4, "name":Lgnu/mapping/Symbol;
    move-object v9, v3

    invoke-virtual {v9}, Lgnu/mapping/Location;->getKeyProperty()Ljava/lang/Object;

    move-result-object v9

    move-object v5, v9

    .line 466
    .local v5, "property":Ljava/lang/Object;
    move-object v9, v4

    if-eqz v9, :cond_2

    move-object v9, v3

    instance-of v9, v9, Lgnu/mapping/NamedLocation;

    if-eqz v9, :cond_2

    .line 468
    move-object v9, v3

    check-cast v9, Lgnu/mapping/NamedLocation;

    move-object v6, v9

    .line 469
    .local v6, "nloc":Lgnu/mapping/NamedLocation;
    move-object v9, v6

    iget-object v9, v9, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    if-nez v9, :cond_1

    .line 471
    new-instance v9, Lgnu/mapping/SharedLocation;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v4

    move-object v12, v5

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lgnu/mapping/SharedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;I)V

    move-object v7, v9

    .line 472
    .local v7, "sloc":Lgnu/mapping/SharedLocation;
    move-object v9, v7

    move-object v10, v6

    iget-object v10, v10, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    iput-object v10, v9, Lgnu/mapping/SharedLocation;->value:Ljava/lang/Object;

    .line 473
    move-object v9, v6

    move-object v10, v7

    iput-object v10, v9, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    .line 474
    move-object v9, v6

    const/4 v10, 0x0

    iput-object v10, v9, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    .line 475
    move-object v9, v7

    move-object v6, v9

    .line 477
    .end local v7    # "sloc":Lgnu/mapping/SharedLocation;
    :cond_1
    move-object v9, v4

    invoke-virtual {v9}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v9

    move-object v10, v5

    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    xor-int/2addr v9, v10

    move v7, v9

    .line 478
    .local v7, "hash":I
    move-object v9, v1

    move-object v10, v4

    move-object v11, v5

    move v12, v7

    invoke-virtual {v9, v10, v11, v12}, Lgnu/mapping/InheritingEnvironment;->addUnboundLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v9

    move-object v8, v9

    .line 479
    .local v8, "xloc":Lgnu/mapping/NamedLocation;
    move-object v9, v8

    move-object v10, v6

    iput-object v10, v9, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    .line 481
    .end local v6    # "nloc":Lgnu/mapping/NamedLocation;
    .end local v7    # "hash":I
    .end local v8    # "xloc":Lgnu/mapping/NamedLocation;
    :cond_2
    goto :goto_1

    .line 482
    .end local v3    # "loc":Lgnu/mapping/Location;
    .end local v4    # "name":Lgnu/mapping/Symbol;
    .end local v5    # "property":Ljava/lang/Object;
    :cond_3
    move-object v9, v1

    move-object v0, v9

    .end local v0    # "this":Lgnu/mapping/Environment;
    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    const/4 v4, 0x0

    move-object v2, v4

    .line 150
    .local v2, "property":Ljava/lang/Object;
    move-object v4, v1

    instance-of v4, v4, Lgnu/mapping/EnvironmentKey;

    if-eqz v4, :cond_0

    .line 152
    move-object v4, v1

    check-cast v4, Lgnu/mapping/EnvironmentKey;

    move-object v3, v4

    .line 153
    .local v3, "k":Lgnu/mapping/EnvironmentKey;
    move-object v4, v3

    invoke-interface {v4}, Lgnu/mapping/EnvironmentKey;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v4

    move-object v1, v4

    .line 154
    .local v1, "key":Lgnu/mapping/Symbol;
    move-object v4, v3

    invoke-interface {v4}, Lgnu/mapping/EnvironmentKey;->getKeyProperty()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 156
    .end local v1    # "key":Lgnu/mapping/Symbol;
    .end local v2    # "property":Ljava/lang/Object;
    .end local v3    # "k":Lgnu/mapping/EnvironmentKey;
    :cond_0
    move-object v4, v1

    instance-of v4, v4, Lgnu/mapping/Symbol;

    if-eqz v4, :cond_1

    move-object v4, v1

    check-cast v4, Lgnu/mapping/Symbol;

    :goto_0
    move-object v3, v4

    .line 158
    .local v3, "sym":Lgnu/mapping/Symbol;
    move-object v4, v0

    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Environment;->isBound(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Lgnu/mapping/Environment;
    return v0

    .line 156
    .end local v3    # "sym":Lgnu/mapping/Symbol;
    .restart local v0    # "this":Lgnu/mapping/Environment;
    :cond_1
    move-object v4, v0

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v4

    goto :goto_0
.end method

.method public defaultNamespace()Lgnu/mapping/Namespace;
    .locals 2

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    invoke-static {}, Lgnu/mapping/Namespace;->getDefault()Lgnu/mapping/Namespace;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/Environment;
    return-object v0
.end method

.method public abstract define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract enumerateAllLocations()Lgnu/mapping/LocationEnumeration;
.end method

.method public abstract enumerateLocations()Lgnu/mapping/LocationEnumeration;
.end method

.method public final get(Lgnu/mapping/EnvironmentKey;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "key":Lgnu/mapping/EnvironmentKey;
    move-object v2, p2

    .local v2, "defaultValue":Ljava/lang/Object;
    move-object v5, v1

    invoke-interface {v5}, Lgnu/mapping/EnvironmentKey;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v5

    move-object v3, v5

    .line 184
    .local v3, "symbol":Lgnu/mapping/Symbol;
    move-object v5, v1

    invoke-interface {v5}, Lgnu/mapping/EnvironmentKey;->getKeyProperty()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 185
    .local v4, "property":Ljava/lang/Object;
    move-object v5, v0

    move-object v6, v3

    move-object v7, v4

    move-object v8, v2

    invoke-virtual {v5, v6, v7, v8}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lgnu/mapping/Environment;
    return-object v0
.end method

.method public get(Lgnu/mapping/Symbol;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "sym":Lgnu/mapping/Symbol;
    sget-object v4, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    move-object v2, v4

    .line 196
    .local v2, "unb":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 197
    .local v3, "val":Ljava/lang/Object;
    move-object v4, v3

    move-object v5, v2

    if-ne v4, v5, :cond_0

    .line 198
    new-instance v4, Lgnu/mapping/UnboundLocationException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Lgnu/mapping/UnboundLocationException;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 199
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lgnu/mapping/Environment;
    return-object v0
.end method

.method public get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "key":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "defaultValue":Ljava/lang/Object;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v5

    move-object v4, v5

    .line 176
    .local v4, "loc":Lgnu/mapping/Location;
    move-object v5, v4

    if-nez v5, :cond_0

    .line 177
    move-object v5, v3

    move-object v0, v5

    .line 178
    .end local v0    # "this":Lgnu/mapping/Environment;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/mapping/Environment;
    :cond_0
    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v5, v6}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    const/4 v4, 0x0

    move-object v2, v4

    .line 224
    .local v2, "property":Ljava/lang/Object;
    move-object v4, v1

    instance-of v4, v4, Lgnu/mapping/EnvironmentKey;

    if-eqz v4, :cond_0

    .line 226
    move-object v4, v1

    check-cast v4, Lgnu/mapping/EnvironmentKey;

    move-object v3, v4

    .line 227
    .local v3, "k":Lgnu/mapping/EnvironmentKey;
    move-object v4, v3

    invoke-interface {v4}, Lgnu/mapping/EnvironmentKey;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v4

    move-object v1, v4

    .line 228
    .local v1, "key":Lgnu/mapping/Symbol;
    move-object v4, v3

    invoke-interface {v4}, Lgnu/mapping/EnvironmentKey;->getKeyProperty()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 230
    .end local v1    # "key":Lgnu/mapping/Symbol;
    .end local v2    # "property":Ljava/lang/Object;
    .end local v3    # "k":Lgnu/mapping/EnvironmentKey;
    :cond_0
    move-object v4, v1

    instance-of v4, v4, Lgnu/mapping/Symbol;

    if-eqz v4, :cond_1

    move-object v4, v1

    check-cast v4, Lgnu/mapping/Symbol;

    :goto_0
    move-object v3, v4

    .line 232
    .local v3, "sym":Lgnu/mapping/Symbol;
    move-object v4, v0

    move-object v5, v3

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/mapping/Environment;
    return-object v0

    .line 230
    .end local v3    # "sym":Lgnu/mapping/Symbol;
    .restart local v0    # "this":Lgnu/mapping/Environment;
    :cond_1
    move-object v4, v0

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v4

    goto :goto_0
.end method

.method public final get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "defaultValue":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/mapping/Environment;
    return-object v0
.end method

.method public getCanDefine()Z
    .locals 3

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, v0

    iget v1, v1, Lgnu/mapping/Environment;->flags:I

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/mapping/Environment;
    return v0

    .restart local v0    # "this":Lgnu/mapping/Environment;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCanRedefine()Z
    .locals 3

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, v0

    iget v1, v1, Lgnu/mapping/Environment;->flags:I

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/mapping/Environment;
    return v0

    .restart local v0    # "this":Lgnu/mapping/Environment;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getChecked(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    sget-object v5, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Environment;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 168
    .local v2, "value":Ljava/lang/Object;
    move-object v3, v2

    sget-object v4, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    if-ne v3, v4, :cond_0

    .line 169
    new-instance v3, Lgnu/mapping/UnboundLocationException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lgnu/mapping/UnboundLocationException;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 170
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lgnu/mapping/Environment;
    return-object v0
.end method

.method public getFlags()I
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, v0

    iget v1, v1, Lgnu/mapping/Environment;->flags:I

    move v0, v1

    .end local v0    # "this":Lgnu/mapping/Environment;
    return v0
.end method

.method public final getFunction(Lgnu/mapping/Symbol;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "sym":Lgnu/mapping/Symbol;
    sget-object v4, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    move-object v2, v4

    .line 210
    .local v2, "unb":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    sget-object v6, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 211
    .local v3, "val":Ljava/lang/Object;
    move-object v4, v3

    move-object v5, v2

    if-ne v4, v5, :cond_0

    .line 212
    new-instance v4, Lgnu/mapping/UnboundLocationException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Lgnu/mapping/UnboundLocationException;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 213
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lgnu/mapping/Environment;
    return-object v0
.end method

.method public final getFunction(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "key":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "defaultValue":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    sget-object v5, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/mapping/Environment;
    return-object v0
.end method

.method public final getLocation(Lgnu/mapping/Symbol;)Lgnu/mapping/Location;
    .locals 6

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "key":Lgnu/mapping/Symbol;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Z)Lgnu/mapping/NamedLocation;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/Environment;
    return-object v0
.end method

.method public final getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;
    .locals 7

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "key":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Z)Lgnu/mapping/NamedLocation;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/mapping/Environment;
    return-object v0
.end method

.method public final getLocation(Ljava/lang/Object;Z)Lgnu/mapping/Location;
    .locals 9

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move v2, p2

    .local v2, "create":Z
    const/4 v5, 0x0

    move-object v3, v5

    .line 123
    .local v3, "property":Ljava/lang/Object;
    move-object v5, v1

    instance-of v5, v5, Lgnu/mapping/EnvironmentKey;

    if-eqz v5, :cond_0

    .line 125
    move-object v5, v1

    check-cast v5, Lgnu/mapping/EnvironmentKey;

    move-object v4, v5

    .line 126
    .local v4, "k":Lgnu/mapping/EnvironmentKey;
    move-object v5, v4

    invoke-interface {v5}, Lgnu/mapping/EnvironmentKey;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v5

    move-object v1, v5

    .line 127
    .local v1, "key":Lgnu/mapping/Symbol;
    move-object v5, v4

    invoke-interface {v5}, Lgnu/mapping/EnvironmentKey;->getKeyProperty()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 129
    .end local v1    # "key":Lgnu/mapping/Symbol;
    .end local v3    # "property":Ljava/lang/Object;
    .end local v4    # "k":Lgnu/mapping/EnvironmentKey;
    :cond_0
    move-object v5, v1

    instance-of v5, v5, Lgnu/mapping/Symbol;

    if-eqz v5, :cond_1

    move-object v5, v1

    check-cast v5, Lgnu/mapping/Symbol;

    :goto_0
    move-object v4, v5

    .line 131
    .local v4, "sym":Lgnu/mapping/Symbol;
    move-object v5, v0

    move-object v6, v4

    move-object v7, v3

    move v8, v2

    invoke-virtual {v5, v6, v7, v8}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Z)Lgnu/mapping/NamedLocation;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lgnu/mapping/Environment;
    return-object v0

    .line 129
    .end local v4    # "sym":Lgnu/mapping/Symbol;
    .restart local v0    # "this":Lgnu/mapping/Environment;
    :cond_1
    move-object v5, v0

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v5

    goto :goto_0
.end method

.method public abstract getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;IZ)Lgnu/mapping/NamedLocation;
.end method

.method public final getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Z)Lgnu/mapping/NamedLocation;
    .locals 10

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "name":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move v3, p3

    .local v3, "create":Z
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v5

    move-object v6, v2

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    xor-int/2addr v5, v6

    move v4, v5

    .line 117
    .local v4, "hash":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v4

    move v9, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;IZ)Lgnu/mapping/NamedLocation;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lgnu/mapping/Environment;
    return-object v0
.end method

.method public getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 4

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/mapping/Environment;->defaultNamespace()Lgnu/mapping/Namespace;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/Environment;
    return-object v0
.end method

.method protected abstract hasMoreElements(Lgnu/mapping/LocationEnumeration;)Z
.end method

.method public final isBound(Lgnu/mapping/Symbol;)Z
    .locals 5

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "key":Lgnu/mapping/Symbol;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Environment;->isBound(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/mapping/Environment;
    return v0
.end method

.method public isBound(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "key":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v4

    move-object v3, v4

    .line 137
    .local v3, "loc":Lgnu/mapping/Location;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 138
    const/4 v4, 0x0

    move v0, v4

    .line 139
    .end local v0    # "this":Lgnu/mapping/Environment;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/mapping/Environment;
    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/mapping/Location;->isBound()Z

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public final isLocked()Z
    .locals 3

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, v0

    iget v1, v1, Lgnu/mapping/Environment;->flags:I

    const/4 v2, 0x3

    and-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/mapping/Environment;
    return v0

    .restart local v0    # "this":Lgnu/mapping/Environment;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final lookup(Lgnu/mapping/Symbol;)Lgnu/mapping/Location;
    .locals 6

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "key":Lgnu/mapping/Symbol;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Z)Lgnu/mapping/NamedLocation;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/Environment;
    return-object v0
.end method

.method public final lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;
    .locals 7

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "key":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Z)Lgnu/mapping/NamedLocation;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/mapping/Environment;
    return-object v0
.end method

.method public abstract lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "newValue":Ljava/lang/Object;
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Environment;->getLocation(Ljava/lang/Object;Z)Lgnu/mapping/Location;

    move-result-object v5

    move-object v3, v5

    .line 254
    .local v3, "loc":Lgnu/mapping/Location;
    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 255
    .local v4, "oldValue":Ljava/lang/Object;
    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v5, v6}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 256
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lgnu/mapping/Environment;
    return-object v0
.end method

.method public final put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Environment;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/mapping/Environment;
    return-object v0
.end method

.method public final put(Lgnu/mapping/Symbol;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "key":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "newValue":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 249
    return-void
.end method

.method public put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "key":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Object;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v5

    move-object v4, v5

    .line 238
    .local v4, "loc":Lgnu/mapping/Location;
    move-object v5, v4

    invoke-virtual {v5}, Lgnu/mapping/Location;->isConstant()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 239
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 242
    :goto_0
    return-void

    .line 241
    :cond_0
    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v5, v6}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final putFunction(Lgnu/mapping/Symbol;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "key":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "newValue":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    sget-object v5, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 262
    return-void
.end method

.method public final remove(Lgnu/mapping/EnvironmentKey;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "key":Lgnu/mapping/EnvironmentKey;
    move-object v5, v1

    invoke-interface {v5}, Lgnu/mapping/EnvironmentKey;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v5

    move-object v2, v5

    .line 294
    .local v2, "symbol":Lgnu/mapping/Symbol;
    move-object v5, v1

    invoke-interface {v5}, Lgnu/mapping/EnvironmentKey;->getKeyProperty()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 295
    .local v3, "property":Ljava/lang/Object;
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v5

    move-object v6, v3

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    xor-int/2addr v5, v6

    move v4, v5

    .line 296
    .local v4, "hash":I
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lgnu/mapping/Environment;->remove(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lgnu/mapping/Environment;
    return-object v0
.end method

.method public final remove(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "symbol":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v4

    move-object v5, v2

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    xor-int/2addr v4, v5

    move v3, v4

    .line 302
    .local v3, "hash":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/mapping/Environment;->remove(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/mapping/Environment;
    return-object v0
.end method

.method public remove(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "key":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move v3, p3

    .local v3, "hash":I
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    invoke-virtual {v6, v7, v8, v9}, Lgnu/mapping/Environment;->unlink(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/Location;

    move-result-object v6

    move-object v4, v6

    .line 281
    .local v4, "loc":Lgnu/mapping/Location;
    move-object v6, v4

    if-nez v6, :cond_0

    .line 282
    const/4 v6, 0x0

    move-object v0, v6

    .line 285
    .end local v0    # "this":Lgnu/mapping/Environment;
    :goto_0
    return-object v0

    .line 283
    .restart local v0    # "this":Lgnu/mapping/Environment;
    :cond_0
    move-object v6, v4

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 284
    .local v5, "value":Ljava/lang/Object;
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/mapping/Location;->undefine()V

    .line 285
    move-object v6, v5

    move-object v0, v6

    goto :goto_0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    const/4 v5, 0x0

    move-object v2, v5

    .line 318
    .local v2, "property":Ljava/lang/Object;
    move-object v5, v1

    instance-of v5, v5, Lgnu/mapping/EnvironmentKey;

    if-eqz v5, :cond_0

    .line 320
    move-object v5, v1

    check-cast v5, Lgnu/mapping/EnvironmentKey;

    move-object v3, v5

    .line 321
    .local v3, "k":Lgnu/mapping/EnvironmentKey;
    move-object v5, v0

    move-object v6, v3

    invoke-interface {v6}, Lgnu/mapping/EnvironmentKey;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v6

    move-object v7, v3

    invoke-interface {v7}, Lgnu/mapping/EnvironmentKey;->getKeyProperty()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Environment;->remove(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    .line 326
    .end local v0    # "this":Lgnu/mapping/Environment;
    .end local v3    # "k":Lgnu/mapping/EnvironmentKey;
    :goto_0
    return-object v0

    .line 323
    .restart local v0    # "this":Lgnu/mapping/Environment;
    :cond_0
    move-object v5, v1

    instance-of v5, v5, Lgnu/mapping/Symbol;

    if-eqz v5, :cond_1

    move-object v5, v1

    check-cast v5, Lgnu/mapping/Symbol;

    :goto_1
    move-object v3, v5

    .line 325
    .local v3, "symbol":Lgnu/mapping/Symbol;
    move-object v5, v3

    invoke-virtual {v5}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v5

    move-object v6, v2

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    xor-int/2addr v5, v6

    move v4, v5

    .line 326
    .local v4, "hash":I
    move-object v5, v0

    move-object v6, v3

    move-object v7, v2

    move v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lgnu/mapping/Environment;->remove(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 323
    .end local v3    # "symbol":Lgnu/mapping/Symbol;
    .end local v4    # "hash":I
    :cond_1
    move-object v5, v0

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v5

    goto :goto_1
.end method

.method public final remove(Lgnu/mapping/Symbol;)V
    .locals 6

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "sym":Lgnu/mapping/Symbol;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lgnu/mapping/Environment;->remove(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 308
    return-void
.end method

.method public final removeFunction(Lgnu/mapping/Symbol;)V
    .locals 5

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "sym":Lgnu/mapping/Symbol;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Environment;->remove(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 313
    return-void
.end method

.method public setCanDefine(Z)V
    .locals 6

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move v1, p1

    .local v1, "canDefine":Z
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/mapping/Environment;->flags:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Lgnu/mapping/Environment;->flags:I

    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/mapping/Environment;->flags:I

    const/4 v4, -0x2

    and-int/lit8 v3, v3, -0x2

    iput v3, v2, Lgnu/mapping/Environment;->flags:I

    goto :goto_0
.end method

.method public setCanRedefine(Z)V
    .locals 6

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move v1, p1

    .local v1, "canRedefine":Z
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/mapping/Environment;->flags:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lgnu/mapping/Environment;->flags:I

    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/mapping/Environment;->flags:I

    const/4 v4, -0x3

    and-int/lit8 v3, v3, -0x3

    iput v3, v2, Lgnu/mapping/Environment;->flags:I

    goto :goto_0
.end method

.method public setFlag(ZI)V
    .locals 8

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move v1, p1

    .local v1, "setting":Z
    move v2, p2

    .local v2, "flag":I
    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/mapping/Environment;->flags:I

    move v5, v2

    or-int/2addr v4, v5

    iput v4, v3, Lgnu/mapping/Environment;->flags:I

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/mapping/Environment;->flags:I

    move v5, v2

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    iput v4, v3, Lgnu/mapping/Environment;->flags:I

    goto :goto_0
.end method

.method public final setIndirectDefines()V
    .locals 5

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lgnu/mapping/Environment;->flags:I

    const/16 v3, 0x20

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Lgnu/mapping/Environment;->flags:I

    .line 78
    move-object v1, v0

    check-cast v1, Lgnu/mapping/InheritingEnvironment;

    const v2, 0x7fffffff

    iput v2, v1, Lgnu/mapping/InheritingEnvironment;->baseTimestamp:I

    .line 79
    return-void
.end method

.method public setLocked()V
    .locals 5

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lgnu/mapping/Environment;->flags:I

    const/4 v3, -0x8

    and-int/lit8 v2, v2, -0x8

    iput v2, v1, Lgnu/mapping/Environment;->flags:I

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 433
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "#<environment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/mapping/Environment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/Environment;
    return-object v0
.end method

.method public toStringVerbose()Ljava/lang/String;
    .locals 2

    .prologue
    .line 439
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/mapping/Environment;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/Environment;
    return-object v0
.end method

.method public unlink(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/Location;
    .locals 8

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "key":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move v3, p3

    .local v3, "hash":I
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "unsupported operation: unlink (aka undefine)"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
