.class public abstract Lgnu/mapping/NamedLocation;
.super Lgnu/mapping/IndirectableLocation;
.source "NamedLocation.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lgnu/mapping/EnvironmentKey;


# instance fields
.field final name:Lgnu/mapping/Symbol;

.field next:Lgnu/mapping/NamedLocation;

.field final property:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lgnu/mapping/NamedLocation;)V
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/NamedLocation;
    move-object v1, p1

    .local v1, "loc":Lgnu/mapping/NamedLocation;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/mapping/IndirectableLocation;-><init>()V

    .line 41
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    iput-object v3, v2, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    .line 42
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    iput-object v3, v2, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/NamedLocation;
    move-object v1, p1

    .local v1, "name":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/mapping/IndirectableLocation;-><init>()V

    .line 47
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    .line 48
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    .line 49
    return-void
.end method


# virtual methods
.method public entered()Z
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/NamedLocation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/mapping/NamedLocation;
    return v0

    .restart local v0    # "this":Lgnu/mapping/NamedLocation;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/NamedLocation;
    move-object v1, p1

    .local v1, "x":Ljava/lang/Object;
    move-object v5, v1

    instance-of v5, v5, Lgnu/mapping/NamedLocation;

    if-nez v5, :cond_0

    .line 83
    const/4 v5, 0x0

    move v0, v5

    .line 95
    .end local v0    # "this":Lgnu/mapping/NamedLocation;
    :goto_0
    return v0

    .line 84
    .restart local v0    # "this":Lgnu/mapping/NamedLocation;
    :cond_0
    move-object v5, v1

    check-cast v5, Lgnu/mapping/NamedLocation;

    move-object v2, v5

    .line 85
    .local v2, "e2":Lgnu/mapping/NamedLocation;
    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    if-nez v5, :cond_2

    move-object v5, v2

    iget-object v5, v5, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    if-eqz v5, :cond_3

    .line 86
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 85
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    move-object v6, v2

    iget-object v6, v6, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    invoke-virtual {v5, v6}, Lgnu/mapping/Symbol;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 87
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    move-object v6, v2

    iget-object v6, v6, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    if-eq v5, v6, :cond_4

    .line 88
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 89
    :cond_4
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/mapping/NamedLocation;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 90
    .local v3, "val1":Ljava/lang/Object;
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/mapping/NamedLocation;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 91
    .local v4, "val2":Ljava/lang/Object;
    move-object v5, v3

    move-object v6, v4

    if-ne v5, v6, :cond_5

    .line 92
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 93
    :cond_5
    move-object v5, v3

    if-eqz v5, :cond_6

    move-object v5, v4

    if-nez v5, :cond_7

    .line 94
    :cond_6
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 95
    :cond_7
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method public getEnvironment()Lgnu/mapping/Environment;
    .locals 4

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/NamedLocation;
    move-object v3, v0

    move-object v1, v3

    .local v1, "loc":Lgnu/mapping/NamedLocation;
    :goto_0
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 26
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    if-nez v3, :cond_0

    .line 28
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    check-cast v3, Lgnu/mapping/Environment;

    move-object v2, v3

    .line 29
    .local v2, "env":Lgnu/mapping/Environment;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 30
    move-object v3, v2

    move-object v0, v3

    .line 33
    .end local v0    # "this":Lgnu/mapping/NamedLocation;
    .end local v2    # "env":Lgnu/mapping/Environment;
    :goto_1
    return-object v0

    .line 24
    .restart local v0    # "this":Lgnu/mapping/NamedLocation;
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    move-object v1, v3

    goto :goto_0

    .line 33
    :cond_1
    move-object v3, v0

    invoke-super {v3}, Lgnu/mapping/IndirectableLocation;->getEnvironment()Lgnu/mapping/Environment;

    move-result-object v3

    move-object v0, v3

    goto :goto_1
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/NamedLocation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 75
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    move-object v0, v1

    .line 77
    .end local v0    # "this":Lgnu/mapping/NamedLocation;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/mapping/NamedLocation;
    :cond_0
    move-object v1, v0

    move-object v0, v1

    goto :goto_0
.end method

.method public final getKeyProperty()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/NamedLocation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/NamedLocation;
    return-object v0
.end method

