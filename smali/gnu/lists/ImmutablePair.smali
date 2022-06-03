.class public Lgnu/lists/ImmutablePair;
.super Lgnu/lists/Pair;
.source "ImmutablePair.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/lists/ImmutablePair;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/lists/Pair;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/lists/ImmutablePair;
    move-object v1, p1

    .local v1, "carval":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "cdrval":Ljava/lang/Object;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/lists/Pair;-><init>()V

    .line 11
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/lists/ImmutablePair;->car:Ljava/lang/Object;

    .line 12
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/lists/ImmutablePair;->cdr:Ljava/lang/Object;

    .line 13
    return-void
.end method


# virtual methods
.method public setCar(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/lists/ImmutablePair;
    move-object v1, p1

    .local v1, "car":Ljava/lang/Object;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "cannot modify read-only pair"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setCdr(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/lists/ImmutablePair;
    move-object v1, p1

    .local v1, "cdr":Ljava/lang/Object;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "cannot modify read-only pair"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
