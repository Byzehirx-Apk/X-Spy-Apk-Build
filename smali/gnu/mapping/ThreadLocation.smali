.class public Lgnu/mapping/ThreadLocation;
.super Lgnu/mapping/NamedLocation;
.source "ThreadLocation.java"

# interfaces
.implements Lgnu/mapping/Named;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/mapping/ThreadLocation$InheritingLocation;
    }
.end annotation


# static fields
.field public static final ANONYMOUS:Ljava/lang/String;

.field static counter:I

.field static env:Lgnu/mapping/SimpleEnvironment;


# instance fields
.field global:Lgnu/mapping/SharedLocation;

.field private hash:I

.field private thLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lgnu/mapping/NamedLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 17
    new-instance v0, Ljava/lang/String;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "(dynamic)"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mapping/ThreadLocation;->ANONYMOUS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ThreadLocation;
    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "param#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lgnu/mapping/ThreadLocation;->nextCounter()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private constructor <init>(Lgnu/mapping/Symbol;)V
    .locals 10

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ThreadLocation;
    move-object v1, p1

    .local v1, "name":Lgnu/mapping/Symbol;
    move-object v3, v0

    move-object v4, v1

    sget-object v5, Lgnu/mapping/ThreadLocation;->ANONYMOUS:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lgnu/mapping/NamedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    .line 46
    move-object v3, v0

    new-instance v4, Lgnu/mapping/ThreadLocation$InheritingLocation;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-direct {v5, v6}, Lgnu/mapping/ThreadLocation$InheritingLocation;-><init>(Lgnu/mapping/ThreadLocation;)V

    iput-object v4, v3, Lgnu/mapping/ThreadLocation;->thLocal:Ljava/lang/ThreadLocal;

    .line 47
    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v2, v3

    .line 48
    .local v2, "str":Ljava/lang/String;
    move-object v3, v0

    new-instance v4, Lgnu/mapping/SharedLocation;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v2

    invoke-static {v6}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lgnu/mapping/SharedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;I)V

    iput-object v4, v3, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/SharedLocation;

    .line 49
    return-void

    .line 47
    .end local v2    # "str":Ljava/lang/String;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/mapping/Symbol;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public constructor <init>(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/SharedLocation;)V
    .locals 7

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ThreadLocation;
    move-object v1, p1

    .local v1, "name":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "global":Lgnu/mapping/SharedLocation;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lgnu/mapping/NamedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    .line 54
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v5

    move-object v6, v2

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    xor-int/2addr v5, v6

    iput v5, v4, Lgnu/mapping/ThreadLocation;->hash:I

    .line 55
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/SharedLocation;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ThreadLocation;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    sget-object v4, Lgnu/mapping/ThreadLocation;->ANONYMOUS:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lgnu/mapping/NamedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    .line 39
    move-object v2, v0

    new-instance v3, Lgnu/mapping/ThreadLocation$InheritingLocation;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Lgnu/mapping/ThreadLocation$InheritingLocation;-><init>(Lgnu/mapping/ThreadLocation;)V

    iput-object v3, v2, Lgnu/mapping/ThreadLocation;->thLocal:Ljava/lang/ThreadLocal;

    .line 40
    move-object v2, v0

    new-instance v3, Lgnu/mapping/SharedLocation;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lgnu/mapping/SharedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;I)V

    iput-object v3, v2, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/SharedLocation;

    .line 41
    return-void
.end method

.method public static declared-synchronized getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;
    .locals 11

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "name":Lgnu/mapping/Symbol;
    move-object v1, p1

    .local v1, "property":Ljava/lang/Object;
    const-class v9, Lgnu/mapping/ThreadLocation;

    monitor-enter v9

    :try_start_0
    sget-object v4, Lgnu/mapping/ThreadLocation;->env:Lgnu/mapping/SimpleEnvironment;

    if-nez v4, :cond_0

    .line 145
    new-instance v4, Lgnu/mapping/SimpleEnvironment;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string/jumbo v6, "[thread-locations]"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleEnvironment;-><init>(Ljava/lang/String;)V

    sput-object v4, Lgnu/mapping/ThreadLocation;->env:Lgnu/mapping/SimpleEnvironment;

    .line 146
    :cond_0
    sget-object v4, Lgnu/mapping/ThreadLocation;->env:Lgnu/mapping/SimpleEnvironment;

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/SimpleEnvironment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v4

    check-cast v4, Lgnu/mapping/IndirectableLocation;

    move-object v2, v4

    .line 148
    .local v2, "loc":Lgnu/mapping/IndirectableLocation;
    move-object v4, v2

    iget-object v4, v4, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    if-eqz v4, :cond_1

    .line 149
    move-object v4, v2

    iget-object v4, v4, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    check-cast v4, Lgnu/mapping/ThreadLocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    .line 152
    .end local v0    # "name":Lgnu/mapping/Symbol;
    :goto_0
    monitor-exit v9

    return-object v0

    .line 150
    .restart local v0    # "name":Lgnu/mapping/Symbol;
    :cond_1
    :try_start_1
    new-instance v4, Lgnu/mapping/ThreadLocation;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lgnu/mapping/ThreadLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/SharedLocation;)V

    move-object v3, v4

    .line 151
    .local v3, "tloc":Lgnu/mapping/ThreadLocation;
    move-object v4, v2

    move-object v5, v3

    iput-object v5, v4, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    move-object v4, v3

    move-object v0, v4

    goto :goto_0

    .line 144
    .end local v2    # "loc":Lgnu/mapping/IndirectableLocation;
    .end local v3    # "tloc":Lgnu/mapping/ThreadLocation;
    :catchall_0
    move-exception v0

    monitor-exit v9

    .end local v0    # "name":Lgnu/mapping/Symbol;
    throw v0
