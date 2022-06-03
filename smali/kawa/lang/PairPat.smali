.class public Lkawa/lang/PairPat;
.super Lkawa/lang/Pattern;
.source "PairPat.java"

# interfaces
.implements Lgnu/text/Printable;
.implements Ljava/io/Externalizable;


# instance fields
.field car:Lkawa/lang/Pattern;

.field private car_count:I

.field cdr:Lkawa/lang/Pattern;

.field private cdr_count:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lkawa/lang/PairPat;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Pattern;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Lkawa/lang/Pattern;Lkawa/lang/Pattern;)V
    .locals 5

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lkawa/lang/PairPat;
    move-object v1, p1

    .local v1, "car":Lkawa/lang/Pattern;
    move-object v2, p2

    .local v2, "cdr":Lkawa/lang/Pattern;
    move-object v3, v0

    invoke-direct {v3}, Lkawa/lang/Pattern;-><init>()V

    .line 18
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lkawa/lang/PairPat;->car:Lkawa/lang/Pattern;

    .line 19
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lkawa/lang/PairPat;->cdr:Lkawa/lang/Pattern;

    .line 20
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lkawa/lang/Pattern;->varCount()I

    move-result v4

    iput v4, v3, Lkawa/lang/PairPat;->car_count:I

    .line 21
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Lkawa/lang/Pattern;->varCount()I

    move-result v4

    iput v4, v3, Lkawa/lang/PairPat;->cdr_count:I

    .line 22
    return-void
.end method

.method public static make(Lkawa/lang/Pattern;Lkawa/lang/Pattern;)Lkawa/lang/PairPat;
    .locals 7

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "car":Lkawa/lang/Pattern;
    move-object v1, p1

    .local v1, "cdr":Lkawa/lang/Pattern;
    new-instance v2, Lkawa/lang/PairPat;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lkawa/lang/PairPat;-><init>(Lkawa/lang/Pattern;Lkawa/lang/Pattern;)V

    move-object v0, v2

    .end local v0    # "car":Lkawa/lang/Pattern;
    return-object v0
.end method


# virtual methods
.method public match(Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 10

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lkawa/lang/PairPat;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "vars":[Ljava/lang/Object;
    move v3, p3

    .local v3, "start_vars":I
    move-object v5, v1

    instance-of v5, v5, Lgnu/lists/Pair;

    if-nez v5, :cond_0

    .line 32
    const/4 v5, 0x0

    move v0, v5

    .line 34
    .end local v0    # "this":Lkawa/lang/PairPat;
    :goto_0
    return v0

    .line 33
    .restart local v0    # "this":Lkawa/lang/PairPat;
    :cond_0
    move-object v5, v1

    check-cast v5, Lgnu/lists/Pair;

    move-object v4, v5

    .line 34
    .local v4, "pair":Lgnu/lists/Pair;
    move-object v5, v0

    iget-object v5, v5, Lkawa/lang/PairPat;->car:Lkawa/lang/Pattern;

    move-object v6, v4

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v2

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lkawa/lang/PairPat;->cdr:Lkawa/lang/Pattern;

    move-object v6, v4

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v2

    move v8, v3

    move-object v9, v0

    iget v9, v9, Lkawa/lang/PairPat;->car_count:I

    add-int/2addr v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lkawa/lang/PairPat;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v2, v1

    const-string/jumbo v3, "#<pair-pattern car: "

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 41
    move-object v2, v0

    iget-object v2, v2, Lkawa/lang/PairPat;->car:Lkawa/lang/Pattern;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lkawa/lang/Pattern;->print(Lgnu/lists/Consumer;)V

    .line 42
    move-object v2, v1

    const-string/jumbo v3, " cdr: "

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 43
    move-object v2, v0

    iget-object v2, v2, Lkawa/lang/PairPat;->cdr:Lkawa/lang/Pattern;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lkawa/lang/Pattern;->print(Lgnu/lists/Consumer;)V

    .line 44
    move-object v2, v1

    const/16 v3, 0x3e

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(I)V

    .line 45
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
    .line 61
    move-object v0, p0

    .local v0, "this":Lkawa/lang/PairPat;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkawa/lang/Pattern;

    iput-object v3, v2, Lkawa/lang/PairPat;->car:Lkawa/lang/Pattern;

    .line 62
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkawa/lang/Pattern;

    iput-object v3, v2, Lkawa/lang/PairPat;->cdr:Lkawa/lang/Pattern;

    .line 63
    return-void
.end method

.method public varCount()I
    .locals 3

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lkawa/lang/PairPat;
    move-object v1, v0

    iget v1, v1, Lkawa/lang/PairPat;->car_count:I

    move-object v2, v0

    iget v2, v2, Lkawa/lang/PairPat;->cdr_count:I

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lkawa/lang/PairPat;
    return v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lkawa/lang/PairPat;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lkawa/lang/PairPat;->car:Lkawa/lang/Pattern;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 55
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lkawa/lang/PairPat;->cdr:Lkawa/lang/Pattern;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 56
    return-void
.end method
