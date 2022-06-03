.class public Lgnu/kawa/lispexpr/ReaderDispatch;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderDispatch.java"


# instance fields
.field kind:I

.field table:Lgnu/kawa/util/RangeTable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderDispatch;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 11
    move-object v1, v0

    new-instance v2, Lgnu/kawa/util/RangeTable;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lgnu/kawa/util/RangeTable;-><init>()V

    iput-object v2, v1, Lgnu/kawa/lispexpr/ReaderDispatch;->table:Lgnu/kawa/util/RangeTable;

    .line 31
    move-object v1, v0

    const/4 v2, 0x5

    iput v2, v1, Lgnu/kawa/lispexpr/ReaderDispatch;->kind:I

    .line 32
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 6

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderDispatch;
    move v1, p1

    .local v1, "nonTerminating":Z
    move-object v2, v0

    invoke-direct {v2}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 11
    move-object v2, v0

    new-instance v3, Lgnu/kawa/util/RangeTable;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lgnu/kawa/util/RangeTable;-><init>()V

    iput-object v3, v2, Lgnu/kawa/lispexpr/ReaderDispatch;->table:Lgnu/kawa/util/RangeTable;

    .line 36
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    :goto_0
    iput v3, v2, Lgnu/kawa/lispexpr/ReaderDispatch;->kind:I

    .line 38
    return-void

    .line 36
    :cond_0
    const/4 v3, 0x5

    goto :goto_0
.end method

.method public static create(Lgnu/kawa/lispexpr/ReadTable;)Lgnu/kawa/lispexpr/ReaderDispatch;
    .locals 10

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "rtable":Lgnu/kawa/lispexpr/ReadTable;
    new-instance v3, Lgnu/kawa/lispexpr/ReaderDispatch;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Lgnu/kawa/lispexpr/ReaderDispatch;-><init>()V

    move-object v1, v3

    .line 45
    .local v1, "tab":Lgnu/kawa/lispexpr/ReaderDispatch;
    invoke-static {}, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->getInstance()Lgnu/kawa/lispexpr/ReaderDispatchMisc;

    move-result-object v3

    move-object v2, v3

    .line 46
    .local v2, "entry":Lgnu/kawa/lispexpr/ReaderDispatchMisc;
    move-object v3, v1

    const/16 v4, 0x3a

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 47
    move-object v3, v1

    const/16 v4, 0x42

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 48
    move-object v3, v1

    const/16 v4, 0x44

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 49
    move-object v3, v1

    const/16 v4, 0x45

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 50
    move-object v3, v1

    const/16 v4, 0x46

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 51
    move-object v3, v1

    const/16 v4, 0x49

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 52
    move-object v3, v1

    const/16 v4, 0x4f

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 53
    move-object v3, v1

    const/16 v4, 0x52

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 54
    move-object v3, v1

    const/16 v4, 0x53

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 55
    move-object v3, v1

    const/16 v4, 0x54

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 56
    move-object v3, v1

    const/16 v4, 0x55

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 57
    move-object v3, v1

    const/16 v4, 0x58

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 58
    move-object v3, v1

    const/16 v4, 0x7c

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 59
    move-object v3, v1

    const/16 v4, 0x3b

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 60
    move-object v3, v1

    const/16 v4, 0x21

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 61
    move-object v3, v1

    const/16 v4, 0x5c

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 62
    move-object v3, v1

    const/16 v4, 0x3d

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 63
    move-object v3, v1

    const/16 v4, 0x23

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 65
    move-object v3, v1

    const/16 v4, 0x2f

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 67
    move-object v3, v1

    const/16 v4, 0x27

    new-instance v5, Lgnu/kawa/lispexpr/ReaderQuote;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    const-string/jumbo v8, "function"

    invoke-virtual {v7, v8}, Lgnu/kawa/lispexpr/ReadTable;->makeSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v6, v7}, Lgnu/kawa/lispexpr/ReaderQuote;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 68
    move-object v3, v1

    const/16 v4, 0x28

    new-instance v5, Lgnu/kawa/lispexpr/ReaderVector;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/16 v7, 0x29

    invoke-direct {v6, v7}, Lgnu/kawa/lispexpr/ReaderVector;-><init>(C)V

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 70
    move-object v3, v1

    const/16 v4, 0x3c

    new-instance v5, Lgnu/kawa/lispexpr/ReaderXmlElement;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Lgnu/kawa/lispexpr/ReaderXmlElement;-><init>()V

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 72
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "rtable":Lgnu/kawa/lispexpr/ReadTable;
    return-object v0
