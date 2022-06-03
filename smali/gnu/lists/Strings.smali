.class public Lgnu/lists/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Strings;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeCapitalize(Lgnu/lists/CharSeq;)V
    .locals 8

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "str":Lgnu/lists/CharSeq;
    const/16 v5, 0x20

    move v1, v5

    .line 30
    .local v1, "prev":C
    move-object v5, v0

    invoke-interface {v5}, Lgnu/lists/CharSeq;->length()I

    move-result v5

    move v2, v5

    .line 31
    .local v2, "len":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 33
    move-object v5, v0

    move v6, v3

    invoke-interface {v5, v6}, Lgnu/lists/CharSeq;->charAt(I)C

    move-result v5

    move v4, v5

    .line 34
    .local v4, "ch":C
    move v5, v1

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 35
    move v5, v4

    invoke-static {v5}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v5

    move v4, v5

    .line 38
    :goto_1
    move-object v5, v0

    move v6, v3

    move v7, v4

    invoke-interface {v5, v6, v7}, Lgnu/lists/CharSeq;->setCharAt(IC)V

    .line 39
    move v5, v4

    move v1, v5

    .line 31
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 37
    :cond_0
    move v5, v4

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    move v4, v5

    goto :goto_1

    .line 41
    .end local v4    # "ch":C
    :cond_1
    return-void
.end method

.method public static makeLowerCase(Lgnu/lists/CharSeq;)V
    .locals 6

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "str":Lgnu/lists/CharSeq;
    move-object v2, v0

    invoke-interface {v2}, Lgnu/lists/CharSeq;->length()I

    move-result v2

    move v1, v2

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    move v2, v1

    if-ltz v2, :cond_0

    .line 21
    move-object v2, v0

    move v3, v1

    move-object v4, v0

    move v5, v1

    invoke-interface {v4, v5}, Lgnu/lists/CharSeq;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-interface {v2, v3, v4}, Lgnu/lists/CharSeq;->setCharAt(IC)V

    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public static makeUpperCase(Lgnu/lists/CharSeq;)V
    .locals 6

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "str":Lgnu/lists/CharSeq;
    move-object v2, v0

    invoke-interface {v2}, Lgnu/lists/CharSeq;->length()I

    move-result v2

    move v1, v2

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    move v2, v1

    if-ltz v2, :cond_0

    .line 14
    move-object v2, v0

    move v3, v1

    move-object v4, v0

    move v5, v1

    invoke-interface {v4, v5}, Lgnu/lists/CharSeq;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-interface {v2, v3, v4}, Lgnu/lists/CharSeq;->setCharAt(IC)V

    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public static printQuoted(Ljava/lang/CharSequence;Ljava/io/PrintWriter;I)V
    .locals 8

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "str":Ljava/lang/CharSequence;
    move-object v1, p1

    .local v1, "ps":Ljava/io/PrintWriter;
    move v2, p2

    .local v2, "escapes":I
    move-object v6, v0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move v3, v6

    .line 52
    .local v3, "len":I
    move-object v6, v1

    const/16 v7, 0x22

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 53
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_9

    .line 55
    move-object v6, v0

    move v7, v4

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    move v5, v6

    .line 56
    .local v5, "ch":C
    move v6, v5

    const/16 v7, 0x5c

    if-eq v6, v7, :cond_0

    move v6, v5

    const/16 v7, 0x22

    if-ne v6, v7, :cond_2

    .line 57
    :cond_0
    move-object v6, v1

    const/16 v7, 0x5c

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 76
    :cond_1
    move-object v6, v1

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 53
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 58
    :cond_2
    move v6, v2

    if-lez v6, :cond_1

    .line 61
    move v6, v5

    const/16 v7, 0xa

    if-ne v6, v7, :cond_3

    .line 62
    move-object v6, v1

    const-string/jumbo v7, "\\n"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 63
    :cond_3
    move v6, v5

    const/16 v7, 0xd

    if-ne v6, v7, :cond_4

    .line 64
    move-object v6, v1

    const-string/jumbo v7, "\\r"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 65
    :cond_4
    move v6, v5

    const/16 v7, 0x9

    if-ne v6, v7, :cond_5

    .line 66
    move-object v6, v1

    const-string/jumbo v7, "\\t"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 67
    :cond_5
    move v6, v5

    const/4 v7, 0x7

    if-ne v6, v7, :cond_6

    .line 68
    move-object v6, v1

    const-string/jumbo v7, "\\a"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 69
    :cond_6
    move v6, v5

    const/16 v7, 0x8

    if-ne v6, v7, :cond_7

    .line 70
    move-object v6, v1

    const-string/jumbo v7, "\\b"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 71
    :cond_7
    move v6, v5

    const/16 v7, 0xb

    if-ne v6, v7, :cond_8

    .line 72
    move-object v6, v1

    const-string/jumbo v7, "\\v"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 73
    :cond_8
    move v6, v5

    const/16 v7, 0xc

    if-ne v6, v7, :cond_1

    .line 74
    move-object v6, v1

    const-string/jumbo v7, "\\f"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 78
    .end local v5    # "ch":C
    :cond_9
    move-object v6, v1

    const/16 v7, 0x22

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 79
    return-void
.end method
