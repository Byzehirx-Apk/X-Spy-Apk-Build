.class public abstract Lgnu/mapping/PropertySet;
.super Ljava/lang/Object;
.source "PropertySet.java"

# interfaces
.implements Lgnu/mapping/Named;


# static fields
.field public static final nameKey:Lgnu/mapping/Symbol;


# instance fields
.field private properties:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/mapping/PropertySet;->nameKey:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 3
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/PropertySet;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setProperty([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 14

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "properties":[Ljava/lang/Object;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v8, v0

    move-object v4, v8

    .line 62
    .local v4, "props":[Ljava/lang/Object;
    move-object v8, v4

    if-nez v8, :cond_1

    .line 64
    const/16 v8, 0xa

    new-array v8, v8, [Ljava/lang/Object;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v4, v9

    move-object v0, v8

    .line 65
    const/4 v8, 0x0

    move v3, v8

    .line 90
    .local v3, "avail":I
    :cond_0
    :goto_0
    move-object v8, v4

    move v9, v3

    move-object v10, v1

    aput-object v10, v8, v9

    .line 91
    move-object v8, v4

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object v10, v2

    aput-object v10, v8, v9

    .line 92
    move-object v8, v0

    move-object v0, v8

    .end local v0    # "properties":[Ljava/lang/Object;
    :goto_1
    return-object v0

    .line 69
    .end local v3    # "avail":I
    .restart local v0    # "properties":[Ljava/lang/Object;
    :cond_1
    const/4 v8, -0x1

    move v3, v8

    .line 70
    .restart local v3    # "avail":I
    move-object v8, v4

    array-length v8, v8

    move v5, v8

    .local v5, "i":I
    :goto_2
    add-int/lit8 v5, v5, -0x2

    move v8, v5

    if-ltz v8, :cond_4

    .line 72
    move-object v8, v4

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .line 73
    .local v6, "k":Ljava/lang/Object;
    move-object v8, v6

    move-object v9, v1

    if-ne v8, v9, :cond_2

    .line 75
    move-object v8, v4

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-object v8, v8, v9

    move-object v7, v8

    .line 76
    .local v7, "old":Ljava/lang/Object;
    move-object v8, v4

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object v10, v2

    aput-object v10, v8, v9

    .line 77
    move-object v8, v0

    move-object v0, v8

    goto :goto_1

    .line 79
    .end local v7    # "old":Ljava/lang/Object;
    :cond_2
    move-object v8, v6

    if-nez v8, :cond_3

    .line 80
    move v8, v5

    move v3, v8

    .line 81
    :cond_3
    goto :goto_2

    .line 82
    .end local v6    # "k":Ljava/lang/Object;
    :cond_4
    move v8, v3

    if-gez v8, :cond_0

    .line 84
    move-object v8, v4

    array-length v8, v8

    move v3, v8

    .line 85
    const/4 v8, 0x2

    move v9, v3

    mul-int/2addr v8, v9

    new-array v8, v8, [Ljava/lang/Object;

    move-object v0, v8

    .line 86
    move-object v8, v4

    const/4 v9, 0x0

    move-object v10, v0

    const/4 v11, 0x0

    move v12, v3

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    move-object v8, v0

    move-object v4, v8

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/PropertySet;
    move-object v2, v0

    sget-object v3, Lgnu/mapping/PropertySet;->nameKey:Lgnu/mapping/Symbol;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/PropertySet;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 13
    .local v1, "symbol":Ljava/lang/Object;
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/PropertySet;
    return-object v0

    .restart local v0    # "this":Lgnu/mapping/PropertySet;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lgnu/mapping/Symbol;

    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/PropertySet;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "defaultValue":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/PropertySet;->properties:[Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 37
    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/PropertySet;->properties:[Ljava/lang/Object;

    array-length v4, v4

    move v3, v4

    .local v3, "i":I
    :cond_0
    add-int/lit8 v3, v3, -0x2

    move v4, v3

    if-ltz v4, :cond_1

    .line 39
    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/PropertySet;->properties:[Ljava/lang/Object;

    move v5, v3

    aget-object v4, v4, v5

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 40
    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/PropertySet;->properties:[Ljava/lang/Object;

    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    move-object v0, v4

    .line 43
    .end local v0    # "this":Lgnu/mapping/PropertySet;
    .end local v3    # "i":I
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/mapping/PropertySet;
    :cond_1
    move-object v4, v2

    move-object v0, v4

    goto :goto_0
.end method

.method public getSymbol()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/PropertySet;
    move-object v1, v0

    sget-object v2, Lgnu/mapping/PropertySet;->nameKey:Lgnu/mapping/Symbol;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/PropertySet;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/PropertySet;
    return-object v0
.end method

.method public removeProperty(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/PropertySet;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v6, v0

    iget-object v6, v6, Lgnu/mapping/PropertySet;->properties:[Ljava/lang/Object;

    move-object v2, v6

    .line 98
    .local v2, "props":[Ljava/lang/Object;
    move-object v6, v2

    if-nez v6, :cond_0

    .line 99
    const/4 v6, 0x0

    move-object v0, v6

    .line 111
    .end local v0    # "this":Lgnu/mapping/PropertySet;
    :goto_0
    return-object v0

    .line 100
    .restart local v0    # "this":Lgnu/mapping/PropertySet;
    :cond_0
    move-object v6, v2

    array-length v6, v6

    move v3, v6

    .local v3, "i":I
    :goto_1
    add-int/lit8 v3, v3, -0x2

    move v6, v3

    if-ltz v6, :cond_2

    .line 102
    move-object v6, v2

    move v7, v3

    aget-object v6, v6, v7

    move-object v4, v6

    .line 103
    .local v4, "k":Ljava/lang/Object;
    move-object v6, v4

    move-object v7, v1

    if-ne v6, v7, :cond_1

    .line 105
    move-object v6, v2

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-object v6, v6, v7

    move-object v5, v6

    .line 106
    .local v5, "old":Ljava/lang/Object;
    move-object v6, v2

    move v7, v3

    const/4 v8, 0x0

    aput-object v8, v6, v7

    .line 107
    move-object v6, v2

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x0

    aput-object v8, v6, v7

    .line 108
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 110
    .end local v5    # "old":Ljava/lang/Object;
    :cond_1
    goto :goto_1

    .line 111
    .end local v4    # "k":Ljava/lang/Object;
    :cond_2
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/PropertySet;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    sget-object v3, Lgnu/mapping/PropertySet;->nameKey:Lgnu/mapping/Symbol;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public declared-synchronized setProperty(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/PropertySet;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v7, p0

    monitor-enter v7

    move-object v3, v0

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lgnu/mapping/PropertySet;->properties:[Ljava/lang/Object;

    move-object v5, v1

    move-object v6, v2

    invoke-static {v4, v5, v6}, Lgnu/mapping/PropertySet;->setProperty([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lgnu/mapping/PropertySet;->properties:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit v7

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lgnu/mapping/PropertySet;
    throw v0
.end method

.method public final setSymbol(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/PropertySet;
    move-object v1, p1

    .local v1, "name":Ljava/lang/Object;
    move-object v2, v0

    sget-object v3, Lgnu/mapping/PropertySet;->nameKey:Lgnu/mapping/Symbol;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    return-void
.end method