.end method


# virtual methods
.method public getKind()I
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderDispatch;
    move-object v1, v0

    iget v1, v1, Lgnu/kawa/lispexpr/ReaderDispatch;->kind:I

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/lispexpr/ReaderDispatch;
    return v0
.end method

.method public lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;
    .locals 5

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderDispatch;
    move v1, p1

    .local v1, "key":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/lispexpr/ReaderDispatch;->table:Lgnu/kawa/util/RangeTable;

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/util/RangeTable;->lookup(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/kawa/lispexpr/ReadTableEntry;

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/lispexpr/ReaderDispatch;
    return-object v0
.end method

.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderDispatch;
    move-object v1, p1

    .local v1, "in":Lgnu/text/Lexer;
    move v2, p2

    .local v2, "ch":I
    move/from16 v3, p3

    .local v3, "count":I
    const/4 v5, -0x1

    move v3, v5

    .line 81
    :goto_0
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/text/Lexer;->read()I

    move-result v5

    move v2, v5

    .line 82
    move v5, v2

    if-gez v5, :cond_0

    .line 83
    move-object v5, v1

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unexpected EOF after "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v2

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/text/Lexer;->eofError(Ljava/lang/String;)V

    .line 84
    :cond_0
    move v5, v2

    const/high16 v6, 0x10000

    if-le v5, v6, :cond_1

    .line 85
    .line 94
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/lispexpr/ReaderDispatch;->table:Lgnu/kawa/util/RangeTable;

    move v6, v2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lgnu/kawa/util/RangeTable;->lookup(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/kawa/lispexpr/ReadTableEntry;

    move-object v4, v5

    .line 95
    .local v4, "entry":Lgnu/kawa/lispexpr/ReadTableEntry;
    move-object v5, v4

    if-nez v5, :cond_4

    .line 98
    move-object v5, v1

    const/16 v6, 0x65

    move-object v7, v1

    invoke-virtual {v7}, Lgnu/text/Lexer;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Lgnu/text/Lexer;->getLineNumber()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object v9, v1

    invoke-virtual {v9}, Lgnu/text/Lexer;->getColumnNumber()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "invalid dispatch character \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v2

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v5 .. v10}, Lgnu/text/Lexer;->error(CLjava/lang/String;IILjava/lang/String;)V

    .line 101
    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v5

    .line 103
    .end local v0    # "this":Lgnu/kawa/lispexpr/ReaderDispatch;
    :goto_2
    return-object v0

    .line 86
    .end local v4    # "entry":Lgnu/kawa/lispexpr/ReadTableEntry;
    .restart local v0    # "this":Lgnu/kawa/lispexpr/ReaderDispatch;
    :cond_1
    move v5, v2

    int-to-char v5, v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    move v4, v5

    .line 87
    .local v4, "digit":I
    move v5, v4

    if-gez v5, :cond_2

    .line 89
    move v5, v2

    int-to-char v5, v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    move v2, v5

    .line 90
    goto :goto_1

    .line 92
    :cond_2
    move v5, v3

    if-gez v5, :cond_3

    move v5, v4

    :goto_3
    move v3, v5

    .line 93
    goto/16 :goto_0

    .line 92
    :cond_3
    move v5, v3

    const/16 v6, 0xa

    mul-int/lit8 v5, v5, 0xa

    move v6, v4

    add-int/2addr v5, v6

    goto :goto_3

    .line 103
    .local v4, "entry":Lgnu/kawa/lispexpr/ReadTableEntry;
    :cond_4
    move-object v5, v4

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lgnu/kawa/lispexpr/ReadTableEntry;->read(Lgnu/text/Lexer;II)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_2
.end method

.method public set(ILjava/lang/Object;)V
    .locals 7

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderDispatch;
    move v1, p1

    .local v1, "key":I
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/lispexpr/ReaderDispatch;->table:Lgnu/kawa/util/RangeTable;

    move v4, v1

    move v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lgnu/kawa/util/RangeTable;->set(IILjava/lang/Object;)V

    .line 22
    return-void
.end method
