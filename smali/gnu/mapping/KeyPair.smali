.class public Lgnu/mapping/KeyPair;
.super Ljava/lang/Object;
.source "KeyPair.java"

# interfaces
.implements Lgnu/mapping/EnvironmentKey;


# instance fields
.field name:Lgnu/mapping/Symbol;

.field property:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/KeyPair;
    move-object v1, p1

    .local v1, "name":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 15
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/mapping/KeyPair;->name:Lgnu/mapping/Symbol;

    .line 16
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/mapping/KeyPair;->property:Ljava/lang/Object;

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/KeyPair;
    move-object v1, p1

    .local v1, "x":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lgnu/mapping/KeyPair;

    if-nez v3, :cond_0

    .line 36
    const/4 v3, 0x0

    move v0, v3

    .line 38
    .end local v0    # "this":Lgnu/mapping/KeyPair;
    :goto_0
    return v0

    .line 37
    .restart local v0    # "this":Lgnu/mapping/KeyPair;
    :cond_0
    move-object v3, v1

    check-cast v3, Lgnu/mapping/KeyPair;

    move-object v2, v3

    .line 38
    .local v2, "e2":Lgnu/mapping/KeyPair;
    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/KeyPair;->property:Ljava/lang/Object;

    move-object v4, v2

    iget-object v4, v4, Lgnu/mapping/KeyPair;->property:Ljava/lang/Object;

    if-ne v3, v4, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/KeyPair;->name:Lgnu/mapping/Symbol;

    if-nez v3, :cond_2

    move-object v3, v2

    iget-object v3, v3, Lgnu/mapping/KeyPair;->name:Lgnu/mapping/Symbol;

    if-nez v3, :cond_3

    :cond_1
    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/KeyPair;->name:Lgnu/mapping/Symbol;

    move-object v4, v2

    iget-object v4, v4, Lgnu/mapping/KeyPair;->name:Lgnu/mapping/Symbol;

    invoke-virtual {v3, v4}, Lgnu/mapping/Symbol;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getKeyProperty()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/KeyPair;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/KeyPair;->property:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/KeyPair;
    return-object v0
.end method

.method public getKeySymbol()Lgnu/mapping/Symbol;
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/KeyPair;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/KeyPair;->name:Lgnu/mapping/Symbol;

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/KeyPair;
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/KeyPair;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/KeyPair;->name:Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/KeyPair;->property:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    xor-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lgnu/mapping/KeyPair;
    return v0
.end method

.method public final matches(Lgnu/mapping/EnvironmentKey;)Z
    .locals 4

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/KeyPair;
    move-object v1, p1

    .local v1, "key":Lgnu/mapping/EnvironmentKey;
    move-object v2, v1

    invoke-interface {v2}, Lgnu/mapping/EnvironmentKey;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/KeyPair;->name:Lgnu/mapping/Symbol;

    invoke-static {v2, v3}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Lgnu/mapping/EnvironmentKey;->getKeyProperty()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/KeyPair;->property:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/mapping/KeyPair;
    return v0

    .restart local v0    # "this":Lgnu/mapping/KeyPair;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final matches(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/KeyPair;
    move-object v1, p1

    .local v1, "symbol":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/KeyPair;->name:Lgnu/mapping/Symbol;

    invoke-static {v3, v4}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/KeyPair;->property:Ljava/lang/Object;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lgnu/mapping/KeyPair;
    return v0

    .restart local v0    # "this":Lgnu/mapping/KeyPair;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/KeyPair;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "KeyPair[sym:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/KeyPair;->name:Lgnu/mapping/Symbol;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " prop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/KeyPair;->property:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/KeyPair;
    return-object v0
.end method
