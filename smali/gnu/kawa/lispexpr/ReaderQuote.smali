.class public Lgnu/kawa/lispexpr/ReaderQuote;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderQuote.java"


# instance fields
.field magicSymbol:Ljava/lang/Object;

.field magicSymbol2:Ljava/lang/Object;

.field next:C


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderQuote;
    move-object v1, p1

    .local v1, "magicSymbol":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 18
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/lispexpr/ReaderQuote;->magicSymbol:Ljava/lang/Object;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;CLjava/lang/Object;)V
    .locals 6

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderQuote;
    move-object v1, p1

    .local v1, "magicSymbol":Ljava/lang/Object;
    move v2, p2

    .local v2, "next":C
    move-object v3, p3

    .local v3, "magicSymbol2":Ljava/lang/Object;
    move-object v4, v0

    invoke-direct {v4}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 26
    move-object v4, v0

    move v5, v2

    iput-char v5, v4, Lgnu/kawa/lispexpr/ReaderQuote;->next:C

    .line 27
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/kawa/lispexpr/ReaderQuote;->magicSymbol:Ljava/lang/Object;

    .line 28
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/kawa/lispexpr/ReaderQuote;->magicSymbol2:Ljava/lang/Object;

    .line 29
    return-void
.end method


# virtual methods
.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 34
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderQuote;
    move-object/from16 v1, p1

    .local v1, "in":Lgnu/text/Lexer;
    move/from16 v2, p2

    .local v2, "ch":I
    move/from16 v3, p3

    .local v3, "count":I
    move-object v12, v1

    check-cast v12, Lgnu/kawa/lispexpr/LispReader;

    move-object v4, v12

    .line 35
    .local v4, "reader":Lgnu/kawa/lispexpr/LispReader;
    move-object v12, v4

    invoke-virtual {v12}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    .line 36
    .local v5, "file":Ljava/lang/String;
    move-object v12, v4

    invoke-virtual {v12}, Lgnu/kawa/lispexpr/LispReader;->getLineNumber()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v6, v12

    .line 37
    .local v6, "line1":I
    move-object v12, v4

    invoke-virtual {v12}, Lgnu/kawa/lispexpr/LispReader;->getColumnNumber()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v7, v12

    .line 38
    .local v7, "column1":I
    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/lispexpr/ReaderQuote;->magicSymbol:Ljava/lang/Object;

    move-object v8, v12

    .line 39
    .local v8, "magic":Ljava/lang/Object;
    move-object v12, v0

    iget-char v12, v12, Lgnu/kawa/lispexpr/ReaderQuote;->next:C

    if-eqz v12, :cond_0

    .line 41
    move-object v12, v4

    invoke-virtual {v12}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v12

    move v2, v12

    .line 42
    move v12, v2

    move-object v13, v0

    iget-char v13, v13, Lgnu/kawa/lispexpr/ReaderQuote;->next:C

    if-ne v12, v13, :cond_1

    .line 43
    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/lispexpr/ReaderQuote;->magicSymbol2:Ljava/lang/Object;

    move-object v8, v12

    .line 47
    :cond_0
    :goto_0
    move-object v12, v4

    invoke-virtual {v12}, Lgnu/kawa/lispexpr/LispReader;->getLineNumber()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v9, v12

    .line 48
    .local v9, "line2":I
    move-object v12, v4

    invoke-virtual {v12}, Lgnu/kawa/lispexpr/LispReader;->getColumnNumber()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v10, v12

    .line 49
    .local v10, "column2":I
    move-object v12, v4

    invoke-virtual {v12}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object v12

    move-object v11, v12

    .line 50
    .local v11, "operand":Ljava/lang/Object;
    move-object v12, v8

    move-object v13, v11

    move-object v14, v4

    invoke-virtual {v14}, Lgnu/kawa/lispexpr/LispReader;->makeNil()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v5

    move/from16 v16, v9

    move/from16 v17, v10

    invoke-static/range {v13 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v13

    move-object v14, v5

    move v15, v6

    move/from16 v16, v7

    invoke-static/range {v12 .. v16}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v12

    move-object v0, v12

    .end local v0    # "this":Lgnu/kawa/lispexpr/ReaderQuote;
    return-object v0

    .line 44
    .end local v9    # "line2":I
    .end local v10    # "column2":I
    .end local v11    # "operand":Ljava/lang/Object;
    .restart local v0    # "this":Lgnu/kawa/lispexpr/ReaderQuote;
    :cond_1
    move v12, v2

    if-ltz v12, :cond_0

    .line 45
    move-object v12, v4

    move v13, v2

    invoke-virtual {v12, v13}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    goto :goto_0
.end method
