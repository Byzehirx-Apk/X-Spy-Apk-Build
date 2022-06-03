.class public Lgnu/kawa/lispexpr/ReadTable;
.super Lgnu/kawa/util/RangeTable;
.source "ReadTable.java"


# static fields
.field public static final CONSTITUENT:I = 0x2

.field public static final ILLEGAL:I = 0x0

.field public static final MULTIPLE_ESCAPE:I = 0x4

.field public static final NON_TERMINATING_MACRO:I = 0x6

.field public static final SINGLE_ESCAPE:I = 0x3

.field public static final TERMINATING_MACRO:I = 0x5

.field public static final WHITESPACE:I = 0x1

.field static final current:Lgnu/mapping/ThreadLocation;

.field public static defaultBracketMode:I


# instance fields
.field ctorTable:Lgnu/mapping/Environment;

.field protected finalColonIsKeyword:Z

.field protected hexEscapeAfterBackslash:Z

.field protected initialColonIsKeyword:Z

.field public postfixLookupOperator:C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 23
    const/4 v0, -0x1

    sput v0, Lgnu/kawa/lispexpr/ReadTable;->defaultBracketMode:I

    .line 51
    new-instance v0, Lgnu/mapping/ThreadLocation;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "read-table"

    invoke-direct {v1, v2}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/lispexpr/ReadTable;->current:Lgnu/mapping/ThreadLocation;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReadTable;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/util/RangeTable;-><init>()V

    .line 26
    move-object v1, v0

    const v2, 0xffff

    iput-char v2, v1, Lgnu/kawa/lispexpr/ReadTable;->postfixLookupOperator:C

    .line 37
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lgnu/kawa/lispexpr/ReadTable;->hexEscapeAfterBackslash:Z

    .line 155
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/kawa/lispexpr/ReadTable;->ctorTable:Lgnu/mapping/Environment;

    .line 55
    return-void
.end method

.method public static createInitial()Lgnu/kawa/lispexpr/ReadTable;
    .locals 4

    .prologue
    .line 114
    new-instance v1, Lgnu/kawa/lispexpr/ReadTable;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lgnu/kawa/lispexpr/ReadTable;-><init>()V

    move-object v0, v1

    .line 115
    .local v0, "tab":Lgnu/kawa/lispexpr/ReadTable;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/kawa/lispexpr/ReadTable;->initialize()V

    .line 116
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "tab":Lgnu/kawa/lispexpr/ReadTable;
    return-object v0
.end method

.method public static getCurrent()Lgnu/kawa/lispexpr/ReadTable;
    .locals 4

    .prologue
    .line 195
    sget-object v2, Lgnu/kawa/lispexpr/ReadTable;->current:Lgnu/mapping/ThreadLocation;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/kawa/lispexpr/ReadTable;

    move-object v0, v2

    .line 196
    .local v0, "table":Lgnu/kawa/lispexpr/ReadTable;
    move-object v2, v0

    if-nez v2, :cond_0

    .line 198
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v2

    move-object v1, v2

    .line 199
    .local v1, "language":Lgnu/expr/Language;
    move-object v2, v1

    instance-of v2, v2, Lgnu/kawa/lispexpr/LispLanguage;

    if-eqz v2, :cond_1

    .line 200
    move-object v2, v1

    check-cast v2, Lgnu/kawa/lispexpr/LispLanguage;

    iget-object v2, v2, Lgnu/kawa/lispexpr/LispLanguage;->defaultReadTable:Lgnu/kawa/lispexpr/ReadTable;

    move-object v0, v2

    .line 203
    :goto_0
    sget-object v2, Lgnu/kawa/lispexpr/ReadTable;->current:Lgnu/mapping/ThreadLocation;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/mapping/ThreadLocation;->set(Ljava/lang/Object;)V

    .line 205
    .end local v1    # "language":Lgnu/expr/Language;
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "table":Lgnu/kawa/lispexpr/ReadTable;
    return-object v0

    .line 202
    .restart local v0    # "table":Lgnu/kawa/lispexpr/ReadTable;
    .restart local v1    # "language":Lgnu/expr/Language;
    :cond_1
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->createInitial()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public static setCurrent(Lgnu/kawa/lispexpr/ReadTable;)V
    .locals 3

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "rt":Lgnu/kawa/lispexpr/ReadTable;
    sget-object v1, Lgnu/kawa/lispexpr/ReadTable;->current:Lgnu/mapping/ThreadLocation;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/mapping/ThreadLocation;->set(Ljava/lang/Object;)V

    .line 211
    return-void
.end method


