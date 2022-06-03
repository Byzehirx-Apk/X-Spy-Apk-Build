.class public abstract Lgnu/mapping/IndirectableLocation;
.super Lgnu/mapping/Location;
.source "IndirectableLocation.java"


# static fields
.field protected static final DIRECT_ON_SET:Ljava/lang/Object;

.field protected static final INDIRECT_FLUIDS:Ljava/lang/Object;


# instance fields
.field protected base:Lgnu/mapping/Location;

.field protected value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 9
    new-instance v0, Ljava/lang/String;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "(direct-on-set)"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mapping/IndirectableLocation;->DIRECT_ON_SET:Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/lang/String;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "(indirect-fluids)"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mapping/IndirectableLocation;->INDIRECT_FLUIDS:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/IndirectableLocation;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Location;-><init>()V

    return-void
.end method


# virtual methods
.method public getBase()Lgnu/mapping/Location;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/IndirectableLocation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    if-nez v1, :cond_0

    move-object v1, v0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/IndirectableLocation;
    return-object v0

    .restart local v0    # "this":Lgnu/mapping/IndirectableLocation;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v1}, Lgnu/mapping/Location;->getBase()Lgnu/mapping/Location;

    move-result-object v1

    goto :goto_0
.end method

.method public getBaseForce()Lgnu/mapping/Location;
    .locals 7

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/IndirectableLocation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lgnu/mapping/PlainLocation;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/mapping/IndirectableLocation;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/mapping/IndirectableLocation;->getKeyProperty()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/IndirectableLocation;->value:Ljava/lang/Object;

    invoke-direct {v2, v3, v4, v5}, Lgnu/mapping/PlainLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 57
    .end local v0    # "this":Lgnu/mapping/IndirectableLocation;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/mapping/IndirectableLocation;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    move-object v0, v1

    goto :goto_0
.end method

.method public getEnvironment()Lgnu/mapping/Environment;
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/IndirectableLocation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    instance-of v1, v1, Lgnu/mapping/NamedLocation;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    check-cast v1, Lgnu/mapping/NamedLocation;

    invoke-virtual {v1}, Lgnu/mapping/NamedLocation;->getEnvironment()Lgnu/mapping/Environment;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/IndirectableLocation;
    return-object v0

    .restart local v0    # "this":Lgnu/mapping/IndirectableLocation;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getKeyProperty()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/IndirectableLocation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v1}, Lgnu/mapping/Location;->getKeyProperty()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/IndirectableLocation;
    return-object v0

    .restart local v0    # "this":Lgnu/mapping/IndirectableLocation;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getKeySymbol()Lgnu/mapping/Symbol;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/IndirectableLocation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v1}, Lgnu/mapping/Location;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/IndirectableLocation;
    return-object v0

    .restart local v0    # "this":Lgnu/mapping/IndirectableLocation;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isConstant()Z
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/IndirectableLocation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v1}, Lgnu/mapping/Location;->isConstant()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/mapping/IndirectableLocation;
    return v0

    .restart local v0    # "this":Lgnu/mapping/IndirectableLocation;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAlias(Lgnu/mapping/Location;)V
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/IndirectableLocation;
    move-object v1, p1

    .local v1, "base":Lgnu/mapping/Location;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    .line 70
    move-object v2, v0

    sget-object v3, Lgnu/mapping/IndirectableLocation;->INDIRECT_FLUIDS:Ljava/lang/Object;

    iput-object v3, v2, Lgnu/mapping/IndirectableLocation;->value:Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public setBase(Lgnu/mapping/Location;)V
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/IndirectableLocation;
    move-object v1, p1

    .local v1, "base":Lgnu/mapping/Location;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    .line 63
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lgnu/mapping/IndirectableLocation;->value:Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public undefine()V
    .locals 3

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/IndirectableLocation;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    .line 76
    move-object v1, v0

    sget-object v2, Lgnu/mapping/IndirectableLocation;->UNBOUND:Ljava/lang/String;

    iput-object v2, v1, Lgnu/mapping/IndirectableLocation;->value:Ljava/lang/Object;

    .line 77
    return-void
.end method
