.class public Lgnu/kawa/functions/DisplayFormat;
.super Lgnu/lists/AbstractFormat;
.source "DisplayFormat.java"


# static fields
.field public static final outBase:Lgnu/mapping/ThreadLocation;

.field public static final outRadix:Lgnu/mapping/ThreadLocation;

.field static r5rsIdentifierMinusInteriorColons:Ljava/util/regex/Pattern;


# instance fields
.field language:C

.field readable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 27
    new-instance v0, Lgnu/mapping/ThreadLocation;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "out-base"

    invoke-direct {v1, v2}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/functions/DisplayFormat;->outBase:Lgnu/mapping/ThreadLocation;

    .line 29
    sget-object v0, Lgnu/kawa/functions/DisplayFormat;->outBase:Lgnu/mapping/ThreadLocation;

    invoke-static {}, Lgnu/math/IntNum;->ten()Lgnu/math/IntNum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/ThreadLocation;->setGlobal(Ljava/lang/Object;)V

    .line 32
    new-instance v0, Lgnu/mapping/ThreadLocation;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "out-radix"

    invoke-direct {v1, v2}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/functions/DisplayFormat;->outRadix:Lgnu/mapping/ThreadLocation;

    .line 378
    const-string/jumbo v0, "(([a-zA-Z]|[!$%&*/:<=>?^_~])([a-zA-Z]|[!$%&*/<=>?^_~]|[0-9]|([-+.@]))*[:]?)|([-+]|[.][.][.])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/DisplayFormat;->r5rsIdentifierMinusInteriorColons:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(ZC)V
    .locals 5

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/DisplayFormat;
    move v1, p1

    .local v1, "readable":Z
    move v2, p2

    .local v2, "language":C
    move-object v3, v0

    invoke-direct {v3}, Lgnu/lists/AbstractFormat;-><init>()V

    .line 43
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lgnu/kawa/functions/DisplayFormat;->readable:Z

    .line 44
    move-object v3, v0

    move v4, v2

    iput-char v4, v3, Lgnu/kawa/functions/DisplayFormat;->language:C

    .line 45
    return-void
.end method

.method public static getCommonLispFormat(Z)Lgnu/kawa/functions/DisplayFormat;
    .locals 6

    .prologue
    .line 54
    move v0, p0

    .local v0, "readable":Z
    new-instance v1, Lgnu/kawa/functions/DisplayFormat;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move v3, v0

    const/16 v4, 0x43

    invoke-direct {v2, v3, v4}, Lgnu/kawa/functions/DisplayFormat;-><init>(ZC)V

    move-object v0, v1

    .end local v0    # "readable":Z
    return-object v0
.end method

.method public static getEmacsLispFormat(Z)Lgnu/kawa/functions/DisplayFormat;
    .locals 6

    .prologue
    .line 49
    move v0, p0

    .local v0, "readable":Z
    new-instance v1, Lgnu/kawa/functions/DisplayFormat;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move v3, v0

    const/16 v4, 0x45

    invoke-direct {v2, v3, v4}, Lgnu/kawa/functions/DisplayFormat;-><init>(ZC)V

    move-object v0, v1

    .end local v0    # "readable":Z
    return-object v0
.end method

.method public static getSchemeFormat(Z)Lgnu/kawa/functions/DisplayFormat;
    .locals 6

    .prologue
    .line 59
    move v0, p0

    .local v0, "readable":Z
    new-instance v1, Lgnu/kawa/functions/DisplayFormat;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move v3, v0

    const/16 v4, 0x53

    invoke-direct {v2, v3, v4}, Lgnu/kawa/functions/DisplayFormat;-><init>(ZC)V

    move-object v0, v1

    .end local v0    # "readable":Z
    return-object v0
.end method


# virtual methods
.method public getReadableOutput()Z
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/DisplayFormat;
    move-object v1, v0

    iget-boolean v1, v1, Lgnu/kawa/functions/DisplayFormat;->readable:Z

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/functions/DisplayFormat;
    return v0
.end method

