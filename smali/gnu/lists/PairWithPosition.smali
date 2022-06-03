.class public Lgnu/lists/PairWithPosition;
.super Lgnu/lists/ImmutablePair;
.source "PairWithPosition.java"

# interfaces
.implements Lgnu/text/SourceLocator;


# instance fields
.field filename:Ljava/lang/String;

.field position:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PairWithPosition;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/lists/ImmutablePair;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>(Lgnu/text/SourceLocator;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PairWithPosition;
    move-object v1, p1

    .local v1, "where":Lgnu/text/SourceLocator;
    move-object v2, p2

    .local v2, "car":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "cdr":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Lgnu/lists/ImmutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Lgnu/text/SourceLocator;->getFileName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lgnu/lists/PairWithPosition;->filename:Ljava/lang/String;

    .line 75
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Lgnu/text/SourceLocator;->getLineNumber()I

    move-result v5

    move-object v6, v1

    invoke-interface {v6}, Lgnu/text/SourceLocator;->getColumnNumber()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lgnu/lists/PairWithPosition;->setLine(II)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PairWithPosition;
    move-object v1, p1

    .local v1, "car":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "cdr":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lgnu/lists/ImmutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public static make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;
    .locals 10

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "car":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "cdr":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "filename":Ljava/lang/String;
    move v3, p3

    .local v3, "position":I
    new-instance v5, Lgnu/lists/PairWithPosition;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Lgnu/lists/PairWithPosition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v5

    .line 96
    .local v4, "pair":Lgnu/lists/PairWithPosition;
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lgnu/lists/PairWithPosition;->filename:Ljava/lang/String;

    .line 97
    move-object v5, v4

    move v6, v3

    iput v6, v5, Lgnu/lists/PairWithPosition;->position:I

    .line 98
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "car":Ljava/lang/Object;
    return-object v0
.end method

.method public static make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;
    .locals 11

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "car":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "cdr":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "filename":Ljava/lang/String;
    move v3, p3

    .local v3, "line":I
    move v4, p4

    .local v4, "column":I
    new-instance v6, Lgnu/lists/PairWithPosition;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Lgnu/lists/PairWithPosition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v5, v6

    .line 87
    .local v5, "pair":Lgnu/lists/PairWithPosition;
    move-object v6, v5

    move-object v7, v2

    iput-object v7, v6, Lgnu/lists/PairWithPosition;->filename:Ljava/lang/String;

    .line 88
    move-object v6, v5

    move v7, v3

    move v8, v4

    invoke-virtual {v6, v7, v8}, Lgnu/lists/PairWithPosition;->setLine(II)V

    .line 89
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "car":Ljava/lang/Object;
    return-object v0
.end method


# virtual methods
.method public final getColumnNumber()I
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PairWithPosition;
    move-object v2, v0

    iget v2, v2, Lgnu/lists/PairWithPosition;->position:I

    const/16 v3, 0xfff

    and-int/lit16 v2, v2, 0xfff

    move v1, v2

    .line 60
    .local v1, "column":I
    move v2, v1

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/lists/PairWithPosition;
    return v0

    .restart local v0    # "this":Lgnu/lists/PairWithPosition;
    :cond_0
    move v2, v1

    goto :goto_0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PairWithPosition;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/PairWithPosition;->filename:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/PairWithPosition;
    return-object v0
.end method

.method public final getLineNumber()I
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PairWithPosition;
    move-object v2, v0

    iget v2, v2, Lgnu/lists/PairWithPosition;->position:I

    const/16 v3, 0xc

    shr-int/lit8 v2, v2, 0xc

    move v1, v2

    .line 54
    .local v1, "line":I
    move v2, v1

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/lists/PairWithPosition;
    return v0

    .restart local v0    # "this":Lgnu/lists/PairWithPosition;
    :cond_0
    move v2, v1

    goto :goto_0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PairWithPosition;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/PairWithPosition;
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PairWithPosition;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/PairWithPosition;->filename:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/PairWithPosition;
    return-object v0
.end method

.method public isStableSourceLocation()Z
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PairWithPosition;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/PairWithPosition;
    return v0
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
    .line 117
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PairWithPosition;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lgnu/lists/PairWithPosition;->car:Ljava/lang/Object;

    .line 118
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lgnu/lists/PairWithPosition;->cdr:Ljava/lang/Object;

    .line 119
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lgnu/lists/PairWithPosition;->filename:Ljava/lang/String;

    .line 120
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    iput v3, v2, Lgnu/lists/PairWithPosition;->position:I

    .line 121
    return-void
.end method

.method public final setFile(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PairWithPosition;
    move-object v1, p1

    .local v1, "filename":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/lists/PairWithPosition;->filename:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public final setLine(I)V
    .locals 5

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PairWithPosition;
    move v1, p1

    .local v1, "lineno":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lgnu/lists/PairWithPosition;->setLine(II)V

    .line 32
    return-void
.end method

.method public final setLine(II)V
    .locals 6

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PairWithPosition;
    move v1, p1

    .local v1, "lineno":I
    move v2, p2

    .local v2, "colno":I
    move v3, v1

    if-gez v3, :cond_0

    .line 23
    const/4 v3, 0x0

    move v1, v3

    .line 24
    :cond_0
    move v3, v2

    if-gez v3, :cond_1

    .line 25
    const/4 v3, 0x0

    move v2, v3

    .line 26
    :cond_1
    move-object v3, v0

    move v4, v1

    const/16 v5, 0xc

    shl-int/lit8 v4, v4, 0xc

    move v5, v2

    add-int/2addr v4, v5

    iput v4, v3, Lgnu/lists/PairWithPosition;->position:I

    .line 27
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PairWithPosition;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/PairWithPosition;->car:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 109
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/PairWithPosition;->cdr:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 110
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/PairWithPosition;->filename:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 111
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/lists/PairWithPosition;->position:I

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 112
    return-void
.end method
