.class public Lgnu/kawa/functions/UnicodeUtils;
.super Ljava/lang/Object;
.source "UnicodeUtils.java"


# static fields
.field static final Cc:Lgnu/mapping/Symbol;

.field static final Cf:Lgnu/mapping/Symbol;

.field static final Cn:Lgnu/mapping/Symbol;

.field static final Co:Lgnu/mapping/Symbol;

.field static final Cs:Lgnu/mapping/Symbol;

.field static final Ll:Lgnu/mapping/Symbol;

.field static final Lm:Lgnu/mapping/Symbol;

.field static final Lo:Lgnu/mapping/Symbol;

.field static final Lt:Lgnu/mapping/Symbol;

.field static final Lu:Lgnu/mapping/Symbol;

.field static final Mc:Lgnu/mapping/Symbol;

.field static final Me:Lgnu/mapping/Symbol;

.field static final Mn:Lgnu/mapping/Symbol;

.field static final Nd:Lgnu/mapping/Symbol;

.field static final Nl:Lgnu/mapping/Symbol;

.field static final No:Lgnu/mapping/Symbol;

.field static final Pc:Lgnu/mapping/Symbol;

.field static final Pd:Lgnu/mapping/Symbol;

.field static final Pe:Lgnu/mapping/Symbol;

.field static final Pf:Lgnu/mapping/Symbol;

.field static final Pi:Lgnu/mapping/Symbol;

.field static final Po:Lgnu/mapping/Symbol;

.field static final Ps:Lgnu/mapping/Symbol;

.field static final Sc:Lgnu/mapping/Symbol;

.field static final Sk:Lgnu/mapping/Symbol;

.field static final Sm:Lgnu/mapping/Symbol;

.field static final So:Lgnu/mapping/Symbol;

.field static final Zl:Lgnu/mapping/Symbol;

.field static final Zp:Lgnu/mapping/Symbol;

