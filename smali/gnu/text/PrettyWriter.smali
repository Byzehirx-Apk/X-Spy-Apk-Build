.class public Lgnu/text/PrettyWriter;
.super Ljava/io/Writer;
.source "PrettyWriter.java"


# static fields
.field private static final BLOCK_PER_LINE_PREFIX_END:I = -0x3

.field private static final BLOCK_PREFIX_LENGTH:I = -0x4

.field private static final BLOCK_SECTION_COLUMN:I = -0x2

.field private static final BLOCK_SECTION_START_LINE:I = -0x6

.field private static final BLOCK_START_COLUMN:I = -0x1

.field private static final BLOCK_SUFFIX_LENGTH:I = -0x5

.field private static final LOGICAL_BLOCK_LENGTH:I = 0x6

.field public static final NEWLINE_FILL:I = 0x46

.field public static final NEWLINE_LINEAR:I = 0x4e

.field public static final NEWLINE_LITERAL:I = 0x4c

.field public static final NEWLINE_MANDATORY:I = 0x52

.field public static final NEWLINE_MISER:I = 0x4d

.field public static final NEWLINE_SPACE:I = 0x53

.field static final QITEM_BASE_SIZE:I = 0x2

.field static final QITEM_BLOCK_END_SIZE:I = 0x2

.field static final QITEM_BLOCK_END_TYPE:I = 0x5

.field static final QITEM_BLOCK_START_BLOCK_END:I = 0x4

.field static final QITEM_BLOCK_START_PREFIX:I = 0x5

.field static final QITEM_BLOCK_START_SIZE:I = 0x7

.field static final QITEM_BLOCK_START_SUFFIX:I = 0x6

.field static final QITEM_BLOCK_START_TYPE:I = 0x4

.field static final QITEM_INDENTATION_AMOUNT:I = 0x3

.field static final QITEM_INDENTATION_BLOCK:C = 'B'

.field static final QITEM_INDENTATION_CURRENT:C = 'C'

.field static final QITEM_INDENTATION_KIND:I = 0x2

.field static final QITEM_INDENTATION_SIZE:I = 0x4

.field static final QITEM_INDENTATION_TYPE:I = 0x3

.field static final QITEM_NEWLINE_KIND:I = 0x4

.field static final QITEM_NEWLINE_SIZE:I = 0x5

.field static final QITEM_NEWLINE_TYPE:I = 0x2

.field static final QITEM_NOP_TYPE:I = 0x0

.field static final QITEM_POSN:I = 0x1

.field static final QITEM_SECTION_START_DEPTH:I = 0x2

.field static final QITEM_SECTION_START_SECTION_END:I = 0x3

.field static final QITEM_SECTION_START_SIZE:I = 0x4

.field static final QITEM_TAB_COLINC:I = 0x4

.field static final QITEM_TAB_COLNUM:I = 0x3

.field static final QITEM_TAB_FLAGS:I = 0x2

.field static final QITEM_TAB_IS_RELATIVE:I = 0x2

.field static final QITEM_TAB_IS_SECTION:I = 0x1

.field static final QITEM_TAB_SIZE:I = 0x5

.field static final QITEM_TAB_TYPE:I = 0x6

.field static final QITEM_TYPE_AND_SIZE:I = 0x0

.field static final QUEUE_INIT_ALLOC_SIZE:I = 0x12c

.field public static indentLoc:Lgnu/mapping/ThreadLocation;

.field public static initialBufferSize:I

.field public static lineLengthLoc:Lgnu/mapping/ThreadLocation;

.field public static miserWidthLoc:Lgnu/mapping/ThreadLocation;


# instance fields
.field blockDepth:I

