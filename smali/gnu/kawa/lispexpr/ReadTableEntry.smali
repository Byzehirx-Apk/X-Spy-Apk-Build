.class public abstract Lgnu/kawa/lispexpr/ReadTableEntry;
.super Ljava/lang/Object;
.source "ReadTableEntry.java"


# static fields
.field public static final brace:Lgnu/kawa/lispexpr/ReadTableEntry;

.field public static final constituent:Lgnu/kawa/lispexpr/ReadTableEntry;

.field public static final illegal:Lgnu/kawa/lispexpr/ReadTableEntry;

.field public static final multipleEscape:Lgnu/kawa/lispexpr/ReadTableEntry;

.field public static final singleEscape:Lgnu/kawa/lispexpr/ReadTableEntry;

.field public static final whitespace:Lgnu/kawa/lispexpr/ReadTableEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 10
    new-instance v0, Lgnu/kawa/lispexpr/ReaderMisc;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lgnu/kawa/lispexpr/ReaderMisc;-><init>(I)V

    sput-object v0, Lgnu/kawa/lispexpr/ReadTableEntry;->illegal:Lgnu/kawa/lispexpr/ReadTableEntry;

    .line 12
    new-instance v0, Lgnu/kawa/lispexpr/ReaderMisc;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lgnu/kawa/lispexpr/ReaderMisc;-><init>(I)V

    sput-object v0, Lgnu/kawa/lispexpr/ReadTableEntry;->whitespace:Lgnu/kawa/lispexpr/ReadTableEntry;

    .line 14
    new-instance v0, Lgnu/kawa/lispexpr/ReaderMisc;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lgnu/kawa/lispexpr/ReaderMisc;-><init>(I)V

    sput-object v0, Lgnu/kawa/lispexpr/ReadTableEntry;->singleEscape:Lgnu/kawa/lispexpr/ReadTableEntry;

    .line 16
    new-instance v0, Lgnu/kawa/lispexpr/ReaderMisc;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lgnu/kawa/lispexpr/ReaderMisc;-><init>(I)V

    sput-object v0, Lgnu/kawa/lispexpr/ReadTableEntry;->multipleEscape:Lgnu/kawa/lispexpr/ReadTableEntry;

    .line 18
    new-instance v0, Lgnu/kawa/lispexpr/ReaderMisc;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lgnu/kawa/lispexpr/ReaderMisc;-><init>(I)V

    sput-object v0, Lgnu/kawa/lispexpr/ReadTableEntry;->constituent:Lgnu/kawa/lispexpr/ReadTableEntry;

    .line 20
    new-instance v0, Lgnu/kawa/lispexpr/ReaderMisc;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lgnu/kawa/lispexpr/ReaderMisc;-><init>(I)V

    sput-object v0, Lgnu/kawa/lispexpr/ReadTableEntry;->brace:Lgnu/kawa/lispexpr/ReadTableEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReadTableEntry;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConstituentInstance()Lgnu/kawa/lispexpr/ReadTableEntry;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lgnu/kawa/lispexpr/ReadTableEntry;->constituent:Lgnu/kawa/lispexpr/ReadTableEntry;

    return-object v0
.end method

.method public static getDigitInstance()Lgnu/kawa/lispexpr/ReadTableEntry;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lgnu/kawa/lispexpr/ReadTableEntry;->constituent:Lgnu/kawa/lispexpr/ReadTableEntry;

    return-object v0
.end method

.method public static getIllegalInstance()Lgnu/kawa/lispexpr/ReadTableEntry;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lgnu/kawa/lispexpr/ReadTableEntry;->illegal:Lgnu/kawa/lispexpr/ReadTableEntry;

    return-object v0
.end method

.method public static getMultipleEscapeInstance()Lgnu/kawa/lispexpr/ReadTableEntry;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lgnu/kawa/lispexpr/ReadTableEntry;->multipleEscape:Lgnu/kawa/lispexpr/ReadTableEntry;

    return-object v0
.end method

.method public static getSingleEscapeInstance()Lgnu/kawa/lispexpr/ReadTableEntry;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lgnu/kawa/lispexpr/ReadTableEntry;->singleEscape:Lgnu/kawa/lispexpr/ReadTableEntry;

    return-object v0
.end method

.method public static getWhitespaceInstance()Lgnu/kawa/lispexpr/ReadTableEntry;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lgnu/kawa/lispexpr/ReadTableEntry;->whitespace:Lgnu/kawa/lispexpr/ReadTableEntry;

    return-object v0
.end method


# virtual methods
.method public getKind()I
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReadTableEntry;
    const/4 v1, 0x5

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/lispexpr/ReadTableEntry;
    return v0
.end method

.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReadTableEntry;
    move-object v1, p1

    .local v1, "in":Lgnu/text/Lexer;
    move v2, p2

    .local v2, "ch":I
    move v3, p3

    .local v3, "count":I
    new-instance v4, Ljava/lang/Error;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "invalid character"

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4
.end method