.field static final Zs:Lgnu/mapping/Symbol;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 207
    sget-object v1, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    move-object v0, v1

    .line 208
    .local v0, "empty":Lgnu/mapping/Namespace;
    move-object v1, v0

    const-string/jumbo v2, "Mc"

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Mc:Lgnu/mapping/Symbol;

    .line 209
    move-object v1, v0

    const-string/jumbo v2, "Pc"

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Pc:Lgnu/mapping/Symbol;

    .line 210
    move-object v1, v0

    const-string/jumbo v2, "Cc"

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Cc:Lgnu/mapping/Symbol;

    .line 211
    move-object v1, v0

    const-string/jumbo v2, "Sc"

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Sc:Lgnu/mapping/Symbol;

    .line 212
    move-object v1, v0

    const-string/jumbo v2, "Pd"

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Pd:Lgnu/mapping/Symbol;

    .line 213
    move-object v1, v0

    const-string/jumbo v2, "Nd"

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Nd:Lgnu/mapping/Symbol;

    .line 214
    move-object v1, v0

    const-string/jumbo v2, "Me"

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Me:Lgnu/mapping/Symbol;

    .line 215
    move-object v1, v0

    const-string/jumbo v2, "Pe"

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Pe:Lgnu/mapping/Symbol;

    .line 216
    move-object v1, v0

    const-string/jumbo v2, "Pf"

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Pf:Lgnu/mapping/Symbol;

    .line 217
    move-object v1, v0

    const-string/jumbo v2, "Cf"

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Cf:Lgnu/mapping/Symbol;

    .line 218
    move-object v1, v0

    const-string/jumbo v2, "Pi"

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Pi:Lgnu/mapping/Symbol;

    .line 219
    move-object v1, v0

    const-string/jumbo v2, "Nl"

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Nl:Lgnu/mapping/Symbol;

    .line 220
    move-object v1, v0

    const-string/jumbo v2, "Zl"

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Zl:Lgnu/mapping/Symbol;

    .line 221
    move-object v1, v0

    const-string/jumbo v2, "Ll"

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Ll:Lgnu/mapping/Symbol;

    .line 222
    move-object v1, v0

    const-string/jumbo v2, "Sm"

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Sm:Lgnu/mapping/Symbol;

    .line 223
    move-object v1, v0

    const-string/jumbo v2, "Lm"

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Lm:Lgnu/mapping/Symbol;

    .line 224
    move-object v1, v0

    const-string/jumbo v2, "Sk"

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Sk:Lgnu/mapping/Symbol;

    .line 225
    move-object v1, v0

    const-string/jumbo v2, "Mn"

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Mn:Lgnu/mapping/Symbol;

    .line 226
    move-object v1, v0

    const-string/jumbo v2, "Lo"

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Lo:Lgnu/mapping/Symbol;

    .line 227
    move-object v1, v0

    const-string/jumbo v2, "No"

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->No:Lgnu/mapping/Symbol;

    .line 228
    move-object v1, v0

    const-string/jumbo v2, "Po"

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Po:Lgnu/mapping/Symbol;

    .line 229
    move-object v1, v0

    const-string/jumbo v2, "So"

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->So:Lgnu/mapping/Symbol;

    .line 230
    move-object v1, v0

    const-string/jumbo v2, "Zp"

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Zp:Lgnu/mapping/Symbol;

    .line 231
    move-object v1, v0

    const-string/jumbo v2, "Co"

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Co:Lgnu/mapping/Symbol;

    .line 232
    move-object v1, v0

    const-string/jumbo v2, "Zs"

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Zs:Lgnu/mapping/Symbol;

    .line 233
    move-object v1, v0

    const-string/jumbo v2, "Ps"

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Ps:Lgnu/mapping/Symbol;

    .line 234
    move-object v1, v0

    const-string/jumbo v2, "Cs"

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Cs:Lgnu/mapping/Symbol;

    .line 235
    move-object v1, v0

    const-string/jumbo v2, "Lt"

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Lt:Lgnu/mapping/Symbol;

    .line 236
    move-object v1, v0

    const-string/jumbo v2, "Cn"

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Cn:Lgnu/mapping/Symbol;

    .line 237
    move-object v1, v0

    const-string/jumbo v2, "Lu"

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Lu:Lgnu/mapping/Symbol;

    .line 238
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/UnicodeUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v8

    .line 30
    .local v1, "sbuf":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/text/BreakIterator;->getWordInstance()Ljava/text/BreakIterator;

    move-result-object v8

    move-object v2, v8

    .line 31
    .local v2, "wb":Ljava/text/BreakIterator;
    move-object v8, v2

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 32
    move-object v8, v2

    invoke-virtual {v8}, Ljava/text/BreakIterator;->first()I

    move-result v8

    move v3, v8

    .line 33
    .local v3, "start":I
    move-object v8, v2

    invoke-virtual {v8}, Ljava/text/BreakIterator;->next()I

    move-result v8

    move v4, v8

    .line 34
    .local v4, "end":I
    :goto_0
    move v8, v4

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 37
    const/4 v8, 0x0

    move v5, v8

    .line 38
    .local v5, "isWord":Z
    move v8, v3

    move v6, v8

    .local v6, "p":I
    :goto_1
    move v8, v6

    move v9, v4

    if-ge v8, v9, :cond_0

    .line 40
    move-object v8, v0

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetter(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 42
    const/4 v8, 0x1

    move v5, v8

    .line 46
    :cond_0
    move v8, v5

    if-nez v8, :cond_2

    .line 47
    move-object v8, v1

    move-object v9, v0

    move v10, v3

    move v11, v4

    invoke-virtual {v8, v9, v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 35
    .end local v6    # "p":I
    :goto_2
    move v8, v4

    move v3, v8

    move-object v8, v2

    invoke-virtual {v8}, Ljava/text/BreakIterator;->next()I

    move-result v8

    move v4, v8

    goto :goto_0

    .line 38
    .restart local v6    # "p":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 50
    :cond_2
    move-object v8, v0

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v6, v8

    .line 54
    .local v6, "first":C
    move v8, v6

    invoke-static {v8}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v8

    move v7, v8

    .line 55
    .local v7, "title":C
    move-object v8, v1

    move v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 56
    move-object v8, v1

    move-object v9, v0

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move v11, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    goto :goto_2

    .line 59
    .end local v5    # "isWord":Z
    .end local v6    # "first":C
    .end local v7    # "title":C
    :cond_3
    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "str":Ljava/lang/String;
    return-object v0
.end method

.method public static foldCase(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 12

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "str":Ljava/lang/CharSequence;
    move-object v8, v0

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move v1, v8

    .line 65
    .local v1, "len":I
    move v8, v1

    if-nez v8, :cond_0

    .line 66
    const-string/jumbo v8, ""

    move-object v0, v8

    .line 103
    .end local v0    # "str":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .line 68
    .restart local v0    # "str":Ljava/lang/CharSequence;
    :cond_0
    const/4 v8, 0x0

    move-object v2, v8

    .line 72
    .local v2, "sbuf":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    move v3, v8

    .line 73
    .local v3, "start":I
    const/4 v8, 0x0

    move v4, v8

    .line 75
    .local v4, "i":I
    :goto_1
    move v8, v4

    move v9, v1

    if-ne v8, v9, :cond_4

    const/4 v8, -0x1

    :goto_2
    move v5, v8

    .line 76
    .local v5, "ch":I
    move v8, v5

    const/16 v9, 0x3a3

    if-eq v8, v9, :cond_1

    move v8, v5

    const/16 v9, 0x3c3

    if-eq v8, v9, :cond_1

    move v8, v5

    const/16 v9, 0x3c2

    if-ne v8, v9, :cond_5

    :cond_1
    const/4 v8, 0x1

    :goto_3
    move v6, v8

    .line 77
    .local v6, "sigma":Z
    move v8, v5

    if-ltz v8, :cond_2

    move v8, v5

    const/16 v9, 0x130

    if-eq v8, v9, :cond_2

    move v8, v5

    const/16 v9, 0x131

    if-eq v8, v9, :cond_2

    move v8, v6

    if-eqz v8, :cond_a

    .line 79
    :cond_2
    move-object v8, v2

    if-nez v8, :cond_3

    move v8, v5

    if-ltz v8, :cond_3

    .line 82
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v8

    .line 87
    :cond_3
    move v8, v4

    move v9, v3

    if-le v8, v9, :cond_7

    .line 89
    move-object v8, v0

    move v9, v3

    move v10, v4

    invoke-interface {v8, v9, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 91
    .local v7, "converted":Ljava/lang/String;
    move-object v8, v2

    if-nez v8, :cond_6

    .line 92
    move-object v8, v7

    move-object v0, v8

    goto :goto_0

    .line 75
    .end local v5    # "ch":I
    .end local v6    # "sigma":Z
    .end local v7    # "converted":Ljava/lang/String;
    :cond_4
    move-object v8, v0

    move v9, v4

    invoke-interface {v8, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    goto :goto_2

    .line 76
    .restart local v5    # "ch":I
    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    .line 93
    .restart local v6    # "sigma":Z
    .restart local v7    # "converted":Ljava/lang/String;
    :cond_6
    move-object v8, v2

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 95
    .end local v7    # "converted":Ljava/lang/String;
    :cond_7
    move v8, v5

    if-gez v8, :cond_8

    .line 96
    .line 103
    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 97
    :cond_8
    move v8, v6

    if-eqz v8, :cond_9

    .line 98
    const/16 v8, 0x3c3

    move v5, v8

    .line 99
    :cond_9
    move-object v8, v2

    move v9, v5

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 100
    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v3, v8

    .line 73
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1
.end method

.method public static generalCategory(I)Lgnu/mapping/Symbol;
    .locals 2

    .prologue
    .line 108
    move v0, p0

    .local v0, "ch":I
    move v1, v0

    invoke-static {v1}, Ljava/lang/Character;->getType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 170
    :pswitch_0
    sget-object v1, Lgnu/kawa/functions/UnicodeUtils;->Cn:Lgnu/mapping/Symbol;

    move-object v0, v1

    .end local v0    # "ch":I
    :goto_0
    return-object v0

    .line 111
    .restart local v0    # "ch":I
    :pswitch_1
    sget-object v1, Lgnu/kawa/functions/UnicodeUtils;->Mc:Lgnu/mapping/Symbol;

    move-object v0, v1

    goto :goto_0

    .line 113
    :pswitch_2
    sget-object v1, Lgnu/kawa/functions/UnicodeUtils;->Pc:Lgnu/mapping/Symbol;

    move-object v0, v1

    goto :goto_0

    .line 115
    :pswitch_3
    sget-object v1, Lgnu/kawa/functions/UnicodeUtils;->Cc:Lgnu/mapping/Symbol;

    move-object v0, v1

    goto :goto_0

    .line 117
    :pswitch_4
    sget-object v1, Lgnu/kawa/functions/UnicodeUtils;->Sc:Lgnu/mapping/Symbol;

    move-object v0, v1

    goto :goto_0

    .line 119
    :pswitch_5
    sget-object v1, Lgnu/kawa/functions/UnicodeUtils;->Pd:Lgnu/mapping/Symbol;

    move-object v0, v1

    goto :goto_0

    .line 121
    :pswitch_6
    sget-object v1, Lgnu/kawa/functions/UnicodeUtils;->Nd:Lgnu/mapping/Symbol;

    move-object v0, v1

    goto :goto_0

    .line 123
    :pswitch_7
    sget-object v1, Lgnu/kawa/functions/UnicodeUtils;->Me:Lgnu/mapping/Symbol;

    move-object v0, v1

    goto :goto_0

    .line 125
    :pswitch_8
    sget-object v1, Lgnu/kawa/functions/UnicodeUtils;->Pe:Lgnu/mapping/Symbol;

    move-object v0, v1

    goto :goto_0

    .line 127
    :pswitch_9
    sget-object v1, Lgnu/kawa/functions/UnicodeUtils;->Pf:Lgnu/mapping/Symbol;

    move-object v0, v1

    goto :goto_0

    .line 129
    :pswitch_a
    sget-object v1, Lgnu/kawa/functions/UnicodeUtils;->Cf:Lgnu/mapping/Symbol;

    move-object v0, v1

    goto :goto_0

    .line 131
    :pswitch_b
    sget-object v1, Lgnu/kawa/functions/UnicodeUtils;->Pi:Lgnu/mapping/Symbol;

    move-object v0, v1

    goto :goto_0

    .line 133
    :pswitch_c
    sget-object v1, Lgnu/kawa/functions/UnicodeUtils;->Nl:Lgnu/mapping/Symbol;

    move-object v0, v1

    goto :goto_0

    .line 135
    :pswitch_d
    sget-object v1, Lgnu/kawa/functions/UnicodeUtils;->Zl:Lgnu/mapping/Symbol;

    move-object v0, v1

    goto :goto_0

    .line 137
    :pswitch_e
    sget-object v1, Lgnu/kawa/functions/UnicodeUtils;->Ll:Lgnu/mapping/Symbol;

    move-object v0, v1

    goto :goto_0

    .line 139
    :pswitch_f
    sget-object v1, Lgnu/kawa/functions/UnicodeUtils;->Sm:Lgnu/mapping/Symbol;

    move-object v0, v1

    goto :goto_0

    .line 141
    :pswitch_10
    sget-object v1, Lgnu/kawa/functions/UnicodeUtils;->Lm:Lgnu/mapping/Symbol;

    move-object v0, v1

    goto :goto_0

    .line 143
    :pswitch_11
    sget-object v1, Lgnu/kawa/functions/UnicodeUtils;->Sk:Lgnu/mapping/Symbol;

    move-object v0, v1

    goto :goto_0

    .line 145
    :pswitch_12
    sget-object v1, Lgnu/kawa/functions/UnicodeUtils;->Mn:Lgnu/mapping/Symbol;

    move-object v0, v1

    goto :goto_0

    .line 147
    :pswitch_13
    sget-object v1, Lgnu/kawa/functions/UnicodeUtils;->Lo:Lgnu/mapping/Symbol;

    move-object v0, v1

    goto :goto_0

    .line 149
    :pswitch_14
    sget-object v1, Lgnu/kawa/functions/UnicodeUtils;->No:Lgnu/mapping/Symbol;

    move-object v0, v1

    goto :goto_0

    .line 151
    :pswitch_15
    sget-object v1, Lgnu/kawa/functions/UnicodeUtils;->Po:Lgnu/mapping/Symbol;

    move-object v0, v1

    goto :goto_0

    .line 153
    :pswitch_16
    sget-object v1, Lgnu/kawa/functions/UnicodeUtils;->So:Lgnu/mapping/Symbol;

    move-object v0, v1

    goto :goto_0

    .line 155
    :pswitch_17
    sget-object v1, Lgnu/kawa/functions/UnicodeUtils;->Zp:Lgnu/mapping/Symbol;

    move-object v0, v1

    goto :goto_0

    .line 157
    :pswitch_18
    sget-object v1, Lgnu/kawa/functions/UnicodeUtils;->Co:Lgnu/mapping/Symbol;

    move-object v0, v1

    goto :goto_0

    .line 159
    :pswitch_19
    sget-object v1, Lgnu/kawa/functions/UnicodeUtils;->Zs:Lgnu/mapping/Symbol;

    move-object v0, v1

    goto :goto_0

    .line 161
    :pswitch_1a
    sget-object v1, Lgnu/kawa/functions/UnicodeUtils;->Ps:Lgnu/mapping/Symbol;

    move-object v0, v1

    goto :goto_0

    .line 163
    :pswitch_1b
    sget-object v1, Lgnu/kawa/functions/UnicodeUtils;->Cs:Lgnu/mapping/Symbol;

    move-object v0, v1

    goto :goto_0

    .line 165
    :pswitch_1c
    sget-object v1, Lgnu/kawa/functions/UnicodeUtils;->Lt:Lgnu/mapping/Symbol;

    move-object v0, v1

    goto :goto_0

    .line 167
    :pswitch_1d
    sget-object v1, Lgnu/kawa/functions/UnicodeUtils;->Lu:Lgnu/mapping/Symbol;

    move-object v0, v1

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_e
        :pswitch_1c
        :pswitch_10
        :pswitch_13
        :pswitch_12
        :pswitch_7
        :pswitch_1
        :pswitch_6
        :pswitch_c
        :pswitch_14
        :pswitch_19
        :pswitch_d
        :pswitch_17
        :pswitch_3
        :pswitch_a
        :pswitch_0
        :pswitch_18
        :pswitch_1b
        :pswitch_5
        :pswitch_1a
        :pswitch_8
        :pswitch_2
        :pswitch_15
        :pswitch_f
        :pswitch_4
        :pswitch_11
        :pswitch_16
        :pswitch_b
        :pswitch_9
    .end packed-switch
.end method

.method public static isWhitespace(I)Z
    .locals 3

    .prologue
    .line 11
    move v0, p0

    .local v0, "ch":I
    move v1, v0

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1

    move v1, v0

    const/16 v2, 0xd

    if-gt v1, v2, :cond_1

    .line 12
    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .line 19
    .end local v0    # "ch":I
    :goto_0
    return v0

    .line 13
    .restart local v0    # "ch":I
    :cond_1
    move v1, v0

    const/16 v2, 0x85

    if-ge v1, v2, :cond_2

    .line 14
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 15
    :cond_2
    move v1, v0

    const/16 v2, 0x85

    if-eq v1, v2, :cond_3

    move v1, v0

    const/16 v2, 0xa0

    if-eq v1, v2, :cond_3

    move v1, v0

    const/16 v2, 0x1680

    if-eq v1, v2, :cond_3

    move v1, v0

    const/16 v2, 0x180e

    if-ne v1, v2, :cond_4

    .line 16
    :cond_3
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 17
    :cond_4
    move v1, v0

    const/16 v2, 0x2000

    if-lt v1, v2, :cond_5

    move v1, v0

    const/16 v2, 0x3000

    if-le v1, v2, :cond_6

    .line 18
    :cond_5
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 19
    :cond_6
    move v1, v0

    const/16 v2, 0x200a

    if-le v1, v2, :cond_7

    move v1, v0

    const/16 v2, 0x2028

    if-eq v1, v2, :cond_7

    move v1, v0

    const/16 v2, 0x2029

    if-eq v1, v2, :cond_7

    move v1, v0

    const/16 v2, 0x202f

    if-eq v1, v2, :cond_7

    move v1, v0

    const/16 v2, 0x205f

    if-eq v1, v2, :cond_7

    move v1, v0

    const/16 v2, 0x3000

    if-ne v1, v2, :cond_8

    :cond_7
    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    goto :goto_1
.end method