.field blocks:[I

.field public buffer:[C

.field public bufferFillPointer:I

.field bufferOffset:I

.field bufferStartColumn:I

.field currentBlock:I

.field lineLength:I

.field lineNumber:I

.field miserWidth:I

.field protected out:Ljava/io/Writer;

.field public pendingBlocksCount:I

.field prefix:[C

.field prettyPrintingMode:I

.field queueInts:[I

.field queueSize:I

.field queueStrings:[Ljava/lang/String;

.field queueTail:I

.field suffix:[C

.field wordEndSeen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 42
    new-instance v0, Lgnu/mapping/ThreadLocation;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "line-length"

    invoke-direct {v1, v2}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/text/PrettyWriter;->lineLengthLoc:Lgnu/mapping/ThreadLocation;

    .line 44
    new-instance v0, Lgnu/mapping/ThreadLocation;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "miser-width"

    invoke-direct {v1, v2}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/text/PrettyWriter;->miserWidthLoc:Lgnu/mapping/ThreadLocation;

    .line 46
    new-instance v0, Lgnu/mapping/ThreadLocation;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "indent"

    invoke-direct {v1, v2}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/text/PrettyWriter;->indentLoc:Lgnu/mapping/ThreadLocation;

    .line 78
    const/16 v0, 0x7e

    sput v0, Lgnu/text/PrettyWriter;->initialBufferSize:I

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 4

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move-object v1, p1

    .local v1, "out":Ljava/io/Writer;
    move-object v2, v0

    invoke-direct {v2}, Ljava/io/Writer;-><init>()V

    .line 39
    move-object v2, v0

    const/16 v3, 0x50

    iput v3, v2, Lgnu/text/PrettyWriter;->lineLength:I

    .line 40
    move-object v2, v0

    const/16 v3, 0x28

    iput v3, v2, Lgnu/text/PrettyWriter;->miserWidth:I

    .line 81
    move-object v2, v0

    sget v3, Lgnu/text/PrettyWriter;->initialBufferSize:I

    new-array v3, v3, [C

    iput-object v3, v2, Lgnu/text/PrettyWriter;->buffer:[C

    .line 126
    move-object v2, v0

    const/16 v3, 0x3c

    new-array v3, v3, [I

    iput-object v3, v2, Lgnu/text/PrettyWriter;->blocks:[I

    .line 136
    move-object v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lgnu/text/PrettyWriter;->blockDepth:I

    .line 141
    move-object v2, v0

    sget v3, Lgnu/text/PrettyWriter;->initialBufferSize:I

    new-array v3, v3, [C

    iput-object v3, v2, Lgnu/text/PrettyWriter;->prefix:[C

    .line 146
    move-object v2, v0

    sget v3, Lgnu/text/PrettyWriter;->initialBufferSize:I

    new-array v3, v3, [C

    iput-object v3, v2, Lgnu/text/PrettyWriter;->suffix:[C

    .line 166
    move-object v2, v0

    const/16 v3, 0x12c

    new-array v3, v3, [I

    iput-object v3, v2, Lgnu/text/PrettyWriter;->queueInts:[I

    .line 169
    move-object v2, v0

    const/16 v3, 0x12c

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v2, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    .line 177
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lgnu/text/PrettyWriter;->currentBlock:I

    .line 21
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    .line 22
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 6

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move-object v1, p1

    .local v1, "out":Ljava/io/Writer;
    move v2, p2

    .local v2, "lineLength":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/io/Writer;-><init>()V

    .line 39
    move-object v3, v0

    const/16 v4, 0x50

    iput v4, v3, Lgnu/text/PrettyWriter;->lineLength:I

    .line 40
    move-object v3, v0

    const/16 v4, 0x28

    iput v4, v3, Lgnu/text/PrettyWriter;->miserWidth:I

    .line 81
    move-object v3, v0

    sget v4, Lgnu/text/PrettyWriter;->initialBufferSize:I

    new-array v4, v4, [C

    iput-object v4, v3, Lgnu/text/PrettyWriter;->buffer:[C

    .line 126
    move-object v3, v0

    const/16 v4, 0x3c

    new-array v4, v4, [I

    iput-object v4, v3, Lgnu/text/PrettyWriter;->blocks:[I

    .line 136
    move-object v3, v0

    const/4 v4, 0x6

    iput v4, v3, Lgnu/text/PrettyWriter;->blockDepth:I

    .line 141
    move-object v3, v0

    sget v4, Lgnu/text/PrettyWriter;->initialBufferSize:I

    new-array v4, v4, [C

    iput-object v4, v3, Lgnu/text/PrettyWriter;->prefix:[C

    .line 146
    move-object v3, v0

    sget v4, Lgnu/text/PrettyWriter;->initialBufferSize:I

    new-array v4, v4, [C

    iput-object v4, v3, Lgnu/text/PrettyWriter;->suffix:[C

    .line 166
    move-object v3, v0

    const/16 v4, 0x12c

    new-array v4, v4, [I

    iput-object v4, v3, Lgnu/text/PrettyWriter;->queueInts:[I

    .line 169
    move-object v3, v0

    const/16 v4, 0x12c

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, v3, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    .line 177
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lgnu/text/PrettyWriter;->currentBlock:I

    .line 27
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    .line 28
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lgnu/text/PrettyWriter;->lineLength:I

    .line 29
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput v4, v3, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    .line 30
    return-void

    .line 29
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .locals 5

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move-object v1, p1

    .local v1, "out":Ljava/io/Writer;
    move v2, p2

    .local v2, "prettyPrintingMode":Z
    move-object v3, v0

    invoke-direct {v3}, Ljava/io/Writer;-><init>()V

    .line 39
    move-object v3, v0

    const/16 v4, 0x50

    iput v4, v3, Lgnu/text/PrettyWriter;->lineLength:I

    .line 40
    move-object v3, v0

    const/16 v4, 0x28

    iput v4, v3, Lgnu/text/PrettyWriter;->miserWidth:I

    .line 81
    move-object v3, v0

    sget v4, Lgnu/text/PrettyWriter;->initialBufferSize:I

    new-array v4, v4, [C

    iput-object v4, v3, Lgnu/text/PrettyWriter;->buffer:[C

    .line 126
    move-object v3, v0

    const/16 v4, 0x3c

    new-array v4, v4, [I

    iput-object v4, v3, Lgnu/text/PrettyWriter;->blocks:[I

    .line 136
    move-object v3, v0

    const/4 v4, 0x6

    iput v4, v3, Lgnu/text/PrettyWriter;->blockDepth:I

    .line 141
    move-object v3, v0

    sget v4, Lgnu/text/PrettyWriter;->initialBufferSize:I

    new-array v4, v4, [C

    iput-object v4, v3, Lgnu/text/PrettyWriter;->prefix:[C

    .line 146
    move-object v3, v0

    sget v4, Lgnu/text/PrettyWriter;->initialBufferSize:I

    new-array v4, v4, [C

    iput-object v4, v3, Lgnu/text/PrettyWriter;->suffix:[C

    .line 166
    move-object v3, v0

    const/16 v4, 0x12c

    new-array v4, v4, [I

    iput-object v4, v3, Lgnu/text/PrettyWriter;->queueInts:[I

    .line 169
    move-object v3, v0

    const/16 v4, 0x12c

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, v3, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    .line 177
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lgnu/text/PrettyWriter;->currentBlock:I

    .line 34
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    .line 35
    move-object v3, v0

    move v4, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput v4, v3, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    .line 36
    return-void

    .line 35
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static enoughSpace(II)I
    .locals 7

    .prologue
    .line 482
    move v0, p0

    .local v0, "current":I
    move v1, p1

    .local v1, "want":I
    const/4 v4, 0x2

    move v5, v0

    mul-int/2addr v4, v5

    move v2, v4

    .line 483
    .local v2, "doubled":I
    move v4, v0

    const/4 v5, 0x5

    move v6, v1

    mul-int/2addr v5, v6

    const/4 v6, 0x2

    shr-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    move v3, v4

    .line 484
    .local v3, "enough":I
    move v4, v2

    move v5, v3

    if-le v4, v5, :cond_0

    move v4, v2

    :goto_0
    move v0, v4

    .end local v0    # "current":I
    return v0

    .restart local v0    # "current":I
    :cond_0
    move v4, v3

    goto :goto_0
.end method

.method private getPerLinePrefixEnd()I
    .locals 4

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/PrettyWriter;->blocks:[I

    move-object v2, v0

    iget v2, v2, Lgnu/text/PrettyWriter;->blockDepth:I

    const/4 v3, -0x3

    add-int/lit8 v2, v2, -0x3

    aget v1, v1, v2

    move v0, v1

    .end local v0    # "this":Lgnu/text/PrettyWriter;
    return v0
.end method

.method private getPrefixLength()I
    .locals 4

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/PrettyWriter;->blocks:[I

    move-object v2, v0

    iget v2, v2, Lgnu/text/PrettyWriter;->blockDepth:I

    const/4 v3, -0x4

    add-int/lit8 v2, v2, -0x4

    aget v1, v1, v2

    move v0, v1

    .end local v0    # "this":Lgnu/text/PrettyWriter;
    return v0
.end method

.method private getQueueSize(I)I
    .locals 4

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/text/PrettyWriter;->queueInts:[I

    move v3, v1

    aget v2, v2, v3

    const/16 v3, 0x10

    shr-int/lit8 v2, v2, 0x10

    move v0, v2

    .end local v0    # "this":Lgnu/text/PrettyWriter;
    return v0
.end method

.method private getQueueType(I)I
    .locals 4

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/text/PrettyWriter;->queueInts:[I

    move v3, v1

    aget v2, v2, v3

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    move v0, v2

    .end local v0    # "this":Lgnu/text/PrettyWriter;
    return v0
.end method

.method private getSectionColumn()I
    .locals 4

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/PrettyWriter;->blocks:[I

    move-object v2, v0

    iget v2, v2, Lgnu/text/PrettyWriter;->blockDepth:I

    const/4 v3, -0x2

    add-int/lit8 v2, v2, -0x2

    aget v1, v1, v2

    move v0, v1

    .end local v0    # "this":Lgnu/text/PrettyWriter;
    return v0
.end method

.method private getSectionStartLine()I
    .locals 4

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/PrettyWriter;->blocks:[I

    move-object v2, v0

    iget v2, v2, Lgnu/text/PrettyWriter;->blockDepth:I

    const/4 v3, -0x6

    add-int/lit8 v2, v2, -0x6

    aget v1, v1, v2

    move v0, v1

    .end local v0    # "this":Lgnu/text/PrettyWriter;
    return v0
.end method

.method private getStartColumn()I
    .locals 4

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/PrettyWriter;->blocks:[I

    move-object v2, v0

    iget v2, v2, Lgnu/text/PrettyWriter;->blockDepth:I

    const/4 v3, -0x1

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    move v0, v1

    .end local v0    # "this":Lgnu/text/PrettyWriter;
    return v0
.end method

.method private getSuffixLength()I
    .locals 4

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/PrettyWriter;->blocks:[I

    move-object v2, v0

    iget v2, v2, Lgnu/text/PrettyWriter;->blockDepth:I

    const/4 v3, -0x5

    add-int/lit8 v2, v2, -0x5

    aget v1, v1, v2

    move v0, v1

    .end local v0    # "this":Lgnu/text/PrettyWriter;
    return v0
.end method

.method private indexPosn(I)I
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/text/PrettyWriter;->bufferOffset:I

    add-int/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lgnu/text/PrettyWriter;
    return v0
.end method

.method private posnColumn(I)I
    .locals 5

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move v1, p1

    .local v1, "posn":I
    move-object v2, v0

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Lgnu/text/PrettyWriter;->posnIndex(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lgnu/text/PrettyWriter;->indexColumn(I)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/text/PrettyWriter;
    return v0
.end method

.method private posnIndex(I)I
    .locals 4

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move v1, p1

    .local v1, "posn":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/text/PrettyWriter;->bufferOffset:I

    sub-int/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lgnu/text/PrettyWriter;
    return v0
.end method

.method private pushLogicalBlock(IIIII)V
    .locals 13

    .prologue
    .line 412
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move v1, p1

    .local v1, "column":I
    move v2, p2

    .local v2, "perLineEnd":I
    move/from16 v3, p3

    .local v3, "prefixLength":I
    move/from16 v4, p4

    .local v4, "suffixLength":I
    move/from16 v5, p5

    .local v5, "sectionStartLine":I
    move-object v8, v0

    iget v8, v8, Lgnu/text/PrettyWriter;->blockDepth:I

    const/4 v9, 0x6

    add-int/lit8 v8, v8, 0x6

    move v6, v8

    .line 413
    .local v6, "newLength":I
    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Lgnu/text/PrettyWriter;->blocks:[I

    array-length v9, v9

    if-lt v8, v9, :cond_0

    .line 415
    const/4 v8, 0x2

    move-object v9, v0

    iget-object v9, v9, Lgnu/text/PrettyWriter;->blocks:[I

    array-length v9, v9

    mul-int/2addr v8, v9

    new-array v8, v8, [I

    move-object v7, v8

    .line 416
    .local v7, "newBlocks":[I
    move-object v8, v0

    iget-object v8, v8, Lgnu/text/PrettyWriter;->blocks:[I

    const/4 v9, 0x0

    move-object v10, v7

    const/4 v11, 0x0

    move-object v12, v0

    iget v12, v12, Lgnu/text/PrettyWriter;->blockDepth:I

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Lgnu/text/PrettyWriter;->blocks:[I

    .line 419
    .end local v7    # "newBlocks":[I
    :cond_0
    move-object v8, v0

    move v9, v6

    iput v9, v8, Lgnu/text/PrettyWriter;->blockDepth:I

    .line 420
    move-object v8, v0

    iget-object v8, v8, Lgnu/text/PrettyWriter;->blocks:[I

    move-object v9, v0

    iget v9, v9, Lgnu/text/PrettyWriter;->blockDepth:I

    const/4 v10, -0x1

    add-int/lit8 v9, v9, -0x1

    move v10, v1

    aput v10, v8, v9

    .line 421
    move-object v8, v0

    iget-object v8, v8, Lgnu/text/PrettyWriter;->blocks:[I

    move-object v9, v0

    iget v9, v9, Lgnu/text/PrettyWriter;->blockDepth:I

    const/4 v10, -0x2

    add-int/lit8 v9, v9, -0x2

    move v10, v1

    aput v10, v8, v9

    .line 422
    move-object v8, v0

    iget-object v8, v8, Lgnu/text/PrettyWriter;->blocks:[I

    move-object v9, v0

    iget v9, v9, Lgnu/text/PrettyWriter;->blockDepth:I

    const/4 v10, -0x3

    add-int/lit8 v9, v9, -0x3

    move v10, v2

    aput v10, v8, v9

    .line 423
    move-object v8, v0

    iget-object v8, v8, Lgnu/text/PrettyWriter;->blocks:[I

    move-object v9, v0

    iget v9, v9, Lgnu/text/PrettyWriter;->blockDepth:I

    const/4 v10, -0x4

    add-int/lit8 v9, v9, -0x4

    move v10, v3

    aput v10, v8, v9

    .line 424
    move-object v8, v0

    iget-object v8, v8, Lgnu/text/PrettyWriter;->blocks:[I

    move-object v9, v0

    iget v9, v9, Lgnu/text/PrettyWriter;->blockDepth:I

    const/4 v10, -0x5

    add-int/lit8 v9, v9, -0x5

    move v10, v4

    aput v10, v8, v9

    .line 425
    move-object v8, v0

    iget-object v8, v8, Lgnu/text/PrettyWriter;->blocks:[I

    move-object v9, v0

    iget v9, v9, Lgnu/text/PrettyWriter;->blockDepth:I

    const/4 v10, -0x6

    add-int/lit8 v9, v9, -0x6

    move v10, v5

    aput v10, v8, v9

    .line 426
    return-void
.end method


# virtual methods
.method public addIndentation(IZ)V
    .locals 6

    .prologue
    .line 615
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move v1, p1

    .local v1, "amount":I
    move v2, p2

    .local v2, "current":Z
    move-object v3, v0

    iget v3, v3, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-lez v3, :cond_0

    .line 616
    move-object v3, v0

    move v4, v2

    if-eqz v4, :cond_1

    const/16 v4, 0x43

    :goto_0
    move v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/text/PrettyWriter;->enqueueIndent(CI)I

    move-result v3

    .line 619
    :cond_0
    return-void

    .line 616
    :cond_1
    const/16 v4, 0x42

    goto :goto_0
.end method

.method public clearBuffer()V
    .locals 3

    .prologue
    .line 1251
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    .line 1252
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 1253
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/text/PrettyWriter;->lineNumber:I

    .line 1254
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/text/PrettyWriter;->bufferOffset:I

    .line 1255
    move-object v1, v0

    const/4 v2, 0x6

    iput v2, v1, Lgnu/text/PrettyWriter;->blockDepth:I

    .line 1256
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/text/PrettyWriter;->queueTail:I

    .line 1257
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/text/PrettyWriter;->queueSize:I

    .line 1258
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    .line 1259
    return-void
.end method

.method public clearWordEnd()V
    .locals 3

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lgnu/text/PrettyWriter;->wordEndSeen:Z

    .line 301
    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1210
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    if-eqz v1, :cond_0

    .line 1212
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/PrettyWriter;->forcePrettyOutput()V

    .line 1213
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 1214
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    .line 1216
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/text/PrettyWriter;->buffer:[C

    .line 1217
    return-void
.end method

.method public closeThis()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1222
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    if-eqz v1, :cond_0

    .line 1224
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/PrettyWriter;->forcePrettyOutput()V

    .line 1225
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    .line 1227
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/text/PrettyWriter;->buffer:[C

    .line 1228
    return-void
.end method

.method computeTabSize(III)I
    .locals 16

    .prologue
    .line 734
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move/from16 v1, p1

    .local v1, "tab":I
    move/from16 v2, p2

    .local v2, "sectionStart":I
    move/from16 v3, p3

    .local v3, "column":I
    move-object v12, v0

    iget-object v12, v12, Lgnu/text/PrettyWriter;->queueInts:[I

    move v13, v1

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    aget v12, v12, v13

    move v4, v12

    .line 735
    .local v4, "flags":I
    move v12, v4

    const/4 v13, 0x1

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    :goto_0
    move v5, v12

    .line 736
    .local v5, "isSection":Z
    move v12, v4

    const/4 v13, 0x2

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    :goto_1
    move v6, v12

    .line 737
    .local v6, "isRelative":Z
    move v12, v5

    if-eqz v12, :cond_3

    move v12, v2

    :goto_2
    move v7, v12

    .line 738
    .local v7, "origin":I
    move-object v12, v0

    iget-object v12, v12, Lgnu/text/PrettyWriter;->queueInts:[I

    move v13, v1

    const/4 v14, 0x3

    add-int/lit8 v13, v13, 0x3

    aget v12, v12, v13

    move v8, v12

    .line 739
    .local v8, "colnum":I
    move-object v12, v0

    iget-object v12, v12, Lgnu/text/PrettyWriter;->queueInts:[I

    move v13, v1

    const/4 v14, 0x4

    add-int/lit8 v13, v13, 0x4

    aget v12, v12, v13

    move v9, v12

    .line 740
    .local v9, "colinc":I
    move v12, v6

    if-eqz v12, :cond_4

    .line 742
    move v12, v9

    const/4 v13, 0x1

    if-le v12, v13, :cond_0

    .line 744
    move v12, v3

    move v13, v8

    add-int/2addr v12, v13

    move v10, v12

    .line 745
    .local v10, "newposn":I
    move v12, v10

    move v13, v9

    rem-int/2addr v12, v13

    move v11, v12

    .line 746
    .local v11, "rem":I
    move v12, v11

    if-eqz v12, :cond_0

    .line 747
    move v12, v8

    move v13, v11

    move v15, v13

    move v13, v15

    move v14, v15

    move v9, v14

    add-int/2addr v12, v13

    move v8, v12

    .line 749
    .end local v10    # "newposn":I
    .end local v11    # "rem":I
    :cond_0
    move v12, v8

    move v0, v12

    .line 754
    .end local v0    # "this":Lgnu/text/PrettyWriter;
    :goto_3
    return v0

    .line 735
    .end local v5    # "isSection":Z
    .end local v6    # "isRelative":Z
    .end local v7    # "origin":I
    .end local v8    # "colnum":I
    .end local v9    # "colinc":I
    .restart local v0    # "this":Lgnu/text/PrettyWriter;
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 736
    .restart local v5    # "isSection":Z
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 737
    .restart local v6    # "isRelative":Z
    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    .line 751
    .restart local v7    # "origin":I
    .restart local v8    # "colnum":I
    .restart local v9    # "colinc":I
    :cond_4
    move v12, v3

    move v13, v8

    move v14, v7

    add-int/2addr v13, v14

    if-gt v12, v13, :cond_5

    .line 752
    move v12, v3

    move v13, v7

    add-int/2addr v12, v13

    move v13, v3

    sub-int/2addr v12, v13

    move v0, v12

    goto :goto_3

    .line 754
    :cond_5
    move v12, v9

    move v13, v3

    move v14, v7

    sub-int/2addr v13, v14

    move v14, v9

    rem-int/2addr v13, v14

    sub-int/2addr v12, v13

    move v0, v12

    goto :goto_3
.end method

.method public endLogicalBlock()V
    .locals 12

    .prologue
    .line 671
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move-object v6, v0

    const/4 v7, 0x5

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Lgnu/text/PrettyWriter;->enqueue(II)I

    move-result v6

    move v1, v6

    .line 672
    .local v1, "end":I
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    .line 673
    move-object v6, v0

    iget v6, v6, Lgnu/text/PrettyWriter;->currentBlock:I

    if-gez v6, :cond_1

    .line 678
    move-object v6, v0

    iget-object v6, v6, Lgnu/text/PrettyWriter;->blocks:[I

    move-object v7, v0

    iget v7, v7, Lgnu/text/PrettyWriter;->blockDepth:I

    const/4 v8, -0x5

    add-int/lit8 v7, v7, -0x5

    aget v6, v6, v7

    move v2, v6

    .line 679
    .local v2, "suffixLength":I
    move-object v6, v0

    iget-object v6, v6, Lgnu/text/PrettyWriter;->blocks:[I

    move-object v7, v0

    iget v7, v7, Lgnu/text/PrettyWriter;->blockDepth:I

    const/4 v8, 0x6

    add-int/lit8 v7, v7, -0x6

    const/4 v8, -0x5

    add-int/lit8 v7, v7, -0x5

    aget v6, v6, v7

    move v3, v6

    .line 681
    .local v3, "suffixPreviousLength":I
    move v6, v2

    move v7, v3

    if-le v6, v7, :cond_0

    .line 682
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lgnu/text/PrettyWriter;->suffix:[C

    move-object v8, v0

    iget-object v8, v8, Lgnu/text/PrettyWriter;->suffix:[C

    array-length v8, v8

    move v9, v2

    sub-int/2addr v8, v9

    move v9, v2

    move v10, v3

    sub-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lgnu/text/PrettyWriter;->write([CII)V

    .line 685
    :cond_0
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Lgnu/text/PrettyWriter;->currentBlock:I

    .line 686
    .line 720
    .end local v2    # "suffixLength":I
    .end local v3    # "suffixPreviousLength":I
    :goto_0
    return-void

    .line 688
    :cond_1
    move-object v6, v0

    iget v6, v6, Lgnu/text/PrettyWriter;->currentBlock:I

    move v2, v6

    .line 689
    .local v2, "start":I
    move-object v6, v0

    iget-object v6, v6, Lgnu/text/PrettyWriter;->queueInts:[I

    move v7, v2

    const/4 v8, 0x4

    add-int/lit8 v7, v7, 0x4

    aget v6, v6, v7

    move v3, v6

    .line 690
    .local v3, "outerBlock":I
    move v6, v3

    if-nez v6, :cond_4

    .line 691
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Lgnu/text/PrettyWriter;->currentBlock:I

    .line 712
    :goto_1
    move-object v6, v0

    iget-object v6, v6, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    move v7, v2

    const/4 v8, 0x6

    add-int/lit8 v7, v7, 0x6

    aget-object v6, v6, v7

    move-object v4, v6

    .line 713
    .local v4, "suffix":Ljava/lang/String;
    move-object v6, v4

    if-eqz v6, :cond_2

    .line 714
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 715
    :cond_2
    move v6, v1

    move v7, v2

    sub-int/2addr v6, v7

    move v5, v6

    .line 716
    .local v5, "endFromStart":I
    move v6, v5

    if-gez v6, :cond_3

    .line 717
    move v6, v5

    move-object v7, v0

    iget-object v7, v7, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v7, v7

    add-int/2addr v6, v7

    move v5, v6

    .line 718
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lgnu/text/PrettyWriter;->queueInts:[I

    move v7, v2

    const/4 v8, 0x4

    add-int/lit8 v7, v7, 0x4

    move v8, v5

    aput v8, v6, v7

    .line 720
    goto :goto_0

    .line 694
    .end local v4    # "suffix":Ljava/lang/String;
    .end local v5    # "endFromStart":I
    :cond_4
    move-object v6, v0

    iget v6, v6, Lgnu/text/PrettyWriter;->queueTail:I

    move v7, v2

    sub-int/2addr v6, v7

    move v4, v6

    .line 695
    .local v4, "qtailFromStart":I
    move v6, v4

    if-lez v6, :cond_5

    .line 696
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v7, v7

    sub-int/2addr v6, v7

    move v4, v6

    .line 697
    :cond_5
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_6

    .line 701
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Lgnu/text/PrettyWriter;->currentBlock:I

    goto :goto_1

    .line 706
    :cond_6
    move v6, v3

    move v7, v2

    add-int/2addr v6, v7

    move v3, v6

    .line 707
    move v6, v3

    if-gez v6, :cond_7

    .line 708
    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v7, v7

    add-int/2addr v6, v7

    move v3, v6

    .line 709
    :cond_7
    move-object v6, v0

    move v7, v3

    iput v7, v6, Lgnu/text/PrettyWriter;->currentBlock:I

    goto :goto_1
.end method

.method public endLogicalBlock(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 724
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move-object v1, p1

    .local v1, "suffix":Ljava/lang/String;
    move-object v2, v0

    iget v2, v2, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-lez v2, :cond_1

    .line 725
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/text/PrettyWriter;->endLogicalBlock()V

    .line 728
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 727
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enqueue(II)I
    .locals 17

    .prologue
    .line 523
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move/from16 v1, p1

    .local v1, "kind":I
    move/from16 v2, p2

    .local v2, "size":I
    move-object v11, v0

    iget-object v11, v11, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v11, v11

    move v3, v11

    .line 524
    .local v3, "oldLength":I
    move v11, v3

    move-object v12, v0

    iget v12, v12, Lgnu/text/PrettyWriter;->queueTail:I

    sub-int/2addr v11, v12

    move-object v12, v0

    iget v12, v12, Lgnu/text/PrettyWriter;->queueSize:I

    sub-int/2addr v11, v12

    move v4, v11

    .line 525
    .local v4, "endAvail":I
    move v11, v4

    if-lez v11, :cond_0

    move v11, v2

    move v12, v4

    if-le v11, v12, :cond_0

    .line 526
    move-object v11, v0

    const/4 v12, 0x0

    move v13, v4

    invoke-virtual {v11, v12, v13}, Lgnu/text/PrettyWriter;->enqueue(II)I

    move-result v11

    .line 527
    :cond_0
    move-object v11, v0

    iget v11, v11, Lgnu/text/PrettyWriter;->queueSize:I

    move v12, v2

    add-int/2addr v11, v12

    move v12, v3

    if-le v11, v12, :cond_3

    .line 529
    move v11, v3

    move v12, v2

    invoke-static {v11, v12}, Lgnu/text/PrettyWriter;->enoughSpace(II)I

    move-result v11

    move v5, v11

    .line 530
    .local v5, "newLength":I
    move v11, v5

    new-array v11, v11, [I

    move-object v6, v11

    .line 531
    .local v6, "newInts":[I
    move v11, v5

    new-array v11, v11, [Ljava/lang/String;

    move-object v7, v11

    .line 532
    .local v7, "newStrings":[Ljava/lang/String;
    move-object v11, v0

    iget v11, v11, Lgnu/text/PrettyWriter;->queueTail:I

    move-object v12, v0

    iget v12, v12, Lgnu/text/PrettyWriter;->queueSize:I

    add-int/2addr v11, v12

    move v12, v3

    sub-int/2addr v11, v12

    move v8, v11

    .line 533
    .local v8, "queueHead":I
    move v11, v8

    if-lez v11, :cond_1

    .line 535
    move-object v11, v0

    iget-object v11, v11, Lgnu/text/PrettyWriter;->queueInts:[I

    const/4 v12, 0x0

    move-object v13, v6

    const/4 v14, 0x0

    move v15, v8

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 536
    move-object v11, v0

    iget-object v11, v11, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    const/4 v12, 0x0

    move-object v13, v7

    const/4 v14, 0x0

    move v15, v8

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 538
    :cond_1
    move v11, v3

    move-object v12, v0

    iget v12, v12, Lgnu/text/PrettyWriter;->queueTail:I

    sub-int/2addr v11, v12

    move v9, v11

    .line 539
    .local v9, "part1Len":I
    move v11, v5

    move v12, v3

    sub-int/2addr v11, v12

    move v10, v11

    .line 540
    .local v10, "deltaLength":I
    move-object v11, v0

    iget-object v11, v11, Lgnu/text/PrettyWriter;->queueInts:[I

    move-object v12, v0

    iget v12, v12, Lgnu/text/PrettyWriter;->queueTail:I

    move-object v13, v6

    move-object v14, v0

    iget v14, v14, Lgnu/text/PrettyWriter;->queueTail:I

    move v15, v10

    add-int/2addr v14, v15

    move v15, v9

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 543
    move-object v11, v0

    iget-object v11, v11, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    move-object v12, v0

    iget v12, v12, Lgnu/text/PrettyWriter;->queueTail:I

    move-object v13, v7

    move-object v14, v0

    iget v14, v14, Lgnu/text/PrettyWriter;->queueTail:I

    move v15, v10

    add-int/2addr v14, v15

    move v15, v9

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 546
    move-object v11, v0

    move-object v12, v6

    iput-object v12, v11, Lgnu/text/PrettyWriter;->queueInts:[I

    .line 547
    move-object v11, v0

    move-object v12, v7

    iput-object v12, v11, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    .line 548
    move-object v11, v0

    iget v11, v11, Lgnu/text/PrettyWriter;->currentBlock:I

    move-object v12, v0

    iget v12, v12, Lgnu/text/PrettyWriter;->queueTail:I

    if-lt v11, v12, :cond_2

    .line 549
    move-object v11, v0

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    iget v12, v12, Lgnu/text/PrettyWriter;->currentBlock:I

    move v13, v10

    add-int/2addr v12, v13

    iput v12, v11, Lgnu/text/PrettyWriter;->currentBlock:I

    .line 550
    :cond_2
    move-object v11, v0

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    iget v12, v12, Lgnu/text/PrettyWriter;->queueTail:I

    move v13, v10

    add-int/2addr v12, v13

    iput v12, v11, Lgnu/text/PrettyWriter;->queueTail:I

    .line 552
    .end local v5    # "newLength":I
    .end local v6    # "newInts":[I
    .end local v7    # "newStrings":[Ljava/lang/String;
    .end local v8    # "queueHead":I
    .end local v9    # "part1Len":I
    .end local v10    # "deltaLength":I
    :cond_3
    move-object v11, v0

    iget v11, v11, Lgnu/text/PrettyWriter;->queueTail:I

    move-object v12, v0

    iget v12, v12, Lgnu/text/PrettyWriter;->queueSize:I

    add-int/2addr v11, v12

    move v5, v11

    .line 553
    .local v5, "addr":I
    move v11, v5

    move-object v12, v0

    iget-object v12, v12, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v12, v12

    if-lt v11, v12, :cond_4

    .line 554
    move v11, v5

    move-object v12, v0

    iget-object v12, v12, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v12, v12

    sub-int/2addr v11, v12

    move v5, v11

    .line 555
    :cond_4
    move-object v11, v0

    iget-object v11, v11, Lgnu/text/PrettyWriter;->queueInts:[I

    move v12, v5

    const/4 v13, 0x0

    add-int/lit8 v12, v12, 0x0

    move v13, v1

    move v14, v2

    const/16 v15, 0x10

    shl-int/lit8 v14, v14, 0x10

    or-int/2addr v13, v14

    aput v13, v11, v12

    .line 556
    move v11, v2

    const/4 v12, 0x1

    if-le v11, v12, :cond_5

    .line 557
    move-object v11, v0

    iget-object v11, v11, Lgnu/text/PrettyWriter;->queueInts:[I

    move v12, v5

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move-object v13, v0

    move-object v14, v0

    iget v14, v14, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    invoke-direct {v13, v14}, Lgnu/text/PrettyWriter;->indexPosn(I)I

    move-result v13

    aput v13, v11, v12

    .line 559
    :cond_5
    move-object v11, v0

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    iget v12, v12, Lgnu/text/PrettyWriter;->queueSize:I

    move v13, v2

    add-int/2addr v12, v13

    iput v12, v11, Lgnu/text/PrettyWriter;->queueSize:I

    .line 560
    move v11, v5

    move v0, v11

    .end local v0    # "this":Lgnu/text/PrettyWriter;
    return v0
.end method

.method public enqueueIndent(CI)I
    .locals 7

    .prologue
    .line 607
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move v1, p1

    .local v1, "kind":C
    move v2, p2

    .local v2, "amount":I
    move-object v4, v0

    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Lgnu/text/PrettyWriter;->enqueue(II)I

    move-result v4

    move v3, v4

    .line 608
    .local v3, "result":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/text/PrettyWriter;->queueInts:[I

    move v5, v3

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    move v6, v1

    aput v6, v4, v5

    .line 609
    move-object v4, v0

    iget-object v4, v4, Lgnu/text/PrettyWriter;->queueInts:[I

    move v5, v3

    const/4 v6, 0x3

    add-int/lit8 v5, v5, 0x3

    move v6, v2

    aput v6, v4, v5

    .line 610
    move v4, v3

    move v0, v4

    .end local v0    # "this":Lgnu/text/PrettyWriter;
    return v0
.end method

.method public enqueueNewline(I)V
    .locals 12

    .prologue
    .line 565
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move v1, p1

    .local v1, "kind":I
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lgnu/text/PrettyWriter;->wordEndSeen:Z

    .line 566
    move-object v8, v0

    iget v8, v8, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    move v2, v8

    .line 568
    .local v2, "depth":I
    move-object v8, v0

    const/4 v9, 0x2

    const/4 v10, 0x5

    invoke-virtual {v8, v9, v10}, Lgnu/text/PrettyWriter;->enqueue(II)I

    move-result v8

    move v3, v8

    .line 569
    .local v3, "newline":I
    move-object v8, v0

    iget-object v8, v8, Lgnu/text/PrettyWriter;->queueInts:[I

    move v9, v3

    const/4 v10, 0x4

    add-int/lit8 v9, v9, 0x4

    move v10, v1

    aput v10, v8, v9

    .line 570
    move-object v8, v0

    iget-object v8, v8, Lgnu/text/PrettyWriter;->queueInts:[I

    move v9, v3

    const/4 v10, 0x2

    add-int/lit8 v9, v9, 0x2

    move-object v10, v0

    iget v10, v10, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    aput v10, v8, v9

    .line 571
    move-object v8, v0

    iget-object v8, v8, Lgnu/text/PrettyWriter;->queueInts:[I

    move v9, v3

    const/4 v10, 0x3

    add-int/lit8 v9, v9, 0x3

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 572
    move-object v8, v0

    iget v8, v8, Lgnu/text/PrettyWriter;->queueTail:I

    move v4, v8

    .line 573
    .local v4, "entry":I
    move-object v8, v0

    iget v8, v8, Lgnu/text/PrettyWriter;->queueSize:I

    move v5, v8

    .line 574
    .local v5, "todo":I
    :goto_0
    move v8, v5

    if-lez v8, :cond_1

    .line 576
    move v8, v4

    move-object v9, v0

    iget-object v9, v9, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v9, v9

    if-ne v8, v9, :cond_0

    .line 577
    const/4 v8, 0x0

    move v4, v8

    .line 578
    :cond_0
    move v8, v4

    move v9, v3

    if-ne v8, v9, :cond_3

    .line 579
    .line 595
    :cond_1
    move-object v8, v0

    move v9, v1

    const/16 v10, 0x4c

    if-eq v9, v10, :cond_2

    move v9, v1

    const/16 v10, 0x52

    if-ne v9, v10, :cond_7

    :cond_2
    const/4 v9, 0x1

    :goto_1
    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lgnu/text/PrettyWriter;->maybeOutput(ZZ)Z

    move-result v8

    .line 596
    return-void

    .line 580
    :cond_3
    move-object v8, v0

    move v9, v4

    invoke-direct {v8, v9}, Lgnu/text/PrettyWriter;->getQueueType(I)I

    move-result v8

    move v6, v8

    .line 581
    .local v6, "type":I
    move v8, v6

    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    move v8, v6

    const/4 v9, 0x4

    if-ne v8, v9, :cond_6

    :cond_4
    move-object v8, v0

    iget-object v8, v8, Lgnu/text/PrettyWriter;->queueInts:[I

    move v9, v4

    const/4 v10, 0x3

    add-int/lit8 v9, v9, 0x3

    aget v8, v8, v9

    if-nez v8, :cond_6

    move v8, v2

    move-object v9, v0

    iget-object v9, v9, Lgnu/text/PrettyWriter;->queueInts:[I

    move v10, v4

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    aget v9, v9, v10

    if-gt v8, v9, :cond_6

    .line 586
    move v8, v3

    move v9, v4

    sub-int/2addr v8, v9

    move v7, v8

    .line 587
    .local v7, "delta":I
    move v8, v7

    if-gez v8, :cond_5

    .line 588
    move v8, v7

    move-object v9, v0

    iget-object v9, v9, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v9, v9

    add-int/2addr v8, v9

    move v7, v8

    .line 589
    :cond_5
    move-object v8, v0

    iget-object v8, v8, Lgnu/text/PrettyWriter;->queueInts:[I

    move v9, v4

    const/4 v10, 0x3

    add-int/lit8 v9, v9, 0x3

    move v10, v7

    aput v10, v8, v9

    .line 591
    .end local v7    # "delta":I
    :cond_6
    move-object v8, v0

    move v9, v4

    invoke-direct {v8, v9}, Lgnu/text/PrettyWriter;->getQueueSize(I)I

    move-result v8

    move v7, v8

    .line 592
    .local v7, "size":I
    move v8, v5

    move v9, v7

    sub-int/2addr v8, v9

    move v5, v8

    .line 593
    move v8, v4

    move v9, v7

    add-int/2addr v8, v9

    move v4, v8

    .line 594
    goto :goto_0

    .line 595
    .end local v6    # "type":I
    .end local v7    # "size":I
    :cond_7
    const/4 v9, 0x0

    goto :goto_1
.end method

.method enqueueTab(III)I
    .locals 8

    .prologue
    .line 469
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move v1, p1

    .local v1, "flags":I
    move v2, p2

    .local v2, "colnum":I
    move v3, p3

    .local v3, "colinc":I
    move-object v5, v0

    const/4 v6, 0x6

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Lgnu/text/PrettyWriter;->enqueue(II)I

    move-result v5

    move v4, v5

    .line 470
    .local v4, "addr":I
    move-object v5, v0

    iget-object v5, v5, Lgnu/text/PrettyWriter;->queueInts:[I

    move v6, v4

    const/4 v7, 0x2

    add-int/lit8 v6, v6, 0x2

    move v7, v1

    aput v7, v5, v6

    .line 471
    move-object v5, v0

    iget-object v5, v5, Lgnu/text/PrettyWriter;->queueInts:[I

    move v6, v4

    const/4 v7, 0x3

    add-int/lit8 v6, v6, 0x3

    move v7, v2

    aput v7, v5, v6

    .line 472
    move-object v5, v0

    iget-object v5, v5, Lgnu/text/PrettyWriter;->queueInts:[I

    move v6, v4

    const/4 v7, 0x4

    add-int/lit8 v6, v6, 0x4

    move v7, v3

    aput v7, v5, v6

    .line 473
    move v5, v4

    move v0, v5

    .end local v0    # "this":Lgnu/text/PrettyWriter;
    return v0
.end method

.method ensureSpaceInBuffer(I)I
    .locals 13

    .prologue
    .line 870
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move v1, p1

    .local v1, "want":I
    move-object v9, v0

    iget-object v9, v9, Lgnu/text/PrettyWriter;->buffer:[C

    move-object v2, v9

    .line 871
    .local v2, "buffer":[C
    move-object v9, v2

    array-length v9, v9

    move v3, v9

    .line 872
    .local v3, "length":I
    move-object v9, v0

    iget v9, v9, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    move v4, v9

    .line 873
    .local v4, "fillPtr":I
    move v9, v3

    move v10, v4

    sub-int/2addr v9, v10

    move v5, v9

    .line 874
    .local v5, "available":I
    move v9, v5

    if-lez v9, :cond_0

    .line 875
    move v9, v5

    move v0, v9

    .line 889
    .end local v0    # "this":Lgnu/text/PrettyWriter;
    :goto_0
    return v0

    .line 876
    .restart local v0    # "this":Lgnu/text/PrettyWriter;
    :cond_0
    move-object v9, v0

    iget v9, v9, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-lez v9, :cond_2

    move v9, v4

    move-object v10, v0

    iget v10, v10, Lgnu/text/PrettyWriter;->lineLength:I

    if-le v9, v10, :cond_2

    .line 878
    move-object v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lgnu/text/PrettyWriter;->maybeOutput(ZZ)Z

    move-result v9

    if-nez v9, :cond_1

    .line 879
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/text/PrettyWriter;->outputPartialLine()V

    .line 880
    :cond_1
    move-object v9, v0

    move v10, v1

    invoke-virtual {v9, v10}, Lgnu/text/PrettyWriter;->ensureSpaceInBuffer(I)I

    move-result v9

    move v0, v9

    goto :goto_0

    .line 884
    :cond_2
    move v9, v3

    move v10, v1

    invoke-static {v9, v10}, Lgnu/text/PrettyWriter;->enoughSpace(II)I

    move-result v9

    move v6, v9

    .line 885
    .local v6, "newLength":I
    move v9, v6

    new-array v9, v9, [C

    move-object v7, v9

    .line 886
    .local v7, "newBuffer":[C
    move-object v9, v0

    move-object v10, v7

    iput-object v10, v9, Lgnu/text/PrettyWriter;->buffer:[C

    .line 887
    move v9, v4

    move v8, v9

    .local v8, "i":I
    :goto_1
    add-int/lit8 v8, v8, -0x1

    move v9, v8

    if-ltz v9, :cond_3

    .line 888
    move-object v9, v7

    move v10, v8

    move-object v11, v2

    move v12, v8

    aget-char v11, v11, v12

    aput-char v11, v9, v10

    goto :goto_1

    .line 889
    :cond_3
    move v9, v6

    move v10, v4

    sub-int/2addr v9, v10

    move v0, v9

    goto :goto_0
.end method

.method expandTabs(I)V
    .locals 29

    .prologue
    .line 792
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/text/PrettyWriter;
    move/from16 v3, p1

    .local v3, "through":I
    const/16 v22, 0x0

    move/from16 v4, v22

    .line 793
    .local v4, "numInsertions":I
    const/16 v22, 0x0

    move/from16 v5, v22

    .line 794
    .local v5, "additional":I
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    move/from16 v22, v0

    move/from16 v6, v22

    .line 795
    .local v6, "column":I
    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v22}, Lgnu/text/PrettyWriter;->getSectionColumn()I

    move-result v22

    move/from16 v7, v22

    .line 796
    .local v7, "sectionStart":I
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Lgnu/text/PrettyWriter;->queueTail:I

    move/from16 v22, v0

    move/from16 v8, v22

    .line 797
    .local v8, "op":I
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Lgnu/text/PrettyWriter;->queueSize:I

    move/from16 v22, v0

    move/from16 v9, v22

    .line 798
    .local v9, "todo":I
    const/16 v22, 0x6

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    move/from16 v10, v22

    .line 799
    .local v10, "blocksUsed":I
    :goto_0
    move/from16 v22, v9

    if-lez v22, :cond_1

    .line 801
    move/from16 v22, v8

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/text/PrettyWriter;->queueInts:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 802
    const/16 v22, 0x0

    move/from16 v8, v22

    .line 803
    :cond_0
    move/from16 v22, v8

    move/from16 v23, v3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 804
    .line 834
    :cond_1
    move/from16 v22, v4

    if-lez v22, :cond_a

    .line 836
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    move/from16 v22, v0

    move/from16 v11, v22

    .line 837
    .local v11, "fillPtr":I
    move/from16 v22, v11

    move/from16 v23, v5

    add-int v22, v22, v23

    move/from16 v12, v22

    .line 838
    .local v12, "newFillPtr":I
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/text/PrettyWriter;->buffer:[C

    move-object/from16 v22, v0

    move-object/from16 v13, v22

    .line 839
    .local v13, "buffer":[C
    move-object/from16 v22, v13

    move-object/from16 v14, v22

    .line 840
    .local v14, "newBuffer":[C
    move-object/from16 v22, v13

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v15, v22

    .line 841
    .local v15, "length":I
    move/from16 v22, v11

    move/from16 v16, v22

    .line 842
    .local v16, "end":I
    move/from16 v22, v12

    move/from16 v23, v15

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_2

    .line 844
    move/from16 v22, v11

    move/from16 v23, v5

    invoke-static/range {v22 .. v23}, Lgnu/text/PrettyWriter;->enoughSpace(II)I

    move-result v22

    move/from16 v17, v22

    .line 845
    .local v17, "newLength":I
    move/from16 v22, v17

    move/from16 v0, v22

    new-array v0, v0, [C

    move-object/from16 v22, v0

    move-object/from16 v14, v22

    .line 846
    move-object/from16 v22, v2

    move-object/from16 v23, v14

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lgnu/text/PrettyWriter;->buffer:[C

    .line 848
    .end local v17    # "newLength":I
    :cond_2
    move-object/from16 v22, v2

    move/from16 v23, v12

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 849
    move-object/from16 v22, v2

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    move-object/from16 v0, v23

    iget v0, v0, Lgnu/text/PrettyWriter;->bufferOffset:I

    move/from16 v23, v0

    move/from16 v24, v5

    sub-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lgnu/text/PrettyWriter;->bufferOffset:I

    .line 850
    move/from16 v22, v4

    move/from16 v17, v22

    .local v17, "i":I
    :goto_1
    add-int/lit8 v17, v17, -0x1

    move/from16 v22, v17

    if-ltz v22, :cond_9

    .line 852
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/text/PrettyWriter;->blocks:[I

    move-object/from16 v22, v0

    move/from16 v23, v10

    const/16 v24, 0x2

    move/from16 v25, v17

    mul-int v24, v24, v25

    add-int v23, v23, v24

    aget v22, v22, v23

    move/from16 v18, v22

    .line 853
    .local v18, "srcpos":I
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/text/PrettyWriter;->blocks:[I

    move-object/from16 v22, v0

    move/from16 v23, v10

    const/16 v24, 0x2

    move/from16 v25, v17

    mul-int v24, v24, v25

    add-int v23, v23, v24

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    aget v22, v22, v23

    move/from16 v19, v22

    .line 854
    .local v19, "amount":I
    move/from16 v22, v18

    move/from16 v23, v5

    add-int v22, v22, v23

    move/from16 v20, v22

    .line 855
    .local v20, "dstpos":I
    move-object/from16 v22, v13

    move/from16 v23, v18

    move-object/from16 v24, v14

    move/from16 v25, v20

    move/from16 v26, v16

    move/from16 v27, v18

    sub-int v26, v26, v27

    invoke-static/range {v22 .. v26}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 856
    move/from16 v22, v20

    move/from16 v23, v19

    sub-int v22, v22, v23

    move/from16 v21, v22

    .local v21, "j":I
    :goto_2
    move/from16 v22, v21

    move/from16 v23, v20

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    .line 857
    move-object/from16 v22, v14

    move/from16 v23, v21

    const/16 v24, 0x20

    aput-char v24, v22, v23

    .line 856
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 805
    .end local v11    # "fillPtr":I
    .end local v12    # "newFillPtr":I
    .end local v13    # "buffer":[C
    .end local v14    # "newBuffer":[C
    .end local v15    # "length":I
    .end local v16    # "end":I
    .end local v17    # "i":I
    .end local v18    # "srcpos":I
    .end local v19    # "amount":I
    .end local v20    # "dstpos":I
    .end local v21    # "j":I
    :cond_3
    move-object/from16 v22, v2

    move/from16 v23, v8

    invoke-direct/range {v22 .. v23}, Lgnu/text/PrettyWriter;->getQueueType(I)I

    move-result v22

    move/from16 v11, v22

    .line 806
    .local v11, "type":I
    move/from16 v22, v11

    const/16 v23, 0x6

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 808
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/text/PrettyWriter;->queueInts:[I

    move-object/from16 v23, v0

    move/from16 v24, v8

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    aget v23, v23, v24

    invoke-direct/range {v22 .. v23}, Lgnu/text/PrettyWriter;->posnIndex(I)I

    move-result v22

    move/from16 v12, v22

    .line 809
    .local v12, "index":I
    move-object/from16 v22, v2

    move/from16 v23, v8

    move/from16 v24, v7

    move/from16 v25, v6

    move/from16 v26, v12

    add-int v25, v25, v26

    invoke-virtual/range {v22 .. v25}, Lgnu/text/PrettyWriter;->computeTabSize(III)I

    move-result v22

    move/from16 v13, v22

    .line 810
    .local v13, "tabsize":I
    move/from16 v22, v13

    if-eqz v22, :cond_5

    .line 813
    move/from16 v22, v10

    const/16 v23, 0x2

    move/from16 v24, v4

    mul-int v23, v23, v24

    add-int v22, v22, v23

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/text/PrettyWriter;->blocks:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_4

    .line 815
    const/16 v22, 0x2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/text/PrettyWriter;->blocks:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    mul-int v22, v22, v23

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    move-object/from16 v14, v22

    .line 816
    .local v14, "newBlocks":[I
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/text/PrettyWriter;->blocks:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v24, v14

    const/16 v25, 0x0

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lgnu/text/PrettyWriter;->blocks:[I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    invoke-static/range {v22 .. v26}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 817
    move-object/from16 v22, v2

    move-object/from16 v23, v14

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lgnu/text/PrettyWriter;->blocks:[I

    .line 819
    .end local v14    # "newBlocks":[I
    :cond_4
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/text/PrettyWriter;->blocks:[I

    move-object/from16 v22, v0

    move/from16 v23, v10

    const/16 v24, 0x2

    move/from16 v25, v4

    mul-int v24, v24, v25

    add-int v23, v23, v24

    move/from16 v24, v12

    aput v24, v22, v23

    .line 820
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/text/PrettyWriter;->blocks:[I

    move-object/from16 v22, v0

    move/from16 v23, v10

    const/16 v24, 0x2

    move/from16 v25, v4

    mul-int v24, v24, v25

    add-int v23, v23, v24

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    move/from16 v24, v13

    aput v24, v22, v23

    .line 821
    add-int/lit8 v4, v4, 0x1

    .line 822
    move/from16 v22, v5

    move/from16 v23, v13

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 823
    move/from16 v22, v6

    move/from16 v23, v13

    add-int v22, v22, v23

    move/from16 v6, v22

    .line 825
    .line 830
    .end local v12    # "index":I
    .end local v13    # "tabsize":I
    :cond_5
    :goto_3
    move-object/from16 v22, v2

    move/from16 v23, v8

    invoke-direct/range {v22 .. v23}, Lgnu/text/PrettyWriter;->getQueueSize(I)I

    move-result v22

    move/from16 v12, v22

    .line 831
    .local v12, "size":I
    move/from16 v22, v9

    move/from16 v23, v12

    sub-int v22, v22, v23

    move/from16 v9, v22

    .line 832
    move/from16 v22, v8

    move/from16 v23, v12

    add-int v22, v22, v23

    move/from16 v8, v22

    .line 833
    goto/16 :goto_0

    .line 826
    .end local v12    # "size":I
    :cond_6
    move/from16 v22, v8

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_7

    move/from16 v22, v8

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 828
    :cond_7
    move/from16 v22, v6

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/text/PrettyWriter;->queueInts:[I

    move-object/from16 v24, v0

    move/from16 v25, v8

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    aget v24, v24, v25

    invoke-direct/range {v23 .. v24}, Lgnu/text/PrettyWriter;->posnIndex(I)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v7, v22

    goto :goto_3

    .line 858
    .local v11, "fillPtr":I
    .local v12, "newFillPtr":I
    .local v13, "buffer":[C
    .local v14, "newBuffer":[C
    .restart local v15    # "length":I
    .restart local v16    # "end":I
    .restart local v17    # "i":I
    .restart local v18    # "srcpos":I
    .restart local v19    # "amount":I
    .restart local v20    # "dstpos":I
    .restart local v21    # "j":I
    :cond_8
    move/from16 v22, v5

    move/from16 v23, v19

    sub-int v22, v22, v23

    move/from16 v5, v22

    .line 859
    move/from16 v22, v18

    move/from16 v16, v22

    .line 860
    goto/16 :goto_1

    .line 861
    .end local v18    # "srcpos":I
    .end local v19    # "amount":I
    .end local v20    # "dstpos":I
    .end local v21    # "j":I
    :cond_9
    move-object/from16 v22, v14

    move-object/from16 v23, v13

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_a

    .line 862
    move-object/from16 v22, v13

    const/16 v23, 0x0

    move-object/from16 v24, v14

    const/16 v25, 0x0

    move/from16 v26, v16

    invoke-static/range {v22 .. v26}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 864
    .end local v11    # "fillPtr":I
    .end local v12    # "newFillPtr":I
    .end local v13    # "buffer":[C
    .end local v14    # "newBuffer":[C
    .end local v15    # "length":I
    .end local v16    # "end":I
    .end local v17    # "i":I
    :cond_a
    return-void
.end method

.method fitsOnLine(IZ)I
    .locals 8

    .prologue
    .line 1049
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move v1, p1

    .local v1, "sectionEnd":I
    move v2, p2

    .local v2, "forceNewlines":Z
    move-object v4, v0

    iget v4, v4, Lgnu/text/PrettyWriter;->lineLength:I

    move v3, v4

    .line 1050
    .local v3, "available":I
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/text/PrettyWriter;->printReadably()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/text/PrettyWriter;->getMaxLines()I

    move-result v4

    move-object v5, v0

    iget v5, v5, Lgnu/text/PrettyWriter;->lineNumber:I

    if-ne v4, v5, :cond_0

    .line 1052
    add-int/lit8 v3, v3, -0x3

    .line 1053
    move v4, v3

    move-object v5, v0

    invoke-direct {v5}, Lgnu/text/PrettyWriter;->getSuffixLength()I

    move-result v5

    sub-int/2addr v4, v5

    move v3, v4

    .line 1055
    :cond_0
    move v4, v1

    if-ltz v4, :cond_2

    .line 1056
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lgnu/text/PrettyWriter;->queueInts:[I

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    invoke-direct {v4, v5}, Lgnu/text/PrettyWriter;->posnColumn(I)I

    move-result v4

    move v5, v3

    if-gt v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .line 1061
    .end local v0    # "this":Lgnu/text/PrettyWriter;
    :goto_1
    return v0

    .line 1056
    .restart local v0    # "this":Lgnu/text/PrettyWriter;
    :cond_1
    const/4 v4, -0x1

    goto :goto_0

    .line 1057
    :cond_2
    move v4, v2

    if-eqz v4, :cond_3

    .line 1058
    const/4 v4, -0x1

    move v0, v4

    goto :goto_1

    .line 1059
    :cond_3
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    invoke-virtual {v4, v5}, Lgnu/text/PrettyWriter;->indexColumn(I)I

    move-result v4

    move v5, v3

    if-le v4, v5, :cond_4

    .line 1060
    const/4 v4, -0x1

    move v0, v4

    goto :goto_1

    .line 1061
    :cond_4
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method public flush()V
    .locals 6

    .prologue
    .line 1195
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move-object v2, v0

    iget-object v2, v2, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    if-nez v2, :cond_0

    .line 1196
    .line 1206
    :goto_0
    return-void

    .line 1199
    :cond_0
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lgnu/text/PrettyWriter;->forcePrettyOutput()V

    .line 1200
    move-object v2, v0

    iget-object v2, v2, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1205
    .line 1206
    goto :goto_0

    .line 1202
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1204
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public forcePrettyOutput()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1183
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lgnu/text/PrettyWriter;->maybeOutput(ZZ)Z

    move-result v1

    .line 1184
    move-object v1, v0

    iget v1, v1, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    if-lez v1, :cond_0

    .line 1185
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/PrettyWriter;->outputPartialLine()V

    .line 1186
    :cond_0
    move-object v1, v0

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lgnu/text/PrettyWriter;->expandTabs(I)V

    .line 1187
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/text/PrettyWriter;->getColumnNumber()I

    move-result v2

    iput v2, v1, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    .line 1188
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    move-object v2, v0

    iget-object v2, v2, Lgnu/text/PrettyWriter;->buffer:[C

    const/4 v3, 0x0

    move-object v4, v0

    iget v4, v4, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V

    .line 1189
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 1190
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/text/PrettyWriter;->queueSize:I

    .line 1191
    return-void
.end method

.method public getColumnNumber()I
    .locals 6

    .prologue
    .line 1233
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move-object v3, v0

    iget v3, v3, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    move v1, v3

    .line 1236
    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    move v3, v1

    if-gez v3, :cond_0

    .line 1237
    move-object v3, v0

    iget v3, v3, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    move-object v4, v0

    iget v4, v4, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    add-int/2addr v3, v4

    move v0, v3

    .line 1240
    .end local v0    # "this":Lgnu/text/PrettyWriter;
    :goto_1
    return v0

    .line 1238
    .restart local v0    # "this":Lgnu/text/PrettyWriter;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/text/PrettyWriter;->buffer:[C

    move v4, v1

    aget-char v3, v3, v4

    move v2, v3

    .line 1239
    .local v2, "ch":C
    move v3, v2

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    move v3, v2

    const/16 v4, 0xd

    if-ne v3, v4, :cond_2

    .line 1240
    :cond_1
    move-object v3, v0

    iget v3, v3, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    sub-int/2addr v3, v4

    move v0, v3

    goto :goto_1

    .line 1241
    :cond_2
    goto :goto_0
.end method

.method getMaxLines()I
    .locals 2

    .prologue
    .line 1037
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    const/4 v1, -0x1

    move v0, v1

    .end local v0    # "this":Lgnu/text/PrettyWriter;
    return v0
.end method

.method protected getMiserWidth()I
    .locals 2

    .prologue
    .line 1024
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move-object v1, v0

    iget v1, v1, Lgnu/text/PrettyWriter;->miserWidth:I

    move v0, v1

    .end local v0    # "this":Lgnu/text/PrettyWriter;
    return v0
.end method

.method public getPrettyPrintingMode()I
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move-object v1, v0

    iget v1, v1, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    move v0, v1

    .end local v0    # "this":Lgnu/text/PrettyWriter;
    return v0
.end method

.method indexColumn(I)I
    .locals 16

    .prologue
    .line 759
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move/from16 v1, p1

    .local v1, "index":I
    move-object v9, v0

    iget v9, v9, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    move v2, v9

    .line 760
    .local v2, "column":I
    move-object v9, v0

    invoke-direct {v9}, Lgnu/text/PrettyWriter;->getSectionColumn()I

    move-result v9

    move v3, v9

    .line 761
    .local v3, "sectionStart":I
    move-object v9, v0

    move v10, v1

    invoke-direct {v9, v10}, Lgnu/text/PrettyWriter;->indexPosn(I)I

    move-result v9

    move v4, v9

    .line 762
    .local v4, "endPosn":I
    move-object v9, v0

    iget v9, v9, Lgnu/text/PrettyWriter;->queueTail:I

    move v5, v9

    .line 763
    .local v5, "op":I
    move-object v9, v0

    iget v9, v9, Lgnu/text/PrettyWriter;->queueSize:I

    move v6, v9

    .line 764
    .local v6, "todo":I
    :goto_0
    move v9, v6

    if-lez v9, :cond_1

    .line 767
    move v9, v5

    move-object v10, v0

    iget-object v10, v10, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v10, v10

    if-lt v9, v10, :cond_0

    .line 768
    const/4 v9, 0x0

    move v5, v9

    .line 769
    :cond_0
    move-object v9, v0

    move v10, v5

    invoke-direct {v9, v10}, Lgnu/text/PrettyWriter;->getQueueType(I)I

    move-result v9

    move v7, v9

    .line 770
    .local v7, "type":I
    move v9, v7

    if-eqz v9, :cond_3

    .line 772
    move-object v9, v0

    iget-object v9, v9, Lgnu/text/PrettyWriter;->queueInts:[I

    move v10, v5

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aget v9, v9, v10

    move v8, v9

    .line 773
    .local v8, "posn":I
    move v9, v8

    move v10, v4

    if-lt v9, v10, :cond_2

    .line 774
    .line 787
    .end local v7    # "type":I
    .end local v8    # "posn":I
    :cond_1
    move v9, v2

    move v10, v1

    add-int/2addr v9, v10

    move v0, v9

    .end local v0    # "this":Lgnu/text/PrettyWriter;
    return v0

    .line 775
    .restart local v0    # "this":Lgnu/text/PrettyWriter;
    .restart local v7    # "type":I
    .restart local v8    # "posn":I
    :cond_2
    move v9, v7

    const/4 v10, 0x6

    if-ne v9, v10, :cond_4

    .line 776
    move v9, v2

    move-object v10, v0

    move v11, v5

    move v12, v3

    move v13, v2

    move-object v14, v0

    move v15, v8

    invoke-direct {v14, v15}, Lgnu/text/PrettyWriter;->posnIndex(I)I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual {v10, v11, v12, v13}, Lgnu/text/PrettyWriter;->computeTabSize(III)I

    move-result v10

    add-int/2addr v9, v10

    move v2, v9

    .line 783
    .end local v8    # "posn":I
    :cond_3
    :goto_1
    move-object v9, v0

    move v10, v5

    invoke-direct {v9, v10}, Lgnu/text/PrettyWriter;->getQueueSize(I)I

    move-result v9

    move v8, v9

    .line 784
    .local v8, "size":I
    move v9, v6

    move v10, v8

    sub-int/2addr v9, v10

    move v6, v9

    .line 785
    move v9, v5

    move v10, v8

    add-int/2addr v9, v10

    move v5, v9

    .line 786
    goto :goto_0

    .line 778
    .local v8, "posn":I
    :cond_4
    move v9, v7

    const/4 v10, 0x2

    if-eq v9, v10, :cond_5

    move v9, v7

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    .line 780
    :cond_5
    move v9, v2

    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lgnu/text/PrettyWriter;->queueInts:[I

    move v12, v5

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    aget v11, v11, v12

    invoke-direct {v10, v11}, Lgnu/text/PrettyWriter;->posnIndex(I)I

    move-result v10

    add-int/2addr v9, v10

    move v3, v9

    goto :goto_1
.end method

.method isMisering()Z
    .locals 4

    .prologue
    .line 1029
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/text/PrettyWriter;->getMiserWidth()I

    move-result v2

    move v1, v2

    .line 1030
    .local v1, "mwidth":I
    move v2, v1

    if-lez v2, :cond_0

    move-object v2, v0

    iget v2, v2, Lgnu/text/PrettyWriter;->lineLength:I

    move-object v3, v0

    invoke-direct {v3}, Lgnu/text/PrettyWriter;->getStartColumn()I

    move-result v3

    sub-int/2addr v2, v3

    move v3, v1

    if-gt v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/text/PrettyWriter;
    return v0

    .restart local v0    # "this":Lgnu/text/PrettyWriter;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isPrettyPrinting()Z
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move-object v1, v0

    iget v1, v1, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/text/PrettyWriter;
    return v0

    .restart local v0    # "this":Lgnu/text/PrettyWriter;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public lineAbbreviationHappened()V
    .locals 0

    .prologue
    .line 1067
    return-void
.end method

.method maybeOutput(ZZ)Z
    .locals 18

    .prologue
    .line 895
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move/from16 v1, p1

    .local v1, "forceNewlines":Z
    move/from16 v2, p2

    .local v2, "flushing":Z
    const/4 v12, 0x0

    move v3, v12

    .line 898
    .local v3, "outputAnything":Z
    :goto_0
    move-object v12, v0

    iget v12, v12, Lgnu/text/PrettyWriter;->queueSize:I

    if-lez v12, :cond_d

    .line 900
    move-object v12, v0

    iget v12, v12, Lgnu/text/PrettyWriter;->queueTail:I

    move-object v13, v0

    iget-object v13, v13, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v13, v13

    if-lt v12, v13, :cond_0

    .line 901
    move-object v12, v0

    const/4 v13, 0x0

    iput v13, v12, Lgnu/text/PrettyWriter;->queueTail:I

    .line 902
    :cond_0
    move-object v12, v0

    iget v12, v12, Lgnu/text/PrettyWriter;->queueTail:I

    move v4, v12

    .line 903
    .local v4, "next":I
    move-object v12, v0

    move v13, v4

    invoke-direct {v12, v13}, Lgnu/text/PrettyWriter;->getQueueType(I)I

    move-result v12

    move v5, v12

    .line 904
    .local v5, "type":I
    move v12, v5

    packed-switch v12, :pswitch_data_0

    .line 1013
    :cond_1
    :goto_1
    move-object v12, v0

    move-object v13, v0

    iget v13, v13, Lgnu/text/PrettyWriter;->queueTail:I

    invoke-direct {v12, v13}, Lgnu/text/PrettyWriter;->getQueueSize(I)I

    move-result v12

    move v6, v12

    .line 1014
    .local v6, "size":I
    move-object v12, v0

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    iget v13, v13, Lgnu/text/PrettyWriter;->queueSize:I

    move v14, v6

    sub-int/2addr v13, v14

    iput v13, v12, Lgnu/text/PrettyWriter;->queueSize:I

    .line 1016
    move-object v12, v0

    move v13, v4

    move v14, v6

    add-int/2addr v13, v14

    iput v13, v12, Lgnu/text/PrettyWriter;->queueTail:I

    .line 1017
    goto :goto_0

    .line 908
    .end local v6    # "size":I
    :pswitch_0
    const/4 v12, -0x1

    move v7, v12

    .line 909
    .local v7, "fits":I
    move-object v12, v0

    iget-object v12, v12, Lgnu/text/PrettyWriter;->queueInts:[I

    move v13, v4

    const/4 v14, 0x4

    add-int/lit8 v13, v13, 0x4

    aget v12, v12, v13

    sparse-switch v12, :sswitch_data_0

    .line 912
    const/4 v12, 0x1

    move v6, v12

    .line 944
    .local v6, "cond":Z
    :goto_2
    move v12, v6

    if-eqz v12, :cond_1

    .line 946
    const/4 v12, 0x1

    move v3, v12

    .line 949
    move v12, v2

    if-eqz v12, :cond_8

    move v12, v7

    if-nez v12, :cond_8

    .line 950
    move-object v12, v0

    :try_start_0
    invoke-virtual {v12}, Lgnu/text/PrettyWriter;->outputPartialLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    :goto_3
    goto :goto_1

    .line 915
    .end local v6    # "cond":Z
    :sswitch_0
    move-object v12, v0

    invoke-virtual {v12}, Lgnu/text/PrettyWriter;->isMisering()Z

    move-result v12

    move v6, v12

    .line 916
    .restart local v6    # "cond":Z
    goto :goto_2

    .line 918
    .end local v6    # "cond":Z
    :sswitch_1
    move-object v12, v0

    invoke-virtual {v12}, Lgnu/text/PrettyWriter;->isMisering()Z

    move-result v12

    if-nez v12, :cond_2

    move-object v12, v0

    iget v12, v12, Lgnu/text/PrettyWriter;->lineNumber:I

    move-object v13, v0

    invoke-direct {v13}, Lgnu/text/PrettyWriter;->getSectionStartLine()I

    move-result v13

    if-le v12, v13, :cond_3

    .line 921
    :cond_2
    const/4 v12, 0x1

    move v6, v12

    .line 922
    .restart local v6    # "cond":Z
    goto :goto_2

    .line 926
    .end local v6    # "cond":Z
    :cond_3
    :sswitch_2
    move-object v12, v0

    iget-object v12, v12, Lgnu/text/PrettyWriter;->queueInts:[I

    move v13, v4

    const/4 v14, 0x3

    add-int/lit8 v13, v13, 0x3

    aget v12, v12, v13

    move v8, v12

    .line 927
    .local v8, "end":I
    move v12, v8

    if-nez v12, :cond_5

    .line 928
    const/4 v12, -0x1

    move v8, v12

    .line 935
    :cond_4
    :goto_4
    move-object v12, v0

    move v13, v8

    move v14, v1

    invoke-virtual {v12, v13, v14}, Lgnu/text/PrettyWriter;->fitsOnLine(IZ)I

    move-result v12

    move v7, v12

    .line 936
    move v12, v7

    if-lez v12, :cond_6

    .line 937
    const/4 v12, 0x0

    move v6, v12

    .restart local v6    # "cond":Z
    goto :goto_2

    .line 931
    .end local v6    # "cond":Z
    :cond_5
    move v12, v4

    move v13, v8

    add-int/2addr v12, v13

    move v8, v12

    .line 932
    move v12, v8

    move-object v13, v0

    iget-object v13, v13, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v13, v13

    if-lt v12, v13, :cond_4

    .line 933
    move v12, v8

    move-object v13, v0

    iget-object v13, v13, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v13, v13

    sub-int/2addr v12, v13

    move v8, v12

    goto :goto_4

    .line 938
    :cond_6
    move v12, v7

    if-ltz v12, :cond_7

    move v12, v2

    if-eqz v12, :cond_d

    .line 939
    :cond_7
    const/4 v12, 0x1

    move v6, v12

    .restart local v6    # "cond":Z
    goto :goto_2

    .line 952
    .end local v8    # "end":I
    :cond_8
    move-object v12, v0

    move v13, v4

    :try_start_1
    invoke-virtual {v12, v13}, Lgnu/text/PrettyWriter;->outputLine(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 954
    :catch_0
    move-exception v12

    move-object v8, v12

    .line 956
    .local v8, "ex":Ljava/io/IOException;
    new-instance v12, Ljava/lang/RuntimeException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v8

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 961
    .end local v6    # "cond":Z
    .end local v7    # "fits":I
    .end local v8    # "ex":Ljava/io/IOException;
    :pswitch_1
    move-object v12, v0

    invoke-virtual {v12}, Lgnu/text/PrettyWriter;->isMisering()Z

    move-result v12

    if-nez v12, :cond_1

    .line 963
    move-object v12, v0

    iget-object v12, v12, Lgnu/text/PrettyWriter;->queueInts:[I

    move v13, v4

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    aget v12, v12, v13

    move v8, v12

    .line 964
    .local v8, "kind":I
    move-object v12, v0

    iget-object v12, v12, Lgnu/text/PrettyWriter;->queueInts:[I

    move v13, v4

    const/4 v14, 0x3

    add-int/lit8 v13, v13, 0x3

    aget v12, v12, v13

    move v9, v12

    .line 965
    .local v9, "indent":I
    move v12, v8

    const/16 v13, 0x42

    if-ne v12, v13, :cond_9

    .line 966
    move v12, v9

    move-object v13, v0

    invoke-direct {v13}, Lgnu/text/PrettyWriter;->getStartColumn()I

    move-result v13

    add-int/2addr v12, v13

    move v9, v12

    .line 970
    :goto_5
    move-object v12, v0

    move v13, v9

    invoke-virtual {v12, v13}, Lgnu/text/PrettyWriter;->setIndentation(I)V

    .line 971
    goto/16 :goto_1

    .line 968
    :cond_9
    move v12, v9

    move-object v13, v0

    move-object v14, v0

    iget-object v14, v14, Lgnu/text/PrettyWriter;->queueInts:[I

    move v15, v4

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    aget v14, v14, v15

    invoke-direct {v13, v14}, Lgnu/text/PrettyWriter;->posnColumn(I)I

    move-result v13

    add-int/2addr v12, v13

    move v9, v12

    goto :goto_5

    .line 974
    .end local v8    # "kind":I
    .end local v9    # "indent":I
    :pswitch_2
    move v12, v4

    move v8, v12

    .line 975
    .local v8, "start":I
    move-object v12, v0

    iget-object v12, v12, Lgnu/text/PrettyWriter;->queueInts:[I

    move v13, v4

    const/4 v14, 0x3

    add-int/lit8 v13, v13, 0x3

    aget v12, v12, v13

    move v9, v12

    .line 977
    .local v9, "end":I
    move v12, v9

    if-lez v12, :cond_a

    move v12, v9

    move v13, v4

    add-int/2addr v12, v13

    move-object v13, v0

    iget-object v13, v13, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v13, v13

    rem-int/2addr v12, v13

    :goto_6
    move v9, v12

    .line 978
    move-object v12, v0

    move v13, v9

    move v14, v1

    invoke-virtual {v12, v13, v14}, Lgnu/text/PrettyWriter;->fitsOnLine(IZ)I

    move-result v12

    move v7, v12

    .line 980
    .restart local v7    # "fits":I
    move v12, v7

    if-lez v12, :cond_b

    .line 984
    move-object v12, v0

    iget-object v12, v12, Lgnu/text/PrettyWriter;->queueInts:[I

    move v13, v4

    const/4 v14, 0x4

    add-int/lit8 v13, v13, 0x4

    aget v12, v12, v13

    move v10, v12

    .line 986
    .local v10, "endr":I
    move v12, v10

    move v13, v4

    add-int/2addr v12, v13

    move-object v13, v0

    iget-object v13, v13, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v13, v13

    rem-int/2addr v12, v13

    move v4, v12

    .line 987
    move-object v12, v0

    move v13, v4

    invoke-virtual {v12, v13}, Lgnu/text/PrettyWriter;->expandTabs(I)V

    .line 988
    move-object v12, v0

    move v13, v4

    iput v13, v12, Lgnu/text/PrettyWriter;->queueTail:I

    .line 989
    move-object v12, v0

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    iget v13, v13, Lgnu/text/PrettyWriter;->queueSize:I

    move v14, v10

    sub-int/2addr v13, v14

    iput v13, v12, Lgnu/text/PrettyWriter;->queueSize:I

    .line 991
    .line 1002
    .end local v10    # "endr":I
    :goto_7
    move-object v12, v0

    iget v12, v12, Lgnu/text/PrettyWriter;->currentBlock:I

    move v13, v8

    if-ne v12, v13, :cond_1

    .line 1003
    move-object v12, v0

    const/4 v13, -0x1

    iput v13, v12, Lgnu/text/PrettyWriter;->currentBlock:I

    goto/16 :goto_1

    .line 977
    .end local v7    # "fits":I
    :cond_a
    const/4 v12, -0x1

    goto :goto_6

    .line 992
    .restart local v7    # "fits":I
    :cond_b
    move v12, v7

    if-ltz v12, :cond_c

    move v12, v2

    if-eqz v12, :cond_d

    .line 994
    :cond_c
    move-object v12, v0

    iget-object v12, v12, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    move v13, v4

    const/4 v14, 0x5

    add-int/lit8 v13, v13, 0x5

    aget-object v12, v12, v13

    move-object v10, v12

    .line 995
    .local v10, "prefix":Ljava/lang/String;
    move-object v12, v0

    iget-object v12, v12, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    move v13, v4

    const/4 v14, 0x6

    add-int/lit8 v13, v13, 0x6

    aget-object v12, v12, v13

    move-object v11, v12

    .line 997
    .local v11, "suffix":Ljava/lang/String;
    move-object v12, v0

    move-object v13, v0

    move-object v14, v0

    iget-object v14, v14, Lgnu/text/PrettyWriter;->queueInts:[I

    move v15, v4

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    aget v14, v14, v15

    invoke-direct {v13, v14}, Lgnu/text/PrettyWriter;->posnColumn(I)I

    move-result v13

    move-object v14, v10

    move-object v15, v11

    invoke-virtual {v12, v13, v14, v15}, Lgnu/text/PrettyWriter;->reallyStartLogicalBlock(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1007
    .end local v7    # "fits":I
    .end local v8    # "start":I
    .end local v9    # "end":I
    .end local v10    # "prefix":Ljava/lang/String;
    .end local v11    # "suffix":Ljava/lang/String;
    :pswitch_3
    move-object v12, v0

    invoke-virtual {v12}, Lgnu/text/PrettyWriter;->reallyEndLogicalBlock()V

    .line 1008
    goto/16 :goto_1

    .line 1010
    :pswitch_4
    move-object v12, v0

    move v13, v4

    invoke-virtual {v12, v13}, Lgnu/text/PrettyWriter;->expandTabs(I)V

    goto/16 :goto_1

    .line 1018
    .end local v4    # "next":I
    .end local v5    # "type":I
    :cond_d
    move v12, v3

    move v0, v12

    .end local v0    # "this":Lgnu/text/PrettyWriter;
    return v0

    .line 904
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 909
    :sswitch_data_0
    .sparse-switch
        0x46 -> :sswitch_1
        0x4d -> :sswitch_0
        0x53 -> :sswitch_2
    .end sparse-switch
.end method

.method outputLine(I)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1074
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move/from16 v1, p1

    .local v1, "newline":I
    move-object v14, v0

    iget-object v14, v14, Lgnu/text/PrettyWriter;->buffer:[C

    move-object v2, v14

    .line 1075
    .local v2, "buffer":[C
    move-object v14, v0

    iget-object v14, v14, Lgnu/text/PrettyWriter;->queueInts:[I

    move v15, v1

    const/16 v16, 0x4

    add-int/lit8 v15, v15, 0x4

    aget v14, v14, v15

    move v3, v14

    .line 1076
    .local v3, "kind":I
    move v14, v3

    const/16 v15, 0x4c

    if-ne v14, v15, :cond_4

    const/4 v14, 0x1

    :goto_0
    move v4, v14

    .line 1077
    .local v4, "isLiteral":Z
    move-object v14, v0

    move-object v15, v0

    iget-object v15, v15, Lgnu/text/PrettyWriter;->queueInts:[I

    move/from16 v16, v1

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    aget v15, v15, v16

    invoke-direct {v14, v15}, Lgnu/text/PrettyWriter;->posnIndex(I)I

    move-result v14

    move v5, v14

    .line 1079
    .local v5, "amountToConsume":I
    move v14, v4

    if-eqz v14, :cond_5

    .line 1080
    move v14, v5

    move v6, v14

    .line 1098
    .local v6, "amountToPrint":I
    :goto_1
    move-object v14, v0

    iget-object v14, v14, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    move-object v15, v2

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Ljava/io/Writer;->write([CII)V

    .line 1099
    move-object v14, v0

    iget v14, v14, Lgnu/text/PrettyWriter;->lineNumber:I

    move v7, v14

    .line 1101
    .local v7, "lineNumber":I
    add-int/lit8 v7, v7, 0x1

    .line 1102
    move-object v14, v0

    invoke-virtual {v14}, Lgnu/text/PrettyWriter;->printReadably()Z

    move-result v14

    if-nez v14, :cond_1

    .line 1104
    move-object v14, v0

    invoke-virtual {v14}, Lgnu/text/PrettyWriter;->getMaxLines()I

    move-result v14

    move v8, v14

    .line 1105
    .local v8, "maxLines":I
    move v14, v8

    if-lez v14, :cond_1

    move v14, v7

    move v15, v8

    if-lt v14, v15, :cond_1

    .line 1107
    move-object v14, v0

    iget-object v14, v14, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    const-string/jumbo v15, " .."

    invoke-virtual {v14, v15}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1108
    move-object v14, v0

    invoke-direct {v14}, Lgnu/text/PrettyWriter;->getSuffixLength()I

    move-result v14

    move v9, v14

    .line 1109
    .local v9, "suffixLength":I
    move v14, v9

    if-eqz v14, :cond_0

    .line 1111
    move-object v14, v0

    iget-object v14, v14, Lgnu/text/PrettyWriter;->suffix:[C

    move-object v10, v14

    .line 1112
    .local v10, "suffix":[C
    move-object v14, v10

    array-length v14, v14

    move v11, v14

    .line 1113
    .local v11, "len":I
    move-object v14, v0

    iget-object v14, v14, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    move-object v15, v10

    move/from16 v16, v11

    move/from16 v17, v9

    sub-int v16, v16, v17

    move/from16 v17, v9

    invoke-virtual/range {v14 .. v17}, Ljava/io/Writer;->write([CII)V

    .line 1116
    .end local v10    # "suffix":[C
    .end local v11    # "len":I
    :cond_0
    move-object v14, v0

    invoke-virtual {v14}, Lgnu/text/PrettyWriter;->lineAbbreviationHappened()V

    .line 1119
    .end local v8    # "maxLines":I
    .end local v9    # "suffixLength":I
    :cond_1
    move-object v14, v0

    move v15, v7

    iput v15, v14, Lgnu/text/PrettyWriter;->lineNumber:I

    .line 1120
    move-object v14, v0

    iget-object v14, v14, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/io/Writer;->write(I)V

    .line 1121
    move-object v14, v0

    const/4 v15, 0x0

    iput v15, v14, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    .line 1122
    move-object v14, v0

    iget v14, v14, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    move v8, v14

    .line 1123
    .local v8, "fillPtr":I
    move v14, v4

    if-eqz v14, :cond_8

    move-object v14, v0

    invoke-direct {v14}, Lgnu/text/PrettyWriter;->getPerLinePrefixEnd()I

    move-result v14

    :goto_2
    move v9, v14

    .line 1124
    .local v9, "prefixLen":I
    move v14, v5

    move v15, v9

    sub-int/2addr v14, v15

    move v10, v14

    .line 1125
    .local v10, "shift":I
    move v14, v8

    move v15, v10

    sub-int/2addr v14, v15

    move v11, v14

    .line 1126
    .local v11, "newFillPtr":I
    move-object v14, v2

    move-object v12, v14

    .line 1127
    .local v12, "newBuffer":[C
    move-object v14, v2

    array-length v14, v14

    move v13, v14

    .line 1128
    .local v13, "bufferLength":I
    move v14, v11

    move v15, v13

    if-le v14, v15, :cond_2

    .line 1130
    move v14, v13

    move v15, v11

    move/from16 v16, v13

    sub-int v15, v15, v16

    invoke-static {v14, v15}, Lgnu/text/PrettyWriter;->enoughSpace(II)I

    move-result v14

    new-array v14, v14, [C

    move-object v12, v14

    .line 1132
    move-object v14, v0

    move-object v15, v12

    iput-object v15, v14, Lgnu/text/PrettyWriter;->buffer:[C

    .line 1134
    :cond_2
    move-object v14, v2

    move v15, v5

    move-object/from16 v16, v12

    move/from16 v17, v9

    move/from16 v18, v8

    move/from16 v19, v5

    sub-int v18, v18, v19

    invoke-static/range {v14 .. v18}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1136
    move-object v14, v0

    iget-object v14, v14, Lgnu/text/PrettyWriter;->prefix:[C

    const/4 v15, 0x0

    move-object/from16 v16, v12

    const/16 v17, 0x0

    move/from16 v18, v9

    invoke-static/range {v14 .. v18}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1137
    move-object v14, v0

    move v15, v11

    iput v15, v14, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 1138
    move-object v14, v0

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    iget v15, v15, Lgnu/text/PrettyWriter;->bufferOffset:I

    move/from16 v16, v10

    add-int v15, v15, v16

    iput v15, v14, Lgnu/text/PrettyWriter;->bufferOffset:I

    .line 1139
    move v14, v4

    if-nez v14, :cond_3

    .line 1141
    move-object v14, v0

    iget-object v14, v14, Lgnu/text/PrettyWriter;->blocks:[I

    move-object v15, v0

    iget v15, v15, Lgnu/text/PrettyWriter;->blockDepth:I

    const/16 v16, -0x2

    add-int/lit8 v15, v15, -0x2

    move/from16 v16, v9

    aput v16, v14, v15

    .line 1142
    move-object v14, v0

    iget-object v14, v14, Lgnu/text/PrettyWriter;->blocks:[I

    move-object v15, v0

    iget v15, v15, Lgnu/text/PrettyWriter;->blockDepth:I

    const/16 v16, -0x6

    add-int/lit8 v15, v15, -0x6

    move/from16 v16, v7

    aput v16, v14, v15

    .line 1144
    :cond_3
    return-void

    .line 1076
    .end local v4    # "isLiteral":Z
    .end local v5    # "amountToConsume":I
    .end local v6    # "amountToPrint":I
    .end local v7    # "lineNumber":I
    .end local v8    # "fillPtr":I
    .end local v9    # "prefixLen":I
    .end local v10    # "shift":I
    .end local v11    # "newFillPtr":I
    .end local v12    # "newBuffer":[C
    .end local v13    # "bufferLength":I
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1084
    .restart local v4    # "isLiteral":Z
    .restart local v5    # "amountToConsume":I
    :cond_5
    move v14, v5

    move v7, v14

    .line 1086
    .local v7, "i":I
    :cond_6
    add-int/lit8 v7, v7, -0x1

    move v14, v7

    if-gez v14, :cond_7

    .line 1088
    const/4 v14, 0x0

    move v6, v14

    .line 1089
    .restart local v6    # "amountToPrint":I
    goto/16 :goto_1

    .line 1091
    .end local v6    # "amountToPrint":I
    :cond_7
    move-object v14, v2

    move v15, v7

    aget-char v14, v14, v15

    const/16 v15, 0x20

    if-eq v14, v15, :cond_6

    .line 1093
    move v14, v7

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move v6, v14

    .line 1094
    .restart local v6    # "amountToPrint":I
    goto/16 :goto_1

    .line 1123
    .local v7, "lineNumber":I
    .restart local v8    # "fillPtr":I
    :cond_8
    move-object v14, v0

    invoke-direct {v14}, Lgnu/text/PrettyWriter;->getPrefixLength()I

    move-result v14

    goto/16 :goto_2
.end method

.method outputPartialLine()V
    .locals 12

    .prologue
    .line 1149
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move-object v6, v0

    iget v6, v6, Lgnu/text/PrettyWriter;->queueTail:I

    move v1, v6

    .line 1150
    .local v1, "tail":I
    :goto_0
    move-object v6, v0

    iget v6, v6, Lgnu/text/PrettyWriter;->queueSize:I

    if-lez v6, :cond_1

    move-object v6, v0

    move v7, v1

    invoke-direct {v6, v7}, Lgnu/text/PrettyWriter;->getQueueType(I)I

    move-result v6

    if-nez v6, :cond_1

    .line 1152
    move-object v6, v0

    move v7, v1

    invoke-direct {v6, v7}, Lgnu/text/PrettyWriter;->getQueueSize(I)I

    move-result v6

    move v2, v6

    .line 1153
    .local v2, "size":I
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lgnu/text/PrettyWriter;->queueSize:I

    move v8, v2

    sub-int/2addr v7, v8

    iput v7, v6, Lgnu/text/PrettyWriter;->queueSize:I

    .line 1154
    move v6, v1

    move v7, v2

    add-int/2addr v6, v7

    move v1, v6

    .line 1155
    move v6, v1

    move-object v7, v0

    iget-object v7, v7, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v7, v7

    if-ne v6, v7, :cond_0

    .line 1156
    const/4 v6, 0x0

    move v1, v6

    .line 1157
    :cond_0
    move-object v6, v0

    move v7, v1

    iput v7, v6, Lgnu/text/PrettyWriter;->queueTail:I

    .line 1158
    goto :goto_0

    .line 1159
    .end local v2    # "size":I
    :cond_1
    move-object v6, v0

    iget v6, v6, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    move v2, v6

    .line 1160
    .local v2, "fillPtr":I
    move-object v6, v0

    iget v6, v6, Lgnu/text/PrettyWriter;->queueSize:I

    if-lez v6, :cond_2

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lgnu/text/PrettyWriter;->queueInts:[I

    move v8, v1

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    invoke-direct {v6, v7}, Lgnu/text/PrettyWriter;->posnIndex(I)I

    move-result v6

    :goto_1
    move v3, v6

    .line 1162
    .local v3, "count":I
    move v6, v2

    move v7, v3

    sub-int/2addr v6, v7

    move v4, v6

    .line 1163
    .local v4, "newFillPtr":I
    move v6, v3

    if-gtz v6, :cond_3

    .line 1164
    new-instance v6, Ljava/lang/Error;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string/jumbo v8, "outputPartialLine called when nothing can be output."

    invoke-direct {v7, v8}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1160
    .end local v3    # "count":I
    .end local v4    # "newFillPtr":I
    :cond_2
    move v6, v2

    goto :goto_1

    .line 1167
    .restart local v3    # "count":I
    .restart local v4    # "newFillPtr":I
    :cond_3
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    move-object v7, v0

    iget-object v7, v7, Lgnu/text/PrettyWriter;->buffer:[C

    const/4 v8, 0x0

    move v9, v3

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1173
    .line 1174
    move-object v6, v0

    move v7, v3

    iput v7, v6, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 1175
    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/text/PrettyWriter;->getColumnNumber()I

    move-result v7

    iput v7, v6, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    .line 1176
    move-object v6, v0

    iget-object v6, v6, Lgnu/text/PrettyWriter;->buffer:[C

    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Lgnu/text/PrettyWriter;->buffer:[C

    const/4 v9, 0x0

    move v10, v4

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1177
    move-object v6, v0

    move v7, v4

    iput v7, v6, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 1178
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lgnu/text/PrettyWriter;->bufferOffset:I

    move v8, v3

    add-int/2addr v7, v8

    iput v7, v6, Lgnu/text/PrettyWriter;->bufferOffset:I

    .line 1179
    return-void

    .line 1170
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 1172
    .local v5, "ex":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v5

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method printReadably()Z
    .locals 2

    .prologue
    .line 1043
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lgnu/text/PrettyWriter;
    return v0
.end method

.method reallyEndLogicalBlock()V
    .locals 8

    .prologue
    .line 511
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move-object v4, v0

    invoke-direct {v4}, Lgnu/text/PrettyWriter;->getPrefixLength()I

    move-result v4

    move v1, v4

    .line 512
    .local v1, "oldIndent":I
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lgnu/text/PrettyWriter;->blockDepth:I

    const/4 v6, 0x6

    add-int/lit8 v5, v5, -0x6

    iput v5, v4, Lgnu/text/PrettyWriter;->blockDepth:I

    .line 513
    move-object v4, v0

    invoke-direct {v4}, Lgnu/text/PrettyWriter;->getPrefixLength()I

    move-result v4

    move v2, v4

    .line 514
    .local v2, "newIndent":I
    move v4, v2

    move v5, v1

    if-le v4, v5, :cond_0

    .line 516
    move v4, v1

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 517
    move-object v4, v0

    iget-object v4, v4, Lgnu/text/PrettyWriter;->prefix:[C

    move v5, v3

    const/16 v6, 0x20

    aput-char v6, v4, v5

    .line 516
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 519
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method reallyStartLogicalBlock(ILjava/lang/String;Ljava/lang/String;)V
    .locals 19

    .prologue
    .line 430
    move-object/from16 v1, p0

    .local v1, "this":Lgnu/text/PrettyWriter;
    move/from16 v2, p1

    .local v2, "column":I
    move-object/from16 v3, p2

    .local v3, "prefix":Ljava/lang/String;
    move-object/from16 v4, p3

    .local v4, "suffix":Ljava/lang/String;
    move-object v13, v1

    invoke-direct {v13}, Lgnu/text/PrettyWriter;->getPerLinePrefixEnd()I

    move-result v13

    move v5, v13

    .line 431
    .local v5, "perLineEnd":I
    move-object v13, v1

    invoke-direct {v13}, Lgnu/text/PrettyWriter;->getPrefixLength()I

    move-result v13

    move v6, v13

    .line 432
    .local v6, "prefixLength":I
    move-object v13, v1

    invoke-direct {v13}, Lgnu/text/PrettyWriter;->getSuffixLength()I

    move-result v13

    move v7, v13

    .line 433
    .local v7, "suffixLength":I
    move-object v13, v1

    move v14, v2

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/text/PrettyWriter;->lineNumber:I

    move/from16 v18, v0

    invoke-direct/range {v13 .. v18}, Lgnu/text/PrettyWriter;->pushLogicalBlock(IIIII)V

    .line 435
    move-object v13, v1

    move v14, v2

    invoke-virtual {v13, v14}, Lgnu/text/PrettyWriter;->setIndentation(I)V

    .line 436
    move-object v13, v3

    if-eqz v13, :cond_0

    .line 438
    move-object v13, v1

    iget-object v13, v13, Lgnu/text/PrettyWriter;->blocks:[I

    move-object v14, v1

    iget v14, v14, Lgnu/text/PrettyWriter;->blockDepth:I

    const/4 v15, -0x3

    add-int/lit8 v14, v14, -0x3

    move v15, v2

    aput v15, v13, v14

    .line 439
    move-object v13, v3

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    move v8, v13

    .line 440
    .local v8, "plen":I
    move-object v13, v3

    const/4 v14, 0x0

    move v15, v8

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/text/PrettyWriter;->suffix:[C

    move-object/from16 v16, v0

    move/from16 v17, v2

    move/from16 v18, v8

    sub-int v17, v17, v18

    invoke-virtual/range {v13 .. v17}, Ljava/lang/String;->getChars(II[CI)V

    .line 442
    .end local v8    # "plen":I
    :cond_0
    move-object v13, v4

    if-eqz v13, :cond_2

    .line 447
    move-object v13, v1

    iget-object v13, v13, Lgnu/text/PrettyWriter;->suffix:[C

    move-object v8, v13

    .line 448
    .local v8, "totalSuffix":[C
    move-object v13, v8

    array-length v13, v13

    move v9, v13

    .line 449
    .local v9, "totalSuffixLen":I
    move-object v13, v4

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    move v10, v13

    .line 450
    .local v10, "additional":I
    move v13, v7

    move v14, v10

    add-int/2addr v13, v14

    move v11, v13

    .line 451
    .local v11, "newSuffixLen":I
    move v13, v11

    move v14, v9

    if-le v13, v14, :cond_1

    .line 453
    move v13, v9

    move v14, v10

    invoke-static {v13, v14}, Lgnu/text/PrettyWriter;->enoughSpace(II)I

    move-result v13

    move v12, v13

    .line 454
    .local v12, "newTotalSuffixLen":I
    move-object v13, v1

    move v14, v12

    new-array v14, v14, [C

    iput-object v14, v13, Lgnu/text/PrettyWriter;->suffix:[C

    .line 455
    move-object v13, v8

    move v14, v9

    move v15, v7

    sub-int/2addr v14, v15

    move-object v15, v1

    iget-object v15, v15, Lgnu/text/PrettyWriter;->suffix:[C

    move/from16 v16, v12

    move/from16 v17, v7

    sub-int v16, v16, v17

    move/from16 v17, v7

    invoke-static/range {v13 .. v17}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 458
    move v13, v12

    move v9, v13

    .line 460
    .end local v12    # "newTotalSuffixLen":I
    :cond_1
    move-object v13, v4

    const/4 v14, 0x0

    move v15, v10

    move-object/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v11

    sub-int v17, v17, v18

    invoke-virtual/range {v13 .. v17}, Ljava/lang/String;->getChars(II[CI)V

    .line 462
    move-object v13, v1

    iget-object v13, v13, Lgnu/text/PrettyWriter;->blocks:[I

    move-object v14, v1

    iget v14, v14, Lgnu/text/PrettyWriter;->blockDepth:I

    const/4 v15, -0x5

    add-int/lit8 v14, v14, -0x5

    move v15, v11

    aput v15, v13, v14

    .line 465
    .end local v8    # "totalSuffix":[C
    .end local v9    # "totalSuffixLen":I
    .end local v10    # "additional":I
    .end local v11    # "newSuffixLen":I
    :cond_2
    return-void
.end method

.method public setColumnNumber(I)V
    .locals 7

    .prologue
    .line 1246
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move v1, p1

    .local v1, "column":I
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    move v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/text/PrettyWriter;->getColumnNumber()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v2, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    .line 1247
    return-void
.end method

.method public setIndentation(I)V
    .locals 12

    .prologue
    .line 489
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move v1, p1

    .local v1, "column":I
    move-object v7, v0

    iget-object v7, v7, Lgnu/text/PrettyWriter;->prefix:[C

    move-object v2, v7

    .line 490
    .local v2, "prefix":[C
    move-object v7, v2

    array-length v7, v7

    move v3, v7

    .line 491
    .local v3, "prefixLen":I
    move-object v7, v0

    invoke-direct {v7}, Lgnu/text/PrettyWriter;->getPrefixLength()I

    move-result v7

    move v4, v7

    .line 492
    .local v4, "current":I
    move-object v7, v0

    invoke-direct {v7}, Lgnu/text/PrettyWriter;->getPerLinePrefixEnd()I

    move-result v7

    move v5, v7

    .line 493
    .local v5, "minimum":I
    move v7, v5

    move v8, v1

    if-le v7, v8, :cond_0

    .line 494
    move v7, v5

    move v1, v7

    .line 495
    :cond_0
    move v7, v1

    move v8, v3

    if-le v7, v8, :cond_1

    .line 497
    move v7, v3

    move v8, v1

    move v9, v3

    sub-int/2addr v8, v9

    invoke-static {v7, v8}, Lgnu/text/PrettyWriter;->enoughSpace(II)I

    move-result v7

    new-array v7, v7, [C

    move-object v2, v7

    .line 498
    move-object v7, v0

    iget-object v7, v7, Lgnu/text/PrettyWriter;->prefix:[C

    const/4 v8, 0x0

    move-object v9, v2

    const/4 v10, 0x0

    move v11, v4

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 499
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lgnu/text/PrettyWriter;->prefix:[C

    .line 501
    :cond_1
    move v7, v1

    move v8, v4

    if-le v7, v8, :cond_2

    .line 503
    move v7, v4

    move v6, v7

    .local v6, "i":I
    :goto_0
    move v7, v6

    move v8, v1

    if-ge v7, v8, :cond_2

    .line 504
    move-object v7, v2

    move v8, v6

    const/16 v9, 0x20

    aput-char v9, v7, v8

    .line 503
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 506
    .end local v6    # "i":I
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lgnu/text/PrettyWriter;->blocks:[I

    move-object v8, v0

    iget v8, v8, Lgnu/text/PrettyWriter;->blockDepth:I

    const/4 v9, -0x4

    add-int/lit8 v8, v8, -0x4

    move v9, v1

    aput v9, v7, v8

    .line 507
    return-void
.end method

.method public setPrettyPrinting(Z)V
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move v1, p1

    .local v1, "mode":Z
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    iput v3, v2, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    .line 76
    return-void

    .line 75
    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setPrettyPrintingMode(I)V
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move v1, p1

    .local v1, "mode":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    return-void
.end method

.method public startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 11

    .prologue
    .line 625
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move v2, p2

    .local v2, "perLine":Z
    move-object v3, p3

    .local v3, "suffix":Ljava/lang/String;
    move-object v7, v0

    iget v7, v7, Lgnu/text/PrettyWriter;->queueSize:I

    if-nez v7, :cond_1

    move-object v7, v0

    iget v7, v7, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    if-nez v7, :cond_1

    .line 627
    sget-object v7, Lgnu/text/PrettyWriter;->lineLengthLoc:Lgnu/mapping/ThreadLocation;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    .line 628
    .local v4, "llen":Ljava/lang/Object;
    move-object v7, v4

    if-nez v7, :cond_3

    .line 629
    move-object v7, v0

    const/16 v8, 0x50

    iput v8, v7, Lgnu/text/PrettyWriter;->lineLength:I

    .line 633
    :goto_0
    sget-object v7, Lgnu/text/PrettyWriter;->miserWidthLoc:Lgnu/mapping/ThreadLocation;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 634
    .local v5, "mwidth":Ljava/lang/Object;
    move-object v7, v5

    if-eqz v7, :cond_0

    move-object v7, v5

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v7, v8, :cond_0

    move-object v7, v5

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v7, v8, :cond_4

    .line 637
    :cond_0
    move-object v7, v0

    const/4 v8, -0x1

    iput v8, v7, Lgnu/text/PrettyWriter;->miserWidth:I

    .line 641
    :goto_1
    sget-object v7, Lgnu/text/PrettyWriter;->indentLoc:Lgnu/mapping/ThreadLocation;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 644
    .end local v4    # "llen":Ljava/lang/Object;
    .end local v5    # "mwidth":Ljava/lang/Object;
    :cond_1
    move-object v7, v1

    if-eqz v7, :cond_2

    .line 645
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 646
    :cond_2
    move-object v7, v0

    iget v7, v7, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-nez v7, :cond_5

    .line 647
    .line 667
    :goto_2
    return-void

    .line 631
    .restart local v4    # "llen":Ljava/lang/Object;
    :cond_3
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lgnu/text/PrettyWriter;->lineLength:I

    goto :goto_0

    .line 639
    .restart local v5    # "mwidth":Ljava/lang/Object;
    :cond_4
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lgnu/text/PrettyWriter;->miserWidth:I

    goto :goto_1

    .line 648
    .end local v4    # "llen":Ljava/lang/Object;
    .end local v5    # "mwidth":Ljava/lang/Object;
    :cond_5
    move-object v7, v0

    const/4 v8, 0x4

    const/4 v9, 0x7

    invoke-virtual {v7, v8, v9}, Lgnu/text/PrettyWriter;->enqueue(II)I

    move-result v7

    move v4, v7

    .line 650
    .local v4, "start":I
    move-object v7, v0

    iget-object v7, v7, Lgnu/text/PrettyWriter;->queueInts:[I

    move v8, v4

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    move-object v9, v0

    iget v9, v9, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    aput v9, v7, v8

    .line 651
    move-object v7, v0

    iget-object v7, v7, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    move v8, v4

    const/4 v9, 0x5

    add-int/lit8 v8, v8, 0x5

    move v9, v2

    if-eqz v9, :cond_7

    move-object v9, v1

    :goto_3
    aput-object v9, v7, v8

    .line 653
    move-object v7, v0

    iget-object v7, v7, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    move v8, v4

    const/4 v9, 0x6

    add-int/lit8 v8, v8, 0x6

    move-object v9, v3

    aput-object v9, v7, v8

    .line 654
    move-object v7, v0

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    .line 655
    move-object v7, v0

    iget v7, v7, Lgnu/text/PrettyWriter;->currentBlock:I

    move v5, v7

    .line 656
    .local v5, "outerBlock":I
    move v7, v5

    if-gez v7, :cond_8

    .line 657
    const/4 v7, 0x0

    move v5, v7

    .line 664
    :cond_6
    :goto_4
    move-object v7, v0

    iget-object v7, v7, Lgnu/text/PrettyWriter;->queueInts:[I

    move v8, v4

    const/4 v9, 0x4

    add-int/lit8 v8, v8, 0x4

    move v9, v5

    aput v9, v7, v8

    .line 665
    move-object v7, v0

    iget-object v7, v7, Lgnu/text/PrettyWriter;->queueInts:[I

    move v8, v4

    const/4 v9, 0x3

    add-int/lit8 v8, v8, 0x3

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 666
    move-object v7, v0

    move v8, v4

    iput v8, v7, Lgnu/text/PrettyWriter;->currentBlock:I

    .line 667
    goto :goto_2

    .line 651
    .end local v5    # "outerBlock":I
    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    .line 660
    .restart local v5    # "outerBlock":I
    :cond_8
    move v7, v5

    move v8, v4

    sub-int/2addr v7, v8

    move v5, v7

    .line 661
    move v7, v5

    if-lez v7, :cond_6

    .line 662
    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v8, v8

    sub-int/2addr v7, v8

    move v5, v7

    goto :goto_4
.end method

.method public write(I)V
    .locals 6

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move v1, p1

    .local v1, "ch":I
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lgnu/text/PrettyWriter;->wordEndSeen:Z

    .line 307
    move v3, v1

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget v3, v3, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-lez v3, :cond_1

    .line 308
    move-object v3, v0

    const/16 v4, 0x4c

    invoke-virtual {v3, v4}, Lgnu/text/PrettyWriter;->enqueueNewline(I)V

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/text/PrettyWriter;->ensureSpaceInBuffer(I)I

    move-result v3

    .line 312
    move-object v3, v0

    iget v3, v3, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    move v2, v3

    .line 313
    .local v2, "fillPointer":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/text/PrettyWriter;->buffer:[C

    move v4, v2

    move v5, v1

    int-to-char v5, v5

    aput-char v5, v3, v4

    .line 314
    move-object v3, v0

    const/4 v4, 0x1

    move v5, v2

    add-int/2addr v4, v5

    iput v4, v3, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 315
    move v3, v1

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Lgnu/text/PrettyWriter;->currentBlock:I

    if-gez v3, :cond_0

    .line 316
    move-object v3, v0

    const/16 v4, 0x53

    invoke-virtual {v3, v4}, Lgnu/text/PrettyWriter;->enqueueNewline(I)V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;II)V

    .line 323
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 11

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "count":I
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lgnu/text/PrettyWriter;->wordEndSeen:Z

    .line 329
    :goto_0
    move v8, v3

    if-lez v8, :cond_4

    .line 331
    move v8, v3

    move v4, v8

    .line 333
    .local v4, "cnt":I
    move-object v8, v0

    move v9, v3

    invoke-virtual {v8, v9}, Lgnu/text/PrettyWriter;->ensureSpaceInBuffer(I)I

    move-result v8

    move v5, v8

    .line 334
    .local v5, "available":I
    move v8, v4

    move v9, v5

    if-le v8, v9, :cond_0

    .line 335
    move v8, v5

    move v4, v8

    .line 336
    :cond_0
    move-object v8, v0

    iget v8, v8, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    move v6, v8

    .line 337
    .local v6, "fillPointer":I
    move v8, v3

    move v9, v4

    sub-int/2addr v8, v9

    move v3, v8

    .line 338
    :goto_1
    add-int/lit8 v4, v4, -0x1

    move v8, v4

    if-ltz v8, :cond_3

    .line 340
    move-object v8, v1

    move v9, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v7, v8

    .line 341
    .local v7, "ch":C
    move v8, v7

    const/16 v9, 0xa

    if-ne v8, v9, :cond_2

    move-object v8, v0

    iget v8, v8, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-lez v8, :cond_2

    .line 343
    move-object v8, v0

    move v9, v6

    iput v9, v8, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 344
    move-object v8, v0

    const/16 v9, 0x4c

    invoke-virtual {v8, v9}, Lgnu/text/PrettyWriter;->enqueueNewline(I)V

    .line 345
    move-object v8, v0

    iget v8, v8, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    move v6, v8

    .line 357
    :cond_1
    :goto_2
    goto :goto_1

    .line 349
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lgnu/text/PrettyWriter;->buffer:[C

    move v9, v6

    add-int/lit8 v6, v6, 0x1

    move v10, v7

    aput-char v10, v8, v9

    .line 350
    move v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_1

    move-object v8, v0

    iget v8, v8, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    const/4 v9, 0x1

    if-le v8, v9, :cond_1

    move-object v8, v0

    iget v8, v8, Lgnu/text/PrettyWriter;->currentBlock:I

    if-gez v8, :cond_1

    .line 352
    move-object v8, v0

    move v9, v6

    iput v9, v8, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 353
    move-object v8, v0

    const/16 v9, 0x53

    invoke-virtual {v8, v9}, Lgnu/text/PrettyWriter;->enqueueNewline(I)V

    .line 354
    move-object v8, v0

    iget v8, v8, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    move v6, v8

    goto :goto_2

    .line 358
    .end local v7    # "ch":C
    :cond_3
    move-object v8, v0

    move v9, v6

    iput v9, v8, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 359
    goto :goto_0

    .line 360
    .end local v4    # "cnt":I
    .end local v5    # "available":I
    .end local v6    # "fillPointer":I
    :cond_4
    return-void
.end method

.method public write([C)V
    .locals 6

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move-object v1, p1

    .local v1, "str":[C
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lgnu/text/PrettyWriter;->write([CII)V

    .line 365
    return-void
.end method

.method public write([CII)V
    .locals 16

    .prologue
    .line 369
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move-object/from16 v1, p1

    .local v1, "str":[C
    move/from16 v2, p2

    .local v2, "start":I
    move/from16 v3, p3

    .local v3, "count":I
    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Lgnu/text/PrettyWriter;->wordEndSeen:Z

    .line 371
    move v10, v2

    move v11, v3

    add-int/2addr v10, v11

    move v4, v10

    .line 373
    .local v4, "end":I
    :goto_0
    move v10, v3

    if-lez v10, :cond_5

    .line 376
    move v10, v2

    move v5, v10

    .local v5, "i":I
    :goto_1
    move v10, v5

    move v11, v4

    if-ge v10, v11, :cond_2

    .line 379
    move-object v10, v0

    iget v10, v10, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-lez v10, :cond_1

    move-object v10, v1

    move v11, v5

    aget-char v10, v10, v11

    move v15, v10

    move v10, v15

    move v11, v15

    move v6, v11

    .local v6, "c":C
    const/16 v11, 0xa

    if-eq v10, v11, :cond_0

    move v10, v6

    const/16 v11, 0x20

    if-ne v10, v11, :cond_1

    move-object v10, v0

    iget v10, v10, Lgnu/text/PrettyWriter;->currentBlock:I

    if-gez v10, :cond_1

    .line 383
    :cond_0
    move-object v10, v0

    move-object v11, v1

    move v12, v2

    move v13, v5

    move v14, v2

    sub-int/2addr v13, v14

    invoke-virtual {v10, v11, v12, v13}, Lgnu/text/PrettyWriter;->write([CII)V

    .line 384
    move-object v10, v0

    move v11, v6

    invoke-virtual {v10, v11}, Lgnu/text/PrettyWriter;->write(I)V

    .line 385
    move v10, v5

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move v2, v10

    .line 386
    move v10, v4

    move v11, v2

    sub-int/2addr v10, v11

    move v3, v10

    .line 387
    goto :goto_0

    .line 376
    .end local v6    # "c":C
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 403
    .line 393
    .end local v5    # "i":I
    :cond_2
    move-object v10, v0

    move v11, v3

    invoke-virtual {v10, v11}, Lgnu/text/PrettyWriter;->ensureSpaceInBuffer(I)I

    move-result v10

    move v5, v10

    .line 394
    .local v5, "available":I
    move v10, v5

    move v11, v3

    if-ge v10, v11, :cond_3

    move v10, v5

    :goto_2
    move v6, v10

    .line 395
    .local v6, "cnt":I
    move-object v10, v0

    iget v10, v10, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    move v7, v10

    .line 396
    .local v7, "fillPointer":I
    move v10, v7

    move v11, v6

    add-int/2addr v10, v11

    move v8, v10

    .line 397
    .local v8, "newFillPtr":I
    move v10, v7

    move v9, v10

    .local v9, "i":I
    :goto_3
    move v10, v9

    move v11, v8

    if-ge v10, v11, :cond_4

    .line 398
    move-object v10, v0

    iget-object v10, v10, Lgnu/text/PrettyWriter;->buffer:[C

    move v11, v9

    move-object v12, v1

    move v13, v2

    add-int/lit8 v2, v2, 0x1

    aget-char v12, v12, v13

    aput-char v12, v10, v11

    .line 397
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 394
    .end local v6    # "cnt":I
    .end local v7    # "fillPointer":I
    .end local v8    # "newFillPtr":I
    .end local v9    # "i":I
    :cond_3
    move v10, v3

    goto :goto_2

    .line 399
    .restart local v6    # "cnt":I
    .restart local v7    # "fillPointer":I
    .restart local v8    # "newFillPtr":I
    .restart local v9    # "i":I
    :cond_4
    move-object v10, v0

    move v11, v8

    iput v11, v10, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 400
    move v10, v3

    move v11, v6

    sub-int/2addr v10, v11

    move v3, v10

    .line 401
    move v10, v3

    if-nez v10, :cond_2

    .line 402
    goto :goto_0

    .line 405
    .end local v5    # "available":I
    .end local v6    # "cnt":I
    .end local v7    # "fillPointer":I
    .end local v8    # "newFillPtr":I
    .end local v9    # "i":I
    :cond_5
    return-void
.end method

.method public final writeBreak(I)V
    .locals 4

    .prologue
    .line 600
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move v1, p1

    .local v1, "kind":I
    move-object v2, v0

    iget v2, v2, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-lez v2, :cond_0

    .line 601
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/text/PrettyWriter;->enqueueNewline(I)V

    .line 602
    :cond_0
    return-void
.end method

.method public writeWordEnd()V
    .locals 3

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lgnu/text/PrettyWriter;->wordEndSeen:Z

    .line 285
    return-void
.end method

.method public writeWordStart()V
    .locals 3

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Lgnu/text/PrettyWriter;
    move-object v1, v0

    iget-boolean v1, v1, Lgnu/text/PrettyWriter;->wordEndSeen:Z

    if-eqz v1, :cond_0

    .line 294
    move-object v1, v0

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lgnu/text/PrettyWriter;->write(I)V

    .line 295
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lgnu/text/PrettyWriter;->wordEndSeen:Z

    .line 296
    return-void
.end method
