.class public Lkawa/standard/readchar;
.super Lgnu/mapping/Procedure0or1;
.source "readchar.java"


# static fields
.field public static final peekChar:Lkawa/standard/readchar;

.field public static final readChar:Lkawa/standard/readchar;


# instance fields
.field peeking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 12
    new-instance v0, Lkawa/standard/readchar;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lkawa/standard/readchar;-><init>(Z)V

    sput-object v0, Lkawa/standard/readchar;->readChar:Lkawa/standard/readchar;

    .line 13
    new-instance v0, Lkawa/standard/readchar;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lkawa/standard/readchar;-><init>(Z)V

    sput-object v0, Lkawa/standard/readchar;->peekChar:Lkawa/standard/readchar;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lkawa/standard/readchar;
    move v1, p1

    .local v1, "peeking":Z
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    const-string/jumbo v3, "peek-char"

    :goto_0
    invoke-direct {v2, v3}, Lgnu/mapping/Procedure0or1;-><init>(Ljava/lang/String;)V

    .line 19
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lkawa/standard/readchar;->peeking:Z

    .line 20
    return-void

    .line 18
    :cond_0
    const-string/jumbo v3, "read-char"

    goto :goto_0
.end method


# virtual methods
.method public final apply0()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lkawa/standard/readchar;
    move-object v1, v0

    invoke-static {}, Lgnu/mapping/InPort;->inDefault()Lgnu/mapping/InPort;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkawa/standard/readchar;->readChar(Lgnu/mapping/InPort;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lkawa/standard/readchar;
    return-object v0
.end method

.method public final apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lkawa/standard/readchar;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/mapping/InPort;

    if-eqz v2, :cond_0

    .line 91
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/mapping/InPort;

    invoke-virtual {v2, v3}, Lkawa/standard/readchar;->readChar(Lgnu/mapping/InPort;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 95
    .end local v0    # "this":Lkawa/standard/readchar;
    :goto_0
    return-object v0

    .line 92
    .restart local v0    # "this":Lkawa/standard/readchar;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/io/Reader;

    if-eqz v2, :cond_1

    .line 93
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/io/Reader;

    invoke-virtual {v2, v3}, Lkawa/standard/readchar;->readChar(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 94
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Ljava/io/InputStream;

    if-eqz v2, :cond_2

    .line 95
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/io/InputStream;

    invoke-virtual {v2, v3}, Lkawa/standard/readchar;->readChar(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 96
    :cond_2
    new-instance v2, Lgnu/mapping/WrongType;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x1

    move-object v6, v1

    const-string/jumbo v7, "<input-port>"

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v2
.end method

.method final readChar(Lgnu/mapping/InPort;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lkawa/standard/readchar;
    move-object v1, p1

    .local v1, "port":Lgnu/mapping/InPort;
    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lkawa/standard/readchar;->peeking:Z

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/mapping/InPort;->peek()I

    move-result v3

    :goto_0
    move v2, v3

    .line 27
    .local v2, "ch":I
    move v3, v2

    if-gez v3, :cond_1

    .line 28
    sget-object v3, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    move-object v0, v3

    .line 29
    .end local v0    # "this":Lkawa/standard/readchar;
    :goto_1
    return-object v0

    .line 26
    .end local v2    # "ch":I
    .restart local v0    # "this":Lkawa/standard/readchar;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/mapping/InPort;->read()I

    move-result v3

    goto :goto_0

    .line 29
    .restart local v2    # "ch":I
    :cond_1
    move v3, v2

    invoke-static {v3}, Lgnu/text/Char;->make(I)Lgnu/text/Char;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    goto :goto_1

    .line 31
    .end local v2    # "ch":I
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 33
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "IO Exception caught"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method final readChar(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lkawa/standard/readchar;
    move-object v1, p1

    .local v1, "port":Ljava/io/InputStream;
    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lkawa/standard/readchar;->peeking:Z

    if-eqz v3, :cond_0

    .line 67
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->mark(I)V

    .line 68
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    move v2, v3

    .line 69
    .local v2, "ch":I
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    .line 73
    :goto_0
    move v3, v2

    if-gez v3, :cond_1

    .line 74
    sget-object v3, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    move-object v0, v3

    .line 75
    .end local v0    # "this":Lkawa/standard/readchar;
    :goto_1
    return-object v0

    .line 72
    .end local v2    # "ch":I
    .restart local v0    # "this":Lkawa/standard/readchar;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    move v2, v3

    .restart local v2    # "ch":I
    goto :goto_0

    .line 75
    :cond_1
    move v3, v2

    invoke-static {v3}, Lgnu/text/Char;->make(I)Lgnu/text/Char;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    goto :goto_1

    .line 77
    .end local v2    # "ch":I
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 79
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "IO Exception caught"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method final readChar(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lkawa/standard/readchar;
    move-object v1, p1

    .local v1, "port":Ljava/io/Reader;
    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lkawa/standard/readchar;->peeking:Z

    if-eqz v3, :cond_0

    .line 44
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/io/Reader;->mark(I)V

    .line 45
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/Reader;->read()I

    move-result v3

    move v2, v3

    .line 46
    .local v2, "ch":I
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/Reader;->reset()V

    .line 50
    :goto_0
    move v3, v2

    if-gez v3, :cond_1

    .line 51
    sget-object v3, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    move-object v0, v3

    .line 52
    .end local v0    # "this":Lkawa/standard/readchar;
    :goto_1
    return-object v0

    .line 49
    .end local v2    # "ch":I
    .restart local v0    # "this":Lkawa/standard/readchar;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/Reader;->read()I

    move-result v3

    move v2, v3

    .restart local v2    # "ch":I
    goto :goto_0

    .line 52
    :cond_1
    move v3, v2

    invoke-static {v3}, Lgnu/text/Char;->make(I)Lgnu/text/Char;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    goto :goto_1

    .line 54
    .end local v2    # "ch":I
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 56
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "IO Exception caught"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