.method write(Lgnu/lists/Array;IILgnu/lists/Consumer;)I
    .locals 17

    .prologue
    .line 337
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/functions/DisplayFormat;
    move-object/from16 v1, p1

    .local v1, "array":Lgnu/lists/Array;
    move/from16 v2, p2

    .local v2, "index":I
    move/from16 v3, p3

    .local v3, "level":I
    move-object/from16 v4, p4

    .local v4, "out":Lgnu/lists/Consumer;
    move-object v11, v1

    invoke-interface {v11}, Lgnu/lists/Array;->rank()I

    move-result v11

    move v5, v11

    .line 338
    .local v5, "rank":I
    const/4 v11, 0x0

    move v6, v11

    .line 339
    .local v6, "count":I
    move v11, v3

    if-lez v11, :cond_1

    const-string/jumbo v11, "("

    :goto_0
    move-object v7, v11

    .line 342
    .local v7, "start":Ljava/lang/String;
    move-object v11, v4

    instance-of v11, v11, Lgnu/mapping/OutPort;

    if-eqz v11, :cond_3

    .line 343
    move-object v11, v4

    check-cast v11, Lgnu/mapping/OutPort;

    move-object v12, v7

    const/4 v13, 0x0

    const-string/jumbo v14, ")"

    invoke-virtual {v11, v12, v13, v14}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 346
    :goto_1
    move v11, v5

    if-lez v11, :cond_5

    .line 348
    move-object v11, v1

    move v12, v3

    invoke-interface {v11, v12}, Lgnu/lists/Array;->getSize(I)I

    move-result v11

    move v8, v11

    .line 349
    .local v8, "size":I
    add-int/lit8 v3, v3, 0x1

    .line 350
    const/4 v11, 0x0

    move v9, v11

    .local v9, "i":I
    :goto_2
    move v11, v9

    move v12, v8

    if-ge v11, v12, :cond_5

    .line 352
    move v11, v9

    if-lez v11, :cond_0

    .line 354
    move-object v11, v0

    const-string/jumbo v12, " "

    move-object v13, v4

    invoke-virtual {v11, v12, v13}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 355
    move-object v11, v4

    instance-of v11, v11, Lgnu/mapping/OutPort;

    if-eqz v11, :cond_0

    .line 356
    move-object v11, v4

    check-cast v11, Lgnu/mapping/OutPort;

    invoke-virtual {v11}, Lgnu/mapping/OutPort;->writeBreakFill()V

    .line 359
    :cond_0
    move v11, v3

    move v12, v5

    if-ne v11, v12, :cond_4

    .line 361
    move-object v11, v0

    move-object v12, v1

    move v13, v2

    invoke-interface {v12, v13}, Lgnu/lists/Array;->getRowMajor(I)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v4

    invoke-virtual {v11, v12, v13}, Lgnu/kawa/functions/DisplayFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 362
    const/4 v11, 0x1

    move v10, v11

    .line 366
    .local v10, "step":I
    :goto_3
    move v11, v2

    move v12, v10

    add-int/2addr v11, v12

    move v2, v11

    .line 367
    move v11, v6

    move v12, v10

    add-int/2addr v11, v12

    move v6, v11

    .line 350
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 339
    .end local v7    # "start":Ljava/lang/String;
    .end local v8    # "size":I
    .end local v9    # "i":I
    .end local v10    # "step":I
    :cond_1
    move v11, v5

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    const-string/jumbo v11, "#("

    goto :goto_0

    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "a("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 345
    .restart local v7    # "start":Ljava/lang/String;
    :cond_3
    move-object v11, v0

    move-object v12, v7

    move-object v13, v4

    invoke-virtual {v11, v12, v13}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_1

    .line 365
    .restart local v8    # "size":I
    .restart local v9    # "i":I
    :cond_4
    move-object v11, v0

    move-object v12, v1

    move v13, v2

    move v14, v3

    move-object v15, v4

    invoke-virtual {v11, v12, v13, v14, v15}, Lgnu/kawa/functions/DisplayFormat;->write(Lgnu/lists/Array;IILgnu/lists/Consumer;)I

    move-result v11

    move v10, v11

    .restart local v10    # "step":I
    goto :goto_3

    .line 370
    .end local v8    # "size":I
    .end local v9    # "i":I
    .end local v10    # "step":I
    :cond_5
    move-object v11, v4

    instance-of v11, v11, Lgnu/mapping/OutPort;

    if-eqz v11, :cond_6

    .line 371
    move-object v11, v4

    check-cast v11, Lgnu/mapping/OutPort;

    const-string/jumbo v12, ")"

    invoke-virtual {v11, v12}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 374
    :goto_4
    move v11, v6

    move v0, v11

    .end local v0    # "this":Lgnu/kawa/functions/DisplayFormat;
    return v0

    .line 373
    .restart local v0    # "this":Lgnu/kawa/functions/DisplayFormat;
    :cond_6
    move-object v11, v0

    const-string/jumbo v12, ")"

    move-object v13, v4

    invoke-virtual {v11, v12, v13}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_4
.end method

.method public write(ILgnu/lists/Consumer;)V
    .locals 6

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/DisplayFormat;
    move v1, p1

    .local v1, "v":I
    move-object v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/functions/DisplayFormat;->getReadableOutput()Z

    move-result v3

    if-nez v3, :cond_0

    .line 78
    move v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lgnu/text/Char;->print(ILgnu/lists/Consumer;)V

    .line 91
    :goto_0
    return-void

    .line 81
    :cond_0
    move-object v3, v0

    iget-char v3, v3, Lgnu/kawa/functions/DisplayFormat;->language:C

    const/16 v4, 0x45

    if-ne v3, v4, :cond_1

    move v3, v1

    const/16 v4, 0x20

    if-le v3, v4, :cond_1

    .line 84
    move-object v3, v2

    const/16 v4, 0x3f

    invoke-interface {v3, v4}, Lgnu/lists/Consumer;->write(I)V

    .line 85
    move v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lgnu/text/Char;->print(ILgnu/lists/Consumer;)V

    goto :goto_0

    .line 89
    :cond_1
    move-object v3, v0

    move v4, v1

    invoke-static {v4}, Lgnu/text/Char;->toScmReadableString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_0
.end method

.method public writeBoolean(ZLgnu/lists/Consumer;)V
    .locals 6

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/DisplayFormat;
    move v1, p1

    .local v1, "v":Z
    move-object v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    move-object v3, v0

    move-object v4, v0

    iget-char v4, v4, Lgnu/kawa/functions/DisplayFormat;->language:C

    const/16 v5, 0x53

    if-ne v4, v5, :cond_1

    move v4, v1

    if-eqz v4, :cond_0

    const-string/jumbo v4, "#t"

    :goto_0
    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 73
    return-void

    .line 72
    :cond_0
    const-string/jumbo v4, "#f"

    goto :goto_0

    :cond_1
    move v4, v1

    if-eqz v4, :cond_2

    const-string/jumbo v4, "t"

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "nil"

    goto :goto_0
