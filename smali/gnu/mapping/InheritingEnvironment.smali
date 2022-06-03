.class public Lgnu/mapping/InheritingEnvironment;
.super Lgnu/mapping/SimpleEnvironment;
.source "InheritingEnvironment.java"


# instance fields
.field baseTimestamp:I

.field inherited:[Lgnu/mapping/Environment;

.field namespaceMap:[Lgnu/mapping/Namespace;

.field numInherited:I

.field propertyMap:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lgnu/mapping/Environment;)V
    .locals 9

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/InheritingEnvironment;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "parent":Lgnu/mapping/Environment;
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleEnvironment;-><init>(Ljava/lang/String;)V

    .line 17
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lgnu/mapping/InheritingEnvironment;->addParent(Lgnu/mapping/Environment;)V

    .line 18
    move-object v4, v2

    instance-of v4, v4, Lgnu/mapping/SimpleEnvironment;

    if-eqz v4, :cond_0

    .line 20
    move-object v4, v2

    check-cast v4, Lgnu/mapping/SimpleEnvironment;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lgnu/mapping/SimpleEnvironment;->currentTimestamp:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v7, v4

    move v8, v5

    move v4, v8

    move-object v5, v7

    move v6, v8

    iput v6, v5, Lgnu/mapping/SimpleEnvironment;->currentTimestamp:I

    move v3, v4

    .line 21
    .local v3, "timestamp":I
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lgnu/mapping/InheritingEnvironment;->baseTimestamp:I

    .line 22
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lgnu/mapping/InheritingEnvironment;->currentTimestamp:I

    .line 24
    .end local v3    # "timestamp":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addParent(Lgnu/mapping/Environment;)V
    .locals 9

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/InheritingEnvironment;
    move-object v1, p1

    .local v1, "env":Lgnu/mapping/Environment;
    move-object v3, v0

    iget v3, v3, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    if-nez v3, :cond_1

    .line 32
    move-object v3, v0

    const/4 v4, 0x4

    new-array v4, v4, [Lgnu/mapping/Environment;

    iput-object v4, v3, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    .line 40
    :cond_0
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    move-object v4, v0

    iget v4, v4, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    move-object v5, v1

    aput-object v5, v3, v4

    .line 41
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    .line 42
    return-void

    .line 33
    :cond_1
    move-object v3, v0

    iget v3, v3, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    array-length v4, v4

    if-gt v3, v4, :cond_0

    .line 35
    const/4 v3, 0x2

    move-object v4, v0

    iget v4, v4, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    mul-int/2addr v3, v4

    new-array v3, v3, [Lgnu/mapping/Environment;

    move-object v2, v3

    .line 37
    .local v2, "newInherited":[Lgnu/mapping/Environment;
    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    goto :goto_0
.end method

.method public enumerateAllLocations()Lgnu/mapping/LocationEnumeration;
    .locals 8

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/InheritingEnvironment;
    new-instance v2, Lgnu/mapping/LocationEnumeration;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/InheritingEnvironment;->table:[Lgnu/mapping/NamedLocation;

    const/4 v5, 0x1

    move-object v6, v0

    iget v6, v6, Lgnu/mapping/InheritingEnvironment;->log2Size:I

    shl-int/2addr v5, v6

    invoke-direct {v3, v4, v5}, Lgnu/mapping/LocationEnumeration;-><init>([Lgnu/mapping/NamedLocation;I)V

    move-object v1, v2

    .line 129
    .local v1, "it":Lgnu/mapping/LocationEnumeration;
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lgnu/mapping/LocationEnumeration;->env:Lgnu/mapping/SimpleEnvironment;

    .line 130
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 132
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lgnu/mapping/Environment;->enumerateAllLocations()Lgnu/mapping/LocationEnumeration;

    move-result-object v3

    iput-object v3, v2, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    .line 133
    move-object v2, v1

    const/4 v3, 0x0

    iput v3, v2, Lgnu/mapping/LocationEnumeration;->index:I

    .line 135
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/InheritingEnvironment;
    return-object v0
.end method

.method public declared-synchronized getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;IZ)Lgnu/mapping/NamedLocation;
    .locals 13

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/InheritingEnvironment;
    move-object v1, p1

    .local v1, "name":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move/from16 v3, p3

    .local v3, "hash":I
    move/from16 v4, p4

    .local v4, "create":Z
    move-object v12, p0

    monitor-enter v12

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    :try_start_0
    invoke-virtual {v7, v8, v9, v10}, Lgnu/mapping/InheritingEnvironment;->lookupDirect(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v7

    move-object v5, v7

    .line 95
    .local v5, "loc":Lgnu/mapping/NamedLocation;
    move-object v7, v5

    if-eqz v7, :cond_1

    move v7, v4

    if-nez v7, :cond_0

    move-object v7, v5

    invoke-virtual {v7}, Lgnu/mapping/NamedLocation;->isBound()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_1

    .line 96
    :cond_0
    move-object v7, v5

    move-object v0, v7

    .line 123
    .end local v0    # "this":Lgnu/mapping/InheritingEnvironment;
    :goto_0
    monitor-exit v12

    return-object v0

    .line 97
    .restart local v0    # "this":Lgnu/mapping/InheritingEnvironment;
    :cond_1
    move-object v7, v0

    :try_start_1
    iget v7, v7, Lgnu/mapping/InheritingEnvironment;->flags:I

    const/16 v8, 0x20

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_4

    move v7, v4

    if-eqz v7, :cond_4

    .line 98
    move-object v7, v0

    iget-object v7, v7, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    const/4 v11, 0x1

    invoke-virtual {v7, v8, v9, v10, v11}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;IZ)Lgnu/mapping/NamedLocation;

    move-result-object v7

    move-object v5, v7

    .line 102
    :goto_1
    move-object v7, v5

    if-eqz v7, :cond_8

    .line 104
    move v7, v4

    if-eqz v7, :cond_7

    .line 106
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    invoke-virtual {v7, v8, v9, v10}, Lgnu/mapping/InheritingEnvironment;->addUnboundLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v7

    move-object v6, v7

    .line 107
    .local v6, "xloc":Lgnu/mapping/NamedLocation;
    move-object v7, v0

    iget v7, v7, Lgnu/mapping/InheritingEnvironment;->flags:I

    const/4 v8, 0x1

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_2

    move-object v7, v5

    invoke-virtual {v7}, Lgnu/mapping/NamedLocation;->isBound()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 108
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v6

    invoke-virtual {v7, v8, v9, v10}, Lgnu/mapping/InheritingEnvironment;->redefineError(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)V

    .line 109
    :cond_2
    move-object v7, v6

    move-object v8, v5

    iput-object v8, v7, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    .line 110
    move-object v7, v5

    iget-object v7, v7, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    sget-object v8, Lgnu/mapping/IndirectableLocation;->INDIRECT_FLUIDS:Ljava/lang/Object;

    if-ne v7, v8, :cond_5

    .line 111
    move-object v7, v6

    move-object v8, v5

    iget-object v8, v8, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    iput-object v8, v7, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    .line 116
    :goto_2
    move-object v7, v6

    instance-of v7, v7, Lgnu/mapping/SharedLocation;

    if-eqz v7, :cond_3

    .line 117
    move-object v7, v6

    check-cast v7, Lgnu/mapping/SharedLocation;

    move-object v8, v0

    iget v8, v8, Lgnu/mapping/InheritingEnvironment;->baseTimestamp:I

    iput v8, v7, Lgnu/mapping/SharedLocation;->timestamp:I

    .line 118
    :cond_3
    move-object v7, v6

    move-object v0, v7

    goto :goto_0

    .line 100
    .end local v6    # "xloc":Lgnu/mapping/NamedLocation;
    :cond_4
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    invoke-virtual {v7, v8, v9, v10}, Lgnu/mapping/InheritingEnvironment;->lookupInherited(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v7

    move-object v5, v7

    goto :goto_1

    .line 112
    .restart local v6    # "xloc":Lgnu/mapping/NamedLocation;
    :cond_5
    move-object v7, v0

    iget v7, v7, Lgnu/mapping/InheritingEnvironment;->flags:I

    const/16 v8, 0x10

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_6

    .line 113
    move-object v7, v6

    sget-object v8, Lgnu/mapping/IndirectableLocation;->DIRECT_ON_SET:Ljava/lang/Object;

    iput-object v8, v7, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    goto :goto_2

    .line 115
    :cond_6
    move-object v7, v6

    const/4 v8, 0x0

    iput-object v8, v7, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 94
    .end local v5    # "loc":Lgnu/mapping/NamedLocation;
    .end local v6    # "xloc":Lgnu/mapping/NamedLocation;
    :catchall_0
    move-exception v0

    monitor-exit v12

    .end local v0    # "this":Lgnu/mapping/InheritingEnvironment;
    throw v0

    .line 121
    .restart local v0    # "this":Lgnu/mapping/InheritingEnvironment;
    .restart local v5    # "loc":Lgnu/mapping/NamedLocation;
    :cond_7
    move-object v7, v5

    move-object v0, v7

    goto/16 :goto_0

    .line 123
    :cond_8
    move v7, v4

    if-eqz v7, :cond_9

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    :try_start_2
    invoke-virtual {v7, v8, v9, v10}, Lgnu/mapping/InheritingEnvironment;->addUnboundLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    :goto_3
    move-object v0, v7

    goto/16 :goto_0

    :cond_9
    const/4 v7, 0x0

    goto :goto_3
.end method

.method public final getNumParents()I
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/InheritingEnvironment;
    move-object v1, v0

    iget v1, v1, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    move v0, v1

    .end local v0    # "this":Lgnu/mapping/InheritingEnvironment;
    return v0
.end method

.method public final getParent(I)Lgnu/mapping/Environment;
    .locals 4

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/InheritingEnvironment;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/InheritingEnvironment;
    return-object v0
.end method

.method protected hasMoreElements(Lgnu/mapping/LocationEnumeration;)Z
    .locals 8

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/InheritingEnvironment;
    move-object v1, p1

    .local v1, "it":Lgnu/mapping/LocationEnumeration;
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    if-eqz v3, :cond_0

    .line 144
    :goto_0
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    move-object v2, v3

    .line 147
    .local v2, "loc":Lgnu/mapping/NamedLocation;
    :goto_1
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    move-object v4, v2

    iput-object v4, v3, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    .line 148
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    invoke-virtual {v3}, Lgnu/mapping/LocationEnumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    .line 150
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    .line 151
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    iget-object v4, v4, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    iput-object v4, v3, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    .line 152
    .line 162
    move-object v3, v1

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lgnu/mapping/LocationEnumeration;->index:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput v5, v4, Lgnu/mapping/LocationEnumeration;->index:I

    move-object v4, v0

    iget v4, v4, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    if-ne v3, v4, :cond_3

    .line 163
    .line 166
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    .line 167
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/InheritingEnvironment;->table:[Lgnu/mapping/NamedLocation;

    iput-object v4, v3, Lgnu/mapping/LocationEnumeration;->bindings:[Lgnu/mapping/NamedLocation;

    .line 168
    move-object v3, v1

    const/4 v4, 0x1

    move-object v5, v0

    iget v5, v5, Lgnu/mapping/InheritingEnvironment;->log2Size:I

    shl-int/2addr v4, v5

    iput v4, v3, Lgnu/mapping/LocationEnumeration;->index:I

    .line 170
    .end local v2    # "loc":Lgnu/mapping/NamedLocation;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lgnu/mapping/SimpleEnvironment;->hasMoreElements(Lgnu/mapping/LocationEnumeration;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lgnu/mapping/InheritingEnvironment;
    :goto_2
    return v0

    .line 154
    .restart local v0    # "this":Lgnu/mapping/InheritingEnvironment;
    .restart local v2    # "loc":Lgnu/mapping/NamedLocation;
    :cond_1
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    iget-object v3, v3, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    move-object v2, v3

    .line 155
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    move-object v5, v2

    iget-object v5, v5, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/InheritingEnvironment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v3

    move-object v4, v2

    if-ne v3, v4, :cond_2

    .line 157
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    .line 158
    const/4 v3, 0x1

    move v0, v3

    goto :goto_2

    .line 160
    :cond_2
    move-object v3, v2

    iget-object v3, v3, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    move-object v2, v3

    goto :goto_1

    .line 164
    :cond_3
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    move-object v5, v1

    iget v5, v5, Lgnu/mapping/LocationEnumeration;->index:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lgnu/mapping/Environment;->enumerateAllLocations()Lgnu/mapping/LocationEnumeration;

    move-result-object v4

    iput-object v4, v3, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    .line 165
    goto :goto_0
.end method

.method public lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .locals 9

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/InheritingEnvironment;
    move-object v1, p1

    .local v1, "name":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move v3, p3

    .local v3, "hash":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-super {v5, v6, v7, v8}, Lgnu/mapping/SimpleEnvironment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v5

    move-object v4, v5

    .line 86
    .local v4, "loc":Lgnu/mapping/NamedLocation;
    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v4

    invoke-virtual {v5}, Lgnu/mapping/NamedLocation;->isBound()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 87
    move-object v5, v4

    move-object v0, v5

    .line 88
    .end local v0    # "this":Lgnu/mapping/InheritingEnvironment;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/mapping/InheritingEnvironment;
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lgnu/mapping/InheritingEnvironment;->lookupInherited(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method public lookupInherited(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .locals 13

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/InheritingEnvironment;
    move-object v1, p1

    .local v1, "name":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move/from16 v3, p3

    .local v3, "hash":I
    const/4 v9, 0x0

    move v4, v9

    .local v4, "i":I
    :goto_0
    move v9, v4

    move-object v10, v0

    iget v10, v10, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    if-ge v9, v10, :cond_8

    .line 48
    move-object v9, v1

    move-object v5, v9

    .line 49
    .local v5, "sym":Lgnu/mapping/Symbol;
    move-object v9, v2

    move-object v6, v9

    .line 50
    .local v6, "prop":Ljava/lang/Object;
    move-object v9, v0

    iget-object v9, v9, Lgnu/mapping/InheritingEnvironment;->namespaceMap:[Lgnu/mapping/Namespace;

    if-eqz v9, :cond_3

    move-object v9, v0

    iget-object v9, v9, Lgnu/mapping/InheritingEnvironment;->namespaceMap:[Lgnu/mapping/Namespace;

    array-length v9, v9

    const/4 v10, 0x2

    move v11, v4

    mul-int/2addr v10, v11

    if-le v9, v10, :cond_3

    .line 52
    move-object v9, v0

    iget-object v9, v9, Lgnu/mapping/InheritingEnvironment;->namespaceMap:[Lgnu/mapping/Namespace;

    const/4 v10, 0x2

    move v11, v4

    mul-int/2addr v10, v11

    aget-object v9, v9, v10

    move-object v7, v9

    .line 53
    .local v7, "srcNamespace":Lgnu/mapping/Namespace;
    move-object v9, v0

    iget-object v9, v9, Lgnu/mapping/InheritingEnvironment;->namespaceMap:[Lgnu/mapping/Namespace;

    const/4 v10, 0x2

    move v11, v4

    mul-int/2addr v10, v11

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aget-object v9, v9, v10

    move-object v8, v9

    .line 54
    .local v8, "dstNamespace":Lgnu/mapping/Namespace;
    move-object v9, v7

    if-nez v9, :cond_0

    move-object v9, v8

    if-eqz v9, :cond_3

    .line 56
    :cond_0
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v9

    move-object v10, v8

    if-eq v9, v10, :cond_2

    .line 57
    .line 46
    .end local v7    # "srcNamespace":Lgnu/mapping/Namespace;
    .end local v8    # "dstNamespace":Lgnu/mapping/Namespace;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 58
    .restart local v7    # "srcNamespace":Lgnu/mapping/Namespace;
    .restart local v8    # "dstNamespace":Lgnu/mapping/Namespace;
    :cond_2
    move-object v9, v7

    move-object v10, v1

    invoke-virtual {v10}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v9

    move-object v5, v9

    .line 61
    .end local v7    # "srcNamespace":Lgnu/mapping/Namespace;
    .end local v8    # "dstNamespace":Lgnu/mapping/Namespace;
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Lgnu/mapping/InheritingEnvironment;->propertyMap:[Ljava/lang/Object;

    if-eqz v9, :cond_6

    move-object v9, v0

    iget-object v9, v9, Lgnu/mapping/InheritingEnvironment;->propertyMap:[Ljava/lang/Object;

    array-length v9, v9

    const/4 v10, 0x2

    move v11, v4

    mul-int/2addr v10, v11

    if-le v9, v10, :cond_6

    .line 63
    move-object v9, v0

    iget-object v9, v9, Lgnu/mapping/InheritingEnvironment;->propertyMap:[Ljava/lang/Object;

    const/4 v10, 0x2

    move v11, v4

    mul-int/2addr v10, v11

    aget-object v9, v9, v10

    move-object v7, v9

    .line 64
    .local v7, "srcProperty":Ljava/lang/Object;
    move-object v9, v0

    iget-object v9, v9, Lgnu/mapping/InheritingEnvironment;->propertyMap:[Ljava/lang/Object;

    const/4 v10, 0x2

    move v11, v4

    mul-int/2addr v10, v11

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aget-object v9, v9, v10

    move-object v8, v9

    .line 65
    .local v8, "dstProperty":Ljava/lang/Object;
    move-object v9, v7

    if-nez v9, :cond_4

    move-object v9, v8

    if-eqz v9, :cond_6

    .line 67
    :cond_4
    move-object v9, v2

    move-object v10, v8

    if-eq v9, v10, :cond_5

    .line 68
    goto :goto_1

    .line 69
    :cond_5
    move-object v9, v7

    move-object v6, v9

    .line 72
    .end local v7    # "srcProperty":Ljava/lang/Object;
    .end local v8    # "dstProperty":Ljava/lang/Object;
    :cond_6
    move-object v9, v0

    iget-object v9, v9, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    move v10, v4

    aget-object v9, v9, v10

    move-object v10, v5

    move-object v11, v6

    move v12, v3

    invoke-virtual {v9, v10, v11, v12}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v9

    move-object v7, v9

    .line 73
    .local v7, "loc":Lgnu/mapping/NamedLocation;
    move-object v9, v7

    if-eqz v9, :cond_1

    move-object v9, v7

    invoke-virtual {v9}, Lgnu/mapping/NamedLocation;->isBound()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 75
    move-object v9, v7

    instance-of v9, v9, Lgnu/mapping/SharedLocation;

    if-eqz v9, :cond_7

    move-object v9, v7

    check-cast v9, Lgnu/mapping/SharedLocation;

    iget v9, v9, Lgnu/mapping/SharedLocation;->timestamp:I

    move-object v10, v0

    iget v10, v10, Lgnu/mapping/InheritingEnvironment;->baseTimestamp:I

    if-ge v9, v10, :cond_1

    .line 77
    :cond_7
    move-object v9, v7

    move-object v0, v9

    .line 80
    .end local v0    # "this":Lgnu/mapping/InheritingEnvironment;
    .end local v5    # "sym":Lgnu/mapping/Symbol;
    .end local v6    # "prop":Ljava/lang/Object;
    .end local v7    # "loc":Lgnu/mapping/NamedLocation;
    :goto_2
    return-object v0

    .restart local v0    # "this":Lgnu/mapping/InheritingEnvironment;
    :cond_8
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_2
.end method

.method protected toStringBase(Ljava/lang/StringBuffer;)V
    .locals 6

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/InheritingEnvironment;
    move-object v1, p1

    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v3, v1

    const-string/jumbo v4, " baseTs:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 176
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/mapping/InheritingEnvironment;->baseTimestamp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 177
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    if-ge v3, v4, :cond_0

    .line 179
    move-object v3, v1

    const-string/jumbo v4, " base:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 180
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lgnu/mapping/Environment;->toStringVerbose()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    :cond_0
    return-void
.end method
