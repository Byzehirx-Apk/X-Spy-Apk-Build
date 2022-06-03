.class public Lgnu/text/EnglishIntegerFormat;
.super Ljava/text/NumberFormat;
.source "EnglishIntegerFormat.java"


# static fields
.field private static cardinalEnglish:Lgnu/text/EnglishIntegerFormat;

.field public static final ones:[Ljava/lang/String;

.field public static final onesth:[Ljava/lang/String;

.field private static ordinalEnglish:Lgnu/text/EnglishIntegerFormat;

.field public static final power1000s:[Ljava/lang/String;

.field public static final tens:[Ljava/lang/String;

.field public static final tensth:[Ljava/lang/String;


# instance fields
.field public ordinal:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 34
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "one"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "two"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "three"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, "four"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string/jumbo v3, "five"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    const-string/jumbo v3, "six"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    const-string/jumbo v3, "seven"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    const-string/jumbo v3, "eight"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    const-string/jumbo v3, "nine"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa

    const-string/jumbo v3, "ten"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb

    const-string/jumbo v3, "eleven"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc

    const-string/jumbo v3, "twelve"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd

    const-string/jumbo v3, "thirteen"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe

    const-string/jumbo v3, "fourteen"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf

    const-string/jumbo v3, "fifteen"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x10

    const-string/jumbo v3, "sixteen"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x11

    const-string/jumbo v3, "seventeen"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x12

    const-string/jumbo v3, "eighteen"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x13

    const-string/jumbo v3, "nineteen"

    aput-object v3, v1, v2

    sput-object v0, Lgnu/text/EnglishIntegerFormat;->ones:[Ljava/lang/String;

    .line 42
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "first"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "second"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "third"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, "fourth"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string/jumbo v3, "fifth"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    const-string/jumbo v3, "sixth"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    const-string/jumbo v3, "seventh"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    const-string/jumbo v3, "eighth"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    const-string/jumbo v3, "ninth"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa

    const-string/jumbo v3, "tenth"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb

    const-string/jumbo v3, "eleventh"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc

    const-string/jumbo v3, "twelveth"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd

    const-string/jumbo v3, "thirteenth"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe

    const-string/jumbo v3, "fourteenth"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf

    const-string/jumbo v3, "fifteenth"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x10

    const-string/jumbo v3, "sixteenth"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x11

    const-string/jumbo v3, "seventeenth"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x12

    const-string/jumbo v3, "eighteenth"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x13

    const-string/jumbo v3, "nineteenth"

    aput-object v3, v1, v2

    sput-object v0, Lgnu/text/EnglishIntegerFormat;->onesth:[Ljava/lang/String;

    .line 50
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "twenty"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "thirty"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, "forty"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string/jumbo v3, "fifty"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    const-string/jumbo v3, "sixty"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    const-string/jumbo v3, "seventy"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    const-string/jumbo v3, "eighty"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    const-string/jumbo v3, "ninety"

    aput-object v3, v1, v2

    sput-object v0, Lgnu/text/EnglishIntegerFormat;->tens:[Ljava/lang/String;

    .line 56
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "twentieth"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "thirtieth"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, "fortieth"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string/jumbo v3, "fiftieth"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    const-string/jumbo v3, "sixtieth"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    const-string/jumbo v3, "seventieth"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    const-string/jumbo v3, "eightieth"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    const-string/jumbo v3, "ninetieth"

    aput-object v3, v1, v2

    sput-object v0, Lgnu/text/EnglishIntegerFormat;->tensth:[Ljava/lang/String;

    .line 62
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, " thousand"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, " million"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, " billion"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, " trillion"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string/jumbo v3, " quadrillion"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    const-string/jumbo v3, " quintillion"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    const-string/jumbo v3, " sextillion"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    const-string/jumbo v3, " septillion"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    const-string/jumbo v3, " octillion"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa

    const-string/jumbo v3, " nonillion"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb

    const-string/jumbo v3, " decillion"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc

    const-string/jumbo v3, " undecillion"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd

    const-string/jumbo v3, " duodecillion"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe

    const-string/jumbo v3, " tredecillion"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf

    const-string/jumbo v3, " quattuordecillion"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x10

    const-string/jumbo v3, " quindecillion"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x11

    const-string/jumbo v3, " sexdecillion"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x12

    const-string/jumbo v3, " septendecillion"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x13

    const-string/jumbo v3, " octodecillion"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x14

    const-string/jumbo v3, " novemdecillion"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x15

    const-string/jumbo v3, " vigintillion"

    aput-object v3, v1, v2

    sput-object v0, Lgnu/text/EnglishIntegerFormat;->power1000s:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/text/EnglishIntegerFormat;
    move v1, p1

    .local v1, "ordinal":Z
    move-object v2, v0

    invoke-direct {v2}, Ljava/text/NumberFormat;-><init>()V

    .line 15
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lgnu/text/EnglishIntegerFormat;->ordinal:Z

    .line 16
    return-void
.end method

.method public static getInstance(Z)Lgnu/text/EnglishIntegerFormat;
    .locals 5

    .prologue
    .line 20
    move v0, p0

    .local v0, "ordinal":Z
    move v1, v0

    if-eqz v1, :cond_1

    .line 22
    sget-object v1, Lgnu/text/EnglishIntegerFormat;->ordinalEnglish:Lgnu/text/EnglishIntegerFormat;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lgnu/text/EnglishIntegerFormat;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lgnu/text/EnglishIntegerFormat;-><init>(Z)V

    sput-object v1, Lgnu/text/EnglishIntegerFormat;->ordinalEnglish:Lgnu/text/EnglishIntegerFormat;

    .line 24
    :cond_0
    sget-object v1, Lgnu/text/EnglishIntegerFormat;->ordinalEnglish:Lgnu/text/EnglishIntegerFormat;

    move-object v0, v1

    .line 30
    .end local v0    # "ordinal":Z
    :goto_0
    return-object v0

    .line 28
    .restart local v0    # "ordinal":Z
    :cond_1
    sget-object v1, Lgnu/text/EnglishIntegerFormat;->cardinalEnglish:Lgnu/text/EnglishIntegerFormat;

    if-nez v1, :cond_2

    .line 29
    new-instance v1, Lgnu/text/EnglishIntegerFormat;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lgnu/text/EnglishIntegerFormat;-><init>(Z)V

    sput-object v1, Lgnu/text/EnglishIntegerFormat;->cardinalEnglish:Lgnu/text/EnglishIntegerFormat;

    .line 30
    :cond_2
    sget-object v1, Lgnu/text/EnglishIntegerFormat;->cardinalEnglish:Lgnu/text/EnglishIntegerFormat;

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 13

    .prologue
    .line 179
    move-object v1, p0

    .local v1, "this":Lgnu/text/EnglishIntegerFormat;
    move-wide v2, p1

    .local v2, "num":D
    move-object/from16 v4, p3

    .local v4, "sbuf":Ljava/lang/StringBuffer;
    move-object/from16 v5, p4

    .local v5, "fpos":Ljava/text/FieldPosition;
    move-wide v8, v2

    double-to-long v8, v8

    move-wide v6, v8

    .line 180
    .local v6, "inum":J
    move-wide v8, v6

    long-to-double v8, v8

    move-wide v10, v2

    cmpl-double v8, v8, v10

    if-nez v8, :cond_0

    .line 181
    move-object v8, v1

    move-wide v9, v6

    move-object v11, v4

    move-object v12, v5

    invoke-virtual {v8, v9, v10, v11, v12}, Lgnu/text/EnglishIntegerFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v1, v8

    .line 183
    .end local v1    # "this":Lgnu/text/EnglishIntegerFormat;
    :goto_0
    return-object v1

    .line 182
    .restart local v1    # "this":Lgnu/text/EnglishIntegerFormat;
    :cond_0
    move-object v8, v4

    move-wide v9, v2

    invoke-static {v9, v10}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 183
    move-object v8, v4

    move-object v1, v8

    goto :goto_0
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 13

    .prologue
    .line 159
    move-object v1, p0

    .local v1, "this":Lgnu/text/EnglishIntegerFormat;
    move-wide v2, p1

    .local v2, "num":J
    move-object/from16 v4, p3

    .local v4, "sbuf":Ljava/lang/StringBuffer;
    move-object/from16 v5, p4

    .local v5, "fpos":Ljava/text/FieldPosition;
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 160
    move-object v6, v4

    move-object v7, v1

    iget-boolean v7, v7, Lgnu/text/EnglishIntegerFormat;->ordinal:Z

    if-eqz v7, :cond_1

    const-string/jumbo v7, "zeroth"

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 170
    :goto_1
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 174
    :cond_0
    move-object v6, v4

    move-object v1, v6

    .end local v1    # "this":Lgnu/text/EnglishIntegerFormat;
    return-object v1

    .line 160
    .restart local v1    # "this":Lgnu/text/EnglishIntegerFormat;
    :cond_1
    const-string/jumbo v7, "zero"

    goto :goto_0

    .line 163
    :cond_2
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 165
    move-object v6, v4

    const-string/jumbo v7, "minus "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 166
    move-wide v6, v2

    neg-long v6, v6

    move-wide v2, v6

    .line 168
    :cond_3
    move-object v6, v1

    move-object v7, v4

    move-wide v8, v2

    const/4 v10, 0x0

    move-object v11, v1

    iget-boolean v11, v11, Lgnu/text/EnglishIntegerFormat;->ordinal:Z

    invoke-virtual/range {v6 .. v11}, Lgnu/text/EnglishIntegerFormat;->format(Ljava/lang/StringBuffer;JIZ)V

    goto :goto_1
.end method

.method format(Ljava/lang/StringBuffer;JIZ)V
    .locals 12

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lgnu/text/EnglishIntegerFormat;
    move-object v1, p1

    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-wide v2, p2

    .local v2, "num":J
    move/from16 v4, p4

    .local v4, "exp1000":I
    move/from16 v5, p5

    .local v5, "ordinal":Z
    move-wide v6, v2

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    .line 110
    move-object v6, v0

    move-object v7, v1

    move-wide v8, v2

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    move v10, v4

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lgnu/text/EnglishIntegerFormat;->format(Ljava/lang/StringBuffer;JIZ)V

    .line 111
    move-wide v6, v2

    const-wide/16 v8, 0x3e8

    rem-long/2addr v6, v8

    move-wide v2, v6

    .line 112
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 113
    move-object v6, v1

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 117
    :cond_0
    :goto_0
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 119
    move-object v6, v0

    move-object v7, v1

    move-wide v8, v2

    long-to-int v8, v8

    move v9, v5

    if-eqz v9, :cond_3

    move v9, v4

    if-nez v9, :cond_3

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v6, v7, v8, v9}, Lgnu/text/EnglishIntegerFormat;->format999(Ljava/lang/StringBuffer;IZ)V

    .line 120
    move v6, v4

    sget-object v7, Lgnu/text/EnglishIntegerFormat;->power1000s:[Ljava/lang/String;

    array-length v7, v7

    if-lt v6, v7, :cond_4

    .line 122
    move-object v6, v1

    const-string/jumbo v7, " times ten to the "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 123
    move-object v6, v0

    move-object v7, v1

    move v8, v4

    const/4 v9, 0x3

    mul-int/lit8 v8, v8, 0x3

    int-to-long v8, v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Lgnu/text/EnglishIntegerFormat;->format(Ljava/lang/StringBuffer;JIZ)V

    .line 124
    move-object v6, v1

    const-string/jumbo v7, " power"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 129
    :cond_1
    :goto_2
    return-void

    .line 114
    :cond_2
    move v6, v5

    if-eqz v6, :cond_0

    .line 115
    move-object v6, v1

    const-string/jumbo v7, "th"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    goto :goto_0

    .line 119
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 126
    :cond_4
    move v6, v4

    if-lez v6, :cond_1

    .line 127
    move-object v6, v1

    sget-object v7, Lgnu/text/EnglishIntegerFormat;->power1000s:[Ljava/lang/String;

    move v8, v4

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    goto :goto_2
.end method

.method format999(Ljava/lang/StringBuffer;IZ)V
    .locals 8

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lgnu/text/EnglishIntegerFormat;
    move-object v1, p1

    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move v2, p2

    .local v2, "num":I
    move v3, p3

    .local v3, "ordinal":Z
    move v5, v2

    const/16 v6, 0x64

    if-lt v5, v6, :cond_1

    .line 79
    move v5, v2

    const/16 v6, 0x64

    div-int/lit8 v5, v5, 0x64

    move v4, v5

    .line 80
    .local v4, "num100s":I
    move v5, v2

    const/16 v6, 0x64

    rem-int/lit8 v5, v5, 0x64

    move v2, v5

    .line 81
    move v5, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 83
    move-object v5, v1

    sget-object v6, Lgnu/text/EnglishIntegerFormat;->ones:[Ljava/lang/String;

    move v7, v4

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 84
    move-object v5, v1

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 86
    :cond_0
    move-object v5, v1

    const-string/jumbo v6, "hundred"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 87
    move v5, v2

    if-lez v5, :cond_4

    .line 88
    move-object v5, v1

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 92
    .end local v4    # "num100s":I
    :cond_1
    :goto_0
    move v5, v2

    const/16 v6, 0x14

    if-lt v5, v6, :cond_2

    .line 94
    move v5, v2

    const/16 v6, 0xa

    div-int/lit8 v5, v5, 0xa

    move v4, v5

    .line 95
    .local v4, "num10s":I
    move v5, v2

    const/16 v6, 0xa

    rem-int/lit8 v5, v5, 0xa

    move v2, v5

    .line 96
    move-object v5, v1

    move v6, v3

    if-eqz v6, :cond_5

    move v6, v2

    if-nez v6, :cond_5

    sget-object v6, Lgnu/text/EnglishIntegerFormat;->tensth:[Ljava/lang/String;

    :goto_1
    move v7, v4

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 97
    move v5, v2

    if-lez v5, :cond_2

    .line 98
    move-object v5, v1

    const/16 v6, 0x2d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 100
    .end local v4    # "num10s":I
    :cond_2
    move v5, v2

    if-lez v5, :cond_3

    .line 102
    move-object v5, v1

    move v6, v3

    if-eqz v6, :cond_6

    sget-object v6, Lgnu/text/EnglishIntegerFormat;->onesth:[Ljava/lang/String;

    :goto_2
    move v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 104
    :cond_3
    return-void

    .line 89
    .local v4, "num100s":I
    :cond_4
    move v5, v3

    if-eqz v5, :cond_1

    .line 90
    move-object v5, v1

    const-string/jumbo v6, "th"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    goto :goto_0

    .line 96
    .local v4, "num10s":I
    :cond_5
    sget-object v6, Lgnu/text/EnglishIntegerFormat;->tens:[Ljava/lang/String;

    goto :goto_1

    .line 102
    .end local v4    # "num10s":I
    :cond_6
    sget-object v6, Lgnu/text/EnglishIntegerFormat;->ones:[Ljava/lang/String;

    goto :goto_2
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 7

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lgnu/text/EnglishIntegerFormat;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "status":Ljava/text/ParsePosition;
    new-instance v3, Ljava/lang/Error;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "EnglishIntegerFormat.parseObject - not implemented"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public writeBoolean(ZLgnu/lists/Consumer;)V
    .locals 7

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lgnu/text/EnglishIntegerFormat;
    move v1, p1

    .local v1, "value":Z
    move-object v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    move-object v3, v0

    move v4, v1

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x1

    :goto_0
    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lgnu/text/EnglishIntegerFormat;->writeLong(JLgnu/lists/Consumer;)V

    .line 155
    return-void

    .line 154
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public writeInt(ILgnu/lists/Consumer;)V
    .locals 7

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lgnu/text/EnglishIntegerFormat;
    move v1, p1

    .local v1, "value":I
    move-object v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    move-object v3, v0

    move v4, v1

    int-to-long v4, v4

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lgnu/text/EnglishIntegerFormat;->writeLong(JLgnu/lists/Consumer;)V

    .line 134
    return-void
.end method

.method public writeLong(JLgnu/lists/Consumer;)V
    .locals 11

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lgnu/text/EnglishIntegerFormat;
    move-wide v1, p1

    .local v1, "value":J
    move-object v3, p3

    .local v3, "out":Lgnu/lists/Consumer;
    new-instance v5, Ljava/lang/StringBuffer;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move-object v4, v5

    .line 139
    .local v4, "sbuf":Ljava/lang/StringBuffer;
    move-object v5, v0

    move-wide v6, v1

    move-object v8, v4

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lgnu/text/EnglishIntegerFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 141
    move-object v5, v3

    move-object v6, v4

    const/4 v7, 0x0

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-interface {v5, v6, v7, v8}, Lgnu/lists/Consumer;->write(Ljava/lang/CharSequence;II)V

    .line 145
    return-void
.end method

.method public writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 7

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lgnu/text/EnglishIntegerFormat;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lgnu/text/EnglishIntegerFormat;->writeLong(JLgnu/lists/Consumer;)V

    .line 150
    return-void
.end method
