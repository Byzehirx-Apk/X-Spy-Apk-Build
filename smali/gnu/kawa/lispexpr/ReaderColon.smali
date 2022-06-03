.class public Lgnu/kawa/lispexpr/ReaderColon;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderColon.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderColon;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getKind()I
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderColon;
    const/4 v1, 0x6

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/lispexpr/ReaderColon;
    return v0
.end method

.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderColon;
    move-object v1, p1

    .local v1, "in":Lgnu/text/Lexer;
    move v2, p2

    .local v2, "ch":I
    move v3, p3

    .local v3, "count":I
    move-object v8, v1

    check-cast v8, Lgnu/kawa/lispexpr/LispReader;

    move-object v4, v8

    .line 16
    .local v4, "reader":Lgnu/kawa/lispexpr/LispReader;
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v8

    move-object v5, v8

    .line 17
    .local v5, "rtable":Lgnu/kawa/lispexpr/ReadTable;
    move-object v8, v4

    iget v8, v8, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    move v6, v8

    .line 18
    .local v6, "startPos":I
    move v8, v2

    move-object v9, v5

    iget-char v9, v9, Lgnu/kawa/lispexpr/ReadTable;->postfixLookupOperator:C

    if-ne v8, v9, :cond_1

    .line 20
    move-object v8, v4

    invoke-virtual {v8}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v8

    move v7, v8

    .line 21
    .local v7, "next":I
    move v8, v7

    const/16 v9, 0x3a

    if-ne v8, v9, :cond_0

    .line 22
    move-object v8, v5

    const-string/jumbo v9, "::"

    invoke-virtual {v8, v9}, Lgnu/kawa/lispexpr/ReadTable;->makeSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    .line 27
    .end local v0    # "this":Lgnu/kawa/lispexpr/ReaderColon;
    .end local v7    # "next":I
    :goto_0
    return-object v0

    .line 24
    .restart local v0    # "this":Lgnu/kawa/lispexpr/ReaderColon;
    .restart local v7    # "next":I
    :cond_0
    move-object v8, v4

    move v9, v2

    invoke-virtual {v8, v9}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 25
    move v8, v7

    move v2, v8

    .line 27
    .end local v7    # "next":I
    :cond_1
    move-object v8, v4

    move v9, v2

    move v10, v6

    move-object v11, v5

    invoke-virtual {v8, v9, v10, v11}, Lgnu/kawa/lispexpr/LispReader;->readAndHandleToken(IILgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    goto :goto_0
.end method
