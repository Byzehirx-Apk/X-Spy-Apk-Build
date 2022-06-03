.class public Lkawa/standard/ImportFromLibrary;
.super Lkawa/lang/Syntax;
.source "ImportFromLibrary.java"


# static fields
.field private static final BUILTIN:Ljava/lang/String; = ""

.field private static final MISSING:Ljava/lang/String;

.field static final SRFI97Map:[[Ljava/lang/String;

.field public static final instance:Lkawa/standard/ImportFromLibrary;


# instance fields
.field public classPrefixPath:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 18
    new-instance v0, Lkawa/standard/ImportFromLibrary;

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    invoke-direct {v1}, Lkawa/standard/ImportFromLibrary;-><init>()V

    sput-object v0, Lkawa/standard/ImportFromLibrary;->instance:Lkawa/standard/ImportFromLibrary;

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    .line 25
    const/16 v0, 0x30

    new-array v0, v0, [[Ljava/lang/String;

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "1"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "lists"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "gnu.kawa.slib.srfi1"

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "2"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "and-let*"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "gnu.kawa.slib.srfi2"

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "5"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "let"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x3

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "6"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "basic-string-ports"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, ""

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x4

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "8"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "receive"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, ""

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x5

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "9"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "records"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, ""

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x6

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "11"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "let-values"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, ""

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x7

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "13"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "strings"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "gnu.kawa.slib.srfi13"

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x8

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "14"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "char-sets"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x9

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "16"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "case-lambda"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, ""

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xa

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "17"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "generalized-set!"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, ""

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xb

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "18"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "multithreading"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xc

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "19"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "time"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xd

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "21"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "real-time-multithreading"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xe

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "23"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "error"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, ""

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xf

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "25"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "multi-dimensional-arrays"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, ""

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x10

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "26"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "cut"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, ""

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x11

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "27"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "random-bits"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x12

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "28"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "basic-format-strings"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, ""

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x13

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "29"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "localization"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x14

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "31"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "rec"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x15

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "38"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "with-shared-structure"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x16

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "39"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "parameters"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, ""

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x17

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "41"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "streams"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x18

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "42"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "eager-comprehensions"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x19

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "43"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "vectors"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x1a

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "44"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "collections"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x1b

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "45"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "lazy"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x1c

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "46"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "syntax-rules"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x1d

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "47"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "arrays"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x1e

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "48"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "intermediate-format-strings"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x1f

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "51"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "rest-values"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x20

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "54"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "cat"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x21

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "57"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "records"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x22

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "59"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "vicinities"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x23

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "60"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "integer-bits"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x24

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "61"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "cond"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x25

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "63"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "arrays"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x26

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "64"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "testing"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "gnu.kawa.slib.testing"

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x27

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "66"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "octet-vectors"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x28

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "67"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "compare-procedures"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x29

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "69"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "basic-hash-tables"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "gnu.kawa.slib.srfi69"

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x2a

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "71"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "let"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x2b

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "74"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "blobs"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x2c

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "78"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "lightweight-testing"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x2d

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "86"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "mu-and-nu"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x2e

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "87"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "case"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x2f

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "95"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "sorting-and-merging"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "kawa.lib.srfi95"

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    sput-object v0, Lkawa/standard/ImportFromLibrary;->SRFI97Map:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lkawa/standard/ImportFromLibrary;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Syntax;-><init>()V

    .line 20
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string/jumbo v5, ""

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const-string/jumbo v5, "kawa.lib."

    aput-object v5, v3, v4

    iput-object v2, v1, Lkawa/standard/ImportFromLibrary;->classPrefixPath:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 4

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Lkawa/standard/ImportFromLibrary;
    move-object v1, p1

    .local v1, "form":Lgnu/lists/Pair;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Lkawa/standard/ImportFromLibrary;
    return-object v0
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 31

    .prologue
    .line 79
    move-object/from16 v2, p0

    .local v2, "this":Lkawa/standard/ImportFromLibrary;
    move-object/from16 v3, p1

    .local v3, "st":Lgnu/lists/Pair;
    move-object/from16 v4, p2

    .local v4, "forms":Ljava/util/Vector;
    move-object/from16 v5, p3

    .local v5, "defs":Lgnu/expr/ScopeExp;
    move-object/from16 v6, p4

    .local v6, "tr":Lkawa/lang/Translator;
    const/16 v24, 0x0

    move-object/from16 v7, v24

    .line 80
    .local v7, "mapper":Lgnu/mapping/Procedure;
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v8, v24

    .line 81
    .local v8, "args":Ljava/lang/Object;
    move-object/from16 v24, v8

    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v24, v0

    if-nez v24, :cond_0

    .line 82
    const/16 v24, 0x0

    move/from16 v2, v24

    .line 218
    .end local v2    # "this":Lkawa/standard/ImportFromLibrary;
    :goto_0
    return v2

    .line 83
    .restart local v2    # "this":Lkawa/standard/ImportFromLibrary;
    :cond_0
    move-object/from16 v24, v8

    check-cast v24, Lgnu/lists/Pair;

    move-object/from16 v9, v24

    .line 84
    .local v9, "pair":Lgnu/lists/Pair;
    move-object/from16 v24, v9

    invoke-virtual/range {v24 .. v24}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v10, v24

    .line 85
    .local v10, "libref":Ljava/lang/Object;
    move-object/from16 v24, v10

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v24

    if-gtz v24, :cond_1

    .line 87
    move-object/from16 v24, v6

    const/16 v25, 0x65

    const-string/jumbo v26, "expected <library reference> which must be a list"

    invoke-virtual/range {v24 .. v26}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 88
    const/16 v24, 0x0

    move/from16 v2, v24

    goto :goto_0

    .line 90
    :cond_1
    move-object/from16 v24, v9

    invoke-virtual/range {v24 .. v24}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v11, v24

    .line 91
    .local v11, "rest":Ljava/lang/Object;
    move-object/from16 v24, v11

    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v24, v11

    check-cast v24, Lgnu/lists/Pair;

    invoke-virtual/range {v24 .. v24}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/mapping/Procedure;

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 92
    move-object/from16 v24, v11

    check-cast v24, Lgnu/lists/Pair;

    invoke-virtual/range {v24 .. v24}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lgnu/mapping/Procedure;

    move-object/from16 v7, v24

    .line 94
    :cond_2
    const/16 v24, 0x0

    move-object/from16 v12, v24

    .line 95
    .local v12, "versionSpec":Ljava/lang/Object;
    const/16 v24, 0x0

    move-object/from16 v13, v24

    .line 96
    .local v13, "sourcePath":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuffer;

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v14, v24

    .line 97
    .end local v12    # "versionSpec":Ljava/lang/Object;
    .local v14, "sbuf":Ljava/lang/StringBuffer;
    :goto_1
    move-object/from16 v24, v10

    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v24, v0

    if-eqz v24, :cond_8

    .line 99
    move-object/from16 v24, v10

    check-cast v24, Lgnu/lists/Pair;

    move-object/from16 v9, v24

    .line 100
    move-object/from16 v24, v9

    invoke-virtual/range {v24 .. v24}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v15, v24

    .line 101
    .local v15, "car":Ljava/lang/Object;
    move-object/from16 v24, v9

    invoke-virtual/range {v24 .. v24}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v16, v24

    .line 102
    .local v16, "cdr":Ljava/lang/Object;
    move-object/from16 v24, v15

    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 104
    move-object/from16 v24, v12

    if-eqz v24, :cond_3

    .line 106
    move-object/from16 v24, v6

    const/16 v25, 0x65

    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v30, v26

    move-object/from16 v26, v30

    move-object/from16 v27, v30

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "duplicate version reference - was "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v27, v12

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 108
    :cond_3
    move-object/from16 v24, v15

    move-object/from16 v12, v24

    .line 109
    .restart local v12    # "versionSpec":Ljava/lang/Object;
    sget-object v24, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v30, v25

    move-object/from16 v25, v30

    move-object/from16 v26, v30

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "import version "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v15

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    .end local v12    # "versionSpec":Ljava/lang/Object;
    :goto_2
    move-object/from16 v24, v16

    move-object/from16 v10, v24

    .line 124
    goto :goto_1

    .line 111
    :cond_4
    move-object/from16 v24, v15

    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 113
    move-object/from16 v24, v16

    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 114
    move-object/from16 v24, v6

    const/16 v25, 0x65

    const-string/jumbo v26, "source specifier must be last elemnt in library reference"

    invoke-virtual/range {v24 .. v26}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 115
    :cond_5
    move-object/from16 v24, v15

    check-cast v24, Ljava/lang/String;

    move-object/from16 v13, v24

    goto :goto_2

    .line 119
    :cond_6
    move-object/from16 v24, v14

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    if-lez v24, :cond_7

    .line 120
    move-object/from16 v24, v14

    const/16 v25, 0x2e

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v24

    .line 121
    :cond_7
    move-object/from16 v24, v14

    move-object/from16 v25, v15

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    goto :goto_2

    .line 126
    .end local v15    # "car":Ljava/lang/Object;
    .end local v16    # "cdr":Ljava/lang/Object;
    :cond_8
    const/16 v24, 0x0

    move-object/from16 v15, v24

    .line 127
    .local v15, "minfo":Lgnu/expr/ModuleInfo;
    move-object/from16 v24, v13

    if-eqz v24, :cond_9

    .line 129
    move-object/from16 v24, v13

    move-object/from16 v25, v5

    invoke-static/range {v24 .. v25}, Lkawa/standard/require;->lookupModuleFromSourcePath(Ljava/lang/String;Lgnu/expr/ScopeExp;)Lgnu/expr/ModuleInfo;

    move-result-object v24

    move-object/from16 v15, v24

    .line 130
    move-object/from16 v24, v15

    if-nez v24, :cond_9

    .line 132
    move-object/from16 v24, v6

    const/16 v25, 0x65

    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v30, v26

    move-object/from16 v26, v30

    move-object/from16 v27, v30

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "malformed URL: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v27, v13

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 133
    const/16 v24, 0x0

    move/from16 v2, v24

    goto/16 :goto_0

    .line 136
    :cond_9
    move-object/from16 v24, v14

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v16, v24

    .line 138
    .local v16, "lname":Ljava/lang/String;
    move-object/from16 v24, v16

    const-string/jumbo v25, "srfi."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_15

    .line 140
    move-object/from16 v24, v16

    const/16 v25, 0x5

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lgnu/expr/Compilation;->demangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v17, v24

    .line 141
    .local v17, "demangled":Ljava/lang/String;
    move-object/from16 v24, v17

    const/16 v25, 0x2e

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(I)I

    move-result v24

    move/from16 v18, v24

    .line 143
    .local v18, "dot":I
    move/from16 v24, v18

    if-gez v24, :cond_c

    .line 145
    const/16 v24, 0x0

    move-object/from16 v19, v24

    .line 146
    .local v19, "srfiName":Ljava/lang/String;
    move-object/from16 v24, v17

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v18, v24

    .line 150
    :goto_3
    const/16 v24, 0x0

    move-object/from16 v20, v24

    .line 151
    .local v20, "srfiNumber":Ljava/lang/String;
    move/from16 v24, v18

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_a

    move-object/from16 v24, v17

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const/16 v25, 0x3a

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 153
    :cond_a
    const/16 v24, 0x1

    move/from16 v21, v24

    .line 155
    .local v21, "i":I
    :goto_4
    move/from16 v24, v21

    move/from16 v25, v18

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 157
    move-object/from16 v24, v17

    const/16 v25, 0x1

    move/from16 v26, v18

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v20, v24

    .line 164
    .end local v21    # "i":I
    :cond_b
    :goto_5
    move-object/from16 v24, v20

    if-nez v24, :cond_f

    .line 166
    move-object/from16 v24, v6

    const/16 v25, 0x65

    const-string/jumbo v26, "SRFI library reference must have the form: (srfi :NNN [name])"

    invoke-virtual/range {v24 .. v26}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 167
    const/16 v24, 0x0

    move/from16 v2, v24

    goto/16 :goto_0

    .line 149
    .end local v19    # "srfiName":Ljava/lang/String;
    .end local v20    # "srfiNumber":Ljava/lang/String;
    :cond_c
    move-object/from16 v24, v17

    move/from16 v25, v18

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v19, v24

    .restart local v19    # "srfiName":Ljava/lang/String;
    goto :goto_3

    .line 160
    .restart local v20    # "srfiNumber":Ljava/lang/String;
    .restart local v21    # "i":I
    :cond_d
    move-object/from16 v24, v17

    move/from16 v25, v21

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const/16 v25, 0xa

    invoke-static/range {v24 .. v25}, Ljava/lang/Character;->digit(CI)I

    move-result v24

    if-gez v24, :cond_e

    .line 161
    goto :goto_5

    .line 153
    :cond_e
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 169
    .end local v21    # "i":I
    :cond_f
    sget-object v24, Lkawa/standard/ImportFromLibrary;->SRFI97Map:[[Ljava/lang/String;

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v21, v24

    .line 172
    .local v21, "srfiIndex":I
    :cond_10
    add-int/lit8 v21, v21, -0x1

    move/from16 v24, v21

    if-gez v24, :cond_11

    .line 174
    move-object/from16 v24, v6

    const/16 v25, 0x65

    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v30, v26

    move-object/from16 v26, v30

    move-object/from16 v27, v30

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "unknown SRFI number \'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v27, v20

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "\' in SRFI library reference"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 175
    const/16 v24, 0x0

    move/from16 v2, v24

    goto/16 :goto_0

    .line 177
    :cond_11
    sget-object v24, Lkawa/standard/ImportFromLibrary;->SRFI97Map:[[Ljava/lang/String;

    move/from16 v25, v21

    aget-object v24, v24, v25

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v25, v20

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_10

    .line 178
    .line 180
    sget-object v24, Lkawa/standard/ImportFromLibrary;->SRFI97Map:[[Ljava/lang/String;

    move/from16 v25, v21

    aget-object v24, v24, v25

    const/16 v25, 0x1

    aget-object v24, v24, v25

    move-object/from16 v22, v24

    .line 181
    .local v22, "srfiNameExpected":Ljava/lang/String;
    sget-object v24, Lkawa/standard/ImportFromLibrary;->SRFI97Map:[[Ljava/lang/String;

    move/from16 v25, v21

    aget-object v24, v24, v25

    const/16 v25, 0x2

    aget-object v24, v24, v25

    move-object/from16 v23, v24

    .line 182
    .local v23, "srfiClass":Ljava/lang/String;
    move-object/from16 v24, v19

    if-eqz v24, :cond_12

    move-object/from16 v24, v19

    move-object/from16 v25, v22

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_12

    .line 184
    move-object/from16 v24, v6

    const/16 v25, 0x77

    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v30, v26

    move-object/from16 v26, v30

    move-object/from16 v27, v30

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "the name of SRFI "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v27, v20

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " should be \'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v27, v22

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 187
    :cond_12
    move-object/from16 v24, v23

    const-string/jumbo v25, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_13

    .line 188
    const/16 v24, 0x1

    move/from16 v2, v24

    goto/16 :goto_0

    .line 189
    :cond_13
    move-object/from16 v24, v23

    sget-object v25, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_14

    .line 191
    move-object/from16 v24, v6

    const/16 v25, 0x65

    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v30, v26

    move-object/from16 v26, v30

    move-object/from16 v27, v30

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "sorry - Kawa does not support SRFI "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v27, v20

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " ("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v27, v22

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x29

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 192
    const/16 v24, 0x0

    move/from16 v2, v24

    goto/16 :goto_0

    .line 195
    :cond_14
    move-object/from16 v24, v23

    move-object/from16 v16, v24

    .line 198
    .end local v17    # "demangled":Ljava/lang/String;
    .end local v18    # "dot":I
    .end local v19    # "srfiName":Ljava/lang/String;
    .end local v20    # "srfiNumber":Ljava/lang/String;
    .end local v21    # "srfiIndex":I
    .end local v22    # "srfiNameExpected":Ljava/lang/String;
    .end local v23    # "srfiClass":Ljava/lang/String;
    :cond_15
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lkawa/standard/ImportFromLibrary;->classPrefixPath:[Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v17, v24

    .line 199
    .local v17, "classPrefixPathLength":I
    const/16 v24, 0x0

    move/from16 v18, v24

    .local v18, "i":I
    :goto_6
    move/from16 v24, v18

    move/from16 v25, v17

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_16

    .line 201
    new-instance v24, Ljava/lang/StringBuilder;

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lkawa/standard/ImportFromLibrary;->classPrefixPath:[Ljava/lang/String;

    move-object/from16 v25, v0

    move/from16 v26, v18

    aget-object v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v25, v16

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v19, v24

    .line 204
    .local v19, "tname":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v24

    move-object/from16 v25, v19

    invoke-virtual/range {v24 .. v25}, Lgnu/expr/ModuleManager;->findWithClassName(Ljava/lang/String;)Lgnu/expr/ModuleInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    move-object/from16 v15, v24

    .line 209
    .line 199
    :goto_7
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 206
    :catch_0
    move-exception v24

    move-object/from16 v20, v24

    .line 208
    .local v20, "ex":Ljava/lang/Exception;
    goto :goto_7

    .line 211
    .end local v19    # "tname":Ljava/lang/String;
    .end local v20    # "ex":Ljava/lang/Exception;
    :cond_16
    move-object/from16 v24, v15

    if-nez v24, :cond_17

    .line 213
    move-object/from16 v24, v6

    const/16 v25, 0x65

    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v30, v26

    move-object/from16 v26, v30

    move-object/from16 v27, v30

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "unknown class "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v27, v16

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 214
    const/16 v24, 0x0

    move/from16 v2, v24

    goto/16 :goto_0

    .line 216
    :cond_17
    const/16 v24, 0x0

    move-object/from16 v25, v15

    move-object/from16 v26, v7

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    invoke-static/range {v24 .. v29}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    move-result v24

    .line 218
    const/16 v24, 0x1

    move/from16 v2, v24

    goto/16 :goto_0
.end method
