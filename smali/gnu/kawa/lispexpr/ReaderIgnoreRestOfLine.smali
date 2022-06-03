.class public Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderIgnoreRestOfLine.java"


# static fields
.field static instance:Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    new-instance v0, Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;-><init>()V

    sput-object v0, Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;->instance:Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    return-void
.end method

.method public static getInstance()Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;->instance:Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;

    return-object v0
.end method


# virtual methods
.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;
    move-object v1, p1

    .local v1, "in":Lgnu/text/Lexer;
    move v2, p2

    .local v2, "ch":I
    move v3, p3

    .local v3, "count":I
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/text/Lexer;->read()I

    move-result v4

    move v2, v4

    .line 22
    move v4, v2

    if-gez v4, :cond_1

    .line 23
    sget-object v4, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    move-object v0, v4

    .line 25
    .end local v0    # "this":Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;
    :goto_0
    return-object v0

    .line 24
    .restart local v0    # "this":Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;
    :cond_1
    move v4, v2

    const/16 v5, 0xa

    if-eq v4, v5, :cond_2

    move v4, v2

    const/16 v5, 0xd

    if-ne v4, v5, :cond_0

    .line 25
    :cond_2
    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v4

    goto :goto_0
.end method
