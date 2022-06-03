.class public Lgnu/kawa/lispexpr/ReaderVector;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderVector.java"


# instance fields
.field close:C


# direct methods
.method public constructor <init>(C)V
    .locals 4

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderVector;
    move v1, p1

    .local v1, "close":C
    move-object v2, v0

    invoke-direct {v2}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 16
    move-object v2, v0

    move v3, v1

    iput-char v3, v2, Lgnu/kawa/lispexpr/ReaderVector;->close:C

    .line 17
    return-void
.end method

.method public static readVector(Lgnu/kawa/lispexpr/LispReader;Lgnu/text/LineBufferedReader;IC)Lgnu/lists/FVector;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 28
    move-object/from16 v0, p0

    .local v0, "lexer":Lgnu/kawa/lispexpr/LispReader;
    move-object/from16 v1, p1

    .local v1, "port":Lgnu/text/LineBufferedReader;
    move/from16 v2, p2

    .local v2, "count":I
    move/from16 v3, p3

    .local v3, "close":C
    const/16 v13, 0x20

    move v4, v13

    .line 29
    .local v4, "saveReadState":C
    move-object v13, v1

    instance-of v13, v13, Lgnu/mapping/InPort;

    if-eqz v13, :cond_0

    .line 31
    move-object v13, v1

    check-cast v13, Lgnu/mapping/InPort;

    iget-char v13, v13, Lgnu/mapping/InPort;->readState:C

    move v4, v13

    .line 32
    move-object v13, v1

    check-cast v13, Lgnu/mapping/InPort;

    move v14, v3

    const/16 v15, 0x5d

    if-ne v14, v15, :cond_3

    const/16 v14, 0x5b

    :goto_0
    iput-char v14, v13, Lgnu/mapping/InPort;->readState:C

    .line 36
    :cond_0
    :try_start_0
    new-instance v13, Ljava/util/Vector;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    move-object v5, v13

    .line 37
    .local v5, "vec":Ljava/util/Vector;
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v13

    move-object v6, v13

    .line 40
    .local v6, "rtable":Lgnu/kawa/lispexpr/ReadTable;
    :goto_1
    move-object v13, v0

    invoke-virtual {v13}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v13

    move v7, v13

    .line 41
    .local v7, "ch":I
    move v13, v7

    if-gez v13, :cond_1

    .line 42
    move-object v13, v0

    const-string/jumbo v14, "unexpected EOF in vector"

    invoke-virtual {v13, v14}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 43
    :cond_1
    move v13, v7

    move v14, v3

    if-ne v13, v14, :cond_4

    .line 44
    .line 60
    move-object v13, v5

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/Object;

    move-object v7, v13

    .line 61
    .local v7, "objs":[Ljava/lang/Object;
    move-object v13, v5

    move-object v14, v7

    invoke-virtual {v13, v14}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 62
    new-instance v13, Lgnu/lists/FVector;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    move-object v15, v7

    invoke-direct {v14, v15}, Lgnu/lists/FVector;-><init>([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v13

    .line 66
    move-object v13, v1

    instance-of v13, v13, Lgnu/mapping/InPort;

    if-eqz v13, :cond_2

    .line 67
    move-object v13, v1

    check-cast v13, Lgnu/mapping/InPort;

    move v14, v4

    iput-char v14, v13, Lgnu/mapping/InPort;->readState:C

    :cond_2
    move-object v13, v8

    move-object v0, v13

    .end local v0    # "lexer":Lgnu/kawa/lispexpr/LispReader;
    return-object v0

    .line 32
    .end local v5    # "vec":Ljava/util/Vector;
    .end local v6    # "rtable":Lgnu/kawa/lispexpr/ReadTable;
    .end local v7    # "objs":[Ljava/lang/Object;
    .restart local v0    # "lexer":Lgnu/kawa/lispexpr/LispReader;
    :cond_3
    const/16 v14, 0x28

    goto :goto_0

    .line 45
    .restart local v5    # "vec":Ljava/util/Vector;
    .restart local v6    # "rtable":Lgnu/kawa/lispexpr/ReadTable;
    .local v7, "ch":I
    :cond_4
    move-object v13, v0

    move v14, v7

    move-object v15, v6

    :try_start_1
    invoke-virtual {v13, v14, v15}, Lgnu/kawa/lispexpr/LispReader;->readValues(ILgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v13

    move-object v8, v13

    .line 46
    .local v8, "value":Ljava/lang/Object;
    move-object v13, v8

    instance-of v13, v13, Lgnu/mapping/Values;

    if-eqz v13, :cond_6

    .line 48
    move-object v13, v8

    check-cast v13, Lgnu/mapping/Values;

    invoke-virtual {v13}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v13

    move-object v9, v13

    .line 49
    .local v9, "values":[Ljava/lang/Object;
    move-object v13, v9

    array-length v13, v13

    move v10, v13

    .line 50
    .local v10, "n":I
    const/4 v13, 0x0

    move v11, v13

    .local v11, "i":I
    :goto_2
    move v13, v11

    move v14, v10

    if-ge v13, v14, :cond_5

    .line 51
    move-object v13, v5

    move-object v14, v9

    move v15, v11

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 50
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 52
    .line 59
    .end local v8    # "value":Ljava/lang/Object;
    .end local v9    # "values":[Ljava/lang/Object;
    .end local v10    # "n":I
    .end local v11    # "i":I
    :cond_5
    :goto_3
    goto :goto_1

    .line 55
    .restart local v8    # "value":Ljava/lang/Object;
    :cond_6
    move-object v13, v8

    sget-object v14, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    if-ne v13, v14, :cond_7

    .line 56
    sget-object v13, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v8, v13

    .line 57
    .end local v8    # "value":Ljava/lang/Object;
    :cond_7
    move-object v13, v5

    move-object v14, v8

    invoke-virtual {v13, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 66
    .end local v5    # "vec":Ljava/util/Vector;
    .end local v6    # "rtable":Lgnu/kawa/lispexpr/ReadTable;
    .end local v7    # "ch":I
    :catchall_0
    move-exception v13

    move-object v12, v13

    move-object v13, v1

    instance-of v13, v13, Lgnu/mapping/InPort;

    if-eqz v13, :cond_8

    .line 67
    move-object v13, v1

    check-cast v13, Lgnu/mapping/InPort;

    move v14, v4

    iput-char v14, v13, Lgnu/mapping/InPort;->readState:C

    :cond_8
    move-object v13, v12

    throw v13
.end method


# virtual methods
.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderVector;
    move-object v1, p1

    .local v1, "in":Lgnu/text/Lexer;
    move v2, p2

    .local v2, "ch":I
    move v3, p3

    .local v3, "count":I
    move-object v4, v1

    check-cast v4, Lgnu/kawa/lispexpr/LispReader;

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v5

    move v6, v3

    move-object v7, v0

    iget-char v7, v7, Lgnu/kawa/lispexpr/ReaderVector;->close:C

    invoke-static {v4, v5, v6, v7}, Lgnu/kawa/lispexpr/ReaderVector;->readVector(Lgnu/kawa/lispexpr/LispReader;Lgnu/text/LineBufferedReader;IC)Lgnu/lists/FVector;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/lispexpr/ReaderVector;
    return-object v0
.end method
