.class public Lgnu/bytecode/SourceDebugExtAttr;
.super Lgnu/bytecode/Attribute;
.source "SourceDebugExtAttr.java"


# instance fields
.field curFileIndex:I

.field curFileName:Ljava/lang/String;

.field curLineIndex:I

.field data:[B

.field private defaultStratumId:Ljava/lang/String;

.field dlength:I

.field fileCount:I

.field fileIDs:[I

.field fileNames:[Ljava/lang/String;

.field lineCount:I

.field lines:[I

.field maxFileID:I

.field private outputFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;)V
    .locals 4

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SourceDebugExtAttr;
    move-object v1, p1

    .local v1, "cl":Lgnu/bytecode/ClassType;
    move-object v2, v0

    const-string/jumbo v3, "SourceDebugExtension"

    invoke-direct {v2, v3}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 37
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lgnu/bytecode/SourceDebugExtAttr;->curLineIndex:I

    .line 38
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lgnu/bytecode/SourceDebugExtAttr;->curFileIndex:I

    .line 194
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/SourceDebugExtAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 195
    return-void
.end method

.method private fixLine(II)I
    .locals 10

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SourceDebugExtAttr;
    move v1, p1

    .local v1, "sourceLine":I
    move v2, p2

    .local v2, "index":I
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    move v7, v2

    aget v6, v6, v7

    move v3, v6

    .line 45
    .local v3, "sourceMin":I
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    move v7, v2

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    move v4, v6

    .line 46
    .local v4, "repeat":I
    move v6, v1

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 48
    move v6, v2

    if-lez v6, :cond_0

    .line 49
    const/4 v6, -0x1

    move v0, v6

    .line 65
    .end local v0    # "this":Lgnu/bytecode/SourceDebugExtAttr;
    :goto_0
    return v0

    .line 50
    .restart local v0    # "this":Lgnu/bytecode/SourceDebugExtAttr;
    :cond_0
    move v6, v3

    move v7, v4

    add-int/2addr v6, v7

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v5, v6

    .line 51
    .local v5, "sourceMax":I
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    move v7, v2

    move v8, v1

    aput v8, v6, v7

    .line 52
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    move v7, v2

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    move v8, v5

    move v9, v1

    sub-int/2addr v8, v9

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7

    .line 53
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    move v7, v2

    const/4 v8, 0x3

    add-int/lit8 v7, v7, 0x3

    move v8, v1

    aput v8, v6, v7

    .line 54
    move v6, v1

    move v3, v6

    .line 56
    .end local v5    # "sourceMax":I
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    move v7, v2

    const/4 v8, 0x3

    add-int/lit8 v7, v7, 0x3

    aget v6, v6, v7

    move v7, v3

    sub-int/2addr v6, v7

    move v5, v6

    .line 57
    .local v5, "delta":I
    move v6, v1

    move v7, v3

    move v8, v4

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_2

    .line 58
    move v6, v1

    move v7, v5

    add-int/2addr v6, v7

    move v0, v6

    goto :goto_0

    .line 59
    :cond_2
    move v6, v2

    const/4 v7, 0x5

    move-object v8, v0

    iget v8, v8, Lgnu/bytecode/SourceDebugExtAttr;->lineCount:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    mul-int/2addr v7, v8

    if-eq v6, v7, :cond_3

    move v6, v2

    if-nez v6, :cond_4

    move v6, v1

    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    const/16 v8, 0x8

    aget v7, v7, v8

    if-ge v6, v7, :cond_4

    .line 62
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    move v7, v2

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    move v8, v1

    move v9, v3

    sub-int/2addr v8, v9

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7

    .line 63
    move v6, v1

    move v7, v5

    add-int/2addr v6, v7

    move v0, v6

    goto :goto_0

    .line 65
    :cond_4
    const/4 v6, -0x1

    move v0, v6

    goto :goto_0
.end method


# virtual methods
.method addFile(Ljava/lang/String;)V
    .locals 14

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SourceDebugExtAttr;
    move-object v1, p1

    .local v1, "fname":Ljava/lang/String;
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/SourceDebugExtAttr;->curFileName:Ljava/lang/String;

    move-object v8, v1

    if-eq v7, v8, :cond_0

    move-object v7, v1

    if-eqz v7, :cond_1

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lgnu/bytecode/SourceDebugExtAttr;->curFileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 128
    .line 183
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lgnu/bytecode/SourceDebugExtAttr;->curFileName:Ljava/lang/String;

    .line 130
    move-object v7, v1

    invoke-static {v7}, Lgnu/bytecode/SourceFileAttr;->fixSourceFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 132
    move-object v7, v1

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    move v3, v7

    .line 133
    .local v3, "slash":I
    move v7, v3

    if-ltz v7, :cond_2

    .line 135
    move-object v7, v1

    move-object v4, v7

    .line 136
    .local v4, "fpath":Ljava/lang/String;
    move-object v7, v1

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 137
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 142
    .end local v4    # "fpath":Ljava/lang/String;
    .local v2, "fentry":Ljava/lang/String;
    :goto_1
    move-object v7, v0

    iget v7, v7, Lgnu/bytecode/SourceDebugExtAttr;->curFileIndex:I

    if-ltz v7, :cond_3

    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Lgnu/bytecode/SourceDebugExtAttr;->fileNames:[Ljava/lang/String;

    move-object v9, v0

    iget v9, v9, Lgnu/bytecode/SourceDebugExtAttr;->curFileIndex:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 143
    goto :goto_0

    .line 140
    .end local v2    # "fentry":Ljava/lang/String;
    :cond_2
    move-object v7, v1

    move-object v2, v7

    .restart local v2    # "fentry":Ljava/lang/String;
    goto :goto_1

    .line 145
    :cond_3
    move-object v7, v0

    iget v7, v7, Lgnu/bytecode/SourceDebugExtAttr;->fileCount:I

    move v4, v7

    .line 146
    .local v4, "n":I
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_2
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_5

    .line 148
    move v7, v5

    move-object v8, v0

    iget v8, v8, Lgnu/bytecode/SourceDebugExtAttr;->curFileIndex:I

    if-eq v7, v8, :cond_4

    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Lgnu/bytecode/SourceDebugExtAttr;->fileNames:[Ljava/lang/String;

    move v9, v5

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 150
    move-object v7, v0

    move v8, v5

    iput v8, v7, Lgnu/bytecode/SourceDebugExtAttr;->curFileIndex:I

    .line 151
    move-object v7, v0

    const/4 v8, -0x1

    iput v8, v7, Lgnu/bytecode/SourceDebugExtAttr;->curLineIndex:I

    .line 152
    goto :goto_0

    .line 146
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 156
    :cond_5
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/SourceDebugExtAttr;->fileIDs:[I

    if-nez v7, :cond_9

    .line 158
    move-object v7, v0

    const/4 v8, 0x5

    new-array v8, v8, [I

    iput-object v8, v7, Lgnu/bytecode/SourceDebugExtAttr;->fileIDs:[I

    .line 159
    move-object v7, v0

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, v7, Lgnu/bytecode/SourceDebugExtAttr;->fileNames:[Ljava/lang/String;

    .line 172
    .end local v5    # "i":I
    :cond_6
    :goto_3
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lgnu/bytecode/SourceDebugExtAttr;->fileCount:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lgnu/bytecode/SourceDebugExtAttr;->fileCount:I

    .line 173
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lgnu/bytecode/SourceDebugExtAttr;->maxFileID:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object v12, v7

    move v13, v8

    move v7, v13

    move-object v8, v12

    move v9, v13

    iput v9, v8, Lgnu/bytecode/SourceDebugExtAttr;->maxFileID:I

    move v5, v7

    .line 174
    .local v5, "id":I
    move v7, v5

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    move v5, v7

    .line 175
    move v7, v3

    if-ltz v7, :cond_7

    .line 176
    add-int/lit8 v5, v5, 0x1

    .line 177
    :cond_7
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/SourceDebugExtAttr;->fileNames:[Ljava/lang/String;

    move v8, v4

    move-object v9, v2

    aput-object v9, v7, v8

    .line 178
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/SourceDebugExtAttr;->outputFileName:Ljava/lang/String;

    if-nez v7, :cond_8

    .line 179
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lgnu/bytecode/SourceDebugExtAttr;->outputFileName:Ljava/lang/String;

    .line 180
    :cond_8
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/SourceDebugExtAttr;->fileIDs:[I

    move v8, v4

    move v9, v5

    aput v9, v7, v8

    .line 181
    move-object v7, v0

    move v8, v4

    iput v8, v7, Lgnu/bytecode/SourceDebugExtAttr;->curFileIndex:I

    .line 182
    move-object v7, v0

    const/4 v8, -0x1

    iput v8, v7, Lgnu/bytecode/SourceDebugExtAttr;->curLineIndex:I

    .line 183
    goto/16 :goto_0

    .line 161
    .local v5, "i":I
    :cond_9
    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Lgnu/bytecode/SourceDebugExtAttr;->fileIDs:[I

    array-length v8, v8

    if-lt v7, v8, :cond_6

    .line 163
    const/4 v7, 0x2

    move v8, v4

    mul-int/2addr v7, v8

    new-array v7, v7, [I

    move-object v5, v7

    .line 164
    .local v5, "newIDs":[I
    const/4 v7, 0x2

    move v8, v4

    mul-int/2addr v7, v8

    new-array v7, v7, [Ljava/lang/String;

    move-object v6, v7

    .line 165
    .local v6, "newNames":[Ljava/lang/String;
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/SourceDebugExtAttr;->fileIDs:[I

    const/4 v8, 0x0

    move-object v9, v5

    const/4 v10, 0x0

    move v11, v4

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/SourceDebugExtAttr;->fileNames:[Ljava/lang/String;

    const/4 v8, 0x0

    move-object v9, v6

    const/4 v10, 0x0

    move v11, v4

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lgnu/bytecode/SourceDebugExtAttr;->fileIDs:[I

    .line 168
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lgnu/bytecode/SourceDebugExtAttr;->fileNames:[Ljava/lang/String;

    goto :goto_3
.end method

.method public addStratum(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SourceDebugExtAttr;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/SourceDebugExtAttr;->defaultStratumId:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .locals 17

    .prologue
    .line 206
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/bytecode/SourceDebugExtAttr;
    move-object/from16 v1, p1

    .local v1, "cl":Lgnu/bytecode/ClassType;
    move-object v12, v0

    move-object v13, v1

    invoke-super {v12, v13}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 208
    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, v12

    .line 210
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    move-object v12, v2

    const-string/jumbo v13, "SMAP\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 211
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Lgnu/bytecode/SourceDebugExtAttr;->outputFileName:Ljava/lang/String;

    move-object v14, v2

    invoke-virtual {v12, v13, v14}, Lgnu/bytecode/SourceDebugExtAttr;->nonAsteriskString(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    move-object v12, v2

    const/16 v13, 0xa

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 212
    move-object v12, v0

    iget-object v12, v12, Lgnu/bytecode/SourceDebugExtAttr;->defaultStratumId:Ljava/lang/String;

    if-nez v12, :cond_1

    const-string/jumbo v12, "Java"

    :goto_0
    move-object v3, v12

    .line 213
    .local v3, "stratum":Ljava/lang/String;
    move-object v12, v0

    move-object v13, v3

    move-object v14, v2

    invoke-virtual {v12, v13, v14}, Lgnu/bytecode/SourceDebugExtAttr;->nonAsteriskString(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 214
    move-object v12, v2

    const/16 v13, 0xa

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 216
    move-object v12, v2

    const-string/jumbo v13, "*S "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 217
    move-object v12, v2

    move-object v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 218
    move-object v12, v2

    const/16 v13, 0xa

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 220
    move-object v12, v2

    const-string/jumbo v13, "*F\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 221
    const/4 v12, 0x0

    move v4, v12

    .local v4, "i":I
    :goto_1
    move v12, v4

    move-object v13, v0

    iget v13, v13, Lgnu/bytecode/SourceDebugExtAttr;->fileCount:I

    if-ge v12, v13, :cond_3

    .line 223
    move-object v12, v0

    iget-object v12, v12, Lgnu/bytecode/SourceDebugExtAttr;->fileIDs:[I

    move v13, v4

    aget v12, v12, v13

    move v5, v12

    .line 224
    .local v5, "id":I
    move v12, v5

    const/4 v13, 0x1

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    :goto_2
    move v6, v12

    .line 225
    .local v6, "with_path":Z
    move v12, v5

    const/4 v13, 0x1

    shr-int/lit8 v12, v12, 0x1

    move v5, v12

    .line 226
    move v12, v6

    if-eqz v12, :cond_0

    .line 227
    move-object v12, v2

    const-string/jumbo v13, "+ "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 228
    :cond_0
    move-object v12, v2

    move v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v12, v2

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 229
    move-object v12, v2

    move-object v13, v0

    iget-object v13, v13, Lgnu/bytecode/SourceDebugExtAttr;->fileNames:[Ljava/lang/String;

    move v14, v4

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v12, v2

    const/16 v13, 0xa

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 221
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 212
    .end local v3    # "stratum":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "id":I
    .end local v6    # "with_path":Z
    :cond_1
    move-object v12, v0

    iget-object v12, v12, Lgnu/bytecode/SourceDebugExtAttr;->defaultStratumId:Ljava/lang/String;

    goto :goto_0

    .line 224
    .restart local v3    # "stratum":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "id":I
    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    .line 232
    .end local v5    # "id":I
    :cond_3
    move-object v12, v0

    iget v12, v12, Lgnu/bytecode/SourceDebugExtAttr;->lineCount:I

    if-lez v12, :cond_8

    .line 234
    const/4 v12, 0x0

    move v4, v12

    .line 235
    .local v4, "prevFileID":I
    move-object v12, v2

    const-string/jumbo v13, "*L\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 236
    const/4 v12, 0x0

    move v5, v12

    .local v5, "i":I
    const/4 v12, 0x0

    move v6, v12

    .line 239
    .local v6, "i5":I
    :cond_4
    move-object v12, v0

    iget-object v12, v12, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    move v13, v6

    aget v12, v12, v13

    move v7, v12

    .line 240
    .local v7, "inputStartLine":I
    move-object v12, v0

    iget-object v12, v12, Lgnu/bytecode/SourceDebugExtAttr;->fileIDs:[I

    move-object v13, v0

    iget-object v13, v13, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    move v14, v6

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    aget v13, v13, v14

    aget v12, v12, v13

    const/4 v13, 0x1

    shr-int/lit8 v12, v12, 0x1

    move v8, v12

    .line 241
    .local v8, "lineFileID":I
    move-object v12, v0

    iget-object v12, v12, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    move v13, v6

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    aget v12, v12, v13

    move v9, v12

    .line 242
    .local v9, "repeatCount":I
    move-object v12, v0

    iget-object v12, v12, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    move v13, v6

    const/4 v14, 0x3

    add-int/lit8 v13, v13, 0x3

    aget v12, v12, v13

    move v10, v12

    .line 243
    .local v10, "outputStartLine":I
    move-object v12, v0

    iget-object v12, v12, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    move v13, v6

    const/4 v14, 0x4

    add-int/lit8 v13, v13, 0x4

    aget v12, v12, v13

    move v11, v12

    .line 244
    .local v11, "outputLineIncrement":I
    move-object v12, v2

    move v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 245
    move v12, v8

    move v13, v4

    if-eq v12, v13, :cond_5

    .line 247
    move-object v12, v2

    const/16 v13, 0x23

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 248
    move-object v12, v2

    move v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 249
    move v12, v8

    move v4, v12

    .line 251
    :cond_5
    move v12, v9

    const/4 v13, 0x1

    if-eq v12, v13, :cond_6

    .line 253
    move-object v12, v2

    const/16 v13, 0x2c

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 254
    move-object v12, v2

    move v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 256
    :cond_6
    move-object v12, v2

    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 257
    move-object v12, v2

    move v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 258
    move v12, v11

    const/4 v13, 0x1

    if-eq v12, v13, :cond_7

    .line 260
    move-object v12, v2

    const/16 v13, 0x2c

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 261
    move-object v12, v2

    move v13, v11

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 263
    :cond_7
    move-object v12, v2

    const/16 v13, 0xa

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 264
    add-int/lit8 v6, v6, 0x5

    .line 266
    add-int/lit8 v5, v5, 0x1

    move v12, v5

    move-object v13, v0

    iget v13, v13, Lgnu/bytecode/SourceDebugExtAttr;->lineCount:I

    if-lt v12, v13, :cond_4

    .line 269
    .end local v4    # "prevFileID":I
    .end local v5    # "i":I
    .end local v6    # "i5":I
    .end local v7    # "inputStartLine":I
    .end local v8    # "lineFileID":I
    .end local v9    # "repeatCount":I
    .end local v10    # "outputStartLine":I
    .end local v11    # "outputLineIncrement":I
    :cond_8
    move-object v12, v2

    const-string/jumbo v13, "*E\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 272
    move-object v12, v0

    move-object v13, v2

    :try_start_0
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "UTF-8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    iput-object v13, v12, Lgnu/bytecode/SourceDebugExtAttr;->data:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .line 278
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Lgnu/bytecode/SourceDebugExtAttr;->data:[B

    array-length v13, v13

    iput v13, v12, Lgnu/bytecode/SourceDebugExtAttr;->dlength:I

    .line 279
    return-void

    .line 274
    :catch_0
    move-exception v12

    move-object v4, v12

    .line 276
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v12, Ljava/lang/RuntimeException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v4

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method fixLine(I)I
    .locals 13

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SourceDebugExtAttr;
    move v1, p1

    .local v1, "sourceLine":I
    move-object v7, v0

    iget v7, v7, Lgnu/bytecode/SourceDebugExtAttr;->curLineIndex:I

    if-ltz v7, :cond_0

    .line 73
    move-object v7, v0

    move v8, v1

    move-object v9, v0

    iget v9, v9, Lgnu/bytecode/SourceDebugExtAttr;->curLineIndex:I

    invoke-direct {v7, v8, v9}, Lgnu/bytecode/SourceDebugExtAttr;->fixLine(II)I

    move-result v7

    move v2, v7

    .line 74
    .local v2, "outLine":I
    move v7, v2

    if-ltz v7, :cond_0

    .line 75
    move v7, v2

    move v0, v7

    .line 122
    .end local v0    # "this":Lgnu/bytecode/SourceDebugExtAttr;
    .end local v2    # "outLine":I
    :goto_0
    return v0

    .line 77
    .restart local v0    # "this":Lgnu/bytecode/SourceDebugExtAttr;
    :cond_0
    const/4 v7, 0x0

    move v3, v7

    .line 78
    .local v3, "i5":I
    move-object v7, v0

    iget v7, v7, Lgnu/bytecode/SourceDebugExtAttr;->curFileIndex:I

    move v4, v7

    .line 79
    .local v4, "findex":I
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_1
    move v7, v5

    move-object v8, v0

    iget v8, v8, Lgnu/bytecode/SourceDebugExtAttr;->lineCount:I

    if-ge v7, v8, :cond_2

    .line 81
    move v7, v3

    move-object v8, v0

    iget v8, v8, Lgnu/bytecode/SourceDebugExtAttr;->curLineIndex:I

    if-eq v7, v8, :cond_1

    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    if-ne v7, v8, :cond_1

    .line 83
    move-object v7, v0

    move v8, v1

    move v9, v3

    invoke-direct {v7, v8, v9}, Lgnu/bytecode/SourceDebugExtAttr;->fixLine(II)I

    move-result v7

    move v2, v7

    .line 84
    .restart local v2    # "outLine":I
    move v7, v2

    if-ltz v7, :cond_1

    .line 86
    move-object v7, v0

    move v8, v3

    iput v8, v7, Lgnu/bytecode/SourceDebugExtAttr;->curLineIndex:I

    .line 87
    move v7, v2

    move v0, v7

    goto :goto_0

    .line 90
    .end local v2    # "outLine":I
    :cond_1
    add-int/lit8 v3, v3, 0x5

    .line 79
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 92
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    if-nez v7, :cond_4

    .line 93
    move-object v7, v0

    const/16 v8, 0x14

    new-array v8, v8, [I

    iput-object v8, v7, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    .line 101
    .end local v5    # "i":I
    :cond_3
    :goto_2
    move v7, v1

    move v6, v7

    .line 102
    .local v6, "inputStartLine":I
    move v7, v3

    if-nez v7, :cond_5

    .line 103
    move v7, v1

    move v5, v7

    .line 115
    .local v5, "outputStartLine":I
    :goto_3
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    move v8, v3

    move v9, v6

    aput v9, v7, v8

    .line 116
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v9, v4

    aput v9, v7, v8

    .line 117
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    move v8, v3

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    const/4 v9, 0x1

    aput v9, v7, v8

    .line 118
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    move v8, v3

    const/4 v9, 0x3

    add-int/lit8 v8, v8, 0x3

    move v9, v5

    aput v9, v7, v8

    .line 119
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    move v8, v3

    const/4 v9, 0x4

    add-int/lit8 v8, v8, 0x4

    const/4 v9, 0x1

    aput v9, v7, v8

    .line 120
    move-object v7, v0

    move v8, v3

    iput v8, v7, Lgnu/bytecode/SourceDebugExtAttr;->curLineIndex:I

    .line 121
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lgnu/bytecode/SourceDebugExtAttr;->lineCount:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lgnu/bytecode/SourceDebugExtAttr;->lineCount:I

    .line 122
    move v7, v1

    move v0, v7

    goto/16 :goto_0

    .line 94
    .end local v6    # "inputStartLine":I
    .local v5, "i":I
    :cond_4
    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    array-length v8, v8

    if-lt v7, v8, :cond_3

    .line 96
    const/4 v7, 0x2

    move v8, v3

    mul-int/2addr v7, v8

    new-array v7, v7, [I

    move-object v5, v7

    .line 97
    .local v5, "newLines":[I
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    const/4 v8, 0x0

    move-object v9, v5

    const/4 v10, 0x0

    move v11, v3

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    goto :goto_2

    .line 106
    .end local v5    # "newLines":[I
    .restart local v6    # "inputStartLine":I
    :cond_5
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    move v8, v3

    const/4 v9, 0x5

    add-int/lit8 v8, v8, -0x5

    const/4 v9, 0x3

    add-int/lit8 v8, v8, 0x3

    aget v7, v7, v8

    move-object v8, v0

    iget-object v8, v8, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    move v9, v3

    const/4 v10, 0x5

    add-int/lit8 v9, v9, -0x5

    const/4 v10, 0x2

    add-int/lit8 v9, v9, 0x2

    aget v8, v8, v9

    add-int/2addr v7, v8

    move v5, v7

    .line 107
    .local v5, "outputStartLine":I
    move v7, v3

    const/4 v8, 0x5

    if-ne v7, v8, :cond_6

    move v7, v5

    const/16 v8, 0x2710

    if-ge v7, v8, :cond_6

    .line 111
    const/16 v7, 0x2710

    move v5, v7

    .line 113
    :cond_6
    move v7, v5

    move v1, v7

    goto/16 :goto_3
.end method

.method public getLength()I
    .locals 2

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SourceDebugExtAttr;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/SourceDebugExtAttr;->dlength:I

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/SourceDebugExtAttr;
    return v0
.end method

.method nonAsteriskString(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 5

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SourceDebugExtAttr;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v2, p2

    .local v2, "sbuf":Ljava/lang/StringBuffer;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2a

    if-ne v3, v4, :cond_1

    .line 200
    :cond_0
    move-object v3, v2

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 201
    :cond_1
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 202
    return-void
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 11

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SourceDebugExtAttr;
    move-object v1, p1

    .local v1, "dst":Lgnu/bytecode/ClassTypeWriter;
    move-object v3, v1

    const-string/jumbo v4, "Attribute \""

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 296
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/SourceDebugExtAttr;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 297
    move-object v3, v1

    const-string/jumbo v4, "\", length:"

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 298
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/SourceDebugExtAttr;->dlength:I

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 301
    move-object v3, v1

    :try_start_0
    new-instance v4, Ljava/lang/String;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/SourceDebugExtAttr;->data:[B

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Lgnu/bytecode/SourceDebugExtAttr;->dlength:I

    const-string/jumbo v9, "UTF-8"

    invoke-direct {v5, v6, v7, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .line 307
    :goto_0
    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/SourceDebugExtAttr;->dlength:I

    if-lez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/SourceDebugExtAttr;->data:[B

    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/SourceDebugExtAttr;->dlength:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    aget-byte v3, v3, v4

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/SourceDebugExtAttr;->data:[B

    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/SourceDebugExtAttr;->dlength:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    aget-byte v3, v3, v4

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    .line 308
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 309
    :cond_0
    return-void

    .line 303
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 305
    .local v2, "ex":Ljava/lang/Exception;
    move-object v3, v1

    const-string/jumbo v4, "(Caught "

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/Object;)V

    move-object v3, v1

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    goto :goto_0
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SourceDebugExtAttr;
    move-object v1, p1

    .local v1, "dstr":Ljava/io/DataOutputStream;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/SourceDebugExtAttr;->data:[B

    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Lgnu/bytecode/SourceDebugExtAttr;->dlength:I

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 291
    return-void
.end method
