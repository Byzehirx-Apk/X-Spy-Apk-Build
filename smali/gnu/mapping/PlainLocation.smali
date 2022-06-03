.class public Lgnu/mapping/PlainLocation;
.super Lgnu/mapping/NamedLocation;
.source "PlainLocation.java"


# direct methods
.method public constructor <init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/PlainLocation;
    move-object v1, p1

    .local v1, "symbol":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lgnu/mapping/NamedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/PlainLocation;
    move-object v1, p1

    .local v1, "symbol":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "value":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lgnu/mapping/NamedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    .line 16
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/mapping/PlainLocation;->value:Ljava/lang/Object;

    .line 17
    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/PlainLocation;
    move-object v1, p1

    .local v1, "defaultValue":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/PlainLocation;->base:Lgnu/mapping/Location;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/PlainLocation;->base:Lgnu/mapping/Location;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/PlainLocation;
    return-object v0

    .restart local v0    # "this":Lgnu/mapping/PlainLocation;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/PlainLocation;->value:Ljava/lang/Object;

    sget-object v3, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    if-ne v2, v3, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/PlainLocation;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public isBound()Z
    .locals 3

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/PlainLocation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/PlainLocation;->base:Lgnu/mapping/Location;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/PlainLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v1}, Lgnu/mapping/Location;->isBound()Z

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/mapping/PlainLocation;
    return v0

    .restart local v0    # "this":Lgnu/mapping/PlainLocation;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/PlainLocation;->value:Ljava/lang/Object;

    sget-object v2, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/PlainLocation;
    move-object v1, p1

    .local v1, "newValue":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/PlainLocation;->base:Lgnu/mapping/Location;

    if-nez v2, :cond_0

    .line 33
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/mapping/PlainLocation;->value:Ljava/lang/Object;

    .line 43
    :goto_0
    return-void

    .line 34
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/PlainLocation;->value:Ljava/lang/Object;

    sget-object v3, Lgnu/mapping/PlainLocation;->DIRECT_ON_SET:Ljava/lang/Object;

    if-ne v2, v3, :cond_1

    .line 36
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lgnu/mapping/PlainLocation;->base:Lgnu/mapping/Location;

    .line 37
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/mapping/PlainLocation;->value:Ljava/lang/Object;

    goto :goto_0

    .line 39
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/PlainLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v2}, Lgnu/mapping/Location;->isConstant()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 40
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/mapping/PlainLocation;->getEnvironment()Lgnu/mapping/Environment;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/mapping/PlainLocation;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/mapping/PlainLocation;->getKeyProperty()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 42
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/PlainLocation;->base:Lgnu/mapping/Location;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method
