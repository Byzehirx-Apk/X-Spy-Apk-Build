.class public Lgnu/mapping/ConstrainedLocation;
.super Lgnu/mapping/Location;
.source "ConstrainedLocation.java"


# instance fields
.field protected base:Lgnu/mapping/Location;

.field protected converter:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ConstrainedLocation;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Location;-><init>()V

    return-void
.end method

.method public static make(Lgnu/mapping/Location;Lgnu/mapping/Procedure;)Lgnu/mapping/ConstrainedLocation;
    .locals 6

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "base":Lgnu/mapping/Location;
    move-object v1, p1

    .local v1, "converter":Lgnu/mapping/Procedure;
    new-instance v3, Lgnu/mapping/ConstrainedLocation;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lgnu/mapping/ConstrainedLocation;-><init>()V

    move-object v2, v3

    .line 16
    .local v2, "cloc":Lgnu/mapping/ConstrainedLocation;
    move-object v3, v2

    move-object v4, v0

    iput-object v4, v3, Lgnu/mapping/ConstrainedLocation;->base:Lgnu/mapping/Location;

    .line 17
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lgnu/mapping/ConstrainedLocation;->converter:Lgnu/mapping/Procedure;

    .line 18
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "base":Lgnu/mapping/Location;
    return-object v0
.end method


# virtual methods
.method protected coerce(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ConstrainedLocation;
    move-object v1, p1

    .local v1, "newValue":Ljava/lang/Object;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lgnu/mapping/ConstrainedLocation;->converter:Lgnu/mapping/Procedure;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/mapping/ConstrainedLocation;
    return-object v0

    .line 52
    .restart local v0    # "this":Lgnu/mapping/ConstrainedLocation;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 54
    .local v2, "ex":Ljava/lang/Throwable;
    move-object v3, v2

    invoke-static {v3}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ConstrainedLocation;
    move-object v1, p1

    .local v1, "defaultValue":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/ConstrainedLocation;->base:Lgnu/mapping/Location;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/ConstrainedLocation;
    return-object v0
.end method

.method public getKeyProperty()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ConstrainedLocation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/ConstrainedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v1}, Lgnu/mapping/Location;->getKeyProperty()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/ConstrainedLocation;
    return-object v0
.end method

.method public getKeySymbol()Lgnu/mapping/Symbol;
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ConstrainedLocation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/ConstrainedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v1}, Lgnu/mapping/Location;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/ConstrainedLocation;
    return-object v0
.end method

.method public isBound()Z
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ConstrainedLocation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/ConstrainedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v1}, Lgnu/mapping/Location;->isBound()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/mapping/ConstrainedLocation;
    return v0
.end method

.method public isConstant()Z
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ConstrainedLocation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/ConstrainedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v1}, Lgnu/mapping/Location;->isConstant()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/mapping/ConstrainedLocation;
    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ConstrainedLocation;
    move-object v1, p1

    .local v1, "newValue":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/ConstrainedLocation;->base:Lgnu/mapping/Location;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/mapping/ConstrainedLocation;->coerce(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public setRestore(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ConstrainedLocation;
    move-object v1, p1

    .local v1, "oldValue":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/ConstrainedLocation;->base:Lgnu/mapping/Location;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/Location;->setRestore(Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public setWithSave(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ConstrainedLocation;
    move-object v1, p1

    .local v1, "newValue":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/ConstrainedLocation;->base:Lgnu/mapping/Location;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/mapping/ConstrainedLocation;->coerce(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/mapping/Location;->setWithSave(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/ConstrainedLocation;
    return-object v0
.end method