.end method

.method public static makeAnonymous(Lgnu/mapping/Symbol;)Lgnu/mapping/ThreadLocation;
    .locals 5

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "name":Lgnu/mapping/Symbol;
    new-instance v1, Lgnu/mapping/ThreadLocation;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/mapping/ThreadLocation;-><init>(Lgnu/mapping/Symbol;)V

    move-object v0, v1

    .end local v0    # "name":Lgnu/mapping/Symbol;
    return-object v0
.end method

.method public static makeAnonymous(Ljava/lang/String;)Lgnu/mapping/ThreadLocation;
    .locals 5

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    new-instance v1, Lgnu/mapping/ThreadLocation;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method private static declared-synchronized nextCounter()I
    .locals 4

    .prologue
    .line 12
    const-class v2, Lgnu/mapping/ThreadLocation;

    monitor-enter v2

    :try_start_0
    sget v0, Lgnu/mapping/ThreadLocation;->counter:I

    const/4 v1, 0x1

    add-int/lit8 v0, v0, 0x1

    move v3, v0

    move v0, v3

    move v1, v3

    sput v1, Lgnu/mapping/ThreadLocation;->counter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ThreadLocation;
    move-object v1, p1

    .local v1, "defaultValue":Ljava/lang/Object;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/NamedLocation;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/NamedLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/ThreadLocation;
    return-object v0
.end method

.method public getLocation()Lgnu/mapping/NamedLocation;
    .locals 8

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ThreadLocation;
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/ThreadLocation;->property:Ljava/lang/Object;

    sget-object v3, Lgnu/mapping/ThreadLocation;->ANONYMOUS:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    .line 90
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/ThreadLocation;->property:Ljava/lang/Object;

    move-object v5, v0

    iget v5, v5, Lgnu/mapping/ThreadLocation;->hash:I

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;IZ)Lgnu/mapping/NamedLocation;

    move-result-object v2

    move-object v0, v2

    .line 100
    .end local v0    # "this":Lgnu/mapping/ThreadLocation;
    .local v1, "entry":Lgnu/mapping/NamedLocation;
    :goto_0
    return-object v0

    .line 92
    .end local v1    # "entry":Lgnu/mapping/NamedLocation;
    .restart local v0    # "this":Lgnu/mapping/ThreadLocation;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/ThreadLocation;->thLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/NamedLocation;

    move-object v1, v2

    .line 93
    .restart local v1    # "entry":Lgnu/mapping/NamedLocation;
    move-object v2, v1

    if-nez v2, :cond_2

    .line 95
    new-instance v2, Lgnu/mapping/SharedLocation;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/ThreadLocation;->property:Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lgnu/mapping/SharedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;I)V

    move-object v1, v2

    .line 96
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/SharedLocation;

    if-eqz v2, :cond_1

    .line 97
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/SharedLocation;

    invoke-virtual {v2, v3}, Lgnu/mapping/NamedLocation;->setBase(Lgnu/mapping/Location;)V

    .line 98
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/ThreadLocation;->thLocal:Ljava/lang/ThreadLocal;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 100
    :cond_2
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ThreadLocation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/ThreadLocation;
    return-object v0

    .restart local v0    # "this":Lgnu/mapping/ThreadLocation;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSymbol()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ThreadLocation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/ThreadLocation;->property:Ljava/lang/Object;

    sget-object v2, Lgnu/mapping/ThreadLocation;->ANONYMOUS:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/SharedLocation;

    invoke-virtual {v1}, Lgnu/mapping/SharedLocation;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    if-ne v1, v2, :cond_0

    .line 131
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 132
    .end local v0    # "this":Lgnu/mapping/ThreadLocation;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/mapping/ThreadLocation;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    move-object v0, v1

    goto :goto_0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ThreadLocation;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/NamedLocation;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/NamedLocation;->set(Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public setGlobal(Ljava/lang/Object;)V
    .locals 11

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ThreadLocation;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v2, v5

    monitor-enter v4

    .line 79
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/SharedLocation;

    if-nez v4, :cond_0

    .line 80
    move-object v4, v0

    new-instance v5, Lgnu/mapping/SharedLocation;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lgnu/mapping/SharedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;I)V

    iput-object v5, v4, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/SharedLocation;

    .line 81
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/SharedLocation;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/mapping/SharedLocation;->set(Ljava/lang/Object;)V

    .line 82
    move-object v4, v2

    monitor-exit v4

    .line 83
    return-void

    .line 82
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public setName(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ThreadLocation;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "setName not allowed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setRestore(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ThreadLocation;
    move-object v1, p1

    .local v1, "oldValue":Ljava/lang/Object;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/NamedLocation;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/NamedLocation;->setRestore(Ljava/lang/Object;)V

    .line 120
    return-void
.end method

.method public setWithSave(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ThreadLocation;
    move-object v1, p1

    .local v1, "newValue":Ljava/lang/Object;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/NamedLocation;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/NamedLocation;->setWithSave(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/ThreadLocation;
    return-object v0
.end method