# virtual methods
.method public declared-synchronized getReaderCtor(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReadTable;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v5, p0

    monitor-enter v5

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lgnu/kawa/lispexpr/ReadTable;->initCtorTable()V

    .line 190
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/lispexpr/ReadTable;->ctorTable:Lgnu/mapping/Environment;

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Environment;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/lispexpr/ReadTable;
    monitor-exit v5

    return-object v0

    .line 189
    .restart local v0    # "this":Lgnu/kawa/lispexpr/ReadTable;
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "this":Lgnu/kawa/lispexpr/ReadTable;
    throw v0
.end method

.method initCtorTable()V
    .locals 3

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReadTable;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/lispexpr/ReadTable;->ctorTable:Lgnu/mapping/Environment;

    if-nez v1, :cond_0

    .line 160
    move-object v1, v0

    invoke-static {}, Lgnu/mapping/Environment;->make()Lgnu/mapping/SimpleEnvironment;

    move-result-object v2

    iput-object v2, v1, Lgnu/kawa/lispexpr/ReadTable;->ctorTable:Lgnu/mapping/Environment;

    .line 161
    :cond_0
    return-void
.end method

.method public initialize()V
    .locals 11

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReadTable;
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTableEntry;->getWhitespaceInstance()Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v2

    move-object v1, v2

    .line 61
    .local v1, "entry":Lgnu/kawa/lispexpr/ReadTableEntry;
    move-object v2, v0

    const/16 v3, 0x20

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 62
    move-object v2, v0

    const/16 v3, 0x9

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 63
    move-object v2, v0

    const/16 v3, 0xa

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 64
    move-object v2, v0

    const/16 v3, 0xd

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 65
    move-object v2, v0

    const/16 v3, 0xc

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 67
    move-object v2, v0

    const/16 v3, 0x7c

    invoke-static {}, Lgnu/kawa/lispexpr/ReadTableEntry;->getMultipleEscapeInstance()Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 68
    move-object v2, v0

    const/16 v3, 0x5c

    invoke-static {}, Lgnu/kawa/lispexpr/ReadTableEntry;->getSingleEscapeInstance()Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 69
    move-object v2, v0

    const/16 v3, 0x30

    const/16 v4, 0x39

    invoke-static {}, Lgnu/kawa/lispexpr/ReadTableEntry;->getDigitInstance()Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lgnu/kawa/lispexpr/ReadTable;->set(IILjava/lang/Object;)V

    .line 70
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTableEntry;->getConstituentInstance()Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v2

    move-object v1, v2

    .line 71
    move-object v2, v0

    const/16 v3, 0x61

    const/16 v4, 0x7a

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lgnu/kawa/lispexpr/ReadTable;->set(IILjava/lang/Object;)V

    .line 72
    move-object v2, v0

    const/16 v3, 0x41

    const/16 v4, 0x5a

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lgnu/kawa/lispexpr/ReadTable;->set(IILjava/lang/Object;)V

    .line 73
    move-object v2, v0

    const/16 v3, 0x21

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 74
    move-object v2, v0

    const/16 v3, 0x24

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 75
    move-object v2, v0

    const/16 v3, 0x25

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 76
    move-object v2, v0

    const/16 v3, 0x26

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 77
    move-object v2, v0

    const/16 v3, 0x2a

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 78
    move-object v2, v0

    const/16 v3, 0x2b

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 79
    move-object v2, v0

    const/16 v3, 0x2d

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 80
    move-object v2, v0

    const/16 v3, 0x2e

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 81
    move-object v2, v0

    const/16 v3, 0x2f

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 82
    move-object v2, v0

    const/16 v3, 0x3d

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 83
    move-object v2, v0

    const/16 v3, 0x3e

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 84
    move-object v2, v0

    const/16 v3, 0x3f

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 85
    move-object v2, v0

    const/16 v3, 0x40

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 86
    move-object v2, v0

    const/16 v3, 0x5e

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 87
    move-object v2, v0

    const/16 v3, 0x5f

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 88
    move-object v2, v0

    const/16 v3, 0x7b

    sget-object v4, Lgnu/kawa/lispexpr/ReadTableEntry;->brace:Lgnu/kawa/lispexpr/ReadTableEntry;

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 89
    move-object v2, v0

    const/16 v3, 0x7e

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 90
    move-object v2, v0

    const/16 v3, 0x7f

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 91
    move-object v2, v0

    const/16 v3, 0x8

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 92
    move-object v2, v0

    const/16 v3, 0x3a

    new-instance v4, Lgnu/kawa/lispexpr/ReaderColon;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Lgnu/kawa/lispexpr/ReaderColon;-><init>()V

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 93
    move-object v2, v0

    const/16 v3, 0x22

    new-instance v4, Lgnu/kawa/lispexpr/ReaderString;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Lgnu/kawa/lispexpr/ReaderString;-><init>()V

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 94
    move-object v2, v0

    const/16 v3, 0x23

    move-object v4, v0

    invoke-static {v4}, Lgnu/kawa/lispexpr/ReaderDispatch;->create(Lgnu/kawa/lispexpr/ReadTable;)Lgnu/kawa/lispexpr/ReaderDispatch;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 95
    move-object v2, v0

    const/16 v3, 0x3b

    invoke-static {}, Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;->getInstance()Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 96
    move-object v2, v0

    const/16 v3, 0x28

    const/16 v4, 0x28

    const/16 v5, 0x29

    invoke-static {v4, v5}, Lgnu/kawa/lispexpr/ReaderParens;->getInstance(CC)Lgnu/kawa/lispexpr/ReaderParens;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 98
    move-object v2, v0

    const/16 v3, 0x27

    new-instance v4, Lgnu/kawa/lispexpr/ReaderQuote;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    const-string/jumbo v7, "quote"

    invoke-virtual {v6, v7}, Lgnu/kawa/lispexpr/ReadTable;->makeSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v5, v6}, Lgnu/kawa/lispexpr/ReaderQuote;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 99
    move-object v2, v0

    const/16 v3, 0x60

    new-instance v4, Lgnu/kawa/lispexpr/ReaderQuote;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    const-string/jumbo v7, "quasiquote"

    invoke-virtual {v6, v7}, Lgnu/kawa/lispexpr/ReadTable;->makeSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v5, v6}, Lgnu/kawa/lispexpr/ReaderQuote;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 100
    move-object v2, v0

    const/16 v3, 0x2c

    new-instance v4, Lgnu/kawa/lispexpr/ReaderQuote;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    const-string/jumbo v7, "unquote"

    invoke-virtual {v6, v7}, Lgnu/kawa/lispexpr/ReadTable;->makeSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x40

    move-object v8, v0

    const-string/jumbo v9, "unquote-splicing"

    invoke-virtual {v8, v9}, Lgnu/kawa/lispexpr/ReadTable;->makeSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lgnu/kawa/lispexpr/ReaderQuote;-><init>(Ljava/lang/Object;CLjava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 107
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/lispexpr/ReadTable;->setBracketMode()V

    .line 109
    return-void
.end method

.method public lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;
    .locals 6

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReadTable;
    move v1, p1

    .local v1, "ch":I
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReadTable;->lookup(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/kawa/lispexpr/ReadTableEntry;

    move-object v2, v3

    .line 216
    .local v2, "entry":Lgnu/kawa/lispexpr/ReadTableEntry;
    move-object v3, v2

    if-nez v3, :cond_2

    move v3, v1

    if-ltz v3, :cond_2

    move v3, v1

    const/high16 v4, 0x10000

    if-ge v3, v4, :cond_2

    .line 218
    move v3, v1

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 219
    move-object v3, v0

    const/16 v4, 0x30

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReadTable;->lookup(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/kawa/lispexpr/ReadTableEntry;

    move-object v2, v3

    .line 227
    :cond_0
    :goto_0
    move-object v3, v2

    if-nez v3, :cond_1

    move v3, v1

    const/16 v4, 0x80

    if-lt v3, v4, :cond_1

    .line 228
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTableEntry;->getConstituentInstance()Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v3

    move-object v2, v3

    .line 229
    :cond_1
    move-object v3, v2

    if-nez v3, :cond_2

    .line 230
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTableEntry;->getIllegalInstance()Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v3

    move-object v2, v3

    .line 232
    :cond_2
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/lispexpr/ReadTable;
    return-object v0

    .line 220
    .restart local v0    # "this":Lgnu/kawa/lispexpr/ReadTable;
    :cond_3
    move v3, v1

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 221
    move-object v3, v0

    const/16 v4, 0x61

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReadTable;->lookup(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/kawa/lispexpr/ReadTableEntry;

    move-object v2, v3

    goto :goto_0

    .line 222
    :cond_4
    move v3, v1

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 223
    move-object v3, v0

    const/16 v4, 0x41

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReadTable;->lookup(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/kawa/lispexpr/ReadTableEntry;

    move-object v2, v3

    goto :goto_0

    .line 224
    :cond_5
    move v3, v1

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    move-object v3, v0

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReadTable;->lookup(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/kawa/lispexpr/ReadTableEntry;

    move-object v2, v3

    goto :goto_0
.end method

.method protected makeSymbol(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReadTable;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    sget-object v2, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/lispexpr/ReadTable;
    return-object v0
.end method

.method public declared-synchronized putReaderCtor(Ljava/lang/String;Lgnu/bytecode/Type;)V
    .locals 7

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReadTable;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "type":Lgnu/bytecode/Type;
    move-object v6, p0

    monitor-enter v6

    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Lgnu/kawa/lispexpr/ReadTable;->initCtorTable()V

    .line 174
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/lispexpr/ReadTable;->ctorTable:Lgnu/mapping/Environment;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Environment;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 175
    monitor-exit v6

    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lgnu/kawa/lispexpr/ReadTable;
    throw v0
.end method

.method public declared-synchronized putReaderCtor(Ljava/lang/String;Lgnu/mapping/Procedure;)V
    .locals 7

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReadTable;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "proc":Lgnu/mapping/Procedure;
    move-object v6, p0

    monitor-enter v6

    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Lgnu/kawa/lispexpr/ReadTable;->initCtorTable()V

    .line 167
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/lispexpr/ReadTable;->ctorTable:Lgnu/mapping/Environment;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Environment;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 168
    monitor-exit v6

    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lgnu/kawa/lispexpr/ReadTable;
    throw v0
.end method

.method public declared-synchronized putReaderCtorFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReadTable;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "cname":Ljava/lang/String;
    move-object v3, p3

    .local v3, "fname":Ljava/lang/String;
    move-object v10, p0

    monitor-enter v10

    move-object v5, v0

    :try_start_0
    invoke-virtual {v5}, Lgnu/kawa/lispexpr/ReadTable;->initCtorTable()V

    .line 182
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/lispexpr/ReadTable;->ctorTable:Lgnu/mapping/Environment;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v5

    move-object v4, v5

    .line 183
    .local v4, "symbol":Lgnu/mapping/Symbol;
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/lispexpr/ReadTable;->ctorTable:Lgnu/mapping/Environment;

    move-object v6, v4

    const/4 v7, 0x0

    move-object v8, v2

    move-object v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Lgnu/kawa/reflect/StaticFieldLocation;->define(Lgnu/mapping/Environment;Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 184
    monitor-exit v10

    return-void

    .line 181
    .end local v4    # "symbol":Lgnu/mapping/Symbol;
    :catchall_0
    move-exception v0

    monitor-exit v10

    .end local v0    # "this":Lgnu/kawa/lispexpr/ReadTable;
    throw v0
.end method

.method public setBracketMode()V
    .locals 3

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReadTable;
    move-object v1, v0

    sget v2, Lgnu/kawa/lispexpr/ReadTable;->defaultBracketMode:I

    invoke-virtual {v1, v2}, Lgnu/kawa/lispexpr/ReadTable;->setBracketMode(I)V

    .line 152
    return-void
.end method

.method public setBracketMode(I)V
    .locals 8

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReadTable;
    move v1, p1

    .local v1, "mode":I
    move v3, v1

    if-gtz v3, :cond_2

    .line 130
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTableEntry;->getConstituentInstance()Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v3

    move-object v2, v3

    .line 131
    .local v2, "token":Lgnu/kawa/lispexpr/ReadTableEntry;
    move-object v3, v0

    const/16 v4, 0x3c

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 132
    move v3, v1

    if-gez v3, :cond_0

    .line 134
    move-object v3, v0

    const/16 v4, 0x5b

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 135
    move-object v3, v0

    const/16 v4, 0x5d

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 137
    .line 140
    .end local v2    # "token":Lgnu/kawa/lispexpr/ReadTableEntry;
    :cond_0
    :goto_0
    move v3, v1

    if-ltz v3, :cond_1

    .line 142
    move-object v3, v0

    const/16 v4, 0x5b

    const/16 v5, 0x5b

    const/16 v6, 0x5d

    invoke-static {v5, v6}, Lgnu/kawa/lispexpr/ReaderParens;->getInstance(CC)Lgnu/kawa/lispexpr/ReaderParens;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 143
    move-object v3, v0

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->remove(I)V

    .line 145
    :cond_1
    return-void

    .line 139
    :cond_2
    move-object v3, v0

    const/16 v4, 0x3c

    new-instance v5, Lgnu/kawa/lispexpr/ReaderTypespec;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lgnu/kawa/lispexpr/ReaderTypespec;-><init>()V

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public setFinalColonIsKeyword(Z)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReadTable;
    move v1, p1

    .local v1, "whenFinal":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lgnu/kawa/lispexpr/ReadTable;->finalColonIsKeyword:Z

    .line 49
    return-void
.end method

.method public setInitialColonIsKeyword(Z)V
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReadTable;
    move v1, p1

    .local v1, "whenInitial":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lgnu/kawa/lispexpr/ReadTable;->initialColonIsKeyword:Z

    .line 43
    return-void
.end method
