.class public Lgnu/mapping/SimpleEnvironment;
.super Lgnu/mapping/Environment;
.source "SimpleEnvironment.java"


# instance fields
.field currentTimestamp:I

.field log2Size:I

.field private mask:I

.field num_bindings:I

.field sharedTail:Lgnu/mapping/NamedLocation;

.field table:[Lgnu/mapping/NamedLocation;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/SimpleEnvironment;
    move-object v1, v0

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleEnvironment;-><init>(I)V

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 9

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/SimpleEnvironment;
    move v1, p1

    .local v1, "capacity":I
    move-object v2, v0

    invoke-direct {v2}, Lgnu/mapping/Environment;-><init>()V

    .line 53
    move-object v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lgnu/mapping/SimpleEnvironment;->log2Size:I

    .line 54
    :goto_0
    move v2, v1

    const/4 v3, 0x1

    move-object v4, v0

    iget v4, v4, Lgnu/mapping/SimpleEnvironment;->log2Size:I

    shl-int/2addr v3, v4

    if-le v2, v3, :cond_0

    .line 55
    move-object v2, v0

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    iget v3, v3, Lgnu/mapping/SimpleEnvironment;->log2Size:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lgnu/mapping/SimpleEnvironment;->log2Size:I

    goto :goto_0

    .line 56
    :cond_0
    const/4 v2, 0x1

    move-object v3, v0

    iget v3, v3, Lgnu/mapping/SimpleEnvironment;->log2Size:I

    shl-int/2addr v2, v3

    move v1, v2

    .line 57
    move-object v2, v0

    move v3, v1

    new-array v3, v3, [Lgnu/mapping/NamedLocation;

    iput-object v3, v2, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    .line 58
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lgnu/mapping/SimpleEnvironment;->mask:I

    .line 60
    move-object v2, v0

    new-instance v3, Lgnu/mapping/PlainLocation;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v0

    invoke-direct {v4, v5, v6, v7}, Lgnu/mapping/PlainLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, v2, Lgnu/mapping/SimpleEnvironment;->sharedTail:Lgnu/mapping/NamedLocation;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/SimpleEnvironment;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/mapping/SimpleEnvironment;-><init>()V

    .line 48
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/SimpleEnvironment;->setName(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static getCurrentLocation(Ljava/lang/String;)Lgnu/mapping/Location;
    .locals 4

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    invoke-static {}, Lgnu/mapping/SimpleEnvironment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Environment;->getLocation(Ljava/lang/Object;Z)Lgnu/mapping/Location;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static lookup_global(Lgnu/mapping/Symbol;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/mapping/UnboundLocationException;
        }
    .end annotation

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "name":Lgnu/mapping/Symbol;
    invoke-static {}, Lgnu/mapping/SimpleEnvironment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;)Lgnu/mapping/Location;

    move-result-object v2

    move-object v1, v2

    .line 32
    .local v1, "binding":Lgnu/mapping/Location;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 33
    new-instance v2, Lgnu/mapping/UnboundLocationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lgnu/mapping/UnboundLocationException;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 34
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "name":Lgnu/mapping/Symbol;
    return-object v0
.end method


# virtual methods
.method addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;ILgnu/mapping/Location;)Lgnu/mapping/NamedLocation;
    .locals 13

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/SimpleEnvironment;
    move-object v1, p1

    .local v1, "name":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move/from16 v3, p3

    .local v3, "hash":I
    move-object/from16 v4, p4

    .local v4, "loc":Lgnu/mapping/Location;
    move-object v7, v4

    instance-of v7, v7, Lgnu/mapping/ThreadLocation;

    if-eqz v7, :cond_0

    move-object v7, v4

    check-cast v7, Lgnu/mapping/ThreadLocation;

    iget-object v7, v7, Lgnu/mapping/ThreadLocation;->property:Ljava/lang/Object;

    move-object v8, v2

    if-ne v7, v8, :cond_0

    .line 184
    move-object v7, v4

    check-cast v7, Lgnu/mapping/ThreadLocation;

    invoke-virtual {v7}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/NamedLocation;

    move-result-object v7

    move-object v4, v7

    .line 185
    :cond_0
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    invoke-virtual {v7, v8, v9, v10}, Lgnu/mapping/SimpleEnvironment;->lookupDirect(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v7

    move-object v5, v7

    .line 186
    .local v5, "nloc":Lgnu/mapping/NamedLocation;
    move-object v7, v4

    move-object v8, v5

    if-ne v7, v8, :cond_1

    .line 187
    move-object v7, v5

    move-object v0, v7

    .line 208
    .end local v0    # "this":Lgnu/mapping/SimpleEnvironment;
    :goto_0
    return-object v0

    .line 188
    .restart local v0    # "this":Lgnu/mapping/SimpleEnvironment;
    :cond_1
    move-object v7, v5

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    :goto_1
    move v6, v7

    .line 189
    .local v6, "bound":Z
    move v7, v6

    if-nez v7, :cond_2

    .line 190
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    invoke-virtual {v7, v8, v9, v10}, Lgnu/mapping/SimpleEnvironment;->addUnboundLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v7

    move-object v5, v7

    .line 191
    :cond_2
    move-object v7, v0

    iget v7, v7, Lgnu/mapping/SimpleEnvironment;->flags:I

    const/4 v8, 0x3

    and-int/lit8 v7, v7, 0x3

    const/4 v8, 0x3

    if-eq v7, v8, :cond_4

    .line 193
    move v7, v6

    if-eqz v7, :cond_3

    .line 194
    move-object v7, v5

    invoke-virtual {v7}, Lgnu/mapping/NamedLocation;->isBound()Z

    move-result v7

    move v6, v7

    .line 198
    :cond_3
    move v7, v6

    if-eqz v7, :cond_6

    move-object v7, v0

    iget v7, v7, Lgnu/mapping/SimpleEnvironment;->flags:I

    const/4 v8, 0x2

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_4

    .line 201
    :goto_2
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v5

    invoke-virtual {v7, v8, v9, v10}, Lgnu/mapping/SimpleEnvironment;->redefineError(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)V

    .line 203
    :cond_4
    move-object v7, v0

    iget v7, v7, Lgnu/mapping/SimpleEnvironment;->flags:I

    const/16 v8, 0x20

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_7

    .line 204
    move-object v7, v5

    move-object v8, v0

    check-cast v8, Lgnu/mapping/InheritingEnvironment;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lgnu/mapping/InheritingEnvironment;->getParent(I)Lgnu/mapping/Environment;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleEnvironment;

    move-object v9, v1

    move-object v10, v2

    move v11, v3

    move-object v12, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Lgnu/mapping/SimpleEnvironment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;ILgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    move-result-object v8

    iput-object v8, v7, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    .line 207
    :goto_3
    move-object v7, v5

    sget-object v8, Lgnu/mapping/IndirectableLocation;->INDIRECT_FLUIDS:Ljava/lang/Object;

    iput-object v8, v7, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    .line 208
    move-object v7, v5

    move-object v0, v7

    goto :goto_0

    .line 188
    .end local v6    # "bound":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 198
    .restart local v6    # "bound":Z
    :cond_6
    move-object v7, v0

    iget v7, v7, Lgnu/mapping/SimpleEnvironment;->flags:I

    const/4 v8, 0x1

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_4

    move-object v7, v4

    invoke-virtual {v7}, Lgnu/mapping/Location;->isBound()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    .line 206
    :cond_7
    move-object v7, v5

    move-object v8, v4

    iput-object v8, v7, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    goto :goto_3
.end method

.method public addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;
    .locals 9

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/SimpleEnvironment;
    move-object v1, p1

    .local v1, "name":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "loc":Lgnu/mapping/Location;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v7}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v7

    move-object v8, v2

    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    xor-int/2addr v7, v8

    move-object v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lgnu/mapping/SimpleEnvironment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;ILgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/mapping/SimpleEnvironment;
    return-object v0
.end method

.method protected addUnboundLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .locals 10

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/SimpleEnvironment;
    move-object v1, p1

    .local v1, "name":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move v3, p3

    .local v3, "hash":I
    move v6, v3

    move-object v7, v0

    iget v7, v7, Lgnu/mapping/SimpleEnvironment;->mask:I

    and-int/2addr v6, v7

    move v4, v6

    .line 95
    .local v4, "index":I
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v4

    invoke-virtual {v6, v7, v8, v9}, Lgnu/mapping/SimpleEnvironment;->newEntry(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v6

    move-object v5, v6

    .line 96
    .local v5, "loc":Lgnu/mapping/NamedLocation;
    move-object v6, v5

    const/4 v7, 0x0

    iput-object v7, v6, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    .line 97
    move-object v6, v5

    sget-object v7, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    iput-object v7, v6, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    .line 98
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Lgnu/mapping/SimpleEnvironment;
    return-object v0
.end method

.method public define(Lgnu/mapping/Symbol;Ljava/lang/Object;ILjava/lang/Object;)Lgnu/mapping/NamedLocation;
    .locals 12

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/SimpleEnvironment;
    move-object v1, p1

    .local v1, "sym":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move v3, p3

    .local v3, "hash":I
    move-object/from16 v4, p4

    .local v4, "newValue":Ljava/lang/Object;
    move v8, v3

    move-object v9, v0

    iget v9, v9, Lgnu/mapping/SimpleEnvironment;->mask:I

    and-int/2addr v8, v9

    move v5, v8

    .line 138
    .local v5, "index":I
    move-object v8, v0

    iget-object v8, v8, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .line 139
    .local v6, "first":Lgnu/mapping/NamedLocation;
    move-object v8, v6

    move-object v7, v8

    .line 142
    .local v7, "loc":Lgnu/mapping/NamedLocation;
    :goto_0
    move-object v8, v7

    if-nez v8, :cond_0

    .line 145
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v5

    invoke-virtual {v8, v9, v10, v11}, Lgnu/mapping/SimpleEnvironment;->newEntry(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v8

    move-object v7, v8

    .line 146
    move-object v8, v7

    move-object v9, v4

    invoke-virtual {v8, v9}, Lgnu/mapping/NamedLocation;->set(Ljava/lang/Object;)V

    .line 147
    move-object v8, v7

    move-object v0, v8

    .line 155
    .end local v0    # "this":Lgnu/mapping/SimpleEnvironment;
    :goto_1
    return-object v0

    .line 149
    .restart local v0    # "this":Lgnu/mapping/SimpleEnvironment;
    :cond_0
    move-object v8, v7

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lgnu/mapping/NamedLocation;->matches(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 151
    move-object v8, v7

    invoke-virtual {v8}, Lgnu/mapping/NamedLocation;->isBound()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v0

    invoke-virtual {v8}, Lgnu/mapping/SimpleEnvironment;->getCanDefine()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 153
    :cond_1
    :goto_2
    move-object v8, v7

    const/4 v9, 0x0

    iput-object v9, v8, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    .line 154
    move-object v8, v7

    move-object v9, v4

    iput-object v9, v8, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    .line 155
    move-object v8, v7

    move-object v0, v8

    goto :goto_1

    .line 151
    :cond_2
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/mapping/SimpleEnvironment;->getCanRedefine()Z

    move-result v8

    if-nez v8, :cond_1

    .line 152
    :cond_3
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v7

    invoke-virtual {v8, v9, v10, v11}, Lgnu/mapping/SimpleEnvironment;->redefineError(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)V

    goto :goto_2

    .line 157
    :cond_4
    move-object v8, v7

    iget-object v8, v8, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    move-object v7, v8

    goto :goto_0
.end method

.method public define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/SimpleEnvironment;
    move-object v1, p1

    .local v1, "sym":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Object;
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v5

    move-object v6, v2

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    xor-int/2addr v5, v6

    move v4, v5

    .line 164
    .local v4, "hash":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v4

    move-object v9, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Lgnu/mapping/SimpleEnvironment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;ILjava/lang/Object;)Lgnu/mapping/NamedLocation;

    move-result-object v5

    .line 165
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 5

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/SimpleEnvironment;
    new-instance v1, Lgnu/mapping/EnvironmentMappings;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/mapping/EnvironmentMappings;-><init>(Lgnu/mapping/SimpleEnvironment;)V

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/SimpleEnvironment;
    return-object v0
.end method

.method public enumerateAllLocations()Lgnu/mapping/LocationEnumeration;
    .locals 2

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/SimpleEnvironment;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/mapping/SimpleEnvironment;->enumerateLocations()Lgnu/mapping/LocationEnumeration;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/SimpleEnvironment;
    return-object v0
.end method

.method public enumerateLocations()Lgnu/mapping/LocationEnumeration;
    .locals 8

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/SimpleEnvironment;
    new-instance v2, Lgnu/mapping/LocationEnumeration;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    const/4 v5, 0x1

    move-object v6, v0

    iget v6, v6, Lgnu/mapping/SimpleEnvironment;->log2Size:I

    shl-int/2addr v5, v6

    invoke-direct {v3, v4, v5}, Lgnu/mapping/LocationEnumeration;-><init>([Lgnu/mapping/NamedLocation;I)V

    move-object v1, v2

    .line 270
    .local v1, "it":Lgnu/mapping/LocationEnumeration;
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lgnu/mapping/LocationEnumeration;->env:Lgnu/mapping/SimpleEnvironment;

    .line 271
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/SimpleEnvironment;
    return-object v0
.end method

.method public declared-synchronized getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;IZ)Lgnu/mapping/NamedLocation;
    .locals 11

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/SimpleEnvironment;
    move-object v1, p1

    .local v1, "name":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move v3, p3

    .local v3, "hash":I
    move v4, p4

    .local v4, "create":Z
    move-object v10, p0

    monitor-enter v10

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    :try_start_0
    invoke-virtual {v6, v7, v8, v9}, Lgnu/mapping/SimpleEnvironment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    move-object v5, v6

    .line 84
    .local v5, "loc":Lgnu/mapping/NamedLocation;
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 85
    move-object v6, v5

    move-object v0, v6

    .line 88
    .end local v0    # "this":Lgnu/mapping/SimpleEnvironment;
    :goto_0
    monitor-exit v10

    return-object v0

    .line 86
    .restart local v0    # "this":Lgnu/mapping/SimpleEnvironment;
    :cond_0
    move v6, v4

    if-nez v6, :cond_1

    .line 87
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 88
    :cond_1
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    :try_start_1
    invoke-virtual {v6, v7, v8, v9}, Lgnu/mapping/SimpleEnvironment;->addUnboundLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 83
    .end local v5    # "loc":Lgnu/mapping/NamedLocation;
    :catchall_0
    move-exception v0

    monitor-exit v10

    .end local v0    # "this":Lgnu/mapping/SimpleEnvironment;
    throw v0
.end method

.method protected hasMoreElements(Lgnu/mapping/LocationEnumeration;)Z
    .locals 7

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/SimpleEnvironment;
    move-object v1, p1

    .local v1, "it":Lgnu/mapping/LocationEnumeration;
    :goto_0
    move-object v2, v1

    iget-object v2, v2, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    if-nez v2, :cond_1

    .line 286
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    .line 287
    move-object v2, v1

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/mapping/LocationEnumeration;->index:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lgnu/mapping/LocationEnumeration;->index:I

    if-gez v2, :cond_0

    .line 288
    const/4 v2, 0x0

    move v0, v2

    .line 298
    .end local v0    # "this":Lgnu/mapping/SimpleEnvironment;
    :goto_1
    return v0

    .line 289
    .restart local v0    # "this":Lgnu/mapping/SimpleEnvironment;
    :cond_0
    move-object v2, v1

    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/LocationEnumeration;->bindings:[Lgnu/mapping/NamedLocation;

    move-object v4, v1

    iget v4, v4, Lgnu/mapping/LocationEnumeration;->index:I

    aget-object v3, v3, v4

    iput-object v3, v2, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    .line 290
    move-object v2, v1

    iget-object v2, v2, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    if-nez v2, :cond_1

    .line 291
    goto :goto_0

    .line 293
    :cond_1
    move-object v2, v1

    iget-object v2, v2, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    iget-object v2, v2, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    if-nez v2, :cond_2

    .line 294
    move-object v2, v1

    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    iget-object v3, v3, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    iput-object v3, v2, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    goto :goto_0

    .line 298
    :cond_2
    const/4 v2, 0x1

    move v0, v2

    goto :goto_1
.end method

.method public lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .locals 8

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/SimpleEnvironment;
    move-object v1, p1

    .local v1, "name":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move v3, p3

    .local v3, "hash":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/mapping/SimpleEnvironment;->lookupDirect(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/mapping/SimpleEnvironment;
    return-object v0
.end method

.method public lookupDirect(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .locals 9

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/SimpleEnvironment;
    move-object v1, p1

    .local v1, "name":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move v3, p3

    .local v3, "hash":I
    move v6, v3

    move-object v7, v0

    iget v7, v7, Lgnu/mapping/SimpleEnvironment;->mask:I

    and-int/2addr v6, v7

    move v4, v6

    .line 71
    .local v4, "index":I
    move-object v6, v0

    iget-object v6, v6, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 72
    .local v5, "loc":Lgnu/mapping/NamedLocation;
    :goto_0
    move-object v6, v5

    if-eqz v6, :cond_1

    .line 74
    move-object v6, v5

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/NamedLocation;->matches(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 75
    move-object v6, v5

    move-object v0, v6

    .line 77
    .end local v0    # "this":Lgnu/mapping/SimpleEnvironment;
    :goto_1
    return-object v0

    .line 72
    .restart local v0    # "this":Lgnu/mapping/SimpleEnvironment;
    :cond_0
    move-object v6, v5

    iget-object v6, v6, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    move-object v5, v6

    goto :goto_0

    .line 77
    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method newEntry(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .locals 10

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/SimpleEnvironment;
    move-object v1, p1

    .local v1, "name":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move v3, p3

    .local v3, "index":I
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/SimpleEnvironment;->newLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/NamedLocation;

    move-result-object v6

    move-object v4, v6

    .line 125
    .local v4, "loc":Lgnu/mapping/NamedLocation;
    move-object v6, v0

    iget-object v6, v6, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    move v7, v3

    aget-object v6, v6, v7

    move-object v5, v6

    .line 126
    .local v5, "first":Lgnu/mapping/NamedLocation;
    move-object v6, v4

    move-object v7, v5

    if-nez v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lgnu/mapping/SimpleEnvironment;->sharedTail:Lgnu/mapping/NamedLocation;

    :goto_0
    iput-object v7, v6, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    .line 127
    move-object v6, v0

    iget-object v6, v6, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    move v7, v3

    move-object v8, v4

    aput-object v8, v6, v7

    .line 128
    move-object v6, v0

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    .line 129
    move-object v6, v0

    iget v6, v6, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    move-object v7, v0

    iget-object v7, v7, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    array-length v7, v7

    if-lt v6, v7, :cond_0

    .line 130
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/mapping/SimpleEnvironment;->rehash()V

    .line 131
    :cond_0
    move-object v6, v4

    move-object v0, v6

    .end local v0    # "this":Lgnu/mapping/SimpleEnvironment;
    return-object v0

    .line 126
    .restart local v0    # "this":Lgnu/mapping/SimpleEnvironment;
    :cond_1
    move-object v7, v5

    goto :goto_0
.end method

.method newLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/NamedLocation;
    .locals 9

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/SimpleEnvironment;
    move-object v1, p1

    .local v1, "name":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move-object v3, v0

    iget v3, v3, Lgnu/mapping/SimpleEnvironment;->flags:I

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    .line 117
    new-instance v3, Lgnu/mapping/SharedLocation;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    iget v7, v7, Lgnu/mapping/SimpleEnvironment;->currentTimestamp:I

    invoke-direct {v4, v5, v6, v7}, Lgnu/mapping/SharedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;I)V

    move-object v0, v3

    .line 119
    .end local v0    # "this":Lgnu/mapping/SimpleEnvironment;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/mapping/SimpleEnvironment;
    :cond_0
    new-instance v3, Lgnu/mapping/PlainLocation;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lgnu/mapping/PlainLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    move-object v0, v3

    goto :goto_0
.end method

.method public put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/SimpleEnvironment;
    move-object v1, p1

    .local v1, "key":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Object;
    move-object v6, v0

    iget v6, v6, Lgnu/mapping/SimpleEnvironment;->flags:I

    const/4 v7, 0x4

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v4, v6

    .line 104
    .local v4, "create":Z
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v4

    invoke-virtual {v6, v7, v8, v9}, Lgnu/mapping/SimpleEnvironment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Z)Lgnu/mapping/NamedLocation;

    move-result-object v6

    move-object v5, v6

    .line 105
    .local v5, "loc":Lgnu/mapping/Location;
    move-object v6, v5

    if-nez v6, :cond_1

    .line 106
    new-instance v6, Lgnu/mapping/UnboundLocationException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    invoke-direct {v7, v8}, Lgnu/mapping/UnboundLocationException;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 103
    .end local v4    # "create":Z
    .end local v5    # "loc":Lgnu/mapping/Location;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 107
    .restart local v4    # "create":Z
    .restart local v5    # "loc":Lgnu/mapping/Location;
    :cond_1
    move-object v6, v5

    invoke-virtual {v6}, Lgnu/mapping/Location;->isConstant()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 108
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "attempt to modify read-only location: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " loc:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 110
    :cond_2
    move-object v6, v5

    move-object v7, v3

    invoke-virtual {v6, v7}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/SimpleEnvironment;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/mapping/SimpleEnvironment;->setSymbol(Ljava/lang/Object;)V

    .line 310
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/SimpleEnvironment;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/mapping/SimpleEnvironment;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 315
    .local v1, "name":Ljava/lang/String;
    sget-object v3, Lgnu/mapping/SimpleEnvironment;->envTable:Ljava/util/Hashtable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/Environment;

    move-object v2, v3

    .line 316
    .local v2, "env":Lgnu/mapping/Environment;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 317
    move-object v3, v2

    move-object v0, v3

    .line 319
    .end local v0    # "this":Lgnu/mapping/SimpleEnvironment;
    :goto_0
    return-object v0

    .line 318
    .restart local v0    # "this":Lgnu/mapping/SimpleEnvironment;
    :cond_0
    sget-object v3, Lgnu/mapping/SimpleEnvironment;->envTable:Ljava/util/Hashtable;

    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 319
    move-object v3, v0

    move-object v0, v3

    goto :goto_0
.end method

.method protected redefineError(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)V
    .locals 9

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/SimpleEnvironment;
    move-object v1, p1

    .local v1, "name":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "loc":Lgnu/mapping/Location;
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "prohibited define/redefine of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method rehash()V
    .locals 18

    .prologue
    .line 213
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/mapping/SimpleEnvironment;
    move-object v14, v0

    iget-object v14, v14, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    move-object v1, v14

    .line 214
    .local v1, "oldTable":[Lgnu/mapping/NamedLocation;
    move-object v14, v1

    array-length v14, v14

    move v2, v14

    .line 215
    .local v2, "oldCapacity":I
    const/4 v14, 0x2

    move v15, v2

    mul-int/2addr v14, v15

    move v3, v14

    .line 216
    .local v3, "newCapacity":I
    move v14, v3

    new-array v14, v14, [Lgnu/mapping/NamedLocation;

    move-object v4, v14

    .line 217
    .local v4, "newTable":[Lgnu/mapping/NamedLocation;
    move v14, v3

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    move v5, v14

    .line 218
    .local v5, "newMask":I
    move v14, v2

    move v6, v14

    .local v6, "i":I
    :goto_0
    add-int/lit8 v6, v6, -0x1

    move v14, v6

    if-ltz v14, :cond_2

    .line 220
    move-object v14, v1

    move v15, v6

    aget-object v14, v14, v15

    move-object v7, v14

    .line 221
    .local v7, "element":Lgnu/mapping/NamedLocation;
    :goto_1
    move-object v14, v7

    if-eqz v14, :cond_1

    move-object v14, v7

    move-object v15, v0

    iget-object v15, v15, Lgnu/mapping/SimpleEnvironment;->sharedTail:Lgnu/mapping/NamedLocation;

    if-eq v14, v15, :cond_1

    .line 223
    move-object v14, v7

    iget-object v14, v14, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    move-object v8, v14

    .line 224
    .local v8, "next":Lgnu/mapping/NamedLocation;
    move-object v14, v7

    iget-object v14, v14, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    move-object v9, v14

    .line 225
    .local v9, "name":Lgnu/mapping/Symbol;
    move-object v14, v7

    iget-object v14, v14, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    move-object v10, v14

    .line 226
    .local v10, "property":Ljava/lang/Object;
    move-object v14, v9

    invoke-virtual {v14}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v14

    move-object v15, v10

    invoke-static {v15}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v15

    xor-int/2addr v14, v15

    move v11, v14

    .line 227
    .local v11, "hash":I
    move v14, v11

    move v15, v5

    and-int/2addr v14, v15

    move v12, v14

    .line 228
    .local v12, "j":I
    move-object v14, v4

    move v15, v12

    aget-object v14, v14, v15

    move-object v13, v14

    .line 229
    .local v13, "head":Lgnu/mapping/NamedLocation;
    move-object v14, v13

    if-nez v14, :cond_0

    .line 230
    move-object v14, v0

    iget-object v14, v14, Lgnu/mapping/SimpleEnvironment;->sharedTail:Lgnu/mapping/NamedLocation;

    move-object v13, v14

    .line 231
    :cond_0
    move-object v14, v7

    move-object v15, v13

    iput-object v15, v14, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    .line 232
    move-object v14, v4

    move v15, v12

    move-object/from16 v16, v7

    aput-object v16, v14, v15

    .line 233
    move-object v14, v8

    move-object v7, v14

    .line 234
    goto :goto_1

    .end local v8    # "next":Lgnu/mapping/NamedLocation;
    .end local v9    # "name":Lgnu/mapping/Symbol;
    .end local v10    # "property":Ljava/lang/Object;
    .end local v11    # "hash":I
    .end local v12    # "j":I
    .end local v13    # "head":Lgnu/mapping/NamedLocation;
    :cond_1
    goto :goto_0

    .line 236
    .end local v7    # "element":Lgnu/mapping/NamedLocation;
    :cond_2
    move-object v14, v0

    move-object v15, v4

    iput-object v15, v14, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    .line 237
    move-object v14, v0

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    iget v15, v15, Lgnu/mapping/SimpleEnvironment;->log2Size:I

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    iput v15, v14, Lgnu/mapping/SimpleEnvironment;->log2Size:I

    .line 238
    move-object v14, v0

    move v15, v5

    iput v15, v14, Lgnu/mapping/SimpleEnvironment;->mask:I

    .line 239
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/SimpleEnvironment;
    move-object v1, v0

    iget v1, v1, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    move v0, v1

    .end local v0    # "this":Lgnu/mapping/SimpleEnvironment;
    return v0
.end method

.method protected toStringBase(Ljava/lang/StringBuffer;)V
    .locals 0
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 338
    return-void
.end method

.method public toStringVerbose()Ljava/lang/String;
    .locals 5

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/SimpleEnvironment;
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v2

    .line 333
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/SimpleEnvironment;->toStringBase(Ljava/lang/StringBuffer;)V

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "#<environment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/mapping/SimpleEnvironment;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " num:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lgnu/mapping/SimpleEnvironment;->currentTimestamp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/SimpleEnvironment;
    return-object v0
.end method

.method public unlink(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/Location;
    .locals 13

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/SimpleEnvironment;
    move-object v1, p1

    .local v1, "symbol":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move/from16 v3, p3

    .local v3, "hash":I
    move v8, v3

    move-object v9, v0

    iget v9, v9, Lgnu/mapping/SimpleEnvironment;->mask:I

    and-int/2addr v8, v9

    move v4, v8

    .line 244
    .local v4, "index":I
    const/4 v8, 0x0

    move-object v5, v8

    .line 245
    .local v5, "prev":Lgnu/mapping/NamedLocation;
    move-object v8, v0

    iget-object v8, v8, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    move v9, v4

    aget-object v8, v8, v9

    move-object v6, v8

    .line 246
    .local v6, "loc":Lgnu/mapping/NamedLocation;
    :goto_0
    move-object v8, v6

    if-eqz v8, :cond_3

    .line 248
    move-object v8, v6

    iget-object v8, v8, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    move-object v7, v8

    .line 249
    .local v7, "next":Lgnu/mapping/NamedLocation;
    move-object v8, v6

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lgnu/mapping/NamedLocation;->matches(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 251
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/mapping/SimpleEnvironment;->getCanRedefine()Z

    move-result v8

    if-nez v8, :cond_0

    .line 252
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v6

    invoke-virtual {v8, v9, v10, v11}, Lgnu/mapping/SimpleEnvironment;->redefineError(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)V

    .line 253
    :cond_0
    move-object v8, v5

    if-nez v8, :cond_1

    .line 254
    move-object v8, v0

    iget-object v8, v8, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    move v9, v4

    move-object v10, v7

    aput-object v10, v8, v9

    .line 257
    :goto_1
    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    .line 258
    move-object v8, v6

    move-object v0, v8

    .line 263
    .end local v0    # "this":Lgnu/mapping/SimpleEnvironment;
    .end local v7    # "next":Lgnu/mapping/NamedLocation;
    :goto_2
    return-object v0

    .line 256
    .restart local v0    # "this":Lgnu/mapping/SimpleEnvironment;
    .restart local v7    # "next":Lgnu/mapping/NamedLocation;
    :cond_1
    move-object v8, v5

    move-object v9, v6

    iput-object v9, v8, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    goto :goto_1

    .line 260
    :cond_2
    move-object v8, v6

    move-object v5, v8

    .line 261
    move-object v8, v7

    move-object v6, v8

    .line 262
    goto :goto_0

    .line 263
    .end local v7    # "next":Lgnu/mapping/NamedLocation;
    :cond_3
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_2
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/SimpleEnvironment;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/mapping/SimpleEnvironment;->getSymbol()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 304
    return-void
.end method