.end method

.method public writeList(Lgnu/lists/LList;Lgnu/mapping/OutPort;)V
    .locals 9

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/DisplayFormat;
    move-object v1, p1

    .local v1, "value":Lgnu/lists/LList;
    move-object v2, p2

    .local v2, "out":Lgnu/mapping/OutPort;
    move-object v5, v1

    move-object v3, v5

    .line 96
    .local v3, "list":Lgnu/lists/LList;
    move-object v5, v2

    const-string/jumbo v6, "("

    const/4 v7, 0x0

    const-string/jumbo v8, ")"

    invoke-virtual {v5, v6, v7, v8}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 97
    .end local v3    # "list":Lgnu/lists/LList;
    :goto_0
    move-object v5, v3

    instance-of v5, v5, Lgnu/lists/Pair;

    if-eqz v5, :cond_1

    .line 99
    move-object v5, v3

    move-object v6, v1

    if-eq v5, v6, :cond_0

    .line 100
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 101
    :cond_0
    move-object v5, v3

    check-cast v5, Lgnu/lists/Pair;

    move-object v4, v5

    .line 102
    .local v4, "pair":Lgnu/lists/Pair;
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lgnu/kawa/functions/DisplayFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 103
    move-object v5, v4

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 104
    .local v3, "list":Ljava/lang/Object;
    goto :goto_0

    .line 105
    .end local v3    # "list":Ljava/lang/Object;
    .end local v4    # "pair":Lgnu/lists/Pair;
    :cond_1
    move-object v5, v3

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v5, v6, :cond_2

    .line 107
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 108
    move-object v5, v2

    const-string/jumbo v6, ". "

    invoke-virtual {v5, v6}, Lgnu/mapping/OutPort;->write(Ljava/lang/String;)V

    .line 109
    move-object v5, v0

    move-object v6, v3

    invoke-static {v6}, Lgnu/lists/LList;->checkNonList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lgnu/kawa/functions/DisplayFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 111
    :cond_2
    move-object v5, v2

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 7

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/DisplayFormat;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    const/4 v4, 0x0

    move v3, v4

    .line 117
    .local v3, "space":Z
    move-object v4, v2

    instance-of v4, v4, Lgnu/mapping/OutPort;

    if-eqz v4, :cond_1

    move-object v4, v1

    instance-of v4, v4, Lgnu/kawa/xml/UntypedAtomic;

    if-nez v4, :cond_1

    move-object v4, v1

    instance-of v4, v4, Lgnu/mapping/Values;

    if-nez v4, :cond_1

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/kawa/functions/DisplayFormat;->getReadableOutput()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v1

    instance-of v4, v4, Lgnu/text/Char;

    if-nez v4, :cond_1

    move-object v4, v1

    instance-of v4, v4, Ljava/lang/CharSequence;

    if-nez v4, :cond_1

    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Character;

    if-nez v4, :cond_1

    .line 129
    :cond_0
    move-object v4, v2

    check-cast v4, Lgnu/mapping/OutPort;

    invoke-virtual {v4}, Lgnu/mapping/OutPort;->writeWordStart()V

    .line 130
    const/4 v4, 0x1

    move v3, v4

    .line 132
    :cond_1
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/functions/DisplayFormat;->writeObjectRaw(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 133
    move v4, v3

    if-eqz v4, :cond_2

    .line 134
    move-object v4, v2

    check-cast v4, Lgnu/mapping/OutPort;

    invoke-virtual {v4}, Lgnu/mapping/OutPort;->writeWordEnd()V

    .line 135
    :cond_2
    return-void
.end method

.method public writeObjectRaw(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 15

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/DisplayFormat;
    move-object/from16 v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    move-object v9, v1

    instance-of v9, v9, Ljava/lang/Boolean;

    if-eqz v9, :cond_0

    .line 140
    move-object v9, v0

    move-object v10, v1

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Lgnu/kawa/functions/DisplayFormat;->writeBoolean(ZLgnu/lists/Consumer;)V

    .line 327
    :goto_0
    return-void

    .line 141
    :cond_0
    move-object v9, v1

    instance-of v9, v9, Lgnu/text/Char;

    if-eqz v9, :cond_1

    .line 142
    move-object v9, v0

    move-object v10, v1

    check-cast v10, Lgnu/text/Char;

    invoke-virtual {v10}, Lgnu/text/Char;->intValue()I

    move-result v10

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Lgnu/kawa/functions/DisplayFormat;->write(ILgnu/lists/Consumer;)V

    goto :goto_0

    .line 143
    :cond_1
    move-object v9, v1

    instance-of v9, v9, Ljava/lang/Character;

    if-eqz v9, :cond_2

    .line 144
    move-object v9, v0

    move-object v10, v1

    check-cast v10, Ljava/lang/Character;

    invoke-virtual {v10}, Ljava/lang/Character;->charValue()C

    move-result v10

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Lgnu/kawa/functions/DisplayFormat;->write(ILgnu/lists/Consumer;)V

    goto :goto_0

    .line 145
    :cond_2
    move-object v9, v1

    instance-of v9, v9, Lgnu/mapping/Symbol;

    if-eqz v9, :cond_4

    .line 147
    move-object v9, v1

    check-cast v9, Lgnu/mapping/Symbol;

    move-object v3, v9

    .line 148
    .local v3, "sym":Lgnu/mapping/Symbol;
    move-object v9, v3

    invoke-virtual {v9}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v9

    sget-object v10, Lgnu/kawa/xml/XmlNamespace;->HTML:Lgnu/kawa/xml/XmlNamespace;

    if-ne v9, v10, :cond_3

    .line 150
    move-object v9, v0

    const-string/jumbo v10, "html:"

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 151
    move-object v9, v0

    move-object v10, v3

    invoke-virtual {v10}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 155
    :goto_1
    goto :goto_0

    .line 154
    :cond_3
    move-object v9, v0

    move-object v10, v3

    move-object v11, v2

    move-object v12, v0

    iget-boolean v12, v12, Lgnu/kawa/functions/DisplayFormat;->readable:Z

    invoke-virtual {v9, v10, v11, v12}, Lgnu/kawa/functions/DisplayFormat;->writeSymbol(Lgnu/mapping/Symbol;Lgnu/lists/Consumer;Z)V

    goto :goto_1

    .line 158
    .end local v3    # "sym":Lgnu/mapping/Symbol;
    :cond_4
    move-object v9, v1

    instance-of v9, v9, Ljava/net/URI;

    if-eqz v9, :cond_5

    move-object v9, v0

    invoke-virtual {v9}, Lgnu/kawa/functions/DisplayFormat;->getReadableOutput()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v2

    instance-of v9, v9, Ljava/io/PrintWriter;

    if-eqz v9, :cond_5

    .line 161
    move-object v9, v0

    const-string/jumbo v10, "#,(URI "

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 162
    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v2

    check-cast v10, Ljava/io/PrintWriter;

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lgnu/lists/Strings;->printQuoted(Ljava/lang/CharSequence;Ljava/io/PrintWriter;I)V

    .line 163
    move-object v9, v2

    const/16 v10, 0x29

    invoke-interface {v9, v10}, Lgnu/lists/Consumer;->write(I)V

    goto :goto_0

    .line 167
    :cond_5
    move-object v9, v1

    instance-of v9, v9, Ljava/lang/CharSequence;

    if-eqz v9, :cond_a

    .line 175
    move-object v9, v1

    check-cast v9, Ljava/lang/CharSequence;

    move-object v3, v9

    .line 179
    .local v3, "str":Ljava/lang/CharSequence;
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/kawa/functions/DisplayFormat;->getReadableOutput()Z

    move-result v9

    if-eqz v9, :cond_7

    move-object v9, v2

    instance-of v9, v9, Ljava/io/PrintWriter;

    if-eqz v9, :cond_7

    .line 180
    move-object v9, v3

    move-object v10, v2

    check-cast v10, Ljava/io/PrintWriter;

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lgnu/lists/Strings;->printQuoted(Ljava/lang/CharSequence;Ljava/io/PrintWriter;I)V

    .line 196
    :cond_6
    :goto_2
    goto/16 :goto_0

    .line 181
    :cond_7
    move-object v9, v1

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_8

    .line 183
    move-object v9, v2

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9, v10}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 185
    :cond_8
    move-object v9, v1

    instance-of v9, v9, Lgnu/lists/CharSeq;

    if-eqz v9, :cond_9

    .line 187
    move-object v9, v1

    check-cast v9, Lgnu/lists/CharSeq;

    move-object v4, v9

    .line 188
    .local v4, "seq":Lgnu/lists/CharSeq;
    move-object v9, v4

    const/4 v10, 0x0

    move-object v11, v4

    invoke-interface {v11}, Lgnu/lists/CharSeq;->size()I

    move-result v11

    move-object v12, v2

    invoke-interface {v9, v10, v11, v12}, Lgnu/lists/CharSeq;->consume(IILgnu/lists/Consumer;)V

    .line 189
    goto :goto_2

    .line 192
    .end local v4    # "seq":Lgnu/lists/CharSeq;
    :cond_9
    move-object v9, v3

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    move v4, v9

    .line 193
    .local v4, "len":I
    const/4 v9, 0x0

    move v5, v9

    .local v5, "i":I
    :goto_3
    move v9, v5

    move v10, v4

    if-ge v9, v10, :cond_6

    .line 194
    move-object v9, v2

    move-object v10, v3

    move v11, v5

    invoke-interface {v10, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-interface {v9, v10}, Lgnu/lists/Consumer;->write(I)V

    .line 193
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 197
    .end local v3    # "str":Ljava/lang/CharSequence;
    .end local v4    # "len":I
    .end local v5    # "i":I
    :cond_a
    move-object v9, v1

    instance-of v9, v9, Lgnu/lists/LList;

    if-eqz v9, :cond_b

    move-object v9, v2

    instance-of v9, v9, Lgnu/mapping/OutPort;

    if-eqz v9, :cond_b

    .line 198
    move-object v9, v0

    move-object v10, v1

    check-cast v10, Lgnu/lists/LList;

    move-object v11, v2

    check-cast v11, Lgnu/mapping/OutPort;

    invoke-virtual {v9, v10, v11}, Lgnu/kawa/functions/DisplayFormat;->writeList(Lgnu/lists/LList;Lgnu/mapping/OutPort;)V

    goto/16 :goto_0

    .line 199
    :cond_b
    move-object v9, v1

    instance-of v9, v9, Lgnu/lists/SimpleVector;

    if-eqz v9, :cond_13

    .line 201
    move-object v9, v1

    check-cast v9, Lgnu/lists/SimpleVector;

    move-object v3, v9

    .line 202
    .local v3, "vec":Lgnu/lists/SimpleVector;
    move-object v9, v3

    invoke-virtual {v9}, Lgnu/lists/SimpleVector;->getTag()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 204
    .local v4, "tag":Ljava/lang/String;
    move-object v9, v0

    iget-char v9, v9, Lgnu/kawa/functions/DisplayFormat;->language:C

    const/16 v10, 0x45

    if-ne v9, v10, :cond_e

    .line 206
    const-string/jumbo v9, "["

    move-object v5, v9

    .line 207
    .local v5, "start":Ljava/lang/String;
    const-string/jumbo v9, "]"

    move-object v6, v9

    .line 214
    .local v6, "end":Ljava/lang/String;
    :goto_4
    move-object v9, v2

    instance-of v9, v9, Lgnu/mapping/OutPort;

    if-eqz v9, :cond_10

    .line 215
    move-object v9, v2

    check-cast v9, Lgnu/mapping/OutPort;

    move-object v10, v5

    const/4 v11, 0x0

    move-object v12, v6

    invoke-virtual {v9, v10, v11, v12}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 218
    :goto_5
    move-object v9, v3

    invoke-virtual {v9}, Lgnu/lists/SimpleVector;->size()I

    move-result v9

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    move v7, v9

    .line 219
    .local v7, "endpos":I
    const/4 v9, 0x0

    move v8, v9

    .local v8, "ipos":I
    :goto_6
    move v9, v8

    move v10, v7

    if-ge v9, v10, :cond_d

    .line 221
    move v9, v8

    if-lez v9, :cond_c

    move-object v9, v2

    instance-of v9, v9, Lgnu/mapping/OutPort;

    if-eqz v9, :cond_c

    .line 222
    move-object v9, v2

    check-cast v9, Lgnu/mapping/OutPort;

    invoke-virtual {v9}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 223
    :cond_c
    move-object v9, v3

    move v10, v8

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Lgnu/lists/SimpleVector;->consumeNext(ILgnu/lists/Consumer;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 224
    .line 226
    :cond_d
    move-object v9, v2

    instance-of v9, v9, Lgnu/mapping/OutPort;

    if-eqz v9, :cond_12

    .line 227
    move-object v9, v2

    check-cast v9, Lgnu/mapping/OutPort;

    move-object v10, v6

    invoke-virtual {v9, v10}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 230
    :goto_7
    goto/16 :goto_0

    .line 211
    .end local v5    # "start":Ljava/lang/String;
    .end local v6    # "end":Ljava/lang/String;
    .end local v7    # "endpos":I
    .end local v8    # "ipos":I
    :cond_e
    move-object v9, v4

    if-nez v9, :cond_f

    const-string/jumbo v9, "#("

    :goto_8
    move-object v5, v9

    .line 212
    .restart local v5    # "start":Ljava/lang/String;
    const-string/jumbo v9, ")"

    move-object v6, v9

    .restart local v6    # "end":Ljava/lang/String;
    goto :goto_4

    .line 211
    .end local v5    # "start":Ljava/lang/String;
    .end local v6    # "end":Ljava/lang/String;
    :cond_f
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_8

    .line 217
    .restart local v5    # "start":Ljava/lang/String;
    .restart local v6    # "end":Ljava/lang/String;
    :cond_10
    move-object v9, v0

    move-object v10, v5

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_5

    .line 219
    .restart local v7    # "endpos":I
    .restart local v8    # "ipos":I
    :cond_11
    add-int/lit8 v8, v8, 0x2

    goto :goto_6

    .line 229
    :cond_12
    move-object v9, v0

    move-object v10, v6

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_7

    .line 231
    .end local v3    # "vec":Lgnu/lists/SimpleVector;
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "start":Ljava/lang/String;
    .end local v6    # "end":Ljava/lang/String;
    .end local v7    # "endpos":I
    .end local v8    # "ipos":I
    :cond_13
    move-object v9, v1

    instance-of v9, v9, Lgnu/lists/Array;

    if-eqz v9, :cond_14

    .line 233
    move-object v9, v0

    move-object v10, v1

    check-cast v10, Lgnu/lists/Array;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v13, v2

    invoke-virtual {v9, v10, v11, v12, v13}, Lgnu/kawa/functions/DisplayFormat;->write(Lgnu/lists/Array;IILgnu/lists/Consumer;)I

    move-result v9

    goto/16 :goto_0

    .line 236
    :cond_14
    move-object v9, v1

    instance-of v9, v9, Lgnu/kawa/xml/KNode;

    if-eqz v9, :cond_17

    .line 238
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/kawa/functions/DisplayFormat;->getReadableOutput()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 239
    move-object v9, v0

    const-string/jumbo v10, "#"

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 240
    :cond_15
    move-object v9, v2

    instance-of v9, v9, Ljava/io/Writer;

    if-eqz v9, :cond_16

    move-object v9, v2

    check-cast v9, Ljava/io/Writer;

    :goto_9
    move-object v3, v9

    .line 242
    .local v3, "wout":Ljava/io/Writer;
    new-instance v9, Lgnu/xml/XMLPrinter;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v3

    invoke-direct {v10, v11}, Lgnu/xml/XMLPrinter;-><init>(Ljava/io/Writer;)V

    move-object v4, v9

    .line 243
    .local v4, "xout":Lgnu/xml/XMLPrinter;
    move-object v9, v4

    move-object v10, v1

    invoke-virtual {v9, v10}, Lgnu/xml/XMLPrinter;->writeObject(Ljava/lang/Object;)V

    .line 244
    move-object v9, v4

    invoke-virtual {v9}, Lgnu/xml/XMLPrinter;->closeThis()V

    .line 245
    goto/16 :goto_0

    .line 240
    .end local v3    # "wout":Ljava/io/Writer;
    .end local v4    # "xout":Lgnu/xml/XMLPrinter;
    :cond_16
    new-instance v9, Lgnu/lists/ConsumerWriter;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v2

    invoke-direct {v10, v11}, Lgnu/lists/ConsumerWriter;-><init>(Lgnu/lists/Consumer;)V

    goto :goto_9

    .line 247
    :cond_17
    move-object v9, v1

    sget-object v10, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v9, v10, :cond_18

    move-object v9, v0

    invoke-virtual {v9}, Lgnu/kawa/functions/DisplayFormat;->getReadableOutput()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 248
    move-object v9, v0

    const-string/jumbo v10, "#!void"

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto/16 :goto_0

    .line 249
    :cond_18
    move-object v9, v1

    instance-of v9, v9, Lgnu/lists/Consumable;

    if-eqz v9, :cond_19

    .line 250
    move-object v9, v1

    check-cast v9, Lgnu/lists/Consumable;

    move-object v10, v2

    invoke-interface {v9, v10}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    goto/16 :goto_0

    .line 251
    :cond_19
    move-object v9, v1

    instance-of v9, v9, Lgnu/text/Printable;

    if-eqz v9, :cond_1a

    .line 252
    move-object v9, v1

    check-cast v9, Lgnu/text/Printable;

    move-object v10, v2

    invoke-interface {v9, v10}, Lgnu/text/Printable;->print(Lgnu/lists/Consumer;)V

    goto/16 :goto_0

    .line 253
    :cond_1a
    move-object v9, v1

    instance-of v9, v9, Lgnu/math/RatNum;

    if-eqz v9, :cond_25

    .line 255
    const/16 v9, 0xa

    move v3, v9

    .line 256
    .local v3, "b":I
    const/4 v9, 0x0

    move v4, v9

    .line 257
    .local v4, "showRadix":Z
    sget-object v9, Lgnu/kawa/functions/DisplayFormat;->outBase:Lgnu/mapping/ThreadLocation;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v5, v9

    .line 258
    .local v5, "base":Ljava/lang/Object;
    sget-object v9, Lgnu/kawa/functions/DisplayFormat;->outRadix:Lgnu/mapping/ThreadLocation;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v6, v9

    .line 259
    .local v6, "printRadix":Ljava/lang/Object;
    move-object v9, v6

    if-eqz v9, :cond_1c

    move-object v9, v6

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v9, v10, :cond_1b

    const-string/jumbo v9, "yes"

    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 262
    :cond_1b
    const/4 v9, 0x1

    move v4, v9

    .line 263
    :cond_1c
    move-object v9, v5

    instance-of v9, v9, Ljava/lang/Number;

    if-eqz v9, :cond_20

    .line 264
    move-object v9, v5

    check-cast v9, Lgnu/math/IntNum;

    invoke-virtual {v9}, Lgnu/math/IntNum;->intValue()I

    move-result v9

    move v3, v9

    .line 267
    :cond_1d
    :goto_a
    move-object v9, v1

    check-cast v9, Lgnu/math/RatNum;

    move v10, v3

    invoke-virtual {v9, v10}, Lgnu/math/RatNum;->toString(I)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 268
    .local v7, "asString":Ljava/lang/String;
    move v9, v4

    if-eqz v9, :cond_1e

    .line 270
    move v9, v3

    const/16 v10, 0x10

    if-ne v9, v10, :cond_21

    .line 271
    move-object v9, v0

    const-string/jumbo v10, "#x"

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 279
    :cond_1e
    :goto_b
    move-object v9, v0

    move-object v10, v7

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 280
    move v9, v4

    if-eqz v9, :cond_1f

    move v9, v3

    const/16 v10, 0xa

    if-ne v9, v10, :cond_1f

    move-object v9, v1

    instance-of v9, v9, Lgnu/math/IntNum;

    if-eqz v9, :cond_1f

    .line 281
    move-object v9, v0

    const-string/jumbo v10, "."

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 282
    :cond_1f
    goto/16 :goto_0

    .line 265
    .end local v7    # "asString":Ljava/lang/String;
    :cond_20
    move-object v9, v5

    if-eqz v9, :cond_1d

    .line 266
    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move v3, v9

    goto :goto_a

    .line 272
    .restart local v7    # "asString":Ljava/lang/String;
    :cond_21
    move v9, v3

    const/16 v10, 0x8

    if-ne v9, v10, :cond_22

    .line 273
    move-object v9, v0

    const-string/jumbo v10, "#o"

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_b

    .line 274
    :cond_22
    move v9, v3

    const/4 v10, 0x2

    if-ne v9, v10, :cond_23

    .line 275
    move-object v9, v0

    const-string/jumbo v10, "#b"

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_b

    .line 276
    :cond_23
    move v9, v3

    const/16 v10, 0xa

    if-ne v9, v10, :cond_24

    move-object v9, v1

    instance-of v9, v9, Lgnu/math/IntNum;

    if-nez v9, :cond_1e

    .line 277
    :cond_24
    move-object v9, v0

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "#"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "r"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_b

    .line 283
    .end local v3    # "b":I
    .end local v4    # "showRadix":Z
    .end local v5    # "base":Ljava/lang/Object;
    .end local v6    # "printRadix":Ljava/lang/Object;
    .end local v7    # "asString":Ljava/lang/String;
    :cond_25
    move-object v9, v1

    instance-of v9, v9, Ljava/lang/Enum;

    if-eqz v9, :cond_26

    move-object v9, v0

    invoke-virtual {v9}, Lgnu/kawa/functions/DisplayFormat;->getReadableOutput()Z

    move-result v9

    if-eqz v9, :cond_26

    .line 285
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 286
    move-object v9, v0

    const-string/jumbo v10, ":"

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 287
    move-object v9, v0

    move-object v10, v1

    check-cast v10, Ljava/lang/Enum;

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto/16 :goto_0

    .line 292
    :cond_26
    move-object v9, v1

    if-nez v9, :cond_27

    .line 293
    const/4 v9, 0x0

    move-object v3, v9

    .line 322
    .local v3, "asString":Ljava/lang/String;
    :goto_c
    move-object v9, v3

    if-nez v9, :cond_2d

    .line 323
    move-object v9, v0

    const-string/jumbo v10, "#!null"

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto/16 :goto_0

    .line 296
    .end local v3    # "asString":Ljava/lang/String;
    :cond_27
    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    move-object v4, v9

    .line 297
    .local v4, "cl":Ljava/lang/Class;
    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 299
    move-object v9, v1

    invoke-static {v9}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v9

    move v5, v9

    .line 300
    .local v5, "len":I
    move-object v9, v2

    instance-of v9, v9, Lgnu/mapping/OutPort;

    if-eqz v9, :cond_29

    .line 301
    move-object v9, v2

    check-cast v9, Lgnu/mapping/OutPort;

    const-string/jumbo v10, "["

    const/4 v11, 0x0

    const-string/jumbo v12, "]"

    invoke-virtual {v9, v10, v11, v12}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 304
    :goto_d
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    :goto_e
    move v9, v6

    move v10, v5

    if-ge v9, v10, :cond_2a

    .line 306
    move v9, v6

    if-lez v9, :cond_28

    .line 308
    move-object v9, v0

    const-string/jumbo v10, " "

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 309
    move-object v9, v2

    instance-of v9, v9, Lgnu/mapping/OutPort;

    if-eqz v9, :cond_28

    .line 310
    move-object v9, v2

    check-cast v9, Lgnu/mapping/OutPort;

    invoke-virtual {v9}, Lgnu/mapping/OutPort;->writeBreakFill()V

    .line 312
    :cond_28
    move-object v9, v0

    move-object v10, v1

    move v11, v6

    invoke-static {v10, v11}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Lgnu/kawa/functions/DisplayFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 304
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 303
    .end local v6    # "i":I
    :cond_29
    move-object v9, v0

    const-string/jumbo v10, "["

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_d

    .line 314
    .restart local v6    # "i":I
    :cond_2a
    move-object v9, v2

    instance-of v9, v9, Lgnu/mapping/OutPort;

    if-eqz v9, :cond_2b

    .line 315
    move-object v9, v2

    check-cast v9, Lgnu/mapping/OutPort;

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 318
    :goto_f
    goto/16 :goto_0

    .line 317
    :cond_2b
    move-object v9, v0

    const-string/jumbo v10, "]"

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_f

    .line 320
    .end local v5    # "len":I
    .end local v6    # "i":I
    :cond_2c
    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .restart local v3    # "asString":Ljava/lang/String;
    goto/16 :goto_c

    .line 325
    .end local v4    # "cl":Ljava/lang/Class;
    :cond_2d
    move-object v9, v0

    move-object v10, v3

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto/16 :goto_0
.end method

.method writeSymbol(Lgnu/mapping/Symbol;Lgnu/lists/Consumer;Z)V
    .locals 14

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/DisplayFormat;
    move-object v1, p1

    .local v1, "sym":Lgnu/mapping/Symbol;
    move-object/from16 v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    move/from16 v3, p3

    .local v3, "readable":Z
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    .line 387
    .local v4, "prefix":Ljava/lang/String;
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v10

    move-object v5, v10

    .line 388
    .local v5, "namespace":Lgnu/mapping/Namespace;
    move-object v10, v5

    if-nez v10, :cond_3

    const/4 v10, 0x0

    :goto_0
    move-object v6, v10

    .line 389
    .local v6, "uri":Ljava/lang/String;
    move-object v10, v6

    if-eqz v10, :cond_4

    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    const/4 v10, 0x1

    :goto_1
    move v7, v10

    .line 390
    .local v7, "hasUri":Z
    move-object v10, v4

    if-eqz v10, :cond_5

    move-object v10, v4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    const/4 v10, 0x1

    :goto_2
    move v8, v10

    .line 391
    .local v8, "hasPrefix":Z
    const/4 v10, 0x0

    move v9, v10

    .line 392
    .local v9, "suffixColon":Z
    move-object v10, v5

    sget-object v11, Lgnu/expr/Keyword;->keywordNamespace:Lgnu/mapping/Namespace;

    if-ne v10, v11, :cond_7

    .line 394
    move-object v10, v0

    iget-char v10, v10, Lgnu/kawa/functions/DisplayFormat;->language:C

    const/16 v11, 0x43

    if-eq v10, v11, :cond_0

    move-object v10, v0

    iget-char v10, v10, Lgnu/kawa/functions/DisplayFormat;->language:C

    const/16 v11, 0x45

    if-ne v10, v11, :cond_6

    .line 395
    :cond_0
    move-object v10, v2

    const/16 v11, 0x3a

    invoke-interface {v10, v11}, Lgnu/lists/Consumer;->write(I)V

    .line 411
    :cond_1
    :goto_3
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v11

    move-object v12, v2

    move v13, v3

    invoke-virtual {v10, v11, v12, v13}, Lgnu/kawa/functions/DisplayFormat;->writeSymbol(Ljava/lang/String;Lgnu/lists/Consumer;Z)V

    .line 412
    move v10, v9

    if-eqz v10, :cond_2

    .line 413
    move-object v10, v2

    const/16 v11, 0x3a

    invoke-interface {v10, v11}, Lgnu/lists/Consumer;->write(I)V

    .line 414
    :cond_2
    return-void

    .line 388
    .end local v6    # "uri":Ljava/lang/String;
    .end local v7    # "hasUri":Z
    .end local v8    # "hasPrefix":Z
    .end local v9    # "suffixColon":Z
    :cond_3
    move-object v10, v5

    invoke-virtual {v10}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 389
    .restart local v6    # "uri":Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 390
    .restart local v7    # "hasUri":Z
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 397
    .restart local v8    # "hasPrefix":Z
    .restart local v9    # "suffixColon":Z
    :cond_6
    const/4 v10, 0x1

    move v9, v10

    goto :goto_3

    .line 399
    :cond_7
    move v10, v8

    if-nez v10, :cond_8

    move v10, v7

    if-eqz v10, :cond_1

    .line 401
    :cond_8
    move v10, v8

    if-eqz v10, :cond_9

    .line 402
    move-object v10, v0

    move-object v11, v4

    move-object v12, v2

    move v13, v3

    invoke-virtual {v10, v11, v12, v13}, Lgnu/kawa/functions/DisplayFormat;->writeSymbol(Ljava/lang/String;Lgnu/lists/Consumer;Z)V

    .line 403
    :cond_9
    move v10, v7

    if-eqz v10, :cond_b

    move v10, v3

    if-nez v10, :cond_a

    move v10, v8

    if-nez v10, :cond_b

    .line 405
    :cond_a
    move-object v10, v2

    const/16 v11, 0x7b

    invoke-interface {v10, v11}, Lgnu/lists/Consumer;->write(I)V

    .line 406
    move-object v10, v2

    move-object v11, v6

    invoke-interface {v10, v11}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 407
    move-object v10, v2

    const/16 v11, 0x7d

    invoke-interface {v10, v11}, Lgnu/lists/Consumer;->write(I)V

    .line 409
    :cond_b
    move-object v10, v2

    const/16 v11, 0x3a

    invoke-interface {v10, v11}, Lgnu/lists/Consumer;->write(I)V

    goto :goto_3
.end method

.method writeSymbol(Ljava/lang/String;Lgnu/lists/Consumer;Z)V
    .locals 11

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/DisplayFormat;
    move-object v1, p1

    .local v1, "sym":Ljava/lang/String;
    move-object v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    move v3, p3

    .local v3, "readable":Z
    move v8, v3

    if-eqz v8, :cond_6

    sget-object v8, Lgnu/kawa/functions/DisplayFormat;->r5rsIdentifierMinusInteriorColons:Ljava/util/regex/Pattern;

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_6

    .line 423
    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move v4, v8

    .line 424
    .local v4, "len":I
    move v8, v4

    if-nez v8, :cond_1

    .line 426
    move-object v8, v0

    const-string/jumbo v9, "||"

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 449
    .line 453
    .end local v4    # "len":I
    :cond_0
    :goto_0
    return-void

    .line 430
    .restart local v4    # "len":I
    :cond_1
    const/4 v8, 0x0

    move v5, v8

    .line 431
    .local v5, "inVerticalBars":Z
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_1
    move v8, v6

    move v9, v4

    if-ge v8, v9, :cond_5

    .line 433
    move-object v8, v1

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v7, v8

    .line 434
    .local v7, "ch":C
    move v8, v7

    const/16 v9, 0x7c

    if-ne v8, v9, :cond_4

    .line 436
    move-object v8, v0

    move v9, v5

    if-eqz v9, :cond_3

    const-string/jumbo v9, "|\\"

    :goto_2
    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 437
    const/4 v8, 0x0

    move v5, v8

    .line 444
    :cond_2
    :goto_3
    move-object v8, v2

    move v9, v7

    invoke-interface {v8, v9}, Lgnu/lists/Consumer;->write(I)V

    .line 431
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 436
    :cond_3
    const-string/jumbo v9, "\\"

    goto :goto_2

    .line 439
    :cond_4
    move v8, v5

    if-nez v8, :cond_2

    .line 441
    move-object v8, v2

    const/16 v9, 0x7c

    invoke-interface {v8, v9}, Lgnu/lists/Consumer;->write(I)V

    .line 442
    const/4 v8, 0x1

    move v5, v8

    goto :goto_3

    .line 446
    .end local v7    # "ch":C
    :cond_5
    move v8, v5

    if-eqz v8, :cond_0

    .line 447
    move-object v8, v2

    const/16 v9, 0x7c

    invoke-interface {v8, v9}, Lgnu/lists/Consumer;->write(I)V

    goto :goto_0

    .line 452
    .end local v4    # "len":I
    .end local v5    # "inVerticalBars":Z
    .end local v6    # "i":I
    :cond_6
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 453
    goto :goto_0
.end method
