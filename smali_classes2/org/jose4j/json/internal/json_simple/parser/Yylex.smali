.class Lorg/jose4j/json/internal/json_simple/parser/Yylex;
.super Ljava/lang/Object;
.source "Yylex.java"


# static fields
.field public static final STRING_BEGIN:I = 0x2

.field public static final YYEOF:I = -0x1

.field public static final YYINITIAL:I = 0x0

.field private static final ZZ_ACTION:[I

.field private static final ZZ_ACTION_PACKED_0:Ljava/lang/String; = "\u0002\u0000\u0002\u0001\u0001\u0002\u0001\u0003\u0001\u0004\u0003\u0001\u0001\u0005\u0001\u0006\u0001\u0007\u0001\u0008\u0001\t\u0001\n\u0001\u000b\u0001\u000c\u0001\r\u0005\u0000\u0001\u000c\u0001\u000e\u0001\u000f\u0001\u0010\u0001\u0011\u0001\u0012\u0001\u0013\u0001\u0014\u0001\u0000\u0001\u0015\u0001\u0000\u0001\u0015\u0004\u0000\u0001\u0016\u0001\u0017\u0002\u0000\u0001\u0018"

.field private static final ZZ_ATTRIBUTE:[I

.field private static final ZZ_ATTRIBUTE_PACKED_0:Ljava/lang/String; = "\u0002\u0000\u0001\t\u0003\u0001\u0001\t\u0003\u0001\u0006\t\u0002\u0001\u0001\t\u0005\u0000\u0008\t\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0004\u0000\u0002\t\u0002\u0000\u0001\t"

.field private static final ZZ_BUFFERSIZE:I = 0x4000

.field private static final ZZ_CMAP:[C

.field private static final ZZ_CMAP_PACKED:Ljava/lang/String; = "\t\u0000\u0001\u0007\u0001\u0007\u0002\u0000\u0001\u0007\u0012\u0000\u0001\u0007\u0001\u0000\u0001\t\u0008\u0000\u0001\u0006\u0001\u0019\u0001\u0002\u0001\u0004\u0001\n\n\u0003\u0001\u001a\u0006\u0000\u0004\u0001\u0001\u0005\u0001\u0001\u0014\u0000\u0001\u0017\u0001\u0008\u0001\u0018\u0003\u0000\u0001\u0012\u0001\u000b\u0002\u0001\u0001\u0011\u0001\u000c\u0005\u0000\u0001\u0013\u0001\u0000\u0001\r\u0003\u0000\u0001\u000e\u0001\u0014\u0001\u000f\u0001\u0010\u0005\u0000\u0001\u0015\u0001\u0000\u0001\u0016\uff82\u0000"

.field private static final ZZ_ERROR_MSG:[Ljava/lang/String;

.field private static final ZZ_LEXSTATE:[I

.field private static final ZZ_NO_MATCH:I = 0x1

.field private static final ZZ_PUSHBACK_2BIG:I = 0x2

.field private static final ZZ_ROWMAP:[I

.field private static final ZZ_ROWMAP_PACKED_0:Ljava/lang/String; = "\u0000\u0000\u0000\u001b\u00006\u0000Q\u0000l\u0000\u0087\u00006\u0000\u00a2\u0000\u00bd\u0000\u00d8\u00006\u00006\u00006\u00006\u00006\u00006\u0000\u00f3\u0000\u010e\u00006\u0000\u0129\u0000\u0144\u0000\u015f\u0000\u017a\u0000\u0195\u00006\u00006\u00006\u00006\u00006\u00006\u00006\u00006\u0000\u01b0\u0000\u01cb\u0000\u01e6\u0000\u01e6\u0000\u0201\u0000\u021c\u0000\u0237\u0000\u0252\u00006\u00006\u0000\u026d\u0000\u0288\u00006"

.field private static final ZZ_TRANS:[I

.field private static final ZZ_UNKNOWN_ERROR:I


# instance fields
.field private sb:Ljava/lang/StringBuilder;

.field private yychar:I

.field private yycolumn:I

.field private yyline:I

.field private zzAtBOL:Z

.field private zzAtEOF:Z

.field private zzBuffer:[C

.field private zzCurrentPos:I

.field private zzEndRead:I

.field private zzLexicalState:I

.field private zzMarkedPos:I

.field private zzReader:Ljava/io/Reader;

.field private zzStartRead:I

.field private zzState:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->ZZ_LEXSTATE:[I

    .line 42
    const-string/jumbo v0, "\t\u0000\u0001\u0007\u0001\u0007\u0002\u0000\u0001\u0007\u0012\u0000\u0001\u0007\u0001\u0000\u0001\t\u0008\u0000\u0001\u0006\u0001\u0019\u0001\u0002\u0001\u0004\u0001\n\n\u0003\u0001\u001a\u0006\u0000\u0004\u0001\u0001\u0005\u0001\u0001\u0014\u0000\u0001\u0017\u0001\u0008\u0001\u0018\u0003\u0000\u0001\u0012\u0001\u000b\u0002\u0001\u0001\u0011\u0001\u000c\u0005\u0000\u0001\u0013\u0001\u0000\u0001\r\u0003\u0000\u0001\u000e\u0001\u0014\u0001\u000f\u0001\u0010\u0005\u0000\u0001\u0015\u0001\u0000\u0001\u0016\uff82\u0000"

    invoke-static {v0}, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzUnpackCMap(Ljava/lang/String;)[C

    move-result-object v0

    sput-object v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->ZZ_CMAP:[C

    .line 47
    invoke-static {}, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzUnpackAction()[I

    move-result-object v0

    sput-object v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->ZZ_ACTION:[I

    .line 79
    invoke-static {}, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzUnpackRowMap()[I

    move-result-object v0

    sput-object v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->ZZ_ROWMAP:[I

    .line 110
    const/16 v0, 0x2a3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->ZZ_TRANS:[I

    .line 187
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "Unkown internal scanner error"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "Error: could not match input"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "Error: pushback value was too large"

    aput-object v3, v1, v2

    sput-object v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->ZZ_ERROR_MSG:[Ljava/lang/String;

    .line 196
    invoke-static {}, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzUnpackAttribute()[I

    move-result-object v0

    sput-object v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->ZZ_ATTRIBUTE:[I

    return-void

    .line 25
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x1
    .end array-data

    .line 110
    :array_1
    .array-data 4
        0x2
        0x2
        0x3
        0x4
        0x2
        0x2
        0x2
        0x5
        0x2
        0x6
        0x2
        0x2
        0x7
        0x8
        0x2
        0x9
        0x2
        0x2
        0x2
        0x2
        0x2
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x11
        0x12
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x4
        0x13
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x5
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x15
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x16
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x17
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        -0x1
        -0x1
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x21
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x22
        0x23
        -0x1
        -0x1
        0x22
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x25
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        -0x1
        0x27
        -0x1
        0x27
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x27
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x27
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x21
        -0x1
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x28
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x29
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2a
        -0x1
        0x2a
        -0x1
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2a
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
        0x2a
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2b
        -0x1
        0x2b
        -0x1
        0x2b
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2b
        0x2b
        -0x1
        -0x1
        -0x1
        -0x1
        0x2b
        0x2b
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2c
        -0x1
        0x2c
        -0x1
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2c
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        0x2c
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .locals 7

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/Yylex;
    move-object v1, p1

    .local v1, "in":Ljava/io/InputStream;
    move-object v2, v0

    new-instance v3, Ljava/io/InputStreamReader;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Lorg/jose4j/json/internal/json_simple/parser/Yylex;-><init>(Ljava/io/Reader;)V

    .line 295
    return-void
.end method

.method constructor <init>(Ljava/io/Reader;)V
    .locals 6

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/Yylex;
    move-object v1, p1

    .local v1, "in":Ljava/io/Reader;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 229
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzLexicalState:I

    .line 233
    move-object v2, v0

    const/16 v3, 0x4000

    new-array v3, v3, [C

    iput-object v3, v2, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzBuffer:[C

    .line 263
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzAtBOL:Z

    .line 269
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, v2, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->sb:Ljava/lang/StringBuilder;

    .line 284
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzReader:Ljava/io/Reader;

    .line 285
    return-void
.end method

.method private zzRefill()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/Yylex;
    move-object v3, v0

    iget v3, v3, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzStartRead:I

    if-lez v3, :cond_0

    .line 327
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzBuffer:[C

    move-object v4, v0

    iget v4, v4, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzStartRead:I

    move-object v5, v0

    iget-object v5, v5, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzBuffer:[C

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzEndRead:I

    move-object v8, v0

    iget v8, v8, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzStartRead:I

    sub-int/2addr v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzEndRead:I

    move-object v5, v0

    iget v5, v5, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzStartRead:I

    sub-int/2addr v4, v5

    iput v4, v3, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzEndRead:I

    .line 333
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzCurrentPos:I

    move-object v5, v0

    iget v5, v5, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzStartRead:I

    sub-int/2addr v4, v5

    iput v4, v3, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzCurrentPos:I

    .line 334
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzMarkedPos:I

    move-object v5, v0

    iget v5, v5, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzStartRead:I

    sub-int/2addr v4, v5

    iput v4, v3, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzMarkedPos:I

    .line 335
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzStartRead:I

    .line 339
    :cond_0
    move-object v3, v0

    iget v3, v3, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzCurrentPos:I

    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzBuffer:[C

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 341
    move-object v3, v0

    iget v3, v3, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzCurrentPos:I

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [C

    move-object v1, v3

    .line 342
    .local v1, "newBuffer":[C
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzBuffer:[C

    const/4 v4, 0x0

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzBuffer:[C

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzBuffer:[C

    .line 347
    .end local v1    # "newBuffer":[C
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzReader:Ljava/io/Reader;

    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzBuffer:[C

    move-object v5, v0

    iget v5, v5, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzEndRead:I

    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzBuffer:[C

    array-length v6, v6

    move-object v7, v0

    iget v7, v7, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzEndRead:I

    sub-int/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/Reader;->read([CII)I

    move-result v3

    move v1, v3

    .line 350
    .local v1, "numRead":I
    move v3, v1

    if-lez v3, :cond_2

    .line 351
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzEndRead:I

    move v5, v1

    add-int/2addr v4, v5

    iput v4, v3, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzEndRead:I

    .line 352
    const/4 v3, 0x0

    move v0, v3

    .line 366
    .end local v0    # "this":Lorg/jose4j/json/internal/json_simple/parser/Yylex;
    :goto_0
    return v0

    .line 355
    .restart local v0    # "this":Lorg/jose4j/json/internal/json_simple/parser/Yylex;
    :cond_2
    move v3, v1

    if-nez v3, :cond_4

    .line 356
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzReader:Ljava/io/Reader;

    invoke-virtual {v3}, Ljava/io/Reader;->read()I

    move-result v3

    move v2, v3

    .line 357
    .local v2, "c":I
    move v3, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 358
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 360
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzBuffer:[C

    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzEndRead:I

    move-object v9, v4

    move v10, v5

    move v4, v10

    move-object v5, v9

    move v6, v10

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzEndRead:I

    move v5, v2

    int-to-char v5, v5

    aput-char v5, v3, v4

    .line 361
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 366
    .end local v2    # "c":I
    :cond_4
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method private zzScanError(I)V
    .locals 8

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/Yylex;
    move v1, p1

    .local v1, "errorCode":I
    :try_start_0
    sget-object v4, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->ZZ_ERROR_MSG:[Ljava/lang/String;

    move v5, v1

    aget-object v4, v4, v5
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 474
    .line 476
    .local v2, "message":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/Error;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 472
    .end local v2    # "message":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 473
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v4, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->ZZ_ERROR_MSG:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v2, v4

    .restart local v2    # "message":Ljava/lang/String;
    goto :goto_0
.end method

.method private static zzUnpackAction(Ljava/lang/String;I[I)I
    .locals 11

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "packed":Ljava/lang/String;
    move v1, p1

    .local v1, "offset":I
    move-object v2, p2

    .local v2, "result":[I
    const/4 v8, 0x0

    move v3, v8

    .line 65
    .local v3, "i":I
    move v8, v1

    move v4, v8

    .line 66
    .local v4, "j":I
    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move v5, v8

    .line 67
    .local v5, "l":I
    :goto_0
    move v8, v3

    move v9, v5

    if-ge v8, v9, :cond_1

    .line 68
    move-object v8, v0

    move v9, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v6, v8

    .line 69
    .local v6, "count":I
    move-object v8, v0

    move v9, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v7, v8

    .line 70
    .local v7, "value":I
    :cond_0
    move-object v8, v2

    move v9, v4

    add-int/lit8 v4, v4, 0x1

    move v10, v7

    aput v10, v8, v9

    add-int/lit8 v6, v6, -0x1

    move v8, v6

    if-gtz v8, :cond_0

    .line 71
    goto :goto_0

    .line 72
    .end local v6    # "count":I
    .end local v7    # "value":I
    :cond_1
    move v8, v4

    move v0, v8

    .end local v0    # "packed":Ljava/lang/String;
    return v0
.end method

.method private static zzUnpackAction()[I
    .locals 5

    .prologue
    .line 57
    const/16 v2, 0x2d

    new-array v2, v2, [I

    move-object v0, v2

    .line 58
    .local v0, "result":[I
    const/4 v2, 0x0

    move v1, v2

    .line 59
    .local v1, "offset":I
    const-string/jumbo v2, "\u0002\u0000\u0002\u0001\u0001\u0002\u0001\u0003\u0001\u0004\u0003\u0001\u0001\u0005\u0001\u0006\u0001\u0007\u0001\u0008\u0001\t\u0001\n\u0001\u000b\u0001\u000c\u0001\r\u0005\u0000\u0001\u000c\u0001\u000e\u0001\u000f\u0001\u0010\u0001\u0011\u0001\u0012\u0001\u0013\u0001\u0014\u0001\u0000\u0001\u0015\u0001\u0000\u0001\u0015\u0004\u0000\u0001\u0016\u0001\u0017\u0002\u0000\u0001\u0018"

    move v3, v1

    move-object v4, v0

    invoke-static {v2, v3, v4}, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzUnpackAction(Ljava/lang/String;I[I)I

    move-result v2

    move v1, v2

    .line 60
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "result":[I
    return-object v0
.end method

.method private static zzUnpackAttribute(Ljava/lang/String;I[I)I
    .locals 11

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "packed":Ljava/lang/String;
    move v1, p1

    .local v1, "offset":I
    move-object v2, p2

    .local v2, "result":[I
    const/4 v8, 0x0

    move v3, v8

    .line 212
    .local v3, "i":I
    move v8, v1

    move v4, v8

    .line 213
    .local v4, "j":I
    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move v5, v8

    .line 214
    .local v5, "l":I
    :goto_0
    move v8, v3

    move v9, v5

    if-ge v8, v9, :cond_1

    .line 215
    move-object v8, v0

    move v9, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v6, v8

    .line 216
    .local v6, "count":I
    move-object v8, v0

    move v9, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v7, v8

    .line 217
    .local v7, "value":I
    :cond_0
    move-object v8, v2

    move v9, v4

    add-int/lit8 v4, v4, 0x1

    move v10, v7

    aput v10, v8, v9

    add-int/lit8 v6, v6, -0x1

    move v8, v6

    if-gtz v8, :cond_0

    .line 218
    goto :goto_0

    .line 219
    .end local v6    # "count":I
    .end local v7    # "value":I
    :cond_1
    move v8, v4

    move v0, v8

    .end local v0    # "packed":Ljava/lang/String;
    return v0
.end method

.method private static zzUnpackAttribute()[I
    .locals 5

    .prologue
    .line 204
    const/16 v2, 0x2d

    new-array v2, v2, [I

    move-object v0, v2

    .line 205
    .local v0, "result":[I
    const/4 v2, 0x0

    move v1, v2

    .line 206
    .local v1, "offset":I
    const-string/jumbo v2, "\u0002\u0000\u0001\t\u0003\u0001\u0001\t\u0003\u0001\u0006\t\u0002\u0001\u0001\t\u0005\u0000\u0008\t\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0004\u0000\u0002\t\u0002\u0000\u0001\t"

    move v3, v1

    move-object v4, v0

    invoke-static {v2, v3, v4}, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzUnpackAttribute(Ljava/lang/String;I[I)I

    move-result v2

    move v1, v2

    .line 207
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "result":[I
    return-object v0
.end method

.method private static zzUnpackCMap(Ljava/lang/String;)[C
    .locals 9

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "packed":Ljava/lang/String;
    const/high16 v6, 0x10000

    new-array v6, v6, [C

    move-object v1, v6

    .line 305
    .local v1, "map":[C
    const/4 v6, 0x0

    move v2, v6

    .line 306
    .local v2, "i":I
    const/4 v6, 0x0

    move v3, v6

    .line 307
    .local v3, "j":I
    :goto_0
    move v6, v2

    const/16 v7, 0x5a

    if-ge v6, v7, :cond_1

    .line 308
    move-object v6, v0

    move v7, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v4, v6

    .line 309
    .local v4, "count":I
    move-object v6, v0

    move v7, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v5, v6

    .line 310
    .local v5, "value":C
    :cond_0
    move-object v6, v1

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    move v8, v5

    aput-char v8, v6, v7

    add-int/lit8 v4, v4, -0x1

    move v6, v4

    if-gtz v6, :cond_0

    .line 311
    goto :goto_0

    .line 312
    .end local v4    # "count":I
    .end local v5    # "value":C
    :cond_1
    move-object v6, v1

    move-object v0, v6

    .end local v0    # "packed":Ljava/lang/String;
    return-object v0
.end method

.method private static zzUnpackRowMap(Ljava/lang/String;I[I)I
    .locals 12

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "packed":Ljava/lang/String;
    move v1, p1

    .local v1, "offset":I
    move-object v2, p2

    .local v2, "result":[I
    const/4 v7, 0x0

    move v3, v7

    .line 98
    .local v3, "i":I
    move v7, v1

    move v4, v7

    .line 99
    .local v4, "j":I
    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v5, v7

    .line 100
    .local v5, "l":I
    :goto_0
    move v7, v3

    move v8, v5

    if-ge v7, v8, :cond_0

    .line 101
    move-object v7, v0

    move v8, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x10

    shl-int/lit8 v7, v7, 0x10

    move v6, v7

    .line 102
    .local v6, "high":I
    move-object v7, v2

    move v8, v4

    add-int/lit8 v4, v4, 0x1

    move v9, v6

    move-object v10, v0

    move v11, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    or-int/2addr v9, v10

    aput v9, v7, v8

    .line 103
    goto :goto_0

    .line 104
    .end local v6    # "high":I
    :cond_0
    move v7, v4

    move v0, v7

    .end local v0    # "packed":Ljava/lang/String;
    return v0
.end method

.method private static zzUnpackRowMap()[I
    .locals 5

    .prologue
    .line 90
    const/16 v2, 0x2d

    new-array v2, v2, [I

    move-object v0, v2

    .line 91
    .local v0, "result":[I
    const/4 v2, 0x0

    move v1, v2

    .line 92
    .local v1, "offset":I
    const-string/jumbo v2, "\u0000\u0000\u0000\u001b\u00006\u0000Q\u0000l\u0000\u0087\u00006\u0000\u00a2\u0000\u00bd\u0000\u00d8\u00006\u00006\u00006\u00006\u00006\u00006\u0000\u00f3\u0000\u010e\u00006\u0000\u0129\u0000\u0144\u0000\u015f\u0000\u017a\u0000\u0195\u00006\u00006\u00006\u00006\u00006\u00006\u00006\u00006\u0000\u01b0\u0000\u01cb\u0000\u01e6\u0000\u01e6\u0000\u0201\u0000\u021c\u0000\u0237\u0000\u0252\u00006\u00006\u0000\u026d\u0000\u0288\u00006"

    move v3, v1

    move-object v4, v0

    invoke-static {v2, v3, v4}, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzUnpackRowMap(Ljava/lang/String;I[I)I

    move-result v2

    move v1, v2

    .line 93
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "result":[I
    return-object v0
.end method


# virtual methods
.method getPosition()I
    .locals 2

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/Yylex;
    move-object v1, v0

    iget v1, v1, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->yychar:I

    move v0, v1

    .end local v0    # "this":Lorg/jose4j/json/internal/json_simple/parser/Yylex;
    return v0
.end method

.method public final yybegin(I)V
    .locals 4

    .prologue
    .line 417
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/Yylex;
    move v1, p1

    .local v1, "newState":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzLexicalState:I

    .line 418
    return-void
.end method

.method public final yycharat(I)C
    .locals 5

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/Yylex;
    move v1, p1

    .local v1, "pos":I
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzBuffer:[C

    move-object v3, v0

    iget v3, v3, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzStartRead:I

    move v4, v1

    add-int/2addr v3, v4

    aget-char v2, v2, v3

    move v0, v2

    .end local v0    # "this":Lorg/jose4j/json/internal/json_simple/parser/Yylex;
    return v0
.end method

.method public final yyclose()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/Yylex;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzAtEOF:Z

    .line 375
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzStartRead:I

    iput v2, v1, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzEndRead:I

    .line 377
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzReader:Ljava/io/Reader;

    if-eqz v1, :cond_0

    .line 378
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzReader:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 379
    :cond_0
    return-void
.end method

.method public final yylength()I
    .locals 3

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/Yylex;
    move-object v1, v0

    iget v1, v1, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzMarkedPos:I

    move-object v2, v0

    iget v2, v2, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzStartRead:I

    sub-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lorg/jose4j/json/internal/json_simple/parser/Yylex;
    return v0
.end method

.method public yylex()Lorg/jose4j/json/internal/json_simple/parser/Yytoken;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jose4j/json/internal/json_simple/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 510
    move-object/from16 v2, p0

    .local v2, "this":Lorg/jose4j/json/internal/json_simple/parser/Yylex;
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzEndRead:I

    move/from16 v16, v0

    move/from16 v7, v16

    .line 511
    .local v7, "zzEndReadL":I
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzBuffer:[C

    move-object/from16 v16, v0

    move-object/from16 v8, v16

    .line 512
    .local v8, "zzBufferL":[C
    sget-object v16, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->ZZ_CMAP:[C

    move-object/from16 v9, v16

    .line 514
    .local v9, "zzCMapL":[C
    sget-object v16, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->ZZ_TRANS:[I

    move-object/from16 v10, v16

    .line 515
    .local v10, "zzTransL":[I
    sget-object v16, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->ZZ_ROWMAP:[I

    move-object/from16 v11, v16

    .line 516
    .local v11, "zzRowMapL":[I
    sget-object v16, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->ZZ_ATTRIBUTE:[I

    move-object/from16 v12, v16

    .line 519
    .local v12, "zzAttrL":[I
    :goto_0
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzMarkedPos:I

    move/from16 v16, v0

    move/from16 v6, v16

    .line 521
    .local v6, "zzMarkedPosL":I
    move-object/from16 v16, v2

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->yychar:I

    move/from16 v17, v0

    move/from16 v18, v6

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzStartRead:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->yychar:I

    .line 523
    const/16 v16, -0x1

    move/from16 v4, v16

    .line 525
    .local v4, "zzAction":I
    move-object/from16 v16, v2

    move-object/from16 v17, v2

    move/from16 v18, v6

    move-object/from16 v24, v17

    move/from16 v25, v18

    move/from16 v17, v25

    move-object/from16 v18, v24

    move/from16 v19, v25

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzStartRead:I

    move-object/from16 v24, v16

    move/from16 v25, v17

    move/from16 v16, v25

    move-object/from16 v17, v24

    move/from16 v18, v25

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzCurrentPos:I

    move/from16 v5, v16

    .line 527
    .local v5, "zzCurrentPosL":I
    move-object/from16 v16, v2

    sget-object v17, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->ZZ_LEXSTATE:[I

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzLexicalState:I

    move/from16 v18, v0

    aget v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzState:I

    .line 533
    :goto_1
    move/from16 v16, v5

    move/from16 v17, v7

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 534
    move-object/from16 v16, v8

    move/from16 v17, v5

    add-int/lit8 v5, v5, 0x1

    aget-char v16, v16, v17

    move/from16 v3, v16

    .line 557
    .local v3, "zzInput":I
    :goto_2
    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzState:I

    move/from16 v18, v0

    aget v17, v17, v18

    move-object/from16 v18, v9

    move/from16 v19, v3

    aget-char v18, v18, v19

    add-int v17, v17, v18

    aget v16, v16, v17

    move/from16 v13, v16

    .line 558
    .local v13, "zzNext":I
    move/from16 v16, v13

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 572
    .end local v13    # "zzNext":I
    :goto_3
    move-object/from16 v16, v2

    move/from16 v17, v6

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzMarkedPos:I

    .line 574
    move/from16 v16, v4

    if-gez v16, :cond_5

    move/from16 v16, v4

    :goto_4
    packed-switch v16, :pswitch_data_0

    .line 689
    move/from16 v16, v3

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzStartRead:I

    move/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzCurrentPos:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 690
    move-object/from16 v16, v2

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzAtEOF:Z

    .line 691
    const/16 v16, 0x0

    move-object/from16 v2, v16

    .end local v2    # "this":Lorg/jose4j/json/internal/json_simple/parser/Yylex;
    :goto_5
    return-object v2

    .line 535
    .end local v3    # "zzInput":I
    .restart local v2    # "this":Lorg/jose4j/json/internal/json_simple/parser/Yylex;
    :cond_0
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzAtEOF:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 536
    const/16 v16, -0x1

    move/from16 v3, v16

    .line 537
    .restart local v3    # "zzInput":I
    goto :goto_3

    .line 541
    .end local v3    # "zzInput":I
    :cond_1
    move-object/from16 v16, v2

    move/from16 v17, v5

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzCurrentPos:I

    .line 542
    move-object/from16 v16, v2

    move/from16 v17, v6

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzMarkedPos:I

    .line 543
    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v16}, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzRefill()Z

    move-result v16

    move/from16 v13, v16

    .line 545
    .local v13, "eof":Z
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzCurrentPos:I

    move/from16 v16, v0

    move/from16 v5, v16

    .line 546
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzMarkedPos:I

    move/from16 v16, v0

    move/from16 v6, v16

    .line 547
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzBuffer:[C

    move-object/from16 v16, v0

    move-object/from16 v8, v16

    .line 548
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzEndRead:I

    move/from16 v16, v0

    move/from16 v7, v16

    .line 549
    move/from16 v16, v13

    if-eqz v16, :cond_2

    .line 550
    const/16 v16, -0x1

    move/from16 v3, v16

    .line 551
    .restart local v3    # "zzInput":I
    goto/16 :goto_3

    .line 554
    .end local v3    # "zzInput":I
    :cond_2
    move-object/from16 v16, v8

    move/from16 v17, v5

    add-int/lit8 v5, v5, 0x1

    aget-char v16, v16, v17

    move/from16 v3, v16

    .restart local v3    # "zzInput":I
    goto/16 :goto_2

    .line 559
    .local v13, "zzNext":I
    :cond_3
    move-object/from16 v16, v2

    move/from16 v17, v13

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzState:I

    .line 561
    move-object/from16 v16, v12

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzState:I

    move/from16 v17, v0

    aget v16, v16, v17

    move/from16 v14, v16

    .line 562
    .local v14, "zzAttributes":I
    move/from16 v16, v14

    const/16 v17, 0x1

    and-int/lit8 v16, v16, 0x1

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 563
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzState:I

    move/from16 v16, v0

    move/from16 v4, v16

    .line 564
    move/from16 v16, v5

    move/from16 v6, v16

    .line 565
    move/from16 v16, v14

    const/16 v17, 0x8

    and-int/lit8 v16, v16, 0x8

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    goto/16 :goto_3

    .line 568
    :cond_4
    goto/16 :goto_1

    .line 574
    .end local v13    # "zzNext":I
    .end local v14    # "zzAttributes":I
    :cond_5
    sget-object v16, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->ZZ_ACTION:[I

    move/from16 v17, v4

    aget v16, v16, v17

    goto/16 :goto_4

    .line 576
    :pswitch_0
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->sb:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->yytext()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 578
    :pswitch_1
    goto/16 :goto_0

    .line 580
    :pswitch_2
    move-object/from16 v16, v2

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->sb:Ljava/lang/StringBuilder;

    move-object/from16 v16, v2

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->sb:Ljava/lang/StringBuilder;

    move-object/from16 v16, v2

    const/16 v17, 0x2

    invoke-virtual/range {v16 .. v17}, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->yybegin(I)V

    .line 582
    :pswitch_3
    goto/16 :goto_0

    .line 584
    :pswitch_4
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->sb:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 586
    :pswitch_5
    goto/16 :goto_0

    .line 588
    :pswitch_6
    new-instance v16, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    const/16 v18, 0x2

    const/16 v19, 0x0

    invoke-direct/range {v17 .. v19}, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    move-object/from16 v2, v16

    goto/16 :goto_5

    .line 590
    :pswitch_7
    goto/16 :goto_0

    .line 592
    :pswitch_8
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->yytext()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v13, v16

    .local v13, "val":Ljava/lang/Boolean;
    new-instance v16, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    const/16 v18, 0x0

    move-object/from16 v19, v13

    invoke-direct/range {v17 .. v19}, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    move-object/from16 v2, v16

    goto/16 :goto_5

    .line 594
    .end local v13    # "val":Ljava/lang/Boolean;
    :pswitch_9
    goto/16 :goto_0

    .line 596
    :pswitch_a
    new-instance v16, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v17 .. v19}, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    move-object/from16 v2, v16

    goto/16 :goto_5

    .line 598
    :pswitch_b
    goto/16 :goto_0

    .line 600
    :pswitch_c
    move-object/from16 v16, v2

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->yybegin(I)V

    new-instance v16, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    const/16 v18, 0x0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->sb:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    move-object/from16 v2, v16

    goto/16 :goto_5

    .line 602
    :pswitch_d
    goto/16 :goto_0

    .line 604
    :pswitch_e
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->sb:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    const/16 v17, 0x5c

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 606
    :pswitch_f
    goto/16 :goto_0

    .line 608
    :pswitch_10
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->yytext()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v16

    move-object/from16 v13, v16

    .local v13, "val":Ljava/lang/Double;
    new-instance v16, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    const/16 v18, 0x0

    move-object/from16 v19, v13

    invoke-direct/range {v17 .. v19}, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    move-object/from16 v2, v16

    goto/16 :goto_5

    .line 610
    .end local v13    # "val":Ljava/lang/Double;
    :pswitch_11
    goto/16 :goto_0

    .line 612
    :pswitch_12
    new-instance v16, Lorg/jose4j/json/internal/json_simple/parser/ParseException;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->yychar:I

    move/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Ljava/lang/Character;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move-object/from16 v22, v2

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->yycharat(I)C

    move-result v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/Character;-><init>(C)V

    invoke-direct/range {v17 .. v20}, Lorg/jose4j/json/internal/json_simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v16

    .line 614
    :pswitch_13
    goto/16 :goto_0

    .line 616
    :pswitch_14
    new-instance v16, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    const/16 v18, 0x4

    const/16 v19, 0x0

    invoke-direct/range {v17 .. v19}, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    move-object/from16 v2, v16

    goto/16 :goto_5

    .line 618
    :pswitch_15
    goto/16 :goto_0

    .line 620
    :pswitch_16
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->sb:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    const/16 v17, 0xd

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 622
    :pswitch_17
    goto/16 :goto_0

    .line 624
    :pswitch_18
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->sb:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    const/16 v17, 0x2f

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 626
    :pswitch_19
    goto/16 :goto_0

    .line 628
    :pswitch_1a
    new-instance v16, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    const/16 v18, 0x6

    const/16 v19, 0x0

    invoke-direct/range {v17 .. v19}, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    move-object/from16 v2, v16

    goto/16 :goto_5

    .line 630
    :pswitch_1b
    goto/16 :goto_0

    .line 632
    :pswitch_1c
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->sb:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    const/16 v17, 0x22

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 634
    :pswitch_1d
    goto/16 :goto_0

    .line 636
    :pswitch_1e
    new-instance v16, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-direct/range {v17 .. v19}, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    move-object/from16 v2, v16

    goto/16 :goto_5

    .line 638
    :pswitch_1f
    goto/16 :goto_0

    .line 640
    :pswitch_20
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->sb:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    const/16 v17, 0xc

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 642
    :pswitch_21
    goto/16 :goto_0

    .line 645
    :pswitch_22
    move-object/from16 v16, v2

    :try_start_0
    invoke-virtual/range {v16 .. v16}, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->yytext()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x10

    invoke-static/range {v16 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v16

    move/from16 v13, v16

    .line 646
    .local v13, "ch":I
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->sb:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    move/from16 v17, v13

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 650
    .line 652
    .end local v13    # "ch":I
    :pswitch_23
    goto/16 :goto_0

    .line 648
    :catch_0
    move-exception v16

    move-object/from16 v13, v16

    .line 649
    .local v13, "e":Ljava/lang/Exception;
    new-instance v16, Lorg/jose4j/json/internal/json_simple/parser/ParseException;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->yychar:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move-object/from16 v20, v13

    invoke-direct/range {v17 .. v20}, Lorg/jose4j/json/internal/json_simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v16

    .line 654
    .end local v13    # "e":Ljava/lang/Exception;
    :pswitch_24
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->sb:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    const/16 v17, 0x9

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 656
    :pswitch_25
    goto/16 :goto_0

    .line 658
    :pswitch_26
    new-instance v16, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    const/16 v18, 0x3

    const/16 v19, 0x0

    invoke-direct/range {v17 .. v19}, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    move-object/from16 v2, v16

    goto/16 :goto_5

    .line 660
    :pswitch_27
    goto/16 :goto_0

    .line 663
    :pswitch_28
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->yytext()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v13, v16

    .line 666
    .local v13, "yytext":Ljava/lang/String;
    move-object/from16 v16, v13

    :try_start_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v14, v16

    .line 667
    .local v14, "val":Ljava/lang/Long;
    new-instance v16, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    const/16 v18, 0x0

    move-object/from16 v19, v14

    invoke-direct/range {v17 .. v19}, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v2, v16

    goto/16 :goto_5

    .line 669
    .end local v14    # "val":Ljava/lang/Long;
    :catch_1
    move-exception v16

    move-object/from16 v14, v16

    .line 671
    .local v14, "e":Ljava/lang/NumberFormatException;
    new-instance v16, Ljava/math/BigInteger;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    move-object/from16 v18, v13

    invoke-direct/range {v17 .. v18}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object/from16 v15, v16

    .line 672
    .local v15, "val":Ljava/math/BigInteger;
    new-instance v16, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    const/16 v18, 0x0

    move-object/from16 v19, v15

    invoke-direct/range {v17 .. v19}, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    move-object/from16 v2, v16

    goto/16 :goto_5

    .line 675
    .end local v13    # "yytext":Ljava/lang/String;
    .end local v14    # "e":Ljava/lang/NumberFormatException;
    .end local v15    # "val":Ljava/math/BigInteger;
    :pswitch_29
    goto/16 :goto_0

    .line 677
    :pswitch_2a
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->sb:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    const/16 v17, 0xa

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 679
    :pswitch_2b
    goto/16 :goto_0

    .line 681
    :pswitch_2c
    new-instance v16, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    const/16 v18, 0x5

    const/16 v19, 0x0

    invoke-direct/range {v17 .. v19}, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    move-object/from16 v2, v16

    goto/16 :goto_5

    .line 683
    :pswitch_2d
    goto/16 :goto_0

    .line 687
    :pswitch_2e
    goto/16 :goto_0

    .line 694
    :cond_6
    move-object/from16 v16, v2

    const/16 v17, 0x1

    invoke-direct/range {v16 .. v17}, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzScanError(I)V

    goto/16 :goto_0

    .line 574
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_28
        :pswitch_2e
        :pswitch_2
        :pswitch_1e
        :pswitch_6
        :pswitch_26
        :pswitch_14
        :pswitch_2c
        :pswitch_1a
        :pswitch_0
        :pswitch_e
        :pswitch_c
        :pswitch_1c
        :pswitch_18
        :pswitch_4
        :pswitch_20
        :pswitch_2a
        :pswitch_16
        :pswitch_24
        :pswitch_10
        :pswitch_a
        :pswitch_8
        :pswitch_22
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_f
        :pswitch_11
        :pswitch_13
        :pswitch_15
        :pswitch_17
        :pswitch_19
        :pswitch_1b
        :pswitch_1d
        :pswitch_1f
        :pswitch_21
        :pswitch_23
        :pswitch_25
        :pswitch_27
        :pswitch_29
        :pswitch_2b
        :pswitch_2d
        :pswitch_2e
    .end packed-switch
.end method

.method public yypushback(I)V
    .locals 6

    .prologue
    .line 489
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/Yylex;
    move v1, p1

    .local v1, "number":I
    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->yylength()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 490
    move-object v2, v0

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzScanError(I)V

    .line 492
    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzMarkedPos:I

    move v4, v1

    sub-int/2addr v3, v4

    iput v3, v2, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzMarkedPos:I

    .line 493
    return-void
.end method

.method public final yyreset(Ljava/io/Reader;)V
    .locals 9

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/Yylex;
    move-object v1, p1

    .local v1, "reader":Ljava/io/Reader;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzReader:Ljava/io/Reader;

    .line 394
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzAtBOL:Z

    .line 395
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzAtEOF:Z

    .line 396
    move-object v2, v0

    move-object v3, v0

    const/4 v4, 0x0

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    iput v5, v4, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzStartRead:I

    iput v3, v2, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzEndRead:I

    .line 397
    move-object v2, v0

    move-object v3, v0

    const/4 v4, 0x0

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    iput v5, v4, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzMarkedPos:I

    iput v3, v2, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzCurrentPos:I

    .line 398
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    const/4 v5, 0x0

    move-object v7, v4

    move v8, v5

    move v4, v8

    move-object v5, v7

    move v6, v8

    iput v6, v5, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->yycolumn:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    iput v5, v4, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->yychar:I

    iput v3, v2, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->yyline:I

    .line 399
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzLexicalState:I

    .line 400
    return-void
.end method

.method public final yystate()I
    .locals 2

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/Yylex;
    move-object v1, v0

    iget v1, v1, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzLexicalState:I

    move v0, v1

    .end local v0    # "this":Lorg/jose4j/json/internal/json_simple/parser/Yylex;
    return v0
.end method

.method public final yytext()Ljava/lang/String;
    .locals 8

    .prologue
    .line 425
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/Yylex;
    new-instance v1, Ljava/lang/String;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzBuffer:[C

    move-object v4, v0

    iget v4, v4, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzStartRead:I

    move-object v5, v0

    iget v5, v5, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzMarkedPos:I

    move-object v6, v0

    iget v6, v6, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->zzStartRead:I

    sub-int/2addr v5, v6

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/json/internal/json_simple/parser/Yylex;
    return-object v0
.end method