.method public final getKeySymbol()Lgnu/mapping/Symbol;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/NamedLocation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/NamedLocation;
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/NamedLocation;
    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    invoke-virtual {v3}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    xor-int/2addr v3, v4

    move v1, v3

    .line 101
    .local v1, "h":I
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/mapping/NamedLocation;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 102
    .local v2, "val":Ljava/lang/Object;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 103
    move v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    xor-int/2addr v3, v4

    move v1, v3

    .line 104
    :cond_0
    move v3, v1

    move v0, v3

    .end local v0    # "this":Lgnu/mapping/NamedLocation;
    return v0
.end method

.method public final matches(Lgnu/mapping/EnvironmentKey;)Z
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/NamedLocation;
    move-object v1, p1

    .local v1, "key":Lgnu/mapping/EnvironmentKey;
    move-object v2, v1

    invoke-interface {v2}, Lgnu/mapping/EnvironmentKey;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    invoke-static {v2, v3}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Lgnu/mapping/EnvironmentKey;->getKeyProperty()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/mapping/NamedLocation;
    return v0

    .restart local v0    # "this":Lgnu/mapping/NamedLocation;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final matches(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/NamedLocation;
    move-object v1, p1

    .local v1, "symbol":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    invoke-static {v3, v4}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lgnu/mapping/NamedLocation;
    return v0

    .restart local v0    # "this":Lgnu/mapping/NamedLocation;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setRestore(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/NamedLocation;
    move-object v1, p1

    .local v1, "oldValue":Ljava/lang/Object;
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    sget-object v3, Lgnu/mapping/NamedLocation;->INDIRECT_FLUIDS:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    .line 124
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/Location;->setRestore(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :goto_0
    monitor-exit v4

    return-void

    .line 127
    :cond_0
    move-object v2, v1

    :try_start_1
    instance-of v2, v2, Lgnu/mapping/Location;

    if-eqz v2, :cond_1

    .line 129
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    .line 130
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/mapping/Location;

    iput-object v3, v2, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    goto :goto_0

    .line 134
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    .line 135
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lgnu/mapping/NamedLocation;
    throw v0
.end method

.method public declared-synchronized setWithSave(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/NamedLocation;
    move-object v1, p1

    .local v1, "newValue":Ljava/lang/Object;
    move-object v6, p0

    monitor-enter v6

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    sget-object v5, Lgnu/mapping/NamedLocation;->INDIRECT_FLUIDS:Ljava/lang/Object;

    if-ne v4, v5, :cond_0

    .line 110
    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/mapping/Location;->setWithSave(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    move-object v0, v4

    .line 118
    .end local v0    # "this":Lgnu/mapping/NamedLocation;
    :goto_0
    monitor-exit v6

    return-object v0

    .line 111
    .restart local v0    # "this":Lgnu/mapping/NamedLocation;
    :cond_0
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    invoke-static {v4}, Lgnu/mapping/ThreadLocation;->makeAnonymous(Lgnu/mapping/Symbol;)Lgnu/mapping/ThreadLocation;

    move-result-object v4

    move-object v2, v4

    .line 112
    .local v2, "thloc":Lgnu/mapping/ThreadLocation;
    move-object v4, v2

    iget-object v4, v4, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/SharedLocation;

    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    iput-object v5, v4, Lgnu/mapping/SharedLocation;->base:Lgnu/mapping/Location;

    .line 113
    move-object v4, v2

    iget-object v4, v4, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/SharedLocation;

    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    iput-object v5, v4, Lgnu/mapping/SharedLocation;->value:Ljava/lang/Object;

    .line 114
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lgnu/mapping/NamedLocation;->setAlias(Lgnu/mapping/Location;)V

    .line 115
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/NamedLocation;

    move-result-object v4

    move-object v3, v4

    .line 116
    .local v3, "entry":Lgnu/mapping/NamedLocation;
    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    .line 117
    move-object v4, v3

    const/4 v5, 0x0

    iput-object v5, v4, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    .line 118
    move-object v4, v2

    iget-object v4, v4, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/SharedLocation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v4

    goto :goto_0

    .line 109
    .end local v2    # "thloc":Lgnu/mapping/ThreadLocation;
    .end local v3    # "entry":Lgnu/mapping/NamedLocation;
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lgnu/mapping/NamedLocation;
    throw v0
.end method
