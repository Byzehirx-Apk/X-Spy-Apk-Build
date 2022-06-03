.class public Lgnu/mapping/ReadOnlyLocation;
.super Lgnu/mapping/ConstrainedLocation;
.source "ReadOnlyLocation.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ReadOnlyLocation;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/ConstrainedLocation;-><init>()V

    return-void
.end method

.method public static make(Lgnu/mapping/Location;)Lgnu/mapping/ReadOnlyLocation;
    .locals 5

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "base":Lgnu/mapping/Location;
    new-instance v2, Lgnu/mapping/ReadOnlyLocation;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lgnu/mapping/ReadOnlyLocation;-><init>()V

    move-object v1, v2

    .line 11
    .local v1, "rloc":Lgnu/mapping/ReadOnlyLocation;
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lgnu/mapping/ReadOnlyLocation;->base:Lgnu/mapping/Location;

    .line 12
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "base":Lgnu/mapping/Location;
    return-object v0
.end method


# virtual methods
.method protected coerce(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ReadOnlyLocation;
    move-object v1, p1

    .local v1, "newValue":Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "attempt to modify read-only location"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 24
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/mapping/ReadOnlyLocation;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v4

    move-object v3, v4

    .line 25
    .local v3, "name":Lgnu/mapping/Symbol;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 27
    move-object v4, v2

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 28
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 30
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public isConstant()Z
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ReadOnlyLocation;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lgnu/mapping/ReadOnlyLocation;
    return v0
.end method
