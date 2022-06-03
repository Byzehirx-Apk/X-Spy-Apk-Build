.class public Lgnu/mapping/CharArrayInPort;
.super Lgnu/mapping/InPort;
.source "CharArrayInPort.java"


# static fields
.field static final stringPath:Lgnu/text/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string/jumbo v0, "<string>"

    invoke-static {v0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    sput-object v0, Lgnu/mapping/CharArrayInPort;->stringPath:Lgnu/text/Path;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CharArrayInPort;
    move-object v1, p1

    .local v1, "string":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-direct {v2, v3}, Lgnu/mapping/CharArrayInPort;-><init>([C)V

    .line 64
    return-void
.end method

.method public constructor <init>([C)V
    .locals 5

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CharArrayInPort;
    move-object v1, p1

    .local v1, "buffer":[C
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    array-length v4, v4

    invoke-direct {v2, v3, v4}, Lgnu/mapping/CharArrayInPort;-><init>([CI)V

    .line 59
    return-void
.end method

.method public constructor <init>([CI)V
    .locals 8

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CharArrayInPort;
    move-object v1, p1

    .local v1, "buffer":[C
    move v2, p2

    .local v2, "len":I
    move-object v4, v0

    sget-object v5, Lgnu/text/NullReader;->nullReader:Lgnu/text/NullReader;

    sget-object v6, Lgnu/mapping/CharArrayInPort;->stringPath:Lgnu/text/Path;

    invoke-direct {v4, v5, v6}, Lgnu/mapping/InPort;-><init>(Ljava/io/Reader;Lgnu/text/Path;)V

    .line 47
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    invoke-virtual {v4, v5}, Lgnu/mapping/CharArrayInPort;->setBuffer([C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lgnu/mapping/CharArrayInPort;->limit:I

    .line 54
    return-void

    .line 49
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 51
    .local v3, "ex":Ljava/io/IOException;
    new-instance v4, Ljava/lang/Error;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v3

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public make(Ljava/lang/CharSequence;)Lgnu/mapping/CharArrayInPort;
    .locals 11

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CharArrayInPort;
    move-object v1, p1

    .local v1, "seq":Ljava/lang/CharSequence;
    move-object v5, v1

    instance-of v5, v5, Lgnu/lists/FString;

    if-eqz v5, :cond_0

    .line 22
    move-object v5, v1

    check-cast v5, Lgnu/lists/FString;

    move-object v2, v5

    .line 23
    .local v2, "fstr":Lgnu/lists/FString;
    new-instance v5, Lgnu/mapping/CharArrayInPort;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    iget-object v7, v7, Lgnu/lists/FString;->data:[C

    move-object v8, v2

    iget v8, v8, Lgnu/lists/FString;->size:I

    invoke-direct {v6, v7, v8}, Lgnu/mapping/CharArrayInPort;-><init>([CI)V

    move-object v0, v5

    .line 38
    .end local v0    # "this":Lgnu/mapping/CharArrayInPort;
    .end local v2    # "fstr":Lgnu/lists/FString;
    :goto_0
    return-object v0

    .line 27
    .restart local v0    # "this":Lgnu/mapping/CharArrayInPort;
    :cond_0
    move-object v5, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move v2, v5

    .line 28
    .local v2, "len":I
    move v5, v2

    new-array v5, v5, [C

    move-object v3, v5

    .line 30
    .local v3, "buf":[C
    move-object v5, v1

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 31
    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    move v7, v2

    move-object v8, v3

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 38
    :goto_1
    new-instance v5, Lgnu/mapping/CharArrayInPort;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    move v8, v2

    invoke-direct {v6, v7, v8}, Lgnu/mapping/CharArrayInPort;-><init>([CI)V

    move-object v0, v5

    goto :goto_0

    .line 32
    :cond_1
    move-object v5, v1

    instance-of v5, v5, Lgnu/lists/CharSeq;

    if-nez v5, :cond_3

    .line 33
    move v5, v2

    move v4, v5

    .local v4, "i":I
    :goto_2
    add-int/lit8 v4, v4, -0x1

    move v5, v4

    if-ltz v5, :cond_2

    .line 34
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    move v8, v4

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    aput-char v7, v5, v6

    goto :goto_2

    :cond_2
    goto :goto_1

    .line 37
    .end local v4    # "i":I
    :cond_3
    move-object v5, v1

    check-cast v5, Lgnu/lists/CharSeq;

    const/4 v6, 0x0

    move v7, v2

    move-object v8, v3

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Lgnu/lists/CharSeq;->getChars(II[CI)V

    goto :goto_1
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CharArrayInPort;
    move-object v1, v0

    iget v1, v1, Lgnu/mapping/CharArrayInPort;->pos:I

    move-object v2, v0

    iget v2, v2, Lgnu/mapping/CharArrayInPort;->limit:I

    if-lt v1, v2, :cond_0

    .line 69
    const/4 v1, -0x1

    move v0, v1

    .line 70
    .end local v0    # "this":Lgnu/mapping/CharArrayInPort;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/mapping/CharArrayInPort;
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Lgnu/mapping/InPort;->read()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method
