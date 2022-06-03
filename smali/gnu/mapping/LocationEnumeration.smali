.class public Lgnu/mapping/LocationEnumeration;
.super Ljava/lang/Object;
.source "LocationEnumeration.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lgnu/mapping/Location;",
        ">;",
        "Ljava/util/Enumeration",
        "<",
        "Lgnu/mapping/Location;",
        ">;"
    }
.end annotation


# instance fields
.field bindings:[Lgnu/mapping/NamedLocation;

.field env:Lgnu/mapping/SimpleEnvironment;

.field index:I

.field inherited:Lgnu/mapping/LocationEnumeration;

.field nextLoc:Lgnu/mapping/NamedLocation;

.field prevLoc:Lgnu/mapping/NamedLocation;


# direct methods
.method public constructor <init>(Lgnu/mapping/SimpleEnvironment;)V
    .locals 6

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/LocationEnumeration;
    move-object v1, p1

    .local v1, "env":Lgnu/mapping/SimpleEnvironment;
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    const/4 v4, 0x1

    move-object v5, v1

    iget v5, v5, Lgnu/mapping/SimpleEnvironment;->log2Size:I

    shl-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Lgnu/mapping/LocationEnumeration;-><init>([Lgnu/mapping/NamedLocation;I)V

    .line 31
    return-void
.end method

.method public constructor <init>([Lgnu/mapping/NamedLocation;I)V
    .locals 5

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/LocationEnumeration;
    move-object v1, p1

    .local v1, "bindings":[Lgnu/mapping/NamedLocation;
    move v2, p2

    .local v2, "count":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 24
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/mapping/LocationEnumeration;->bindings:[Lgnu/mapping/NamedLocation;

    .line 25
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lgnu/mapping/LocationEnumeration;->index:I

    .line 26
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 3

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/LocationEnumeration;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/LocationEnumeration;->env:Lgnu/mapping/SimpleEnvironment;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/mapping/SimpleEnvironment;->hasMoreElements(Lgnu/mapping/LocationEnumeration;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/mapping/LocationEnumeration;
    return v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/LocationEnumeration;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/mapping/LocationEnumeration;->hasMoreElements()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/mapping/LocationEnumeration;
    return v0
.end method

.method public next()Lgnu/mapping/Location;
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/LocationEnumeration;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/mapping/LocationEnumeration;->nextElement()Lgnu/mapping/Location;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/LocationEnumeration;
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/LocationEnumeration;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/mapping/LocationEnumeration;->next()Lgnu/mapping/Location;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/LocationEnumeration;
    return-object v0
.end method

.method public nextElement()Lgnu/mapping/Location;
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/LocationEnumeration;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/mapping/LocationEnumeration;->nextLocation()Lgnu/mapping/Location;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/LocationEnumeration;
    return-object v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/LocationEnumeration;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/mapping/LocationEnumeration;->nextElement()Lgnu/mapping/Location;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/LocationEnumeration;
    return-object v0
.end method

.method public nextLocation()Lgnu/mapping/Location;
    .locals 6

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/LocationEnumeration;
    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    if-nez v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/mapping/LocationEnumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_0

    .line 46
    new-instance v3, Ljava/util/NoSuchElementException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3

    .line 47
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    move-object v1, v3

    .line 48
    .local v1, "oldPrev":Lgnu/mapping/NamedLocation;
    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    if-nez v3, :cond_1

    .line 50
    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/LocationEnumeration;->bindings:[Lgnu/mapping/NamedLocation;

    move-object v4, v0

    iget v4, v4, Lgnu/mapping/LocationEnumeration;->index:I

    aget-object v3, v3, v4

    move-object v2, v3

    .line 51
    .local v2, "first":Lgnu/mapping/NamedLocation;
    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    move-object v4, v2

    if-eq v3, v4, :cond_1

    .line 52
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    .line 54
    .end local v2    # "first":Lgnu/mapping/NamedLocation;
    :cond_1
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    iget-object v3, v3, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    if-eq v3, v4, :cond_2

    .line 55
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    iget-object v4, v4, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    iput-object v4, v3, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    goto :goto_0

    .line 56
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    move-object v2, v3

    .line 57
    .local v2, "r":Lgnu/mapping/Location;
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    iget-object v4, v4, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    iput-object v4, v3, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    .line 58
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lgnu/mapping/LocationEnumeration;
    return-object v0
.end method

.method public remove()V
    .locals 6

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/LocationEnumeration;
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    iget-object v2, v2, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    :goto_0
    move-object v1, v2

    .line 74
    .local v1, "curLoc":Lgnu/mapping/NamedLocation;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    if-eq v2, v3, :cond_2

    .line 75
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 73
    .end local v1    # "curLoc":Lgnu/mapping/NamedLocation;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/LocationEnumeration;->bindings:[Lgnu/mapping/NamedLocation;

    move-object v3, v0

    iget v3, v3, Lgnu/mapping/LocationEnumeration;->index:I

    aget-object v2, v2, v3

    goto :goto_0

    .line 76
    .restart local v1    # "curLoc":Lgnu/mapping/NamedLocation;
    :cond_2
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    .line 77
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    if-eqz v2, :cond_3

    .line 78
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    iput-object v3, v2, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    .line 81
    :goto_1
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/LocationEnumeration;->env:Lgnu/mapping/SimpleEnvironment;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    .line 82
    return-void

    .line 80
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/LocationEnumeration;->bindings:[Lgnu/mapping/NamedLocation;

    move-object v3, v0

    iget v3, v3, Lgnu/mapping/LocationEnumeration;->index:I

    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    aput-object v4, v2, v3

    goto :goto_1
.end method
