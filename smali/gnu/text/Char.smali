.class public Lgnu/text/Char;
.super Ljava/lang/Object;
.source "Char.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Externalizable;


# static fields
.field static ascii:[Lgnu/text/Char;

.field static charNameValues:[C

.field static charNames:[Ljava/lang/String;

.field static hashTable:Lgnu/text/CharMap;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 76
    new-instance v1, Lgnu/text/CharMap;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    invoke-direct {v2}, Lgnu/text/CharMap;-><init>()V

    sput-object v1, Lgnu/text/Char;->hashTable:Lgnu/text/CharMap;

    .line 80
    const/16 v1, 0x80

    new-array v1, v1, [Lgnu/text/Char;

    sput-object v1, Lgnu/text/Char;->ascii:[Lgnu/text/Char;

    .line 81
    const/16 v1, 0x80

    move v0, v1

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    if-ltz v1, :cond_0

    .line 82
    sget-object v1, Lgnu/text/Char;->ascii:[Lgnu/text/Char;

    move v2, v0

    new-instance v3, Lgnu/text/Char;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v0

    invoke-direct {v4, v5}, Lgnu/text/Char;-><init>(I)V

    aput-object v3, v1, v2

    goto :goto_0

    .line 103
    :cond_0
    const/16 v1, 0xf

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lgnu/text/Char;->charNameValues:[C

    .line 107
    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/String;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x0

    const-string/jumbo v4, "space"

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x1

    const-string/jumbo v4, "tab"

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x2

    const-string/jumbo v4, "newline"

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x3

    const-string/jumbo v4, "linefeed"

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x4

    const-string/jumbo v4, "return"

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x5

    const-string/jumbo v4, "page"

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x6

    const-string/jumbo v4, "backspace"

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x7

    const-string/jumbo v4, "esc"

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/16 v3, 0x8

    const-string/jumbo v4, "delete"

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/16 v3, 0x9

    const-string/jumbo v4, "del"

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/16 v3, 0xa

    const-string/jumbo v4, "rubout"

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/16 v3, 0xb

    const-string/jumbo v4, "alarm"

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/16 v3, 0xc

    const-string/jumbo v4, "bel"

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/16 v3, 0xd

    const-string/jumbo v4, "vtab"

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/16 v3, 0xe

    const-string/jumbo v4, "nul"

    aput-object v4, v2, v3

    sput-object v1, Lgnu/text/Char;->charNames:[Ljava/lang/String;

    return-void

    .line 103
    nop

    :array_0
    .array-data 2
        0x20s
        0x9s
        0xas
        0xas
        0xds
        0xcs
        0x8s
        0x1bs
        0x7fs
        0x7fs
        0x7fs
        0x7s
        0x7s
        0xbs
        0x0s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/text/Char;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method constructor <init>(I)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lgnu/text/Char;
    move v1, p1

    .local v1, "ch":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 40
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/text/Char;->value:I

    .line 41
    return-void
.end method

.method public static make(I)Lgnu/text/Char;
    .locals 6

    .prologue
    .line 87
    move v0, p0

    .local v0, "ch":I
    move v3, v0

    const/16 v4, 0x80

    if-ge v3, v4, :cond_0

    .line 88
    sget-object v3, Lgnu/text/Char;->ascii:[Lgnu/text/Char;

    move v4, v0

    aget-object v3, v3, v4

    move-object v0, v3

    .line 91
    .end local v0    # "ch":I
    :goto_0
    return-object v0

    .line 89
    .restart local v0    # "ch":I
    :cond_0
    sget-object v3, Lgnu/text/Char;->hashTable:Lgnu/text/CharMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 91
    :try_start_0
    sget-object v3, Lgnu/text/Char;->hashTable:Lgnu/text/CharMap;

    move v4, v0

    invoke-virtual {v3, v4}, Lgnu/text/CharMap;->get(I)Lgnu/text/Char;

    move-result-object v3

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public static nameToChar(Ljava/lang/String;)I
    .locals 7

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    sget-object v5, Lgnu/text/Char;->charNames:[Ljava/lang/String;

    array-length v5, v5

    move v1, v5

    .local v1, "i":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    move v5, v1

    if-ltz v5, :cond_1

    .line 127
    sget-object v5, Lgnu/text/Char;->charNames:[Ljava/lang/String;

    move v6, v1

    aget-object v5, v5, v6

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 128
    sget-object v5, Lgnu/text/Char;->charNameValues:[C

    move v6, v1

    aget-char v5, v5, v6

    move v0, v5

    .line 161
    .end local v0    # "name":Ljava/lang/String;
    .local v1, "len":I
    :goto_0
    return v0

    .line 130
    .restart local v0    # "name":Ljava/lang/String;
    .local v1, "i":I
    :cond_1
    sget-object v5, Lgnu/text/Char;->charNames:[Ljava/lang/String;

    array-length v5, v5

    move v1, v5

    :cond_2
    add-int/lit8 v1, v1, -0x1

    move v5, v1

    if-ltz v5, :cond_3

    .line 132
    sget-object v5, Lgnu/text/Char;->charNames:[Ljava/lang/String;

    move v6, v1

    aget-object v5, v5, v6

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 133
    sget-object v5, Lgnu/text/Char;->charNameValues:[C

    move v6, v1

    aget-char v5, v5, v6

    move v0, v5

    goto :goto_0

    .line 135
    :cond_3
    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v1, v5

    .line 136
    .local v1, "len":I
    move v5, v1

    const/4 v6, 0x1

    if-le v5, v6, :cond_5

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x75

    if-ne v5, v6, :cond_5

    .line 138
    const/4 v5, 0x0

    move v2, v5

    .line 139
    .local v2, "value":I
    const/4 v5, 0x1

    move v3, v5

    .line 141
    .local v3, "pos":I
    :goto_1
    move v5, v3

    move v6, v1

    if-ne v5, v6, :cond_4

    .line 142
    move v5, v2

    move v0, v5

    goto :goto_0

    .line 143
    :cond_4
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    move v4, v5

    .line 144
    .local v4, "dig":I
    move v5, v4

    if-gez v5, :cond_7

    .line 145
    .line 151
    .end local v2    # "value":I
    .end local v3    # "pos":I
    .end local v4    # "dig":I
    :cond_5
    move v5, v1

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_8

    .line 153
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v2, v5

    .line 154
    .local v2, "ch":C
    move v5, v2

    const/16 v6, 0x63

    if-eq v5, v6, :cond_6

    move v5, v2

    const/16 v6, 0x43

    if-ne v5, v6, :cond_8

    .line 156
    :cond_6
    move-object v5, v0

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v2, v5

    .line 157
    move v5, v2

    const/16 v6, 0x1f

    and-int/lit8 v5, v5, 0x1f

    move v0, v5

    goto :goto_0

    .line 146
    .local v2, "value":I
    .restart local v3    # "pos":I
    .restart local v4    # "dig":I
    :cond_7
    move v5, v2

    const/4 v6, 0x4

    shl-int/lit8 v5, v5, 0x4

    move v6, v4

    add-int/2addr v5, v6

    move v2, v5

    .line 139
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 161
    .end local v2    # "value":I
    .end local v3    # "pos":I
    .end local v4    # "dig":I
    :cond_8
    const/4 v5, -0x1

    move v0, v5

    goto/16 :goto_0
.end method

.method public static print(ILgnu/lists/Consumer;)V
    .locals 5

    .prologue
    .line 50
    move v0, p0

    .local v0, "i":I
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move v2, v0

    const/high16 v3, 0x10000

    if-lt v2, v3, :cond_0

    .line 52
    move-object v2, v1

    move v3, v0

    const/high16 v4, 0x10000

    sub-int/2addr v3, v4

    const/16 v4, 0xa

    shr-int/lit8 v3, v3, 0xa

    const v4, 0xd800

    add-int/2addr v3, v4

    int-to-char v3, v3

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(I)V

    .line 53
    move-object v2, v1

    move v3, v0

    const/16 v4, 0x3ff

    and-int/lit16 v3, v3, 0x3ff

    const v4, 0xdc00

    add-int/2addr v3, v4

    int-to-char v3, v3

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(I)V

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    move-object v2, v1

    move v3, v0

    int-to-char v3, v3

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(I)V

    goto :goto_0
.end method

.method public static toScmReadableString(I)Ljava/lang/String;
    .locals 7

    .prologue
    .line 203
    move v0, p0

    .local v0, "ch":I
    new-instance v3, Ljava/lang/StringBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v1, v3

    .line 204
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v3, v1

    const-string/jumbo v4, "#\\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 205
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    sget-object v4, Lgnu/text/Char;->charNameValues:[C

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 207
    move v3, v0

    int-to-char v3, v3

    sget-object v4, Lgnu/text/Char;->charNameValues:[C

    move v5, v2

    aget-char v4, v4, v5

    if-ne v3, v4, :cond_0

    .line 209
    move-object v3, v1

    sget-object v4, Lgnu/text/Char;->charNames:[Ljava/lang/String;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 210
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 220
    .end local v0    # "ch":I
    :goto_1
    return-object v0

    .line 205
    .restart local v0    # "ch":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    :cond_1
    move v3, v0

    const/16 v4, 0x20

    if-lt v3, v4, :cond_2

    move v3, v0

    const/16 v4, 0x7f

    if-le v3, v4, :cond_3

    .line 215
    :cond_2
    move-object v3, v1

    const/16 v4, 0x78

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 216
    move-object v3, v1

    move v4, v0

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 220
    :goto_2
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_1

    .line 219
    :cond_3
    move-object v3, v1

    move v4, v0

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    goto :goto_2
.end method


# virtual methods
.method public final charValue()C
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lgnu/text/Char;
    move-object v1, v0

    iget v1, v1, Lgnu/text/Char;->value:I

    int-to-char v1, v1

    move v0, v1

    .end local v0    # "this":Lgnu/text/Char;
    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Lgnu/text/Char;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    iget v2, v2, Lgnu/text/Char;->value:I

    move-object v3, v1

    check-cast v3, Lgnu/text/Char;

    iget v3, v3, Lgnu/text/Char;->value:I

    sub-int/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lgnu/text/Char;
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lgnu/text/Char;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Lgnu/text/Char;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lgnu/text/Char;

    invoke-virtual {v2}, Lgnu/text/Char;->intValue()I

    move-result v2

    move-object v3, v0

    iget v3, v3, Lgnu/text/Char;->value:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/text/Char;
    return v0

    .restart local v0    # "this":Lgnu/text/Char;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lgnu/text/Char;
    move-object v1, v0

    iget v1, v1, Lgnu/text/Char;->value:I

    move v0, v1

    .end local v0    # "this":Lgnu/text/Char;
    return v0
.end method

.method public final intValue()I
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lgnu/text/Char;
    move-object v1, v0

    iget v1, v1, Lgnu/text/Char;->value:I

    move v0, v1

    .end local v0    # "this":Lgnu/text/Char;
    return v0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lgnu/text/Char;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v2, v0

    iget v2, v2, Lgnu/text/Char;->value:I

    move-object v3, v1

    invoke-static {v2, v3}, Lgnu/text/Char;->print(ILgnu/lists/Consumer;)V

    .line 46
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Lgnu/text/Char;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljava/io/ObjectInput;->readChar()C

    move-result v4

    iput v4, v3, Lgnu/text/Char;->value:I

    .line 251
    move-object v3, v0

    iget v3, v3, Lgnu/text/Char;->value:I

    const v4, 0xd800

    if-lt v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Lgnu/text/Char;->value:I

    const v4, 0xdbff

    if-ge v3, v4, :cond_0

    .line 253
    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readChar()C

    move-result v3

    move v2, v3

    .line 254
    .local v2, "next":C
    move v3, v2

    const v4, 0xdc00

    if-lt v3, v4, :cond_0

    move v3, v2

    const v4, 0xdfff

    if-gt v3, v4, :cond_0

    .line 255
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lgnu/text/Char;->value:I

    const v5, 0xd800

    sub-int/2addr v4, v5

    const/16 v5, 0xa

    shl-int/lit8 v4, v4, 0xa

    move v5, v2

    const v6, 0xdc00

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    const/high16 v5, 0x10000

    add-int/2addr v4, v5

    iput v4, v3, Lgnu/text/Char;->value:I

    .line 257
    .end local v2    # "next":C
    :cond_0
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Lgnu/text/Char;
    move-object v1, v0

    iget v1, v1, Lgnu/text/Char;->value:I

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/Char;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lgnu/text/Char;
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v4

    .line 167
    .local v1, "buf":Ljava/lang/StringBuffer;
    move-object v4, v1

    const/16 v5, 0x27

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 168
    move-object v4, v0

    iget v4, v4, Lgnu/text/Char;->value:I

    const/16 v5, 0x20

    if-lt v4, v5, :cond_0

    move-object v4, v0

    iget v4, v4, Lgnu/text/Char;->value:I

    const/16 v5, 0x7f

    if-ge v4, v5, :cond_0

    move-object v4, v0

    iget v4, v4, Lgnu/text/Char;->value:I

    const/16 v5, 0x27

    if-eq v4, v5, :cond_0

    .line 169
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/text/Char;->value:I

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 197
    :goto_0
    move-object v4, v1

    const/16 v5, 0x27

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 198
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/text/Char;
    return-object v0

    .line 172
    .restart local v0    # "this":Lgnu/text/Char;
    :cond_0
    move-object v4, v1

    const/16 v5, 0x5c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 173
    move-object v4, v0

    iget v4, v4, Lgnu/text/Char;->value:I

    const/16 v5, 0x27

    if-ne v4, v5, :cond_1

    .line 174
    move-object v4, v1

    const/16 v5, 0x27

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    goto :goto_0

    .line 175
    :cond_1
    move-object v4, v0

    iget v4, v4, Lgnu/text/Char;->value:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    .line 176
    move-object v4, v1

    const/16 v5, 0x6e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    goto :goto_0

    .line 177
    :cond_2
    move-object v4, v0

    iget v4, v4, Lgnu/text/Char;->value:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_3

    .line 178
    move-object v4, v1

    const/16 v5, 0x72

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    goto :goto_0

    .line 179
    :cond_3
    move-object v4, v0

    iget v4, v4, Lgnu/text/Char;->value:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_4

    .line 180
    move-object v4, v1

    const/16 v5, 0x74

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    goto :goto_0

    .line 181
    :cond_4
    move-object v4, v0

    iget v4, v4, Lgnu/text/Char;->value:I

    const/16 v5, 0x100

    if-ge v4, v5, :cond_6

    .line 183
    move-object v4, v0

    iget v4, v4, Lgnu/text/Char;->value:I

    invoke-static {v4}, Ljava/lang/Integer;->toOctalString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 184
    .local v2, "str":Ljava/lang/String;
    const/4 v4, 0x3

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v4, v5, 0x3

    move v3, v4

    .local v3, "i":I
    :goto_1
    add-int/lit8 v3, v3, -0x1

    move v4, v3

    if-ltz v4, :cond_5

    .line 185
    move-object v4, v1

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    goto :goto_1

    .line 186
    :cond_5
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 187
    goto :goto_0

    .line 190
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_6
    move-object v4, v1

    const/16 v5, 0x75

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 191
    move-object v4, v0

    iget v4, v4, Lgnu/text/Char;->value:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 192
    .restart local v2    # "str":Ljava/lang/String;
    const/4 v4, 0x4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v4, v5, 0x4

    move v3, v4

    .restart local v3    # "i":I
    :goto_2
    add-int/lit8 v3, v3, -0x1

    move v4, v3

    if-ltz v4, :cond_7

    .line 193
    move-object v4, v1

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    goto :goto_2

    .line 194
    :cond_7
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lgnu/text/Char;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v0

    iget v2, v2, Lgnu/text/Char;->value:I

    const v3, 0xd800

    if-le v2, v3, :cond_0

    .line 233
    move-object v2, v0

    iget v2, v2, Lgnu/text/Char;->value:I

    const v3, 0xffff

    if-le v2, v3, :cond_1

    .line 235
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/text/Char;->value:I

    const/high16 v4, 0x10000

    sub-int/2addr v3, v4

    const/16 v4, 0xa

    shr-int/lit8 v3, v3, 0xa

    const v4, 0xd800

    add-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeChar(I)V

    .line 236
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lgnu/text/Char;->value:I

    const/16 v4, 0x3ff

    and-int/lit16 v3, v3, 0x3ff

    const v4, 0xdc00

    add-int/2addr v3, v4

    iput v3, v2, Lgnu/text/Char;->value:I

    .line 244
    :cond_0
    :goto_0
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/text/Char;->value:I

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeChar(I)V

    .line 245
    return-void

    .line 238
    :cond_1
    move-object v2, v0

    iget v2, v2, Lgnu/text/Char;->value:I

    const v3, 0xdbff

    if-gt v2, v3, :cond_0

    .line 240
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/text/Char;->value:I

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeChar(I)V

    .line 241
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lgnu/text/Char;->value:I

    goto :goto_0
.end method
