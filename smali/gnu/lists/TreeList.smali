.class public Lgnu/lists/TreeList;
.super Lgnu/lists/AbstractSequence;
.source "TreeList.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Lgnu/lists/XConsumer;
.implements Lgnu/lists/PositionConsumer;
.implements Lgnu/lists/Consumable;


# static fields
.field protected static final BEGIN_ATTRIBUTE_LONG:I = 0xf109

.field public static final BEGIN_ATTRIBUTE_LONG_SIZE:I = 0x5

.field protected static final BEGIN_DOCUMENT:I = 0xf110

.field protected static final BEGIN_ELEMENT_LONG:I = 0xf108

.field protected static final BEGIN_ELEMENT_SHORT:I = 0xa000

.field protected static final BEGIN_ELEMENT_SHORT_INDEX_MAX:I = 0xfff

.field public static final BEGIN_ENTITY:I = 0xf112

.field public static final BEGIN_ENTITY_SIZE:I = 0x5

.field static final BOOL_FALSE:C = '\uf100'

.field static final BOOL_TRUE:C = '\uf101'

.field static final BYTE_PREFIX:I = 0xf000

.field static final CDATA_SECTION:I = 0xf115

.field static final CHAR_FOLLOWS:I = 0xf106

.field static final COMMENT:I = 0xf117

.field protected static final DOCUMENT_URI:I = 0xf118

.field static final DOUBLE_FOLLOWS:I = 0xf105

.field static final END_ATTRIBUTE:I = 0xf10a

.field public static final END_ATTRIBUTE_SIZE:I = 0x1

.field protected static final END_DOCUMENT:I = 0xf111

.field protected static final END_ELEMENT_LONG:I = 0xf10c

.field protected static final END_ELEMENT_SHORT:I = 0xf10b

.field protected static final END_ENTITY:I = 0xf113

.field static final FLOAT_FOLLOWS:I = 0xf104

.field public static final INT_FOLLOWS:I = 0xf102

.field static final INT_SHORT_ZERO:I = 0xc000

.field static final JOINER:I = 0xf116

.field static final LONG_FOLLOWS:I = 0xf103

.field public static final MAX_CHAR_SHORT:I = 0x9fff

.field static final MAX_INT_SHORT:I = 0x1fff

.field static final MIN_INT_SHORT:I = -0x1000

.field static final OBJECT_REF_FOLLOWS:C = '\uf10d'

.field static final OBJECT_REF_SHORT:I = 0xe000

.field static final OBJECT_REF_SHORT_INDEX_MAX:I = 0xfff

.field protected static final POSITION_PAIR_FOLLOWS:C = '\uf10f'

.field static final POSITION_REF_FOLLOWS:C = '\uf10e'

.field protected static final PROCESSING_INSTRUCTION:I = 0xf114


# instance fields
.field public attrStart:I

.field currentParent:I

.field public data:[C

.field public docStart:I

.field public gapEnd:I

.field public gapStart:I

.field public objects:[Ljava/lang/Object;

.field public oindex:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/lists/AbstractSequence;-><init>()V

    .line 324
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lgnu/lists/TreeList;->currentParent:I

    .line 40
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/lists/TreeList;->resizeObjects()V

    .line 41
    move-object v1, v0

    const/16 v2, 0xc8

    iput v2, v1, Lgnu/lists/TreeList;->gapEnd:I

    .line 42
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lgnu/lists/TreeList;->gapEnd:I

    new-array v2, v2, [C

    iput-object v2, v1, Lgnu/lists/TreeList;->data:[C

    .line 43
    return-void
.end method

.method public constructor <init>(Lgnu/lists/TreeList;)V
    .locals 6

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v1, p1

    .local v1, "list":Lgnu/lists/TreeList;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    iget-object v5, v5, Lgnu/lists/TreeList;->data:[C

    array-length v5, v5

    invoke-direct {v2, v3, v4, v5}, Lgnu/lists/TreeList;-><init>(Lgnu/lists/TreeList;II)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lgnu/lists/TreeList;II)V
    .locals 8

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v1, p1

    .local v1, "list":Lgnu/lists/TreeList;
    move v2, p2

    .local v2, "startPosition":I
    move v3, p3

    .local v3, "endPosition":I
    move-object v4, v0

    invoke-direct {v4}, Lgnu/lists/TreeList;-><init>()V

    .line 54
    move-object v4, v1

    move v5, v2

    move v6, v3

    move-object v7, v0

    invoke-virtual {v4, v5, v6, v7}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    move-result v4

    .line 55
    return-void
.end method

.method private copyToList(II)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 1646
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "startPosition":I
    move v2, p2

    .local v2, "endPosition":I
    new-instance v3, Lgnu/lists/TreeList;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Lgnu/lists/TreeList;-><init>(Lgnu/lists/TreeList;II)V

    move-object v0, v3

    .end local v0    # "this":Lgnu/lists/TreeList;
    return-object v0
.end method


# virtual methods
.method public append(C)Lgnu/lists/Consumer;
    .locals 4

    .prologue
    .line 683
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "c":C
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/TreeList;->write(I)V

    .line 684
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/TreeList;
    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;
    .locals 6

    .prologue
    .line 828
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v1, p1

    .local v1, "csq":Ljava/lang/CharSequence;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 829
    const-string/jumbo v2, "null"

    move-object v1, v2

    .line 830
    :cond_0
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lgnu/lists/TreeList;->append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/TreeList;
    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;
    .locals 8

    .prologue
    .line 835
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v1, p1

    .local v1, "csq":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "end":I
    move-object v5, v1

    if-nez v5, :cond_0

    .line 836
    const-string/jumbo v5, "null"

    move-object v1, v5

    .line 837
    :cond_0
    move v5, v2

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 838
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->append(C)Lgnu/lists/Consumer;

    move-result-object v5

    .line 837
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 839
    :cond_1
    move-object v5, v0

    move-object v0, v5

    .end local v0    # "this":Lgnu/lists/TreeList;
    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "x0":C
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/TreeList;->append(C)Lgnu/lists/Consumer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/TreeList;
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/TreeList;->append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/TreeList;
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "x1":I
    move v3, p3

    .local v3, "x2":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/lists/TreeList;->append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/lists/TreeList;
    return-object v0
.end method

.method public beginEntity(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 535
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v1, p1

    .local v1, "base":Ljava/lang/Object;
    move-object v3, v0

    iget v3, v3, Lgnu/lists/TreeList;->gapStart:I

    if-eqz v3, :cond_0

    .line 536
    .line 546
    :goto_0
    return-void

    .line 537
    :cond_0
    move-object v3, v0

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 538
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/lists/TreeList;->gapEnd:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lgnu/lists/TreeList;->gapEnd:I

    .line 539
    move-object v3, v0

    iget v3, v3, Lgnu/lists/TreeList;->gapStart:I

    move v2, v3

    .line 540
    .local v2, "p":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/TreeList;->data:[C

    move v4, v2

    const v5, 0xf112

    aput-char v5, v3, v4

    .line 541
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 542
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x3

    add-int/lit8 v4, v4, 0x3

    move-object v5, v0

    iget v5, v5, Lgnu/lists/TreeList;->currentParent:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    const/4 v5, -0x1

    :goto_1
    invoke-virtual {v3, v4, v5}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 543
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x5

    add-int/lit8 v4, v4, 0x5

    iput v4, v3, Lgnu/lists/TreeList;->gapStart:I

    .line 544
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lgnu/lists/TreeList;->currentParent:I

    .line 545
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/TreeList;->data:[C

    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreeList;->gapEnd:I

    const v5, 0xf113

    aput-char v5, v3, v4

    .line 546
    goto :goto_0

    .line 542
    :cond_1
    move-object v5, v0

    iget v5, v5, Lgnu/lists/TreeList;->currentParent:I

    move v6, v2

    sub-int/2addr v5, v6

    goto :goto_1
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/lists/TreeList;->gapStart:I

    .line 65
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/TreeList;->data:[C

    array-length v2, v2

    iput v2, v1, Lgnu/lists/TreeList;->gapEnd:I

    .line 66
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/lists/TreeList;->attrStart:I

    .line 67
    move-object v1, v0

    iget v1, v1, Lgnu/lists/TreeList;->gapEnd:I

    const/16 v2, 0x5dc

    if-le v1, v2, :cond_0

    .line 69
    move-object v1, v0

    const/16 v2, 0xc8

    iput v2, v1, Lgnu/lists/TreeList;->gapEnd:I

    .line 70
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lgnu/lists/TreeList;->gapEnd:I

    new-array v2, v2, [C

    iput-object v2, v1, Lgnu/lists/TreeList;->data:[C

    .line 72
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    .line 73
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/lists/TreeList;->oindex:I

    .line 74
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/lists/TreeList;->resizeObjects()V

    .line 75
    return-void
.end method

.method public compare(II)I
    .locals 7

    .prologue
    .line 2271
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "ipos1":I
    move v2, p2

    .local v2, "ipos2":I
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v5

    move v3, v5

    .line 2272
    .local v3, "i1":I
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v5

    move v4, v5

    .line 2273
    .local v4, "i2":I
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_0

    const/4 v5, -0x1

    :goto_0
    move v0, v5

    .end local v0    # "this":Lgnu/lists/TreeList;
    return v0

    .restart local v0    # "this":Lgnu/lists/TreeList;
    :cond_0
    move v5, v3

    move v6, v4

    if-le v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public consume(Lgnu/lists/Consumer;)V
    .locals 6

    .prologue
    .line 2303
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/TreeList;->data:[C

    array-length v4, v4

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    move-result v2

    .line 2304
    return-void
.end method

.method public consume(Lgnu/lists/SeqPosition;)V
    .locals 10

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v1, p1

    .local v1, "position":Lgnu/lists/SeqPosition;
    move-object v3, v0

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 402
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/lists/SeqPosition;->copy()Lgnu/lists/SeqPosition;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v3

    move v2, v3

    .line 403
    .local v2, "index":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/TreeList;->data:[C

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lgnu/lists/TreeList;->gapStart:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lgnu/lists/TreeList;->gapStart:I

    const v5, 0xf10e

    aput-char v5, v3, v4

    .line 404
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreeList;->gapStart:I

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 405
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lgnu/lists/TreeList;->gapStart:I

    const/4 v5, 0x2

    add-int/lit8 v4, v4, 0x2

    iput v4, v3, Lgnu/lists/TreeList;->gapStart:I

    .line 406
    return-void
.end method

.method public consumeIRange(IILgnu/lists/Consumer;)I
    .locals 17

    .prologue
    .line 1090
    move-object/from16 v1, p0

    .local v1, "this":Lgnu/lists/TreeList;
    move/from16 v2, p1

    .local v2, "startPosition":I
    move/from16 v3, p2

    .local v3, "endPosition":I
    move-object/from16 v4, p3

    .local v4, "out":Lgnu/lists/Consumer;
    move v11, v2

    move v5, v11

    .line 1091
    .local v5, "pos":I
    move v11, v2

    move-object v12, v1

    iget v12, v12, Lgnu/lists/TreeList;->gapStart:I

    if-gt v11, v12, :cond_3

    move v11, v3

    move-object v12, v1

    iget v12, v12, Lgnu/lists/TreeList;->gapStart:I

    if-le v11, v12, :cond_3

    move-object v11, v1

    iget v11, v11, Lgnu/lists/TreeList;->gapStart:I

    :goto_0
    move v6, v11

    .line 1096
    .local v6, "limit":I
    :cond_0
    :goto_1
    move v11, v5

    move v12, v6

    if-lt v11, v12, :cond_1

    .line 1098
    move v11, v5

    move-object v12, v1

    iget v12, v12, Lgnu/lists/TreeList;->gapStart:I

    if-ne v11, v12, :cond_12

    move v11, v3

    move-object v12, v1

    iget v12, v12, Lgnu/lists/TreeList;->gapEnd:I

    if-le v11, v12, :cond_12

    .line 1100
    move-object v11, v1

    iget v11, v11, Lgnu/lists/TreeList;->gapEnd:I

    move v5, v11

    .line 1101
    move v11, v3

    move v6, v11

    .line 1107
    :cond_1
    move-object v11, v1

    iget-object v11, v11, Lgnu/lists/TreeList;->data:[C

    move v12, v5

    add-int/lit8 v5, v5, 0x1

    aget-char v11, v11, v12

    move v8, v11

    .line 1109
    .local v8, "datum":C
    move v11, v8

    const v12, 0x9fff

    if-gt v11, v12, :cond_5

    .line 1111
    move v11, v5

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    move v9, v11

    .line 1112
    .local v9, "start":I
    move v11, v6

    move v10, v11

    .line 1115
    .local v10, "lim":I
    :cond_2
    move v11, v5

    move v12, v10

    if-lt v11, v12, :cond_4

    .line 1116
    .line 1124
    :goto_2
    move-object v11, v4

    move-object v12, v1

    iget-object v12, v12, Lgnu/lists/TreeList;->data:[C

    move v13, v9

    move v14, v5

    move v15, v9

    sub-int/2addr v14, v15

    invoke-interface {v11, v12, v13, v14}, Lgnu/lists/Consumer;->write([CII)V

    .line 1125
    goto :goto_1

    .line 1091
    .end local v6    # "limit":I
    .end local v8    # "datum":C
    .end local v9    # "start":I
    .end local v10    # "lim":I
    :cond_3
    move v11, v3

    goto :goto_0

    .line 1117
    .restart local v6    # "limit":I
    .restart local v8    # "datum":C
    .restart local v9    # "start":I
    .restart local v10    # "lim":I
    :cond_4
    move-object v11, v1

    iget-object v11, v11, Lgnu/lists/TreeList;->data:[C

    move v12, v5

    add-int/lit8 v5, v5, 0x1

    aget-char v11, v11, v12

    move v8, v11

    .line 1118
    move v11, v8

    const v12, 0x9fff

    if-le v11, v12, :cond_2

    .line 1120
    add-int/lit8 v5, v5, -0x1

    .line 1121
    goto :goto_2

    .line 1127
    .end local v9    # "start":I
    .end local v10    # "lim":I
    :cond_5
    move v11, v8

    const v12, 0xe000

    if-lt v11, v12, :cond_6

    move v11, v8

    const v12, 0xefff

    if-gt v11, v12, :cond_6

    .line 1130
    move-object v11, v4

    move-object v12, v1

    iget-object v12, v12, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move v13, v8

    const v14, 0xe000

    sub-int/2addr v13, v14

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 1131
    goto :goto_1

    .line 1133
    :cond_6
    move v11, v8

    const v12, 0xa000

    if-lt v11, v12, :cond_7

    move v11, v8

    const v12, 0xafff

    if-gt v11, v12, :cond_7

    .line 1136
    move v11, v8

    const v12, 0xa000

    sub-int/2addr v11, v12

    move v7, v11

    .line 1137
    .local v7, "index":I
    move-object v11, v4

    move-object v12, v1

    iget-object v12, v12, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move v13, v7

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    .line 1138
    add-int/lit8 v5, v5, 0x2

    .line 1139
    goto/16 :goto_1

    .line 1148
    .end local v7    # "index":I
    :cond_7
    move v11, v8

    const v12, 0xb000

    if-lt v11, v12, :cond_8

    move v11, v8

    const v12, 0xdfff

    if-gt v11, v12, :cond_8

    .line 1151
    move-object v11, v4

    move v12, v8

    const v13, 0xc000

    sub-int/2addr v12, v13

    invoke-interface {v11, v12}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 1152
    goto/16 :goto_1

    .line 1154
    :cond_8
    move v11, v8

    packed-switch v11, :pswitch_data_0

    .line 1283
    :pswitch_0
    new-instance v11, Ljava/lang/Error;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "unknown code:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1157
    :pswitch_1
    move-object v11, v4

    invoke-interface {v11}, Lgnu/lists/Consumer;->startDocument()V

    .line 1158
    add-int/lit8 v5, v5, 0x4

    .line 1159
    goto/16 :goto_1

    .line 1161
    :pswitch_2
    move-object v11, v4

    invoke-interface {v11}, Lgnu/lists/Consumer;->endDocument()V

    .line 1162
    goto/16 :goto_1

    .line 1164
    :pswitch_3
    move-object v11, v4

    instance-of v11, v11, Lgnu/lists/TreeList;

    if-eqz v11, :cond_9

    .line 1165
    move-object v11, v4

    check-cast v11, Lgnu/lists/TreeList;

    move-object v12, v1

    iget-object v12, v12, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object v13, v1

    move v14, v5

    invoke-virtual {v13, v14}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v13

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Lgnu/lists/TreeList;->beginEntity(Ljava/lang/Object;)V

    .line 1166
    :cond_9
    add-int/lit8 v5, v5, 0x4

    .line 1167
    goto/16 :goto_1

    .line 1169
    :pswitch_4
    move-object v11, v4

    instance-of v11, v11, Lgnu/lists/TreeList;

    if-eqz v11, :cond_0

    .line 1170
    move-object v11, v4

    check-cast v11, Lgnu/lists/TreeList;

    invoke-virtual {v11}, Lgnu/lists/TreeList;->endEntity()V

    goto/16 :goto_1

    .line 1173
    :pswitch_5
    move-object v11, v4

    instance-of v11, v11, Lgnu/lists/TreeList;

    if-eqz v11, :cond_a

    .line 1174
    move-object v11, v4

    check-cast v11, Lgnu/lists/TreeList;

    move-object v12, v1

    iget-object v12, v12, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object v13, v1

    move v14, v5

    invoke-virtual {v13, v14}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v13

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Lgnu/lists/TreeList;->writeDocumentUri(Ljava/lang/Object;)V

    .line 1175
    :cond_a
    add-int/lit8 v5, v5, 0x2

    .line 1176
    goto/16 :goto_1

    .line 1179
    :pswitch_6
    move-object v11, v1

    move v12, v5

    invoke-virtual {v11, v12}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v11

    move v9, v11

    .line 1180
    .local v9, "length":I
    add-int/lit8 v5, v5, 0x2

    .line 1181
    move-object v11, v4

    instance-of v11, v11, Lgnu/lists/XConsumer;

    if-eqz v11, :cond_b

    .line 1182
    move-object v11, v4

    check-cast v11, Lgnu/lists/XConsumer;

    move-object v12, v1

    iget-object v12, v12, Lgnu/lists/TreeList;->data:[C

    move v13, v5

    move v14, v9

    invoke-interface {v11, v12, v13, v14}, Lgnu/lists/XConsumer;->writeComment([CII)V

    .line 1183
    :cond_b
    move v11, v5

    move v12, v9

    add-int/2addr v11, v12

    move v5, v11

    .line 1185
    goto/16 :goto_1

    .line 1188
    .end local v9    # "length":I
    :pswitch_7
    move-object v11, v1

    move v12, v5

    invoke-virtual {v11, v12}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v11

    move v9, v11

    .line 1189
    .restart local v9    # "length":I
    add-int/lit8 v5, v5, 0x2

    .line 1190
    move-object v11, v4

    instance-of v11, v11, Lgnu/lists/XConsumer;

    if-eqz v11, :cond_c

    .line 1191
    move-object v11, v4

    check-cast v11, Lgnu/lists/XConsumer;

    move-object v12, v1

    iget-object v12, v12, Lgnu/lists/TreeList;->data:[C

    move v13, v5

    move v14, v9

    invoke-interface {v11, v12, v13, v14}, Lgnu/lists/XConsumer;->writeCDATA([CII)V

    .line 1194
    :goto_3
    move v11, v5

    move v12, v9

    add-int/2addr v11, v12

    move v5, v11

    .line 1196
    goto/16 :goto_1

    .line 1193
    :cond_c
    move-object v11, v4

    move-object v12, v1

    iget-object v12, v12, Lgnu/lists/TreeList;->data:[C

    move v13, v5

    move v14, v9

    invoke-interface {v11, v12, v13, v14}, Lgnu/lists/Consumer;->write([CII)V

    goto :goto_3

    .line 1199
    .end local v9    # "length":I
    :pswitch_8
    move-object v11, v1

    iget-object v11, v11, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object v12, v1

    move v13, v5

    invoke-virtual {v12, v13}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v12

    aget-object v11, v11, v12

    check-cast v11, Ljava/lang/String;

    move-object v9, v11

    .line 1200
    .local v9, "target":Ljava/lang/String;
    move-object v11, v1

    move v12, v5

    const/4 v13, 0x2

    add-int/lit8 v12, v12, 0x2

    invoke-virtual {v11, v12}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v11

    move v10, v11

    .line 1201
    .local v10, "length":I
    add-int/lit8 v5, v5, 0x4

    .line 1202
    move-object v11, v4

    instance-of v11, v11, Lgnu/lists/XConsumer;

    if-eqz v11, :cond_d

    .line 1203
    move-object v11, v4

    check-cast v11, Lgnu/lists/XConsumer;

    move-object v12, v9

    move-object v13, v1

    iget-object v13, v13, Lgnu/lists/TreeList;->data:[C

    move v14, v5

    move v15, v10

    invoke-interface {v11, v12, v13, v14, v15}, Lgnu/lists/XConsumer;->writeProcessingInstruction(Ljava/lang/String;[CII)V

    .line 1205
    :cond_d
    move v11, v5

    move v12, v10

    add-int/2addr v11, v12

    move v5, v11

    .line 1207
    goto/16 :goto_1

    .line 1210
    .end local v9    # "target":Ljava/lang/String;
    .end local v10    # "length":I
    :pswitch_9
    move-object v11, v4

    move v12, v8

    const v13, 0xf100

    if-eq v12, v13, :cond_e

    const/4 v12, 0x1

    :goto_4
    invoke-interface {v11, v12}, Lgnu/lists/Consumer;->writeBoolean(Z)V

    .line 1211
    goto/16 :goto_1

    .line 1210
    :cond_e
    const/4 v12, 0x0

    goto :goto_4

    .line 1213
    :pswitch_a
    move-object v11, v4

    const-string/jumbo v12, ""

    invoke-interface {v11, v12}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 1214
    goto/16 :goto_1

    .line 1216
    :pswitch_b
    move-object v11, v4

    move-object v12, v1

    iget-object v12, v12, Lgnu/lists/TreeList;->data:[C

    move v13, v5

    const/4 v14, 0x1

    move v15, v8

    add-int/2addr v14, v15

    const v15, 0xf106

    sub-int/2addr v14, v15

    invoke-interface {v11, v12, v13, v14}, Lgnu/lists/Consumer;->write([CII)V

    .line 1217
    add-int/lit8 v5, v5, 0x1

    .line 1218
    goto/16 :goto_1

    .line 1221
    :pswitch_c
    move-object v11, v1

    iget-object v11, v11, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object v12, v1

    move v13, v5

    invoke-virtual {v12, v13}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v12

    aget-object v11, v11, v12

    check-cast v11, Lgnu/lists/AbstractSequence;

    move-object v9, v11

    .line 1222
    .local v9, "seq":Lgnu/lists/AbstractSequence;
    move-object v11, v1

    move v12, v5

    const/4 v13, 0x2

    add-int/lit8 v12, v12, 0x2

    invoke-virtual {v11, v12}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v11

    move v10, v11

    .line 1223
    .local v10, "ipos":I
    move-object v11, v4

    instance-of v11, v11, Lgnu/lists/PositionConsumer;

    if-eqz v11, :cond_f

    .line 1224
    move-object v11, v4

    check-cast v11, Lgnu/lists/PositionConsumer;

    move-object v12, v9

    move v13, v10

    invoke-interface {v11, v12, v13}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 1227
    :goto_5
    add-int/lit8 v5, v5, 0x4

    .line 1229
    goto/16 :goto_1

    .line 1226
    :cond_f
    move-object v11, v4

    move-object v12, v9

    move v13, v10

    invoke-virtual {v12, v13}, Lgnu/lists/AbstractSequence;->getIteratorAtPos(I)Lgnu/lists/SeqPosition;

    move-result-object v12

    invoke-interface {v11, v12}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_5

    .line 1231
    .end local v9    # "seq":Lgnu/lists/AbstractSequence;
    .end local v10    # "ipos":I
    :pswitch_d
    move-object v11, v4

    instance-of v11, v11, Lgnu/lists/PositionConsumer;

    if-eqz v11, :cond_10

    .line 1233
    move-object v11, v4

    check-cast v11, Lgnu/lists/PositionConsumer;

    move-object v12, v1

    iget-object v12, v12, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object v13, v1

    move v14, v5

    invoke-virtual {v13, v14}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v13

    aget-object v12, v12, v13

    check-cast v12, Lgnu/lists/SeqPosition;

    invoke-interface {v11, v12}, Lgnu/lists/PositionConsumer;->consume(Lgnu/lists/SeqPosition;)V

    .line 1234
    add-int/lit8 v5, v5, 0x2

    .line 1235
    goto/16 :goto_1

    .line 1239
    :cond_10
    :pswitch_e
    move-object v11, v4

    move-object v12, v1

    iget-object v12, v12, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object v13, v1

    move v14, v5

    invoke-virtual {v13, v14}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v13

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 1240
    add-int/lit8 v5, v5, 0x2

    .line 1241
    goto/16 :goto_1

    .line 1243
    :pswitch_f
    add-int/lit8 v5, v5, 0x1

    .line 1244
    move-object v11, v4

    invoke-interface {v11}, Lgnu/lists/Consumer;->endElement()V

    .line 1245
    goto/16 :goto_1

    .line 1247
    :pswitch_10
    move-object v11, v1

    move v12, v5

    invoke-virtual {v11, v12}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v11

    move v7, v11

    .line 1248
    .restart local v7    # "index":I
    move v11, v7

    move v12, v7

    if-ltz v12, :cond_11

    move v12, v5

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    :goto_6
    add-int/2addr v11, v12

    move v7, v11

    .line 1249
    add-int/lit8 v5, v5, 0x2

    .line 1250
    move-object v11, v1

    move v12, v7

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v11

    move v7, v11

    .line 1251
    move-object v11, v4

    move-object v12, v1

    iget-object v12, v12, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move v13, v7

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    .line 1252
    goto/16 :goto_1

    .line 1248
    :cond_11
    move-object v12, v1

    iget-object v12, v12, Lgnu/lists/TreeList;->data:[C

    array-length v12, v12

    goto :goto_6

    .line 1254
    .end local v7    # "index":I
    :pswitch_11
    move-object v11, v1

    move v12, v5

    invoke-virtual {v11, v12}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v11

    move v7, v11

    .line 1255
    .restart local v7    # "index":I
    move-object v11, v4

    invoke-interface {v11}, Lgnu/lists/Consumer;->endElement()V

    .line 1256
    add-int/lit8 v5, v5, 0x6

    .line 1257
    goto/16 :goto_1

    .line 1259
    .end local v7    # "index":I
    :pswitch_12
    move-object v11, v1

    move v12, v5

    invoke-virtual {v11, v12}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v11

    move v7, v11

    .line 1260
    .restart local v7    # "index":I
    move-object v11, v4

    move-object v12, v1

    iget-object v12, v12, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move v13, v7

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Lgnu/lists/Consumer;->startAttribute(Ljava/lang/Object;)V

    .line 1261
    add-int/lit8 v5, v5, 0x4

    .line 1262
    goto/16 :goto_1

    .line 1264
    .end local v7    # "index":I
    :pswitch_13
    move-object v11, v4

    invoke-interface {v11}, Lgnu/lists/Consumer;->endAttribute()V

    .line 1265
    goto/16 :goto_1

    .line 1267
    :pswitch_14
    move-object v11, v4

    move-object v12, v1

    move v13, v5

    invoke-virtual {v12, v13}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v12

    invoke-interface {v11, v12}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 1268
    add-int/lit8 v5, v5, 0x2

    .line 1269
    goto/16 :goto_1

    .line 1271
    :pswitch_15
    move-object v11, v4

    move-object v12, v1

    move v13, v5

    invoke-virtual {v12, v13}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    invoke-interface {v11, v12}, Lgnu/lists/Consumer;->writeFloat(F)V

    .line 1272
    add-int/lit8 v5, v5, 0x2

    .line 1273
    goto/16 :goto_1

    .line 1275
    :pswitch_16
    move-object v11, v4

    move-object v12, v1

    move v13, v5

    invoke-virtual {v12, v13}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v12

    invoke-interface {v11, v12, v13}, Lgnu/lists/Consumer;->writeLong(J)V

    .line 1276
    add-int/lit8 v5, v5, 0x4

    .line 1277
    goto/16 :goto_1

    .line 1279
    :pswitch_17
    move-object v11, v4

    move-object v12, v1

    move v13, v5

    invoke-virtual {v12, v13}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v12

    invoke-interface {v11, v12, v13}, Lgnu/lists/Consumer;->writeDouble(D)V

    .line 1280
    add-int/lit8 v5, v5, 0x4

    .line 1281
    goto/16 :goto_1

    .line 1286
    .end local v8    # "datum":C
    :cond_12
    move v11, v5

    move v1, v11

    .end local v1    # "this":Lgnu/lists/TreeList;
    return v1

    .line 1154
    :pswitch_data_0
    .packed-switch 0xf100
        :pswitch_9
        :pswitch_9
        :pswitch_14
        :pswitch_16
        :pswitch_15
        :pswitch_17
        :pswitch_b
        :pswitch_0
        :pswitch_10
        :pswitch_12
        :pswitch_13
        :pswitch_f
        :pswitch_11
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 9

    .prologue
    .line 1072
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->hasNext(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1073
    const/4 v5, 0x0

    move v0, v5

    .line 1080
    .end local v0    # "this":Lgnu/lists/TreeList;
    :goto_0
    return v0

    .line 1074
    .restart local v0    # "this":Lgnu/lists/TreeList;
    :cond_0
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v5

    move v3, v5

    .line 1075
    .local v3, "start":I
    move-object v5, v0

    move v6, v3

    const v7, 0x7fffffff

    invoke-virtual {v5, v6, v7}, Lgnu/lists/TreeList;->nextNodeIndex(II)I

    move-result v5

    move v4, v5

    .line 1076
    .local v4, "end":I
    move v5, v4

    move v6, v3

    if-ne v5, v6, :cond_1

    .line 1077
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v5

    move v4, v5

    .line 1078
    :cond_1
    move v5, v4

    if-ltz v5, :cond_2

    .line 1079
    move-object v5, v0

    move v6, v3

    move v7, v4

    move-object v8, v2

    invoke-virtual {v5, v6, v7, v8}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    move-result v5

    .line 1080
    :cond_2
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 8

    .prologue
    .line 1085
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "startPos":I
    move v2, p2

    .local v2, "endPos":I
    move-object v3, p3

    .local v3, "out":Lgnu/lists/Consumer;
    move-object v4, v0

    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v5

    move-object v6, v0

    move v7, v2

    invoke-virtual {v6, v7}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v6

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    move-result v4

    .line 1086
    return-void
.end method

.method public createPos(IZ)I
    .locals 7

    .prologue
    .line 875
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "isAfter":Z
    move-object v3, v0

    const/4 v4, 0x0

    move v5, v1

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lgnu/lists/TreeList;->createRelativePos(IIZ)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lgnu/lists/TreeList;
    return v0
.end method

.method public createRelativePos(IIZ)I
    .locals 9

    .prologue
    .line 1914
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "istart":I
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "isAfter":Z
    move v5, v3

    if-eqz v5, :cond_2

    .line 1916
    move v5, v2

    if-nez v5, :cond_1

    .line 1918
    move v5, v1

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 1919
    move v5, v1

    move v0, v5

    .line 1936
    .end local v0    # "this":Lgnu/lists/TreeList;
    :goto_0
    return v0

    .line 1920
    .restart local v0    # "this":Lgnu/lists/TreeList;
    :cond_0
    move v5, v1

    if-nez v5, :cond_1

    .line 1921
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 1923
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 1925
    :cond_2
    move v5, v2

    if-gez v5, :cond_3

    .line 1926
    move-object v5, v0

    const-string/jumbo v6, "backwards createRelativePos"

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 1927
    :cond_3
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v5

    move v4, v5

    .line 1928
    .local v4, "pos":I
    :cond_4
    add-int/lit8 v2, v2, -0x1

    move v5, v2

    if-ltz v5, :cond_5

    .line 1930
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v5

    move v4, v5

    .line 1931
    move v5, v4

    if-gez v5, :cond_4

    .line 1932
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 1934
    :cond_5
    move v5, v4

    move-object v6, v0

    iget v6, v6, Lgnu/lists/TreeList;->gapEnd:I

    if-lt v5, v6, :cond_6

    .line 1935
    move v5, v4

    move-object v6, v0

    iget v6, v6, Lgnu/lists/TreeList;->gapEnd:I

    move-object v7, v0

    iget v7, v7, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    move v4, v5

    .line 1936
    :cond_6
    move v5, v3

    if-eqz v5, :cond_7

    move v5, v4

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    shl-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    or-int/lit8 v5, v5, 0x1

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_7
    move v5, v4

    const/4 v6, 0x1

    shl-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public documentUriOfPos(I)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 2249
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "pos":I
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v4

    move v2, v4

    .line 2250
    .local v2, "index":I
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/TreeList;->data:[C

    array-length v5, v5

    if-ne v4, v5, :cond_0

    .line 2251
    const/4 v4, 0x0

    move-object v0, v4

    .line 2260
    .end local v0    # "this":Lgnu/lists/TreeList;
    :goto_0
    return-object v0

    .line 2252
    .restart local v0    # "this":Lgnu/lists/TreeList;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/TreeList;->data:[C

    move v5, v2

    aget-char v4, v4, v5

    const v5, 0xf110

    if-ne v4, v5, :cond_2

    .line 2254
    move v4, v2

    const/4 v5, 0x5

    add-int/lit8 v4, v4, 0x5

    move v3, v4

    .line 2255
    .local v3, "next":I
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lgnu/lists/TreeList;->gapStart:I

    if-ne v4, v5, :cond_1

    .line 2256
    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreeList;->gapEnd:I

    move v3, v4

    .line 2257
    :cond_1
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/TreeList;->data:[C

    array-length v5, v5

    if-ge v4, v5, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/TreeList;->data:[C

    move v5, v3

    aget-char v4, v4, v5

    const v5, 0xf118

    if-ne v4, v5, :cond_2

    .line 2258
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object v5, v0

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v5

    aget-object v4, v4, v5

    move-object v0, v4

    goto :goto_0

    .line 2260
    .end local v3    # "next":I
    :cond_2
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public dump()V
    .locals 6

    .prologue
    .line 2323
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    new-instance v2, Ljava/io/PrintWriter;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    .line 2325
    .local v1, "out":Ljava/io/PrintWriter;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/TreeList;->dump(Ljava/io/PrintWriter;)V

    .line 2326
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 2327
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 7

    .prologue
    .line 2331
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v1, p1

    .local v1, "out":Ljava/io/PrintWriter;
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " gapStart:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreeList;->gapStart:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " gapEnd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreeList;->gapEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/TreeList;->data:[C

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2333
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/TreeList;->data:[C

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lgnu/lists/TreeList;->dump(Ljava/io/PrintWriter;II)V

    .line 2334
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;II)V
    .locals 17

    .prologue
    .line 2338
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object/from16 v1, p1

    .local v1, "out":Ljava/io/PrintWriter;
    move/from16 v2, p2

    .local v2, "start":I
    move/from16 v3, p3

    .local v3, "limit":I
    const/4 v12, 0x0

    move v4, v12

    .line 2340
    .local v4, "toskip":I
    const/4 v12, 0x1

    move v5, v12

    .line 2341
    .local v5, "skipFollowingWords":Z
    move v12, v2

    move v6, v12

    .local v6, "i":I
    :goto_0
    move v12, v6

    move v13, v3

    if-ge v12, v13, :cond_11

    .line 2344
    move v12, v6

    move-object v13, v0

    iget v13, v13, Lgnu/lists/TreeList;->gapStart:I

    if-lt v12, v13, :cond_0

    move v12, v6

    move-object v13, v0

    iget v13, v13, Lgnu/lists/TreeList;->gapEnd:I

    if-lt v12, v13, :cond_2

    .line 2347
    :cond_0
    move-object v12, v0

    iget-object v12, v12, Lgnu/lists/TreeList;->data:[C

    move v13, v6

    aget-char v12, v12, v13

    move v10, v12

    .line 2348
    .local v10, "ch":I
    move-object v12, v1

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v6

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ": 0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v10

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x3d

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v10

    int-to-short v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2349
    add-int/lit8 v4, v4, -0x1

    move v12, v4

    if-gez v12, :cond_1

    .line 2351
    move v12, v10

    const v13, 0x9fff

    if-gt v12, v13, :cond_5

    .line 2353
    move v12, v10

    const/16 v13, 0x20

    if-lt v12, v13, :cond_3

    move v12, v10

    const/16 v13, 0x7f

    if-ge v12, v13, :cond_3

    .line 2354
    move-object v12, v1

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "=\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v10

    int-to-char v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2540
    :cond_1
    :goto_1
    move-object v12, v1

    invoke-virtual {v12}, Ljava/io/PrintWriter;->println()V

    .line 2541
    move v12, v5

    if-eqz v12, :cond_2

    move v12, v4

    if-lez v12, :cond_2

    .line 2543
    move v12, v6

    move v13, v4

    add-int/2addr v12, v13

    move v6, v12

    .line 2544
    const/4 v12, 0x0

    move v4, v12

    .line 2341
    .end local v10    # "ch":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 2355
    .restart local v10    # "ch":I
    :cond_3
    move v12, v10

    const/16 v13, 0xa

    if-ne v12, v13, :cond_4

    .line 2356
    move-object v12, v1

    const-string/jumbo v13, "=\'\\n\'"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 2358
    :cond_4
    move-object v12, v1

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "=\'\\u"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v10

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 2360
    :cond_5
    move v12, v10

    const v13, 0xe000

    if-lt v12, v13, :cond_6

    move v12, v10

    const v13, 0xefff

    if-gt v12, v13, :cond_6

    .line 2363
    move v12, v10

    const v13, 0xe000

    sub-int/2addr v12, v13

    move v10, v12

    .line 2364
    move-object v12, v0

    iget-object v12, v12, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move v13, v10

    aget-object v12, v12, v13

    move-object v11, v12

    .line 2365
    .local v11, "obj":Ljava/lang/Object;
    move-object v12, v1

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "=Object#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x3d

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v11

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x3a

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v11

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x40

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v11

    invoke-static {v14}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2368
    goto/16 :goto_1

    .line 2369
    .end local v11    # "obj":Ljava/lang/Object;
    :cond_6
    move v12, v10

    const v13, 0xa000

    if-lt v12, v13, :cond_7

    move v12, v10

    const v13, 0xafff

    if-gt v12, v13, :cond_7

    .line 2372
    move v12, v10

    const v13, 0xa000

    sub-int/2addr v12, v13

    move v10, v12

    .line 2373
    move-object v12, v0

    iget-object v12, v12, Lgnu/lists/TreeList;->data:[C

    move v13, v6

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    aget-char v12, v12, v13

    move v13, v6

    add-int/2addr v12, v13

    move v7, v12

    .line 2374
    .local v7, "j":I
    move-object v12, v1

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "=BEGIN_ELEMENT_SHORT end:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " index#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "=<"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v0

    iget-object v14, v14, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move v15, v10

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x3e

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2375
    const/4 v12, 0x2

    move v4, v12

    goto/16 :goto_1

    .line 2377
    .end local v7    # "j":I
    :cond_7
    move v12, v10

    const v13, 0xb000

    if-lt v12, v13, :cond_8

    move v12, v10

    const v13, 0xdfff

    if-gt v12, v13, :cond_8

    .line 2380
    move-object v12, v1

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "= INT_SHORT:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v10

    const v15, 0xc000

    sub-int/2addr v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2384
    :cond_8
    move v12, v10

    packed-switch v12, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 2463
    :pswitch_1
    move-object v12, v1

    const-string/jumbo v13, "= false"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2387
    :pswitch_2
    move-object v12, v0

    move v13, v6

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v12

    move v7, v12

    .line 2388
    .restart local v7    # "j":I
    move-object v12, v1

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "=INT_FOLLOWS value:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2389
    const/4 v12, 0x2

    move v4, v12

    .line 2390
    goto/16 :goto_1

    .line 2392
    .end local v7    # "j":I
    :pswitch_3
    move-object v12, v0

    move v13, v6

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v12

    move-wide v8, v12

    .line 2393
    .local v8, "l":J
    move-object v12, v1

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "=LONG_FOLLOWS value:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide v14, v8

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2394
    const/4 v12, 0x4

    move v4, v12

    .line 2395
    goto/16 :goto_1

    .line 2397
    .end local v8    # "l":J
    :pswitch_4
    move-object v12, v0

    move v13, v6

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v12

    move v7, v12

    .line 2398
    .restart local v7    # "j":I
    move-object v12, v1

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "=FLOAT_FOLLOWS value:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v7

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 2400
    const/4 v12, 0x2

    move v4, v12

    .line 2401
    goto/16 :goto_1

    .line 2403
    .end local v7    # "j":I
    :pswitch_5
    move-object v12, v0

    move v13, v6

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v12

    move-wide v8, v12

    .line 2404
    .restart local v8    # "l":J
    move-object v12, v1

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "=DOUBLE_FOLLOWS value:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide v14, v8

    invoke-static {v14, v15}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2406
    const/4 v12, 0x4

    move v4, v12

    .line 2407
    goto/16 :goto_1

    .line 2409
    .end local v8    # "l":J
    :pswitch_6
    move-object v12, v0

    move v13, v6

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v12

    move v7, v12

    .line 2410
    .restart local v7    # "j":I
    move v12, v7

    move v13, v7

    if-gez v13, :cond_9

    move-object v13, v0

    iget-object v13, v13, Lgnu/lists/TreeList;->data:[C

    array-length v13, v13

    :goto_2
    add-int/2addr v12, v13

    move v7, v12

    .line 2411
    move-object v12, v1

    const-string/jumbo v13, "=BEGIN_DOCUMENT end:"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2412
    move-object v12, v1

    move v13, v7

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 2413
    move-object v12, v1

    const-string/jumbo v13, " parent:"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2414
    move-object v12, v0

    move v13, v6

    const/4 v14, 0x3

    add-int/lit8 v13, v13, 0x3

    invoke-virtual {v12, v13}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v12

    move v7, v12

    .line 2415
    move-object v12, v1

    move v13, v7

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 2416
    const/4 v12, 0x4

    move v4, v12

    .line 2417
    goto/16 :goto_1

    .line 2410
    :cond_9
    move v13, v6

    goto :goto_2

    .line 2419
    .end local v7    # "j":I
    :pswitch_7
    move-object v12, v0

    move v13, v6

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v12

    move v7, v12

    .line 2420
    .restart local v7    # "j":I
    move-object v12, v1

    const-string/jumbo v13, "=BEGIN_ENTITY base:"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2421
    move-object v12, v1

    move v13, v7

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 2422
    move-object v12, v1

    const-string/jumbo v13, " parent:"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2423
    move-object v12, v0

    move v13, v6

    const/4 v14, 0x3

    add-int/lit8 v13, v13, 0x3

    invoke-virtual {v12, v13}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v12

    move v7, v12

    .line 2424
    move-object v12, v1

    move v13, v7

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 2425
    const/4 v12, 0x4

    move v4, v12

    .line 2426
    goto/16 :goto_1

    .line 2428
    .end local v7    # "j":I
    :pswitch_8
    move-object v12, v1

    const-string/jumbo v13, "=END_ENTITY"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2429
    goto/16 :goto_1

    .line 2431
    :pswitch_9
    move-object v12, v1

    const-string/jumbo v13, "=DOCUMENT_URI: "

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2432
    move-object v12, v0

    move v13, v6

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v12

    move v7, v12

    .line 2433
    .restart local v7    # "j":I
    move-object v12, v1

    move-object v13, v0

    iget-object v13, v13, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move v14, v7

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2434
    const/4 v12, 0x2

    move v4, v12

    .line 2435
    goto/16 :goto_1

    .line 2437
    .end local v7    # "j":I
    :pswitch_a
    move-object v12, v1

    const-string/jumbo v13, "=COMMENT: \'"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2438
    move-object v12, v0

    move v13, v6

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v12

    move v7, v12

    .line 2439
    .restart local v7    # "j":I
    move-object v12, v1

    move-object v13, v0

    iget-object v13, v13, Lgnu/lists/TreeList;->data:[C

    move v14, v6

    const/4 v15, 0x3

    add-int/lit8 v14, v14, 0x3

    move v15, v7

    invoke-virtual {v12, v13, v14, v15}, Ljava/io/PrintWriter;->write([CII)V

    .line 2440
    move-object v12, v1

    const/16 v13, 0x27

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(C)V

    .line 2441
    const/4 v12, 0x2

    move v13, v7

    add-int/2addr v12, v13

    move v4, v12

    .line 2442
    goto/16 :goto_1

    .line 2444
    .end local v7    # "j":I
    :pswitch_b
    move-object v12, v1

    const-string/jumbo v13, "=CDATA: \'"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2445
    move-object v12, v0

    move v13, v6

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v12

    move v7, v12

    .line 2446
    .restart local v7    # "j":I
    move-object v12, v1

    move-object v13, v0

    iget-object v13, v13, Lgnu/lists/TreeList;->data:[C

    move v14, v6

    const/4 v15, 0x3

    add-int/lit8 v14, v14, 0x3

    move v15, v7

    invoke-virtual {v12, v13, v14, v15}, Ljava/io/PrintWriter;->write([CII)V

    .line 2447
    move-object v12, v1

    const/16 v13, 0x27

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(C)V

    .line 2448
    const/4 v12, 0x2

    move v13, v7

    add-int/2addr v12, v13

    move v4, v12

    .line 2449
    goto/16 :goto_1

    .line 2451
    .end local v7    # "j":I
    :pswitch_c
    move-object v12, v1

    const-string/jumbo v13, "=PROCESSING_INSTRUCTION: "

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2452
    move-object v12, v0

    move v13, v6

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v12

    move v7, v12

    .line 2453
    .restart local v7    # "j":I
    move-object v12, v1

    move-object v13, v0

    iget-object v13, v13, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move v14, v7

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2454
    move-object v12, v1

    const-string/jumbo v13, " \'"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2455
    move-object v12, v0

    move v13, v6

    const/4 v14, 0x3

    add-int/lit8 v13, v13, 0x3

    invoke-virtual {v12, v13}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v12

    move v7, v12

    .line 2456
    move-object v12, v1

    move-object v13, v0

    iget-object v13, v13, Lgnu/lists/TreeList;->data:[C

    move v14, v6

    const/4 v15, 0x5

    add-int/lit8 v14, v14, 0x5

    move v15, v7

    invoke-virtual {v12, v13, v14, v15}, Ljava/io/PrintWriter;->write([CII)V

    .line 2457
    move-object v12, v1

    const/16 v13, 0x27

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(C)V

    .line 2458
    const/4 v12, 0x4

    move v13, v7

    add-int/2addr v12, v13

    move v4, v12

    .line 2459
    goto/16 :goto_1

    .line 2461
    .end local v7    # "j":I
    :pswitch_d
    move-object v12, v1

    const-string/jumbo v13, "=END_DOCUMENT"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2462
    goto/16 :goto_1

    .line 2464
    :pswitch_e
    move-object v12, v1

    const-string/jumbo v13, "= true"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2465
    :pswitch_f
    move-object v12, v1

    const-string/jumbo v13, "= joiner"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2467
    :pswitch_10
    move-object v12, v1

    const-string/jumbo v13, "=CHAR_FOLLOWS"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v12, 0x1

    move v4, v12

    goto/16 :goto_1

    .line 2470
    :pswitch_11
    const/4 v12, 0x2

    move v4, v12

    goto/16 :goto_1

    .line 2472
    :pswitch_12
    move-object v12, v1

    const-string/jumbo v13, "=END_ELEMENT_SHORT begin:"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2473
    move v12, v6

    move-object v13, v0

    iget-object v13, v13, Lgnu/lists/TreeList;->data:[C

    move v14, v6

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    aget-char v13, v13, v14

    sub-int/2addr v12, v13

    move v7, v12

    .line 2474
    .restart local v7    # "j":I
    move-object v12, v1

    move v13, v7

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 2475
    move-object v12, v0

    iget-object v12, v12, Lgnu/lists/TreeList;->data:[C

    move v13, v7

    aget-char v12, v12, v13

    const v13, 0xa000

    sub-int/2addr v12, v13

    move v7, v12

    .line 2476
    move-object v12, v1

    const-string/jumbo v13, " -> #"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2477
    move-object v12, v1

    move v13, v7

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 2478
    move-object v12, v1

    const-string/jumbo v13, "=<"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2479
    move-object v12, v1

    move-object v13, v0

    iget-object v13, v13, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move v14, v7

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2480
    move-object v12, v1

    const/16 v13, 0x3e

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(C)V

    .line 2481
    const/4 v12, 0x1

    move v4, v12

    goto/16 :goto_1

    .line 2483
    .end local v7    # "j":I
    :pswitch_13
    move-object v12, v0

    move v13, v6

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v12

    move v7, v12

    .line 2484
    .restart local v7    # "j":I
    move v12, v7

    move v13, v7

    if-gez v13, :cond_a

    move-object v13, v0

    iget-object v13, v13, Lgnu/lists/TreeList;->data:[C

    array-length v13, v13

    :goto_3
    add-int/2addr v12, v13

    move v7, v12

    .line 2485
    move-object v12, v1

    const-string/jumbo v13, "=BEGIN_ELEMENT_LONG end:"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2486
    move-object v12, v1

    move v13, v7

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 2487
    move-object v12, v0

    move v13, v7

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v12

    move v7, v12

    .line 2488
    move-object v12, v1

    const-string/jumbo v13, " -> #"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2489
    move-object v12, v1

    move v13, v7

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 2490
    move v12, v7

    if-ltz v12, :cond_b

    move v12, v7

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move-object v13, v0

    iget-object v13, v13, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    array-length v13, v13

    if-ge v12, v13, :cond_b

    .line 2491
    move-object v12, v1

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "=<"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v0

    iget-object v14, v14, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move v15, v7

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x3e

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2494
    :goto_4
    const/4 v12, 0x2

    move v4, v12

    .line 2495
    goto/16 :goto_1

    .line 2484
    :cond_a
    move v13, v6

    goto :goto_3

    .line 2493
    :cond_b
    move-object v12, v1

    const-string/jumbo v13, "=<out-of-bounds>"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 2497
    .end local v7    # "j":I
    :pswitch_14
    move-object v12, v0

    move v13, v6

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v12

    move v7, v12

    .line 2498
    .restart local v7    # "j":I
    move-object v12, v1

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "=END_ELEMENT_LONG name:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "=<"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v0

    iget-object v14, v14, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move v15, v7

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x3e

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2500
    move-object v12, v0

    move v13, v6

    const/4 v14, 0x3

    add-int/lit8 v13, v13, 0x3

    invoke-virtual {v12, v13}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v12

    move v7, v12

    .line 2501
    move v12, v7

    if-gez v12, :cond_c

    move v12, v6

    move v13, v7

    add-int/2addr v12, v13

    :goto_5
    move v7, v12

    .line 2502
    move-object v12, v1

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " begin:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2503
    move-object v12, v0

    move v13, v6

    const/4 v14, 0x5

    add-int/lit8 v13, v13, 0x5

    invoke-virtual {v12, v13}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v12

    move v7, v12

    .line 2504
    move v12, v7

    if-gez v12, :cond_d

    move v12, v6

    move v13, v7

    add-int/2addr v12, v13

    :goto_6
    move v7, v12

    .line 2505
    move-object v12, v1

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " parent:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2506
    const/4 v12, 0x6

    move v4, v12

    .line 2507
    goto/16 :goto_1

    .line 2501
    :cond_c
    move v12, v7

    goto :goto_5

    .line 2504
    :cond_d
    move v12, v7

    goto :goto_6

    .line 2509
    .end local v7    # "j":I
    :pswitch_15
    move-object v12, v0

    move v13, v6

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v12

    move v7, v12

    .line 2510
    .restart local v7    # "j":I
    move-object v12, v1

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "=BEGIN_ATTRIBUTE name:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v0

    iget-object v14, v14, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move v15, v7

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2512
    move-object v12, v0

    move v13, v6

    const/4 v14, 0x3

    add-int/lit8 v13, v13, 0x3

    invoke-virtual {v12, v13}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v12

    move v7, v12

    .line 2513
    move v12, v7

    move v13, v7

    if-gez v13, :cond_e

    move-object v13, v0

    iget-object v13, v13, Lgnu/lists/TreeList;->data:[C

    array-length v13, v13

    :goto_7
    add-int/2addr v12, v13

    move v7, v12

    .line 2514
    move-object v12, v1

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " end:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2515
    const/4 v12, 0x4

    move v4, v12

    .line 2516
    goto/16 :goto_1

    .line 2513
    :cond_e
    move v13, v6

    goto :goto_7

    .line 2517
    .end local v7    # "j":I
    :pswitch_16
    move-object v12, v1

    const-string/jumbo v13, "=END_ATTRIBUTE"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2519
    :pswitch_17
    move-object v12, v1

    const-string/jumbo v13, "=POSITION_PAIR_FOLLOWS seq:"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2521
    move-object v12, v0

    move v13, v6

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v12

    move v7, v12

    .restart local v7    # "j":I
    move-object v12, v1

    move v13, v7

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 2522
    move-object v12, v1

    const/16 v13, 0x3d

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(C)V

    .line 2523
    move-object v12, v0

    iget-object v12, v12, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move v13, v7

    aget-object v12, v12, v13

    move-object v11, v12

    .line 2524
    .local v11, "seq":Ljava/lang/Object;
    move-object v12, v1

    move-object v13, v11

    if-nez v13, :cond_f

    const/4 v13, 0x0

    :goto_8
    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2525
    move-object v12, v1

    const/16 v13, 0x40

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(C)V

    .line 2526
    move-object v12, v11

    if-nez v12, :cond_10

    move-object v12, v1

    const-string/jumbo v13, "null"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2528
    :goto_9
    move-object v12, v1

    const-string/jumbo v13, " ipos:"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2529
    move-object v12, v1

    move-object v13, v0

    move v14, v6

    const/4 v15, 0x3

    add-int/lit8 v14, v14, 0x3

    invoke-virtual {v13, v14}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 2531
    const/4 v12, 0x4

    move v4, v12

    goto/16 :goto_1

    .line 2524
    :cond_f
    move-object v13, v11

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    goto :goto_8

    .line 2527
    :cond_10
    move-object v12, v1

    move-object v13, v11

    invoke-static {v13}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_9

    .line 2548
    .end local v7    # "j":I
    .end local v10    # "ch":I
    .end local v11    # "seq":Ljava/lang/Object;
    :cond_11
    return-void

    .line 2384
    :pswitch_data_0
    .packed-switch 0xf100
        :pswitch_1
        :pswitch_e
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_10
        :pswitch_0
        :pswitch_13
        :pswitch_15
        :pswitch_16
        :pswitch_12
        :pswitch_14
        :pswitch_11
        :pswitch_11
        :pswitch_17
        :pswitch_6
        :pswitch_d
        :pswitch_7
        :pswitch_8
        :pswitch_c
        :pswitch_b
        :pswitch_f
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public endAttribute()V
    .locals 8

    .prologue
    .line 670
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v1, v0

    iget v1, v1, Lgnu/lists/TreeList;->attrStart:I

    if-gtz v1, :cond_0

    .line 671
    .line 679
    :goto_0
    return-void

    .line 672
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/TreeList;->data:[C

    move-object v2, v0

    iget v2, v2, Lgnu/lists/TreeList;->gapEnd:I

    aget-char v1, v1, v2

    const v2, 0xf10a

    if-eq v1, v2, :cond_1

    .line 673
    new-instance v1, Ljava/lang/Error;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string/jumbo v3, "unexpected endAttribute"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 675
    :cond_1
    move-object v1, v0

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    iget v2, v2, Lgnu/lists/TreeList;->gapEnd:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lgnu/lists/TreeList;->gapEnd:I

    .line 676
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lgnu/lists/TreeList;->attrStart:I

    const/4 v3, 0x2

    add-int/lit8 v2, v2, 0x2

    move-object v3, v0

    iget v3, v3, Lgnu/lists/TreeList;->gapStart:I

    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreeList;->attrStart:I

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 677
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/lists/TreeList;->attrStart:I

    .line 678
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/TreeList;->data:[C

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lgnu/lists/TreeList;->gapStart:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lgnu/lists/TreeList;->gapStart:I

    const v3, 0xf10a

    aput-char v3, v1, v2

    .line 679
    goto :goto_0
.end method

.method public endDocument()V
    .locals 9

    .prologue
    .line 517
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/TreeList;->data:[C

    move-object v3, v0

    iget v3, v3, Lgnu/lists/TreeList;->gapEnd:I

    aget-char v2, v2, v3

    const v3, 0xf111

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lgnu/lists/TreeList;->docStart:I

    if-lez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/TreeList;->data:[C

    move-object v3, v0

    iget v3, v3, Lgnu/lists/TreeList;->currentParent:I

    aget-char v2, v2, v3

    const v3, 0xf110

    if-eq v2, v3, :cond_1

    .line 519
    :cond_0
    new-instance v2, Ljava/lang/Error;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string/jumbo v4, "unexpected endDocument"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 521
    :cond_1
    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lgnu/lists/TreeList;->gapEnd:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lgnu/lists/TreeList;->gapEnd:I

    .line 522
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lgnu/lists/TreeList;->docStart:I

    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreeList;->gapStart:I

    move-object v5, v0

    iget v5, v5, Lgnu/lists/TreeList;->docStart:I

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v3, v4}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 523
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lgnu/lists/TreeList;->docStart:I

    .line 524
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/TreeList;->data:[C

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/lists/TreeList;->gapStart:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/lists/TreeList;->gapStart:I

    const v4, 0xf111

    aput-char v4, v2, v3

    .line 525
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lgnu/lists/TreeList;->currentParent:I

    const/4 v4, 0x3

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v3}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    move v1, v2

    .line 526
    .local v1, "parent":I
    move-object v2, v0

    move v3, v1

    const/4 v4, -0x1

    if-lt v3, v4, :cond_2

    move v3, v1

    :goto_0
    iput v3, v2, Lgnu/lists/TreeList;->currentParent:I

    .line 527
    return-void

    .line 526
    :cond_2
    move-object v3, v0

    iget v3, v3, Lgnu/lists/TreeList;->currentParent:I

    move v4, v1

    add-int/2addr v3, v4

    goto :goto_0
.end method

.method public endElement()V
    .locals 11

    .prologue
    .line 591
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/TreeList;->data:[C

    move-object v7, v0

    iget v7, v7, Lgnu/lists/TreeList;->gapEnd:I

    aget-char v6, v6, v7

    const v7, 0xf10c

    if-eq v6, v7, :cond_0

    .line 592
    new-instance v6, Ljava/lang/Error;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "unexpected endElement"

    invoke-direct {v7, v8}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v6

    .line 593
    :cond_0
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Lgnu/lists/TreeList;->gapEnd:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v6

    move v1, v6

    .line 594
    .local v1, "index":I
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Lgnu/lists/TreeList;->gapEnd:I

    const/4 v8, 0x3

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v6, v7}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v6

    move v2, v6

    .line 595
    .local v2, "begin":I
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Lgnu/lists/TreeList;->gapEnd:I

    const/4 v8, 0x5

    add-int/lit8 v7, v7, 0x5

    invoke-virtual {v6, v7}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v6

    move v3, v6

    .line 596
    .local v3, "parent":I
    move-object v6, v0

    move v7, v3

    iput v7, v6, Lgnu/lists/TreeList;->currentParent:I

    .line 597
    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lgnu/lists/TreeList;->gapEnd:I

    const/4 v8, 0x7

    add-int/lit8 v7, v7, 0x7

    iput v7, v6, Lgnu/lists/TreeList;->gapEnd:I

    .line 598
    move-object v6, v0

    iget v6, v6, Lgnu/lists/TreeList;->gapStart:I

    move v7, v2

    sub-int/2addr v6, v7

    move v4, v6

    .line 599
    .local v4, "offset":I
    move v6, v2

    move v7, v3

    sub-int/2addr v6, v7

    move v5, v6

    .line 600
    .local v5, "parentOffset":I
    move v6, v1

    const/16 v7, 0xfff

    if-ge v6, v7, :cond_1

    move v6, v4

    const/high16 v7, 0x10000

    if-ge v6, v7, :cond_1

    move v6, v5

    const/high16 v7, 0x10000

    if-ge v6, v7, :cond_1

    .line 603
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/TreeList;->data:[C

    move v7, v2

    const v8, 0xa000

    move v9, v1

    or-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v6, v7

    .line 604
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/TreeList;->data:[C

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v4

    int-to-char v8, v8

    aput-char v8, v6, v7

    .line 605
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/TreeList;->data:[C

    move v7, v2

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    move v8, v5

    int-to-char v8, v8

    aput-char v8, v6, v7

    .line 606
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/TreeList;->data:[C

    move-object v7, v0

    iget v7, v7, Lgnu/lists/TreeList;->gapStart:I

    const v8, 0xf10b

    aput-char v8, v6, v7

    .line 607
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/TreeList;->data:[C

    move-object v7, v0

    iget v7, v7, Lgnu/lists/TreeList;->gapStart:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v4

    int-to-char v8, v8

    aput-char v8, v6, v7

    .line 608
    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lgnu/lists/TreeList;->gapStart:I

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    iput v7, v6, Lgnu/lists/TreeList;->gapStart:I

    .line 622
    :goto_0
    return-void

    .line 612
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/TreeList;->data:[C

    move v7, v2

    const v8, 0xf108

    aput-char v8, v6, v7

    .line 613
    move-object v6, v0

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v4

    invoke-virtual {v6, v7, v8}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 614
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/TreeList;->data:[C

    move-object v7, v0

    iget v7, v7, Lgnu/lists/TreeList;->gapStart:I

    const v8, 0xf10c

    aput-char v8, v6, v7

    .line 615
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Lgnu/lists/TreeList;->gapStart:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v1

    invoke-virtual {v6, v7, v8}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 616
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Lgnu/lists/TreeList;->gapStart:I

    const/4 v8, 0x3

    add-int/lit8 v7, v7, 0x3

    move v8, v4

    neg-int v8, v8

    invoke-virtual {v6, v7, v8}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 617
    move v6, v3

    move-object v7, v0

    iget v7, v7, Lgnu/lists/TreeList;->gapStart:I

    if-ge v6, v7, :cond_2

    move v6, v2

    move-object v7, v0

    iget v7, v7, Lgnu/lists/TreeList;->gapStart:I

    if-gt v6, v7, :cond_3

    .line 618
    :cond_2
    move v6, v3

    move-object v7, v0

    iget v7, v7, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v6, v7

    move v3, v6

    .line 619
    :cond_3
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Lgnu/lists/TreeList;->gapStart:I

    const/4 v8, 0x5

    add-int/lit8 v7, v7, 0x5

    move v8, v3

    invoke-virtual {v6, v7, v8}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 620
    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lgnu/lists/TreeList;->gapStart:I

    const/4 v8, 0x7

    add-int/lit8 v7, v7, 0x7

    iput v7, v6, Lgnu/lists/TreeList;->gapStart:I

    goto :goto_0
.end method

.method public endEntity()V
    .locals 9

    .prologue
    .line 551
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v2, v0

    iget v2, v2, Lgnu/lists/TreeList;->gapEnd:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/TreeList;->data:[C

    array-length v3, v3

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/TreeList;->data:[C

    move-object v3, v0

    iget v3, v3, Lgnu/lists/TreeList;->gapEnd:I

    aget-char v2, v2, v3

    const v3, 0xf113

    if-eq v2, v3, :cond_1

    .line 552
    .line 561
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/TreeList;->data:[C

    move-object v3, v0

    iget v3, v3, Lgnu/lists/TreeList;->currentParent:I

    aget-char v2, v2, v3

    const v3, 0xf112

    if-eq v2, v3, :cond_2

    .line 555
    new-instance v2, Ljava/lang/Error;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string/jumbo v4, "unexpected endEntity"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 557
    :cond_2
    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lgnu/lists/TreeList;->gapEnd:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lgnu/lists/TreeList;->gapEnd:I

    .line 558
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/TreeList;->data:[C

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/lists/TreeList;->gapStart:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/lists/TreeList;->gapStart:I

    const v4, 0xf113

    aput-char v4, v2, v3

    .line 559
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lgnu/lists/TreeList;->currentParent:I

    const/4 v4, 0x3

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v3}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    move v1, v2

    .line 560
    .local v1, "parent":I
    move-object v2, v0

    move v3, v1

    const/4 v4, -0x1

    if-lt v3, v4, :cond_3

    move v3, v1

    :goto_1
    iput v3, v2, Lgnu/lists/TreeList;->currentParent:I

    .line 561
    goto :goto_0

    .line 560
    :cond_3
    move-object v3, v0

    iget v3, v3, Lgnu/lists/TreeList;->currentParent:I

    move v4, v1

    add-int/2addr v3, v4

    goto :goto_1
.end method

.method public ensureSpace(I)V
    .locals 13

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "needed":I
    move-object v8, v0

    iget v8, v8, Lgnu/lists/TreeList;->gapEnd:I

    move-object v9, v0

    iget v9, v9, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v8, v9

    move v2, v8

    .line 329
    .local v2, "avail":I
    move v8, v1

    move v9, v2

    if-le v8, v9, :cond_3

    .line 331
    move-object v8, v0

    iget-object v8, v8, Lgnu/lists/TreeList;->data:[C

    array-length v8, v8

    move v3, v8

    .line 332
    .local v3, "oldSize":I
    move v8, v3

    move v9, v2

    sub-int/2addr v8, v9

    move v9, v1

    add-int/2addr v8, v9

    move v4, v8

    .line 333
    .local v4, "neededSize":I
    const/4 v8, 0x2

    move v9, v3

    mul-int/2addr v8, v9

    move v5, v8

    .line 334
    .local v5, "newSize":I
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_0

    .line 335
    move v8, v4

    move v5, v8

    .line 336
    :cond_0
    move v8, v5

    new-array v8, v8, [C

    move-object v6, v8

    .line 337
    .local v6, "tmp":[C
    move-object v8, v0

    iget v8, v8, Lgnu/lists/TreeList;->gapStart:I

    if-lez v8, :cond_1

    .line 338
    move-object v8, v0

    iget-object v8, v8, Lgnu/lists/TreeList;->data:[C

    const/4 v9, 0x0

    move-object v10, v6

    const/4 v11, 0x0

    move-object v12, v0

    iget v12, v12, Lgnu/lists/TreeList;->gapStart:I

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    :cond_1
    move v8, v3

    move-object v9, v0

    iget v9, v9, Lgnu/lists/TreeList;->gapEnd:I

    sub-int/2addr v8, v9

    move v7, v8

    .line 340
    .local v7, "afterGap":I
    move v8, v7

    if-lez v8, :cond_2

    .line 341
    move-object v8, v0

    iget-object v8, v8, Lgnu/lists/TreeList;->data:[C

    move-object v9, v0

    iget v9, v9, Lgnu/lists/TreeList;->gapEnd:I

    move-object v10, v6

    move v11, v5

    move v12, v7

    sub-int/2addr v11, v12

    move v12, v7

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    :cond_2
    move-object v8, v0

    move v9, v5

    move v10, v7

    sub-int/2addr v9, v10

    iput v9, v8, Lgnu/lists/TreeList;->gapEnd:I

    .line 343
    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Lgnu/lists/TreeList;->data:[C

    .line 345
    .end local v3    # "oldSize":I
    .end local v4    # "neededSize":I
    .end local v5    # "newSize":I
    .end local v6    # "tmp":[C
    .end local v7    # "afterGap":I
    :cond_3
    return-void
.end method

.method public find(Ljava/lang/Object;)I
    .locals 8

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, v0

    iget v2, v2, Lgnu/lists/TreeList;->oindex:I

    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 371
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/TreeList;->resizeObjects()V

    .line 372
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object v3, v0

    iget v3, v3, Lgnu/lists/TreeList;->oindex:I

    move-object v4, v1

    aput-object v4, v2, v3

    .line 373
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lgnu/lists/TreeList;->oindex:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lgnu/lists/TreeList;->oindex:I

    move v0, v2

    .end local v0    # "this":Lgnu/lists/TreeList;
    return v0
.end method

.method public firstAttributePos(I)I
    .locals 6

    .prologue
    .line 1039
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "ipos":I
    move-object v3, v0

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lgnu/lists/TreeList;->gotoAttributesStart(I)I

    move-result v3

    move v2, v3

    .line 1040
    .local v2, "index":I
    move v3, v2

    if-gez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move v0, v3

    .end local v0    # "this":Lgnu/lists/TreeList;
    return v0

    .restart local v0    # "this":Lgnu/lists/TreeList;
    :cond_0
    move v3, v2

    const/4 v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public firstChildPos(I)I
    .locals 6

    .prologue
    .line 900
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "ipos":I
    move-object v3, v0

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lgnu/lists/TreeList;->gotoChildrenStart(I)I

    move-result v3

    move v2, v3

    .line 901
    .local v2, "index":I
    move v3, v2

    if-gez v3, :cond_0

    .line 902
    const/4 v3, 0x0

    move v0, v3

    .line 903
    .end local v0    # "this":Lgnu/lists/TreeList;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/lists/TreeList;
    :cond_0
    move v3, v2

    const/4 v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1060
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "index":I
    const/4 v3, 0x0

    move v2, v3

    .line 1061
    .local v2, "i":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    move v3, v1

    if-ltz v3, :cond_1

    .line 1063
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/lists/TreeList;->nextPos(I)I

    move-result v3

    move v2, v3

    .line 1064
    move v3, v2

    if-nez v3, :cond_0

    .line 1065
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 1067
    :cond_1
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/lists/TreeList;
    return-object v0
.end method

.method public getAttributeCount(I)I
    .locals 6

    .prologue
    .line 1020
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "parent":I
    const/4 v4, 0x0

    move v2, v4

    .line 1021
    .local v2, "n":I
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/lists/TreeList;->firstAttributePos(I)I

    move-result v4

    move v3, v4

    .line 1022
    .local v3, "attr":I
    :goto_0
    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Lgnu/lists/TreeList;->getNextKind(I)I

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_0

    .line 1024
    add-int/lit8 v2, v2, 0x1

    .line 1023
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Lgnu/lists/TreeList;->nextPos(I)I

    move-result v4

    move v3, v4

    goto :goto_0

    .line 1025
    :cond_0
    move v4, v2

    move v0, v4

    .end local v0    # "this":Lgnu/lists/TreeList;
    return v0
.end method

.method protected getIndexDifference(II)I
    .locals 9

    .prologue
    .line 2278
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "ipos1":I
    move v2, p2

    .local v2, "ipos0":I
    move-object v7, v0

    move v8, v2

    invoke-virtual {v7, v8}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v7

    move v3, v7

    .line 2279
    .local v3, "i0":I
    move-object v7, v0

    move v8, v1

    invoke-virtual {v7, v8}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v7

    move v4, v7

    .line 2280
    .local v4, "i1":I
    const/4 v7, 0x0

    move v5, v7

    .line 2281
    .local v5, "negate":Z
    move v7, v3

    move v8, v4

    if-le v7, v8, :cond_0

    .line 2283
    const/4 v7, 0x1

    move v5, v7

    .line 2284
    move v7, v4

    move v6, v7

    .local v6, "i":I
    move v7, v3

    move v4, v7

    move v7, v6

    move v3, v7

    .line 2286
    .end local v6    # "i":I
    :cond_0
    const/4 v7, 0x0

    move v6, v7

    .line 2287
    .restart local v6    # "i":I
    :goto_0
    move v7, v3

    move v8, v4

    if-ge v7, v8, :cond_1

    .line 2289
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v7

    move v3, v7

    .line 2290
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2292
    :cond_1
    move v7, v5

    if-eqz v7, :cond_2

    move v7, v6

    neg-int v7, v7

    :goto_1
    move v0, v7

    .end local v0    # "this":Lgnu/lists/TreeList;
    return v0

    .restart local v0    # "this":Lgnu/lists/TreeList;
    :cond_2
    move v7, v6

    goto :goto_1
.end method

.method protected final getIntN(I)I
    .locals 6

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/TreeList;->data:[C

    move v3, v1

    aget-char v2, v2, v3

    const/16 v3, 0x10

    shl-int/lit8 v2, v2, 0x10

    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/TreeList;->data:[C

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-char v3, v3, v4

    const v4, 0xffff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lgnu/lists/TreeList;
    return v0
.end method

.method protected final getLongN(I)J
    .locals 10

    .prologue
    .line 385
    move-object v1, p0

    .local v1, "this":Lgnu/lists/TreeList;
    move v2, p1

    .local v2, "index":I
    move-object v4, v1

    iget-object v4, v4, Lgnu/lists/TreeList;->data:[C

    move-object v3, v4

    .line 386
    .local v3, "data":[C
    move-object v4, v3

    move v5, v2

    aget-char v4, v4, v5

    int-to-long v4, v4

    const-wide/32 v6, 0xffff

    and-long/2addr v4, v6

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    move-object v6, v3

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-char v6, v6, v7

    int-to-long v6, v6

    const-wide/32 v8, 0xffff

    and-long/2addr v6, v8

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    move-object v6, v3

    move v7, v2

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    aget-char v6, v6, v7

    int-to-long v6, v6

    const-wide/32 v8, 0xffff

    and-long/2addr v6, v8

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    move-object v6, v3

    move v7, v2

    const/4 v8, 0x3

    add-int/lit8 v7, v7, 0x3

    aget-char v6, v6, v7

    int-to-long v6, v6

    const-wide/32 v8, 0xffff

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    move-wide v1, v4

    .end local v1    # "this":Lgnu/lists/TreeList;
    return-wide v1
.end method

.method public getNextKind(I)I
    .locals 5

    .prologue
    .line 1533
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, v0

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lgnu/lists/TreeList;->getNextKindI(I)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/lists/TreeList;
    return v0
.end method

.method public getNextKindI(I)I
    .locals 6

    .prologue
    .line 1538
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "index":I
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/TreeList;->data:[C

    array-length v4, v4

    if-ne v3, v4, :cond_0

    .line 1539
    const/4 v3, 0x0

    move v0, v3

    .line 1594
    .end local v0    # "this":Lgnu/lists/TreeList;
    :goto_0
    return v0

    .line 1540
    .restart local v0    # "this":Lgnu/lists/TreeList;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/TreeList;->data:[C

    move v4, v1

    aget-char v3, v3, v4

    move v2, v3

    .line 1541
    .local v2, "datum":C
    move v3, v2

    const v4, 0x9fff

    if-gt v3, v4, :cond_1

    .line 1542
    const/16 v3, 0x1d

    move v0, v3

    goto :goto_0

    .line 1543
    :cond_1
    move v3, v2

    const v4, 0xe000

    if-lt v3, v4, :cond_2

    move v3, v2

    const v4, 0xefff

    if-gt v3, v4, :cond_2

    .line 1545
    const/16 v3, 0x20

    move v0, v3

    goto :goto_0

    .line 1546
    :cond_2
    move v3, v2

    const v4, 0xa000

    if-lt v3, v4, :cond_3

    move v3, v2

    const v4, 0xafff

    if-gt v3, v4, :cond_3

    .line 1548
    const/16 v3, 0x21

    move v0, v3

    goto :goto_0

    .line 1549
    :cond_3
    move v3, v2

    const v4, 0xff00

    and-int/2addr v3, v4

    const v4, 0xf000

    if-ne v3, v4, :cond_4

    .line 1550
    const/16 v3, 0x1c

    move v0, v3

    goto :goto_0

    .line 1551
    :cond_4
    move v3, v2

    const v4, 0xb000

    if-lt v3, v4, :cond_5

    move v3, v2

    const v4, 0xdfff

    if-gt v3, v4, :cond_5

    .line 1553
    const/16 v3, 0x16

    move v0, v3

    goto :goto_0

    .line 1554
    :cond_5
    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 1594
    :pswitch_0
    const/16 v3, 0x20

    move v0, v3

    goto :goto_0

    .line 1558
    :pswitch_1
    const/16 v3, 0x1b

    move v0, v3

    goto :goto_0

    .line 1560
    :pswitch_2
    const/16 v3, 0x16

    move v0, v3

    goto :goto_0

    .line 1562
    :pswitch_3
    const/16 v3, 0x18

    move v0, v3

    goto :goto_0

    .line 1564
    :pswitch_4
    const/16 v3, 0x19

    move v0, v3

    goto :goto_0

    .line 1566
    :pswitch_5
    const/16 v3, 0x1a

    move v0, v3

    goto :goto_0

    .line 1569
    :pswitch_6
    const/16 v3, 0x22

    move v0, v3

    goto :goto_0

    .line 1571
    :pswitch_7
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x5

    add-int/lit8 v4, v4, 0x5

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/lists/TreeList;->getNextKind(I)I

    move-result v3

    move v0, v3

    goto :goto_0

    .line 1573
    :pswitch_8
    const/16 v3, 0x21

    move v0, v3

    goto/16 :goto_0

    .line 1579
    :pswitch_9
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 1581
    :pswitch_a
    const/16 v3, 0x23

    move v0, v3

    goto/16 :goto_0

    .line 1583
    :pswitch_b
    const/16 v3, 0x1f

    move v0, v3

    goto/16 :goto_0

    .line 1585
    :pswitch_c
    const/16 v3, 0x24

    move v0, v3

    goto/16 :goto_0

    .line 1587
    :pswitch_d
    const/16 v3, 0x25

    move v0, v3

    goto/16 :goto_0

    .line 1554
    :pswitch_data_0
    .packed-switch 0xf100
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_9
        :pswitch_7
        :pswitch_9
        :pswitch_d
        :pswitch_b
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method public getNextTypeName(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1632
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "ipos":I
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lgnu/lists/TreeList;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 1633
    .local v2, "type":Ljava/lang/Object;
    move-object v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Lgnu/lists/TreeList;
    return-object v0

    .restart local v0    # "this":Lgnu/lists/TreeList;
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getNextTypeObject(I)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 1601
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "ipos":I
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v5

    move v2, v5

    .line 1605
    .local v2, "index":I
    :goto_0
    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/TreeList;->data:[C

    array-length v6, v6

    if-ne v5, v6, :cond_0

    .line 1606
    const/4 v5, 0x0

    move-object v0, v5

    .line 1627
    .end local v0    # "this":Lgnu/lists/TreeList;
    :goto_1
    return-object v0

    .line 1607
    .restart local v0    # "this":Lgnu/lists/TreeList;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/TreeList;->data:[C

    move v6, v2

    aget-char v5, v5, v6

    move v3, v5

    .line 1608
    .local v3, "datum":C
    move v5, v3

    const v6, 0xf112

    if-eq v5, v6, :cond_1

    .line 1609
    .line 1612
    move v5, v3

    const v6, 0xa000

    if-lt v5, v6, :cond_2

    move v5, v3

    const v6, 0xafff

    if-gt v5, v6, :cond_2

    .line 1614
    move v5, v3

    const v6, 0xa000

    sub-int/2addr v5, v6

    move v2, v5

    .line 1627
    :goto_2
    move v5, v2

    if-gez v5, :cond_7

    const/4 v5, 0x0

    :goto_3
    move-object v0, v5

    goto :goto_1

    .line 1610
    :cond_1
    add-int/lit8 v2, v2, 0x5

    goto :goto_0

    .line 1615
    :cond_2
    move v5, v3

    const v6, 0xf108

    if-ne v5, v6, :cond_4

    .line 1617
    move-object v5, v0

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v5

    move v4, v5

    .line 1618
    .local v4, "j":I
    move v5, v4

    move v6, v4

    if-gez v6, :cond_3

    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/TreeList;->data:[C

    array-length v6, v6

    :goto_4
    add-int/2addr v5, v6

    move v4, v5

    .line 1619
    move-object v5, v0

    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v5

    move v2, v5

    .line 1620
    goto :goto_2

    .line 1618
    :cond_3
    move v6, v2

    goto :goto_4

    .line 1621
    .end local v4    # "j":I
    :cond_4
    move v5, v3

    const v6, 0xf109

    if-ne v5, v6, :cond_5

    .line 1622
    move-object v5, v0

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v5

    move v2, v5

    goto :goto_2

    .line 1623
    :cond_5
    move v5, v3

    const v6, 0xf114

    if-ne v5, v6, :cond_6

    .line 1624
    move-object v5, v0

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v5

    move v2, v5

    goto :goto_2

    .line 1626
    :cond_6
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1

    .line 1627
    :cond_7
    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move v6, v2

    aget-object v5, v5, v6

    goto :goto_3
.end method

.method public getPosNext(I)Ljava/lang/Object;
    .locals 13

    .prologue
    .line 1667
    move-object v1, p0

    .local v1, "this":Lgnu/lists/TreeList;
    move v2, p1

    .local v2, "ipos":I
    move-object v6, v1

    move v7, v2

    invoke-virtual {v6, v7}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v6

    move v3, v6

    .line 1668
    .local v3, "index":I
    move v6, v3

    move-object v7, v1

    iget-object v7, v7, Lgnu/lists/TreeList;->data:[C

    array-length v7, v7

    if-ne v6, v7, :cond_0

    .line 1669
    sget-object v6, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    move-object v1, v6

    .line 1739
    .end local v1    # "this":Lgnu/lists/TreeList;
    :goto_0
    return-object v1

    .line 1670
    .restart local v1    # "this":Lgnu/lists/TreeList;
    :cond_0
    move-object v6, v1

    iget-object v6, v6, Lgnu/lists/TreeList;->data:[C

    move v7, v3

    aget-char v6, v6, v7

    move v4, v6

    .line 1671
    .local v4, "datum":C
    move v6, v4

    const v7, 0x9fff

    if-gt v6, v7, :cond_1

    .line 1672
    move v6, v4

    invoke-static {v6}, Lgnu/lists/Convert;->toObject(C)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    goto :goto_0

    .line 1673
    :cond_1
    move v6, v4

    const v7, 0xe000

    if-lt v6, v7, :cond_2

    move v6, v4

    const v7, 0xefff

    if-gt v6, v7, :cond_2

    .line 1675
    move-object v6, v1

    iget-object v6, v6, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move v7, v4

    const v8, 0xe000

    sub-int/2addr v7, v8

    aget-object v6, v6, v7

    move-object v1, v6

    goto :goto_0

    .line 1676
    :cond_2
    move v6, v4

    const v7, 0xa000

    if-lt v6, v7, :cond_3

    move v6, v4

    const v7, 0xafff

    if-gt v6, v7, :cond_3

    .line 1678
    move-object v6, v1

    move v7, v3

    move v8, v3

    move-object v9, v1

    iget-object v9, v9, Lgnu/lists/TreeList;->data:[C

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aget-char v9, v9, v10

    add-int/2addr v8, v9

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    invoke-direct {v6, v7, v8}, Lgnu/lists/TreeList;->copyToList(II)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    goto :goto_0

    .line 1683
    :cond_3
    move v6, v4

    const v7, 0xb000

    if-lt v6, v7, :cond_4

    move v6, v4

    const v7, 0xdfff

    if-gt v6, v7, :cond_4

    .line 1685
    move v6, v4

    const v7, 0xc000

    sub-int/2addr v6, v7

    invoke-static {v6}, Lgnu/lists/Convert;->toObject(I)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    goto :goto_0

    .line 1686
    :cond_4
    move v6, v4

    packed-switch v6, :pswitch_data_0

    .line 1741
    :pswitch_0
    move-object v6, v1

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPosNext, code="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/lists/TreeList;->unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 1690
    :pswitch_1
    move-object v6, v1

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v6

    move v5, v6

    .line 1691
    .local v5, "end_offset":I
    move v6, v5

    move v7, v5

    if-gez v7, :cond_5

    move-object v7, v1

    iget-object v7, v7, Lgnu/lists/TreeList;->data:[C

    array-length v7, v7

    :goto_1
    add-int/2addr v6, v7

    move v5, v6

    .line 1692
    add-int/lit8 v5, v5, 0x1

    .line 1699
    move-object v6, v1

    move v7, v3

    move v8, v5

    invoke-direct {v6, v7, v8}, Lgnu/lists/TreeList;->copyToList(II)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    goto/16 :goto_0

    .line 1691
    :cond_5
    move v7, v3

    goto :goto_1

    .line 1703
    .end local v5    # "end_offset":I
    :pswitch_2
    move v6, v4

    const v7, 0xf100

    if-eq v6, v7, :cond_6

    const/4 v6, 0x1

    :goto_2
    invoke-static {v6}, Lgnu/lists/Convert;->toObject(Z)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    goto/16 :goto_0

    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    .line 1705
    :pswitch_3
    move-object v6, v1

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v6

    invoke-static {v6}, Lgnu/lists/Convert;->toObject(I)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    goto/16 :goto_0

    .line 1707
    :pswitch_4
    move-object v6, v1

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Lgnu/lists/Convert;->toObject(J)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    goto/16 :goto_0

    .line 1709
    :pswitch_5
    move-object v6, v1

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    invoke-static {v6}, Lgnu/lists/Convert;->toObject(F)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    goto/16 :goto_0

    .line 1711
    :pswitch_6
    move-object v6, v1

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    invoke-static {v6, v7}, Lgnu/lists/Convert;->toObject(D)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    goto/16 :goto_0

    .line 1713
    :pswitch_7
    move-object v6, v1

    iget-object v6, v6, Lgnu/lists/TreeList;->data:[C

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-char v6, v6, v7

    invoke-static {v6}, Lgnu/lists/Convert;->toObject(C)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    goto/16 :goto_0

    .line 1716
    :pswitch_8
    move-object v6, v1

    move v7, v3

    const/4 v8, 0x3

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v6, v7}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v6

    move v5, v6

    .line 1717
    .restart local v5    # "end_offset":I
    move v6, v5

    move v7, v5

    if-gez v7, :cond_7

    move-object v7, v1

    iget-object v7, v7, Lgnu/lists/TreeList;->data:[C

    array-length v7, v7

    :goto_3
    add-int/2addr v6, v7

    move v5, v6

    .line 1718
    move-object v6, v1

    move v7, v3

    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-direct {v6, v7, v8}, Lgnu/lists/TreeList;->copyToList(II)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    goto/16 :goto_0

    .line 1717
    :cond_7
    move v7, v3

    goto :goto_3

    .line 1722
    .end local v5    # "end_offset":I
    :pswitch_9
    move-object v6, v1

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v6

    move v5, v6

    .line 1723
    .restart local v5    # "end_offset":I
    move v6, v5

    move v7, v5

    if-gez v7, :cond_8

    move-object v7, v1

    iget-object v7, v7, Lgnu/lists/TreeList;->data:[C

    array-length v7, v7

    :goto_4
    add-int/2addr v6, v7

    move v5, v6

    .line 1724
    move-object v6, v1

    move v7, v3

    move v8, v5

    const/4 v9, 0x7

    add-int/lit8 v8, v8, 0x7

    invoke-direct {v6, v7, v8}, Lgnu/lists/TreeList;->copyToList(II)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    goto/16 :goto_0

    .line 1723
    :cond_8
    move v7, v3

    goto :goto_4

    .line 1730
    .end local v5    # "end_offset":I
    :pswitch_a
    sget-object v6, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    move-object v1, v6

    goto/16 :goto_0

    .line 1733
    :pswitch_b
    move-object v6, v1

    iget-object v6, v6, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object v7, v1

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v7

    aget-object v6, v6, v7

    move-object v1, v6

    goto/16 :goto_0

    .line 1735
    :pswitch_c
    const-string/jumbo v6, ""

    move-object v1, v6

    goto/16 :goto_0

    .line 1737
    :pswitch_d
    move-object v6, v1

    iget-object v6, v6, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object v7, v1

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v7

    aget-object v6, v6, v7

    check-cast v6, Lgnu/lists/AbstractSequence;

    move-object v5, v6

    .line 1738
    .local v5, "seq":Lgnu/lists/AbstractSequence;
    move-object v6, v1

    move v7, v3

    const/4 v8, 0x3

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v6, v7}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v6

    move v2, v6

    .line 1739
    move-object v6, v5

    move v7, v2

    invoke-virtual {v6, v7}, Lgnu/lists/AbstractSequence;->getIteratorAtPos(I)Lgnu/lists/SeqPosition;

    move-result-object v6

    move-object v1, v6

    goto/16 :goto_0

    .line 1686
    nop

    :pswitch_data_0
    .packed-switch 0xf100
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_1
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method public getPosNextInt(I)I
    .locals 7

    .prologue
    .line 1652
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "ipos":I
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v4

    move v2, v4

    .line 1653
    .local v2, "index":I
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/TreeList;->data:[C

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 1655
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/TreeList;->data:[C

    move v5, v2

    aget-char v4, v4, v5

    move v3, v4

    .line 1656
    .local v3, "datum":C
    move v4, v3

    const v5, 0xb000

    if-lt v4, v5, :cond_0

    move v4, v3

    const v5, 0xdfff

    if-gt v4, v5, :cond_0

    .line 1658
    move v4, v3

    const v5, 0xc000

    sub-int/2addr v4, v5

    move v0, v4

    .line 1662
    .end local v0    # "this":Lgnu/lists/TreeList;
    .end local v3    # "datum":C
    :goto_0
    return v0

    .line 1659
    .restart local v0    # "this":Lgnu/lists/TreeList;
    .restart local v3    # "datum":C
    :cond_0
    move v4, v3

    const v5, 0xf102

    if-ne v4, v5, :cond_1

    .line 1660
    move-object v4, v0

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v4

    move v0, v4

    goto :goto_0

    .line 1662
    .end local v3    # "datum":C
    :cond_1
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public getPosPrevious(I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1638
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "ipos":I
    move v2, v1

    const/4 v3, 0x1

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    move v2, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1639
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v2, v3}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 1641
    .end local v0    # "this":Lgnu/lists/TreeList;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/lists/TreeList;
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public gotoAttributesStart(I)I
    .locals 6

    .prologue
    .line 1045
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "index":I
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreeList;->gapStart:I

    if-lt v3, v4, :cond_0

    .line 1046
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreeList;->gapEnd:I

    move-object v5, v0

    iget v5, v5, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    move v1, v3

    .line 1047
    :cond_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/TreeList;->data:[C

    array-length v4, v4

    if-ne v3, v4, :cond_1

    .line 1048
    const/4 v3, -0x1

    move v0, v3

    .line 1055
    .end local v0    # "this":Lgnu/lists/TreeList;
    :goto_0
    return v0

    .line 1049
    .restart local v0    # "this":Lgnu/lists/TreeList;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/TreeList;->data:[C

    move v4, v1

    aget-char v3, v3, v4

    move v2, v3

    .line 1050
    .local v2, "datum":C
    move v3, v2

    const v4, 0xa000

    if-lt v3, v4, :cond_2

    move v3, v2

    const v4, 0xafff

    if-le v3, v4, :cond_3

    :cond_2
    move v3, v2

    const v4, 0xf108

    if-ne v3, v4, :cond_4

    .line 1053
    :cond_3
    move v3, v1

    const/4 v4, 0x3

    add-int/lit8 v3, v3, 0x3

    move v0, v3

    goto :goto_0

    .line 1055
    :cond_4
    const/4 v3, -0x1

    move v0, v3

    goto :goto_0
.end method

.method public gotoAttributesStart(Lgnu/lists/TreePosition;)Z
    .locals 7

    .prologue
    .line 1030
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v1, p1

    .local v1, "pos":Lgnu/lists/TreePosition;
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lgnu/lists/TreePosition;->ipos:I

    const/4 v5, 0x1

    shr-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/lists/TreeList;->gotoAttributesStart(I)I

    move-result v3

    move v2, v3

    .line 1031
    .local v2, "index":I
    move v3, v2

    if-gez v3, :cond_0

    .line 1032
    const/4 v3, 0x0

    move v0, v3

    .line 1034
    .end local v0    # "this":Lgnu/lists/TreeList;
    :goto_0
    return v0

    .line 1033
    .restart local v0    # "this":Lgnu/lists/TreeList;
    :cond_0
    move-object v3, v1

    move-object v4, v0

    move v5, v2

    const/4 v6, 0x1

    shl-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v4, v5}, Lgnu/lists/TreePosition;->push(Lgnu/lists/AbstractSequence;I)V

    .line 1034
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public final gotoChildrenStart(I)I
    .locals 7

    .prologue
    .line 908
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "index":I
    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/TreeList;->data:[C

    array-length v5, v5

    if-ne v4, v5, :cond_0

    .line 909
    const/4 v4, -0x1

    move v0, v4

    .line 936
    .end local v0    # "this":Lgnu/lists/TreeList;
    :goto_0
    return v0

    .line 910
    .restart local v0    # "this":Lgnu/lists/TreeList;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/TreeList;->data:[C

    move v5, v1

    aget-char v4, v4, v5

    move v2, v4

    .line 911
    .local v2, "datum":C
    move v4, v2

    const v5, 0xa000

    if-lt v4, v5, :cond_1

    move v4, v2

    const v5, 0xafff

    if-le v4, v5, :cond_2

    :cond_1
    move v4, v2

    const v5, 0xf108

    if-ne v4, v5, :cond_4

    .line 914
    :cond_2
    add-int/lit8 v1, v1, 0x3

    .line 921
    :goto_1
    move v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/lists/TreeList;->gapStart:I

    if-lt v4, v5, :cond_3

    .line 922
    move v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/lists/TreeList;->gapEnd:I

    move-object v6, v0

    iget v6, v6, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    move v1, v4

    .line 923
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/TreeList;->data:[C

    move v5, v1

    aget-char v4, v4, v5

    move v2, v4

    .line 924
    move v4, v2

    const v5, 0xf109

    if-ne v4, v5, :cond_8

    .line 926
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x3

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {v4, v5}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v4

    move v3, v4

    .line 927
    .local v3, "end":I
    move v4, v3

    move v5, v3

    if-gez v5, :cond_7

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/TreeList;->data:[C

    array-length v5, v5

    :goto_2
    add-int/2addr v4, v5

    move v1, v4

    .line 928
    goto :goto_1

    .line 915
    .end local v3    # "end":I
    :cond_4
    move v4, v2

    const v5, 0xf110

    if-eq v4, v5, :cond_5

    move v4, v2

    const v5, 0xf112

    if-ne v4, v5, :cond_6

    .line 916
    :cond_5
    add-int/lit8 v1, v1, 0x5

    goto :goto_1

    .line 918
    :cond_6
    const/4 v4, -0x1

    move v0, v4

    goto :goto_0

    .line 927
    .restart local v3    # "end":I
    :cond_7
    move v5, v1

    goto :goto_2

    .line 929
    .end local v3    # "end":I
    :cond_8
    move v4, v2

    const v5, 0xf10a

    if-eq v4, v5, :cond_9

    move v4, v2

    const v5, 0xf116

    if-ne v4, v5, :cond_a

    .line 930
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 931
    :cond_a
    move v4, v2

    const v5, 0xf118

    if-ne v4, v5, :cond_b

    .line 932
    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    .line 936
    :cond_b
    move v4, v1

    move v0, v4

    goto :goto_0
.end method

.method public hasNext(I)Z
    .locals 6

    .prologue
    .line 1523
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "ipos":I
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v4

    move v2, v4

    .line 1524
    .local v2, "index":I
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/TreeList;->data:[C

    array-length v5, v5

    if-ne v4, v5, :cond_0

    .line 1525
    const/4 v4, 0x0

    move v0, v4

    .line 1527
    .end local v0    # "this":Lgnu/lists/TreeList;
    :goto_0
    return v0

    .line 1526
    .restart local v0    # "this":Lgnu/lists/TreeList;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/TreeList;->data:[C

    move v5, v2

    aget-char v4, v4, v5

    move v3, v4

    .line 1527
    .local v3, "ch":C
    move v4, v3

    const v5, 0xf10a

    if-eq v4, v5, :cond_1

    move v4, v3

    const v5, 0xf10b

    if-eq v4, v5, :cond_1

    move v4, v3

    const v5, 0xf10c

    if-eq v4, v5, :cond_1

    move v4, v3

    const v5, 0xf111

    if-eq v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 2298
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v1, v0

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/TreeList;
    return v0
.end method

.method public ignoring()Z
    .locals 2

    .prologue
    .line 758
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/lists/TreeList;
    return v0
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    .line 856
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v2, v0

    iget v2, v2, Lgnu/lists/TreeList;->gapStart:I

    if-nez v2, :cond_0

    move-object v2, v0

    iget v2, v2, Lgnu/lists/TreeList;->gapEnd:I

    :goto_0
    move v1, v2

    .line 857
    .local v1, "pos":I
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/TreeList;->data:[C

    array-length v3, v3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    .end local v0    # "this":Lgnu/lists/TreeList;
    return v0

    .line 856
    .end local v1    # "pos":I
    .restart local v0    # "this":Lgnu/lists/TreeList;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 857
    .restart local v1    # "pos":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final nextDataIndex(I)I
    .locals 9

    .prologue
    .line 2173
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "pos":I
    move v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/lists/TreeList;->gapStart:I

    if-ne v4, v5, :cond_0

    .line 2174
    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreeList;->gapEnd:I

    move v1, v4

    .line 2175
    :cond_0
    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/TreeList;->data:[C

    array-length v5, v5

    if-ne v4, v5, :cond_1

    .line 2176
    const/4 v4, -0x1

    move v0, v4

    .line 2241
    .end local v0    # "this":Lgnu/lists/TreeList;
    :goto_0
    return v0

    .line 2178
    .restart local v0    # "this":Lgnu/lists/TreeList;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/TreeList;->data:[C

    move v5, v1

    add-int/lit8 v1, v1, 0x1

    aget-char v4, v4, v5

    move v3, v4

    .line 2179
    .local v3, "datum":C
    move v4, v3

    const v5, 0x9fff

    if-le v4, v5, :cond_3

    move v4, v3

    const v5, 0xe000

    if-lt v4, v5, :cond_2

    move v4, v3

    const v5, 0xefff

    if-le v4, v5, :cond_3

    :cond_2
    move v4, v3

    const v5, 0xb000

    if-lt v4, v5, :cond_4

    move v4, v3

    const v5, 0xdfff

    if-gt v4, v5, :cond_4

    .line 2184
    :cond_3
    move v4, v1

    move v0, v4

    goto :goto_0

    .line 2185
    :cond_4
    move v4, v3

    const v5, 0xa000

    if-lt v4, v5, :cond_5

    move v4, v3

    const v5, 0xafff

    if-gt v4, v5, :cond_5

    .line 2187
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/TreeList;->data:[C

    move v5, v1

    aget-char v4, v4, v5

    move v5, v1

    add-int/2addr v4, v5

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    goto :goto_0

    .line 2188
    :cond_5
    move v4, v3

    packed-switch v4, :pswitch_data_0

    .line 2243
    :pswitch_0
    new-instance v4, Ljava/lang/Error;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unknown code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2191
    :pswitch_1
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v4

    move v2, v4

    .line 2192
    .local v2, "j":I
    move v4, v2

    move v5, v2

    if-gez v5, :cond_6

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/TreeList;->data:[C

    array-length v5, v5

    :goto_1
    add-int/2addr v4, v5

    move v2, v4

    .line 2193
    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    goto/16 :goto_0

    .line 2192
    :cond_6
    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 2195
    .end local v2    # "j":I
    :pswitch_2
    move v4, v1

    const/4 v5, 0x4

    add-int/lit8 v4, v4, 0x4

    move v2, v4

    .line 2198
    .restart local v2    # "j":I
    :goto_2
    move v4, v2

    move-object v5, v0

    iget v5, v5, Lgnu/lists/TreeList;->gapStart:I

    if-ne v4, v5, :cond_7

    .line 2199
    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreeList;->gapEnd:I

    move v2, v4

    .line 2200
    :cond_7
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/TreeList;->data:[C

    array-length v5, v5

    if-ne v4, v5, :cond_8

    .line 2201
    const/4 v4, -0x1

    move v0, v4

    goto/16 :goto_0

    .line 2202
    :cond_8
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/TreeList;->data:[C

    move v5, v2

    aget-char v4, v4, v5

    const v5, 0xf113

    if-ne v4, v5, :cond_9

    .line 2203
    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    goto/16 :goto_0

    .line 2204
    :cond_9
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v4

    move v2, v4

    goto :goto_2

    .line 2209
    .end local v2    # "j":I
    :pswitch_3
    move v4, v1

    move v0, v4

    goto/16 :goto_0

    .line 2211
    :pswitch_4
    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    goto/16 :goto_0

    .line 2216
    :pswitch_5
    move v4, v1

    const/4 v5, 0x2

    add-int/lit8 v4, v4, 0x2

    move v0, v4

    goto/16 :goto_0

    .line 2218
    :pswitch_6
    move v4, v1

    const/4 v5, 0x4

    add-int/lit8 v4, v4, 0x4

    move v0, v4

    goto/16 :goto_0

    .line 2224
    :pswitch_7
    const/4 v4, -0x1

    move v0, v4

    goto/16 :goto_0

    .line 2226
    :pswitch_8
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v4

    move v2, v4

    .line 2227
    .restart local v2    # "j":I
    move v4, v2

    move v5, v2

    if-gez v5, :cond_a

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/TreeList;->data:[C

    array-length v5, v5

    :goto_3
    add-int/2addr v4, v5

    move v2, v4

    .line 2228
    move v4, v2

    const/4 v5, 0x7

    add-int/lit8 v4, v4, 0x7

    move v0, v4

    goto/16 :goto_0

    .line 2227
    :cond_a
    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 2230
    .end local v2    # "j":I
    :pswitch_9
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v4

    move v2, v4

    .line 2231
    .restart local v2    # "j":I
    move v4, v2

    move v5, v2

    if-gez v5, :cond_b

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/TreeList;->data:[C

    array-length v5, v5

    :goto_4
    add-int/2addr v4, v5

    move v2, v4

    .line 2232
    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    goto/16 :goto_0

    .line 2231
    :cond_b
    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 2235
    .end local v2    # "j":I
    :pswitch_a
    move v4, v1

    const/4 v5, 0x4

    add-int/lit8 v4, v4, 0x4

    move v0, v4

    goto/16 :goto_0

    .line 2237
    :pswitch_b
    add-int/lit8 v1, v1, 0x2

    .line 2241
    :pswitch_c
    move v4, v1

    const/4 v5, 0x2

    add-int/lit8 v4, v4, 0x2

    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v5

    add-int/2addr v4, v5

    move v0, v4

    goto/16 :goto_0

    .line 2188
    :pswitch_data_0
    .packed-switch 0xf100
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_a
        :pswitch_5
        :pswitch_a
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_3
        :pswitch_c
    .end packed-switch
.end method

.method public nextMatching(ILgnu/lists/ItemPredicate;IZ)I
    .locals 22

    .prologue
    .line 1998
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/lists/TreeList;
    move/from16 v3, p1

    .local v3, "startPos":I
    move-object/from16 v4, p2

    .local v4, "predicate":Lgnu/lists/ItemPredicate;
    move/from16 v5, p3

    .local v5, "endPos":I
    move/from16 v6, p4

    .local v6, "descend":Z
    move-object/from16 v17, v2

    move/from16 v18, v3

    invoke-virtual/range {v17 .. v18}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v17

    move/from16 v7, v17

    .line 1999
    .local v7, "start":I
    move-object/from16 v17, v2

    move/from16 v18, v5

    invoke-virtual/range {v17 .. v18}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v17

    move/from16 v8, v17

    .line 2000
    .local v8, "limit":I
    move/from16 v17, v7

    move/from16 v9, v17

    .line 2001
    .local v9, "pos":I
    move-object/from16 v17, v4

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/lists/NodePredicate;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 2002
    move-object/from16 v17, v2

    move/from16 v18, v9

    move/from16 v19, v8

    invoke-virtual/range {v17 .. v19}, Lgnu/lists/TreeList;->nextNodeIndex(II)I

    move-result v17

    move/from16 v9, v17

    .line 2003
    :cond_0
    const/16 v17, 0x0

    move/from16 v10, v17

    .line 2007
    .local v10, "checkAttribute":Z
    move-object/from16 v17, v4

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/lists/ElementPredicate;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 2009
    const/16 v17, 0x1

    move/from16 v11, v17

    .line 2010
    .local v11, "checkNode":Z
    const/16 v17, 0x1

    move/from16 v13, v17

    .line 2011
    .local v13, "checkElement":Z
    const/16 v17, 0x0

    move/from16 v12, v17

    .line 2028
    .local v12, "checkText":Z
    :goto_0
    move/from16 v17, v9

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/lists/TreeList;->gapStart:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 2029
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lgnu/lists/TreeList;->gapEnd:I

    move/from16 v17, v0

    move/from16 v9, v17

    .line 2030
    :cond_1
    move/from16 v17, v9

    move/from16 v18, v8

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_4

    move/from16 v17, v8

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 2031
    const/16 v17, 0x0

    move/from16 v2, v17

    .line 2156
    .end local v2    # "this":Lgnu/lists/TreeList;
    :goto_1
    return v2

    .line 2013
    .end local v11    # "checkNode":Z
    .end local v12    # "checkText":Z
    .end local v13    # "checkElement":Z
    .restart local v2    # "this":Lgnu/lists/TreeList;
    :cond_2
    move-object/from16 v17, v4

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/lists/AttributePredicate;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 2015
    const/16 v17, 0x1

    move/from16 v11, v17

    .line 2016
    .restart local v11    # "checkNode":Z
    const/16 v17, 0x0

    move/from16 v13, v17

    .line 2017
    .restart local v13    # "checkElement":Z
    const/16 v17, 0x0

    move/from16 v12, v17

    .restart local v12    # "checkText":Z
    goto :goto_0

    .line 2021
    .end local v11    # "checkNode":Z
    .end local v12    # "checkText":Z
    .end local v13    # "checkElement":Z
    :cond_3
    const/16 v17, 0x1

    move/from16 v11, v17

    .line 2022
    .restart local v11    # "checkNode":Z
    const/16 v17, 0x1

    move/from16 v13, v17

    .line 2023
    .restart local v13    # "checkElement":Z
    const/16 v17, 0x1

    move/from16 v12, v17

    .restart local v12    # "checkText":Z
    goto :goto_0

    .line 2033
    :cond_4
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/lists/TreeList;->data:[C

    move-object/from16 v17, v0

    move/from16 v18, v9

    aget-char v17, v17, v18

    move/from16 v16, v17

    .line 2034
    .local v16, "datum":C
    move/from16 v17, v16

    const v18, 0x9fff

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    move/from16 v17, v16

    const v18, 0xe000

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_5

    move/from16 v17, v16

    const v18, 0xefff

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    :cond_5
    move/from16 v17, v16

    const v18, 0xb000

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_a

    move/from16 v17, v16

    const v18, 0xdfff

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_a

    .line 2040
    :cond_6
    move/from16 v17, v12

    if-eqz v17, :cond_8

    move-object/from16 v17, v4

    move-object/from16 v18, v2

    move/from16 v19, v9

    const/16 v20, 0x1

    shl-int/lit8 v19, v19, 0x1

    invoke-interface/range {v17 .. v19}, Lgnu/lists/ItemPredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 2042
    move/from16 v17, v9

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/lists/TreeList;->gapEnd:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_7

    .line 2043
    move/from16 v17, v9

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/lists/TreeList;->gapEnd:I

    move/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lgnu/lists/TreeList;->gapStart:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    sub-int v17, v17, v18

    move/from16 v9, v17

    .line 2044
    :cond_7
    move/from16 v17, v9

    const/16 v18, 0x1

    shl-int/lit8 v17, v17, 0x1

    move/from16 v2, v17

    goto/16 :goto_1

    .line 2046
    :cond_8
    move/from16 v17, v9

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v14, v17

    .line 2026
    .local v14, "next":I
    :cond_9
    :goto_2
    move/from16 v17, v14

    move/from16 v9, v17

    goto/16 :goto_0

    .line 2049
    .end local v14    # "next":I
    :cond_a
    move/from16 v17, v16

    packed-switch v17, :pswitch_data_0

    .line 2139
    :pswitch_0
    move/from16 v17, v16

    const v18, 0xa000

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_14

    move/from16 v17, v16

    const v18, 0xafff

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_14

    .line 2142
    move/from16 v17, v6

    if-eqz v17, :cond_13

    .line 2143
    move/from16 v17, v9

    const/16 v18, 0x3

    add-int/lit8 v17, v17, 0x3

    move/from16 v14, v17

    .line 2146
    .restart local v14    # "next":I
    :goto_3
    move/from16 v17, v13

    if-eqz v17, :cond_9

    .line 2152
    :goto_4
    move/from16 v17, v9

    move/from16 v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_9

    move-object/from16 v17, v4

    move-object/from16 v18, v2

    move/from16 v19, v9

    const/16 v20, 0x1

    shl-int/lit8 v19, v19, 0x1

    invoke-interface/range {v17 .. v19}, Lgnu/lists/ItemPredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 2154
    move/from16 v17, v9

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/lists/TreeList;->gapEnd:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_b

    .line 2155
    move/from16 v17, v9

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/lists/TreeList;->gapEnd:I

    move/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lgnu/lists/TreeList;->gapStart:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    sub-int v17, v17, v18

    move/from16 v9, v17

    .line 2156
    :cond_b
    move/from16 v17, v9

    const/16 v18, 0x1

    shl-int/lit8 v17, v17, 0x1

    move/from16 v2, v17

    goto/16 :goto_1

    .line 2052
    .end local v14    # "next":I
    :pswitch_1
    move/from16 v17, v9

    const/16 v18, 0x3

    add-int/lit8 v17, v17, 0x3

    move/from16 v14, v17

    .line 2053
    .restart local v14    # "next":I
    goto/16 :goto_2

    .line 2055
    .end local v14    # "next":I
    :pswitch_2
    move/from16 v17, v9

    const/16 v18, 0x5

    add-int/lit8 v17, v17, 0x5

    move/from16 v14, v17

    .line 2056
    .restart local v14    # "next":I
    move/from16 v17, v11

    if-eqz v17, :cond_9

    goto :goto_4

    .line 2059
    .end local v14    # "next":I
    :pswitch_3
    move/from16 v17, v9

    const/16 v18, 0x5

    add-int/lit8 v17, v17, 0x5

    move/from16 v14, v17

    .line 2060
    .restart local v14    # "next":I
    goto/16 :goto_2

    .line 2065
    .end local v14    # "next":I
    :pswitch_4
    move/from16 v17, v9

    const/16 v18, 0x3

    add-int/lit8 v17, v17, 0x3

    move/from16 v14, v17

    .line 2066
    .restart local v14    # "next":I
    move/from16 v17, v12

    if-eqz v17, :cond_9

    goto :goto_4

    .line 2069
    .end local v14    # "next":I
    :pswitch_5
    move/from16 v17, v9

    const/16 v18, 0x2

    add-int/lit8 v17, v17, 0x2

    move/from16 v14, v17

    .line 2070
    .restart local v14    # "next":I
    goto/16 :goto_2

    .line 2072
    .end local v14    # "next":I
    :pswitch_6
    move/from16 v17, v6

    if-nez v17, :cond_c

    .line 2073
    const/16 v17, 0x0

    move/from16 v2, v17

    goto/16 :goto_1

    .line 2074
    :cond_c
    move/from16 v17, v9

    const/16 v18, 0x2

    add-int/lit8 v17, v17, 0x2

    move/from16 v14, v17

    .line 2075
    .restart local v14    # "next":I
    goto/16 :goto_2

    .line 2077
    .end local v14    # "next":I
    :pswitch_7
    move/from16 v17, v9

    const/16 v18, 0x5

    add-int/lit8 v17, v17, 0x5

    move/from16 v14, v17

    .line 2078
    .restart local v14    # "next":I
    move/from16 v17, v12

    if-eqz v17, :cond_9

    goto/16 :goto_4

    .line 2081
    .end local v14    # "next":I
    :pswitch_8
    move/from16 v17, v6

    if-nez v17, :cond_d

    .line 2082
    const/16 v17, 0x0

    move/from16 v2, v17

    goto/16 :goto_1

    .line 2083
    :cond_d
    move/from16 v17, v9

    const/16 v18, 0x7

    add-int/lit8 v17, v17, 0x7

    move/from16 v14, v17

    .line 2084
    .restart local v14    # "next":I
    goto/16 :goto_2

    .line 2087
    .end local v14    # "next":I
    :pswitch_9
    move/from16 v17, v6

    if-nez v17, :cond_e

    .line 2088
    const/16 v17, 0x0

    move/from16 v2, v17

    goto/16 :goto_1

    .line 2091
    :cond_e
    :pswitch_a
    move/from16 v17, v9

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v14, v17

    .line 2092
    .restart local v14    # "next":I
    goto/16 :goto_2

    .line 2094
    .end local v14    # "next":I
    :pswitch_b
    move/from16 v17, v11

    if-eqz v17, :cond_10

    .line 2096
    move-object/from16 v17, v2

    move/from16 v18, v9

    const/16 v19, 0x3

    add-int/lit8 v18, v18, 0x3

    invoke-virtual/range {v17 .. v18}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v17

    move/from16 v15, v17

    .line 2097
    .local v15, "j":I
    move/from16 v17, v15

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v18, v15

    if-gez v18, :cond_f

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/lists/TreeList;->data:[C

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    :goto_5
    add-int v17, v17, v18

    move/from16 v14, v17

    .line 2101
    .end local v15    # "j":I
    .restart local v14    # "next":I
    :goto_6
    move/from16 v17, v10

    if-eqz v17, :cond_9

    goto/16 :goto_4

    .line 2097
    .end local v14    # "next":I
    .restart local v15    # "j":I
    :cond_f
    move/from16 v18, v9

    goto :goto_5

    .line 2100
    .end local v15    # "j":I
    :cond_10
    move/from16 v17, v9

    const/16 v18, 0x5

    add-int/lit8 v17, v17, 0x5

    move/from16 v14, v17

    .restart local v14    # "next":I
    goto :goto_6

    .line 2105
    .end local v14    # "next":I
    :pswitch_c
    move/from16 v17, v9

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v14, v17

    .line 2106
    .restart local v14    # "next":I
    move/from16 v17, v12

    if-eqz v17, :cond_9

    goto/16 :goto_4

    .line 2109
    .end local v14    # "next":I
    :pswitch_d
    move/from16 v17, v9

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v14, v17

    .line 2110
    .restart local v14    # "next":I
    goto/16 :goto_2

    .line 2113
    .end local v14    # "next":I
    :pswitch_e
    move/from16 v17, v9

    const/16 v18, 0x5

    add-int/lit8 v17, v17, 0x5

    move/from16 v14, v17

    .line 2114
    .restart local v14    # "next":I
    move/from16 v17, v12

    if-eqz v17, :cond_9

    goto/16 :goto_4

    .line 2117
    .end local v14    # "next":I
    :pswitch_f
    move/from16 v17, v9

    const/16 v18, 0x5

    add-int/lit8 v17, v17, 0x5

    move-object/from16 v18, v2

    move/from16 v19, v9

    const/16 v20, 0x3

    add-int/lit8 v19, v19, 0x3

    invoke-virtual/range {v18 .. v19}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v14, v17

    .line 2118
    .restart local v14    # "next":I
    move/from16 v17, v11

    if-eqz v17, :cond_9

    goto/16 :goto_4

    .line 2121
    .end local v14    # "next":I
    :pswitch_10
    move/from16 v17, v9

    const/16 v18, 0x3

    add-int/lit8 v17, v17, 0x3

    move-object/from16 v18, v2

    move/from16 v19, v9

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v14, v17

    .line 2122
    .restart local v14    # "next":I
    move/from16 v17, v11

    if-eqz v17, :cond_9

    goto/16 :goto_4

    .line 2125
    .end local v14    # "next":I
    :pswitch_11
    move/from16 v17, v9

    const/16 v18, 0x3

    add-int/lit8 v17, v17, 0x3

    move-object/from16 v18, v2

    move/from16 v19, v9

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v14, v17

    .line 2126
    .restart local v14    # "next":I
    move/from16 v17, v12

    if-eqz v17, :cond_9

    goto/16 :goto_4

    .line 2129
    .end local v14    # "next":I
    :pswitch_12
    move/from16 v17, v6

    if-eqz v17, :cond_11

    .line 2130
    move/from16 v17, v9

    const/16 v18, 0x3

    add-int/lit8 v17, v17, 0x3

    move/from16 v14, v17

    .line 2136
    .restart local v14    # "next":I
    :goto_7
    move/from16 v17, v13

    if-eqz v17, :cond_9

    goto/16 :goto_4

    .line 2133
    .end local v14    # "next":I
    :cond_11
    move-object/from16 v17, v2

    move/from16 v18, v9

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v17

    move/from16 v15, v17

    .line 2134
    .restart local v15    # "j":I
    move/from16 v17, v15

    move/from16 v18, v15

    if-gez v18, :cond_12

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/lists/TreeList;->data:[C

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    :goto_8
    add-int v17, v17, v18

    const/16 v18, 0x7

    add-int/lit8 v17, v17, 0x7

    move/from16 v14, v17

    .restart local v14    # "next":I
    goto :goto_7

    .end local v14    # "next":I
    :cond_12
    move/from16 v18, v9

    goto :goto_8

    .line 2145
    .end local v15    # "j":I
    :cond_13
    move/from16 v17, v9

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/lists/TreeList;->data:[C

    move-object/from16 v18, v0

    move/from16 v19, v9

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    aget-char v18, v18, v19

    add-int v17, v17, v18

    const/16 v18, 0x2

    add-int/lit8 v17, v17, 0x2

    move/from16 v14, v17

    .restart local v14    # "next":I
    goto/16 :goto_3

    .line 2149
    .end local v14    # "next":I
    :cond_14
    new-instance v17, Ljava/lang/Error;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v21, v19

    move-object/from16 v19, v21

    move-object/from16 v20, v21

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "unknown code:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move/from16 v20, v16

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v17

    .line 2049
    nop

    :pswitch_data_0
    .packed-switch 0xf100
        :pswitch_c
        :pswitch_c
        :pswitch_4
        :pswitch_e
        :pswitch_4
        :pswitch_e
        :pswitch_5
        :pswitch_0
        :pswitch_12
        :pswitch_b
        :pswitch_9
        :pswitch_6
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_2
        :pswitch_9
        :pswitch_3
        :pswitch_a
        :pswitch_f
        :pswitch_11
        :pswitch_d
        :pswitch_10
        :pswitch_1
    .end packed-switch
.end method

.method public final nextNodeIndex(II)I
    .locals 6

    .prologue
    .line 1942
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "pos":I
    move v2, p2

    .local v2, "limit":I
    move v4, v2

    const/high16 v5, -0x80000000

    or-int/2addr v4, v5

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 1943
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/TreeList;->data:[C

    array-length v4, v4

    move v2, v4

    .line 1946
    :cond_0
    :goto_0
    move v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/lists/TreeList;->gapStart:I

    if-ne v4, v5, :cond_1

    .line 1947
    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreeList;->gapEnd:I

    move v1, v4

    .line 1948
    :cond_1
    move v4, v1

    move v5, v2

    if-lt v4, v5, :cond_2

    .line 1949
    move v4, v1

    move v0, v4

    .line 1986
    .end local v0    # "this":Lgnu/lists/TreeList;
    :goto_1
    return v0

    .line 1950
    .restart local v0    # "this":Lgnu/lists/TreeList;
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/TreeList;->data:[C

    move v5, v1

    aget-char v4, v4, v5

    move v3, v4

    .line 1951
    .local v3, "datum":C
    move v4, v3

    const v5, 0x9fff

    if-le v4, v5, :cond_5

    move v4, v3

    const v5, 0xe000

    if-lt v4, v5, :cond_3

    move v4, v3

    const v5, 0xefff

    if-le v4, v5, :cond_5

    :cond_3
    move v4, v3

    const v5, 0xb000

    if-lt v4, v5, :cond_4

    move v4, v3

    const v5, 0xdfff

    if-le v4, v5, :cond_5

    :cond_4
    move v4, v3

    const v5, 0xff00

    and-int/2addr v4, v5

    const v5, 0xf000

    if-ne v4, v5, :cond_6

    .line 1958
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 1959
    goto :goto_0

    .line 1961
    :cond_6
    move v4, v3

    const v5, 0xa000

    if-lt v4, v5, :cond_7

    move v4, v3

    const v5, 0xafff

    if-gt v4, v5, :cond_7

    .line 1963
    move v4, v1

    move v0, v4

    goto :goto_1

    .line 1964
    :cond_7
    move v4, v3

    packed-switch v4, :pswitch_data_0

    .line 1989
    :pswitch_0
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v4

    move v1, v4

    .line 1990
    goto :goto_0

    .line 1967
    :pswitch_1
    add-int/lit8 v1, v1, 0x3

    .line 1992
    :goto_2
    goto :goto_0

    .line 1970
    :pswitch_2
    add-int/lit8 v1, v1, 0x1

    .line 1971
    goto :goto_2

    .line 1977
    :pswitch_3
    move v4, v1

    move v0, v4

    goto :goto_1

    .line 1979
    :pswitch_4
    add-int/lit8 v1, v1, 0x5

    .line 1980
    goto :goto_2

    .line 1986
    :pswitch_5
    move v4, v1

    move v0, v4

    goto :goto_1

    .line 1964
    :pswitch_data_0
    .packed-switch 0xf108
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public nextPos(I)I
    .locals 6

    .prologue
    .line 2163
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "position":I
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v3

    move v2, v3

    .line 2164
    .local v2, "index":I
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/TreeList;->data:[C

    array-length v4, v4

    if-ne v3, v4, :cond_0

    .line 2165
    const/4 v3, 0x0

    move v0, v3

    .line 2168
    .end local v0    # "this":Lgnu/lists/TreeList;
    :goto_0
    return v0

    .line 2166
    .restart local v0    # "this":Lgnu/lists/TreeList;
    :cond_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreeList;->gapEnd:I

    if-lt v3, v4, :cond_1

    .line 2167
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreeList;->gapEnd:I

    move-object v5, v0

    iget v5, v5, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    move v2, v3

    .line 2168
    :cond_1
    move v3, v2

    const/4 v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    const/4 v4, 0x3

    add-int/lit8 v3, v3, 0x3

    move v0, v3

    goto :goto_0
.end method

.method public parentOrEntityI(I)I
    .locals 9

    .prologue
    .line 960
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "index":I
    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/TreeList;->data:[C

    array-length v6, v6

    if-ne v5, v6, :cond_0

    .line 961
    const/4 v5, -0x1

    move v0, v5

    .line 1015
    .end local v0    # "this":Lgnu/lists/TreeList;
    :goto_0
    return v0

    .line 962
    .restart local v0    # "this":Lgnu/lists/TreeList;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/TreeList;->data:[C

    move v6, v1

    aget-char v5, v5, v6

    move v2, v5

    .line 963
    .local v2, "datum":C
    move v5, v2

    const v6, 0xf110

    if-eq v5, v6, :cond_1

    move v5, v2

    const v6, 0xf112

    if-ne v5, v6, :cond_3

    .line 965
    :cond_1
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x3

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v5

    move v3, v5

    .line 966
    .local v3, "parent_offset":I
    move v5, v3

    const/4 v6, -0x1

    if-lt v5, v6, :cond_2

    .line 967
    move v5, v3

    move v0, v5

    goto :goto_0

    .line 969
    :cond_2
    move v5, v1

    move v6, v3

    add-int/2addr v5, v6

    move v0, v5

    goto :goto_0

    .line 971
    .end local v3    # "parent_offset":I
    :cond_3
    move v5, v2

    const v6, 0xa000

    if-lt v5, v6, :cond_5

    move v5, v2

    const v6, 0xafff

    if-gt v5, v6, :cond_5

    .line 974
    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/TreeList;->data:[C

    move v6, v1

    const/4 v7, 0x2

    add-int/lit8 v6, v6, 0x2

    aget-char v5, v5, v6

    move v3, v5

    .line 975
    .restart local v3    # "parent_offset":I
    move v5, v3

    if-nez v5, :cond_4

    const/4 v5, -0x1

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_4
    move v5, v1

    move v6, v3

    sub-int/2addr v5, v6

    goto :goto_1

    .line 977
    .end local v3    # "parent_offset":I
    :cond_5
    move v5, v2

    const v6, 0xf108

    if-ne v5, v6, :cond_9

    .line 979
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v5

    move v3, v5

    .line 980
    .local v3, "end_offset":I
    move v5, v3

    move v6, v3

    if-gez v6, :cond_6

    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/TreeList;->data:[C

    array-length v6, v6

    :goto_2
    add-int/2addr v5, v6

    move v3, v5

    .line 981
    move-object v5, v0

    move v6, v3

    const/4 v7, 0x5

    add-int/lit8 v6, v6, 0x5

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v5

    move v4, v5

    .line 982
    .local v4, "parent_offset":I
    move v5, v4

    if-nez v5, :cond_7

    .line 983
    const/4 v5, -0x1

    move v0, v5

    goto :goto_0

    .line 980
    .end local v4    # "parent_offset":I
    :cond_6
    move v6, v1

    goto :goto_2

    .line 984
    .restart local v4    # "parent_offset":I
    :cond_7
    move v5, v4

    if-gez v5, :cond_8

    .line 985
    move v5, v4

    move v6, v3

    add-int/2addr v5, v6

    move v4, v5

    .line 986
    :cond_8
    move v5, v4

    move v0, v5

    goto :goto_0

    .line 1005
    .end local v3    # "end_offset":I
    .end local v4    # "parent_offset":I
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    .line 990
    :cond_9
    move v5, v1

    move-object v6, v0

    iget v6, v6, Lgnu/lists/TreeList;->gapStart:I

    if-ne v5, v6, :cond_a

    .line 991
    move-object v5, v0

    iget v5, v5, Lgnu/lists/TreeList;->gapEnd:I

    move v1, v5

    .line 992
    :cond_a
    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/TreeList;->data:[C

    array-length v6, v6

    if-ne v5, v6, :cond_b

    .line 993
    const/4 v5, -0x1

    move v0, v5

    goto/16 :goto_0

    .line 994
    :cond_b
    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/TreeList;->data:[C

    move v6, v1

    aget-char v5, v5, v6

    move v2, v5

    .line 995
    move v5, v2

    packed-switch v5, :pswitch_data_0

    .line 1010
    :pswitch_1
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v5

    move v1, v5

    .line 1012
    move v5, v1

    if-gez v5, :cond_9

    .line 1013
    .line 1015
    const/4 v5, -0x1

    move v0, v5

    goto/16 :goto_0

    .line 998
    :pswitch_2
    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/TreeList;->data:[C

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-char v6, v6, v7

    sub-int/2addr v5, v6

    move v0, v5

    goto/16 :goto_0

    .line 1000
    :pswitch_3
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x3

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v5

    move v3, v5

    .line 1001
    .local v3, "begin_offset":I
    move v5, v3

    if-gez v5, :cond_c

    .line 1002
    move v5, v3

    move v6, v1

    add-int/2addr v5, v6

    move v3, v5

    .line 1003
    :cond_c
    move v5, v3

    move v0, v5

    goto/16 :goto_0

    .line 1008
    .end local v3    # "begin_offset":I
    :pswitch_4
    const/4 v5, -0x1

    move v0, v5

    goto/16 :goto_0

    .line 995
    :pswitch_data_0
    .packed-switch 0xf10a
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public parentOrEntityPos(I)I
    .locals 6

    .prologue
    .line 954
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "ipos":I
    move-object v3, v0

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lgnu/lists/TreeList;->parentOrEntityI(I)I

    move-result v3

    move v2, v3

    .line 955
    .local v2, "index":I
    move v3, v2

    if-gez v3, :cond_0

    const/4 v3, -0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lgnu/lists/TreeList;
    return v0

    .restart local v0    # "this":Lgnu/lists/TreeList;
    :cond_0
    move v3, v2

    const/4 v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public parentPos(I)I
    .locals 5

    .prologue
    .line 941
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "ipos":I
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v3

    move v2, v3

    .line 944
    .local v2, "index":I
    :cond_0
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/lists/TreeList;->parentOrEntityI(I)I

    move-result v3

    move v2, v3

    .line 945
    move v3, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 946
    const/4 v3, -0x1

    move v0, v3

    .line 948
    .end local v0    # "this":Lgnu/lists/TreeList;
    :goto_0
    return v0

    .line 947
    .restart local v0    # "this":Lgnu/lists/TreeList;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/TreeList;->data:[C

    move v4, v2

    aget-char v3, v3, v4

    const v4, 0xf112

    if-eq v3, v4, :cond_0

    .line 948
    move v3, v2

    const/4 v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public final posToDataIndex(I)I
    .locals 6

    .prologue
    .line 880
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "ipos":I
    move v3, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 881
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/TreeList;->data:[C

    array-length v3, v3

    move v0, v3

    .line 895
    .end local v0    # "this":Lgnu/lists/TreeList;
    :goto_0
    return v0

    .line 882
    .restart local v0    # "this":Lgnu/lists/TreeList;
    :cond_0
    move v3, v1

    const/4 v4, 0x1

    ushr-int/lit8 v3, v3, 0x1

    move v2, v3

    .line 883
    .local v2, "index":I
    move v3, v1

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 884
    add-int/lit8 v2, v2, -0x1

    .line 885
    :cond_1
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreeList;->gapStart:I

    if-lt v3, v4, :cond_2

    .line 886
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreeList;->gapEnd:I

    move-object v5, v0

    iget v5, v5, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    move v2, v3

    .line 887
    :cond_2
    move v3, v1

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    .line 889
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v3

    move v2, v3

    .line 890
    move v3, v2

    if-gez v3, :cond_3

    .line 891
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/TreeList;->data:[C

    array-length v3, v3

    move v0, v3

    goto :goto_0

    .line 892
    :cond_3
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreeList;->gapStart:I

    if-ne v3, v4, :cond_4

    .line 893
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreeList;->gapEnd:I

    move-object v5, v0

    iget v5, v5, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    move v2, v3

    .line 895
    :cond_4
    move v3, v2

    move v0, v3

    goto :goto_0
.end method

.method public final resizeObjects()V
    .locals 9

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    if-nez v4, :cond_0

    .line 354
    const/4 v4, 0x0

    move v1, v4

    .line 355
    .local v1, "oldLength":I
    const/16 v4, 0x64

    move v2, v4

    .line 356
    .local v2, "newLength":I
    move v4, v2

    new-array v4, v4, [Ljava/lang/Object;

    move-object v3, v4

    .line 365
    .local v3, "tmp":[Ljava/lang/Object;
    :goto_0
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    .line 366
    return-void

    .line 360
    .end local v1    # "oldLength":I
    .end local v2    # "newLength":I
    .end local v3    # "tmp":[Ljava/lang/Object;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    array-length v4, v4

    move v1, v4

    .line 361
    .restart local v1    # "oldLength":I
    const/4 v4, 0x2

    move v5, v1

    mul-int/2addr v4, v5

    move v2, v4

    .line 362
    .restart local v2    # "newLength":I
    move v4, v2

    new-array v4, v4, [Ljava/lang/Object;

    move-object v3, v4

    .line 363
    .restart local v3    # "tmp":[Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public setAttributeName(II)V
    .locals 6

    .prologue
    .line 665
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "attrIndex":I
    move v2, p2

    .local v2, "nameIndex":I
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 666
    return-void
.end method

.method public setElementName(II)V
    .locals 8

    .prologue
    .line 579
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "elementIndex":I
    move v2, p2

    .local v2, "nameIndex":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/TreeList;->data:[C

    move v5, v1

    aget-char v4, v4, v5

    const v5, 0xf108

    if-ne v4, v5, :cond_0

    .line 581
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v4

    move v3, v4

    .line 582
    .local v3, "j":I
    move v4, v3

    move v5, v3

    if-gez v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/TreeList;->data:[C

    array-length v5, v5

    :goto_0
    add-int/2addr v4, v5

    move v1, v4

    .line 584
    .end local v3    # "j":I
    :cond_0
    move v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/lists/TreeList;->gapEnd:I

    if-ge v4, v5, :cond_2

    .line 585
    new-instance v4, Ljava/lang/Error;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "setElementName before gapEnd"

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 582
    .restart local v3    # "j":I
    :cond_1
    move v5, v1

    goto :goto_0

    .line 586
    .end local v3    # "j":I
    :cond_2
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 587
    return-void
.end method

.method public final setIntN(II)V
    .locals 7

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "i":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/TreeList;->data:[C

    move v4, v1

    move v5, v2

    const/16 v6, 0x10

    shr-int/lit8 v5, v5, 0x10

    int-to-char v5, v5

    aput-char v5, v3, v4

    .line 395
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/TreeList;->data:[C

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v5, v2

    int-to-char v5, v5

    aput-char v5, v3, v4

    .line 396
    return-void
.end method

.method public size()I
    .locals 5

    .prologue
    .line 862
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    const/4 v3, 0x0

    move v1, v3

    .line 863
    .local v1, "size":I
    const/4 v3, 0x0

    move v2, v3

    .line 866
    .local v2, "i":I
    :goto_0
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/lists/TreeList;->nextPos(I)I

    move-result v3

    move v2, v3

    .line 867
    move v3, v2

    if-nez v3, :cond_0

    .line 868
    move v3, v1

    move v0, v3

    .end local v0    # "this":Lgnu/lists/TreeList;
    return v0

    .line 869
    .restart local v0    # "this":Lgnu/lists/TreeList;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public startAttribute(I)V
    .locals 9

    .prologue
    .line 651
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 652
    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lgnu/lists/TreeList;->gapEnd:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lgnu/lists/TreeList;->gapEnd:I

    .line 653
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/TreeList;->data:[C

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/lists/TreeList;->gapStart:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/lists/TreeList;->gapStart:I

    const v4, 0xf109

    aput-char v4, v2, v3

    .line 654
    move-object v2, v0

    iget v2, v2, Lgnu/lists/TreeList;->attrStart:I

    if-eqz v2, :cond_0

    .line 655
    new-instance v2, Ljava/lang/Error;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string/jumbo v4, "nested attribute"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 656
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lgnu/lists/TreeList;->gapStart:I

    iput v3, v2, Lgnu/lists/TreeList;->attrStart:I

    .line 657
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lgnu/lists/TreeList;->gapStart:I

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 658
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lgnu/lists/TreeList;->gapStart:I

    const/4 v4, 0x2

    add-int/lit8 v3, v3, 0x2

    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreeList;->gapEnd:I

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/TreeList;->data:[C

    array-length v5, v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 659
    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lgnu/lists/TreeList;->gapStart:I

    const/4 v4, 0x4

    add-int/lit8 v3, v3, 0x4

    iput v3, v2, Lgnu/lists/TreeList;->gapStart:I

    .line 660
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/TreeList;->data:[C

    move-object v3, v0

    iget v3, v3, Lgnu/lists/TreeList;->gapEnd:I

    const v4, 0xf10a

    aput-char v4, v2, v3

    .line 661
    return-void
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 626
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v1, p1

    .local v1, "attrType":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Lgnu/lists/TreeList;->startAttribute(I)V

    .line 627
    return-void
.end method

.method public startDocument()V
    .locals 7

    .prologue
    .line 500
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v2, v0

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 501
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lgnu/lists/TreeList;->gapEnd:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lgnu/lists/TreeList;->gapEnd:I

    .line 502
    move-object v2, v0

    iget v2, v2, Lgnu/lists/TreeList;->gapStart:I

    move v1, v2

    .line 503
    .local v1, "p":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/TreeList;->data:[C

    move v3, v1

    const v4, 0xf110

    aput-char v4, v2, v3

    .line 504
    move-object v2, v0

    iget v2, v2, Lgnu/lists/TreeList;->docStart:I

    if-eqz v2, :cond_0

    .line 505
    new-instance v2, Ljava/lang/Error;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "nested document"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 506
    :cond_0
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lgnu/lists/TreeList;->docStart:I

    .line 507
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreeList;->gapEnd:I

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/TreeList;->data:[C

    array-length v5, v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 508
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x3

    add-int/lit8 v3, v3, 0x3

    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreeList;->currentParent:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    const/4 v4, -0x1

    :goto_0
    invoke-virtual {v2, v3, v4}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 509
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/lists/TreeList;->currentParent:I

    .line 510
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x5

    add-int/lit8 v3, v3, 0x5

    iput v3, v2, Lgnu/lists/TreeList;->gapStart:I

    .line 511
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/lists/TreeList;->currentParent:I

    .line 512
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/TreeList;->data:[C

    move-object v3, v0

    iget v3, v3, Lgnu/lists/TreeList;->gapEnd:I

    const v4, 0xf111

    aput-char v4, v2, v3

    .line 513
    return-void

    .line 508
    :cond_1
    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreeList;->currentParent:I

    move v5, v1

    sub-int/2addr v4, v5

    goto :goto_0
.end method

.method public startElement(I)V
    .locals 9

    .prologue
    .line 565
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 566
    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lgnu/lists/TreeList;->gapEnd:I

    const/4 v4, 0x7

    add-int/lit8 v3, v3, -0x7

    iput v3, v2, Lgnu/lists/TreeList;->gapEnd:I

    .line 567
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/TreeList;->data:[C

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/lists/TreeList;->gapStart:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/lists/TreeList;->gapStart:I

    const v4, 0xf108

    aput-char v4, v2, v3

    .line 568
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lgnu/lists/TreeList;->gapStart:I

    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreeList;->gapEnd:I

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/TreeList;->data:[C

    array-length v5, v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 569
    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lgnu/lists/TreeList;->gapStart:I

    const/4 v4, 0x2

    add-int/lit8 v3, v3, 0x2

    iput v3, v2, Lgnu/lists/TreeList;->gapStart:I

    .line 570
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/TreeList;->data:[C

    move-object v3, v0

    iget v3, v3, Lgnu/lists/TreeList;->gapEnd:I

    const v4, 0xf10c

    aput-char v4, v2, v3

    .line 571
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lgnu/lists/TreeList;->gapEnd:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 572
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lgnu/lists/TreeList;->gapEnd:I

    const/4 v4, 0x3

    add-int/lit8 v3, v3, 0x3

    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreeList;->gapStart:I

    const/4 v5, 0x3

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v2, v3, v4}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 573
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lgnu/lists/TreeList;->gapEnd:I

    const/4 v4, 0x5

    add-int/lit8 v3, v3, 0x5

    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreeList;->currentParent:I

    invoke-virtual {v2, v3, v4}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 574
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lgnu/lists/TreeList;->gapStart:I

    const/4 v4, 0x3

    add-int/lit8 v3, v3, -0x3

    iput v3, v2, Lgnu/lists/TreeList;->currentParent:I

    .line 575
    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 495
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Lgnu/lists/TreeList;->startElement(I)V

    .line 496
    return-void
.end method

.method public statistics()V
    .locals 6

    .prologue
    .line 2308
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    new-instance v2, Ljava/io/PrintWriter;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    .line 2309
    .local v1, "out":Ljava/io/PrintWriter;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/TreeList;->statistics(Ljava/io/PrintWriter;)V

    .line 2310
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 2311
    return-void
.end method

.method public statistics(Ljava/io/PrintWriter;)V
    .locals 5

    .prologue
    .line 2315
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v1, p1

    .local v1, "out":Ljava/io/PrintWriter;
    move-object v2, v1

    const-string/jumbo v3, "data array length: "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/TreeList;->data:[C

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 2316
    move-object v2, v1

    const-string/jumbo v3, "data array gap: "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/lists/TreeList;->gapEnd:I

    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 2317
    move-object v2, v1

    const-string/jumbo v3, "object array length: "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 2318
    return-void
.end method

.method public stringValue(ILjava/lang/StringBuffer;)I
    .locals 8

    .prologue
    .line 1754
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "sbuf":Ljava/lang/StringBuffer;
    move-object v4, v0

    move v5, v1

    const v6, 0x7fffffff

    invoke-virtual {v4, v5, v6}, Lgnu/lists/TreeList;->nextNodeIndex(II)I

    move-result v4

    move v3, v4

    .line 1755
    .local v3, "next":I
    move v4, v3

    move v5, v1

    if-le v4, v5, :cond_0

    .line 1757
    move-object v4, v0

    move v5, v1

    move v6, v3

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lgnu/lists/TreeList;->stringValue(IILjava/lang/StringBuffer;)V

    .line 1758
    move v4, v1

    move v0, v4

    .line 1761
    .end local v0    # "this":Lgnu/lists/TreeList;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/lists/TreeList;
    :cond_0
    move-object v4, v0

    const/4 v5, 0x0

    move v6, v1

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lgnu/lists/TreeList;->stringValue(ZILjava/lang/StringBuffer;)I

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public stringValue(ZILjava/lang/StringBuffer;)I
    .locals 18

    .prologue
    .line 1766
    move-object/from16 v1, p0

    .local v1, "this":Lgnu/lists/TreeList;
    move/from16 v2, p1

    .local v2, "inElement":Z
    move/from16 v3, p2

    .local v3, "index":I
    move-object/from16 v4, p3

    .local v4, "sbuf":Ljava/lang/StringBuffer;
    const/4 v13, 0x0

    move-object v5, v13

    .line 1767
    .local v5, "value":Ljava/lang/Object;
    const/4 v13, 0x0

    move v6, v13

    .line 1768
    .local v6, "doChildren":I
    move v13, v3

    move-object v14, v1

    iget v14, v14, Lgnu/lists/TreeList;->gapStart:I

    if-lt v13, v14, :cond_0

    .line 1769
    move v13, v3

    move-object v14, v1

    iget v14, v14, Lgnu/lists/TreeList;->gapEnd:I

    move-object v15, v1

    iget v15, v15, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v14, v15

    add-int/2addr v13, v14

    move v3, v13

    .line 1770
    :cond_0
    move v13, v3

    move-object v14, v1

    iget-object v14, v14, Lgnu/lists/TreeList;->data:[C

    array-length v14, v14

    if-ne v13, v14, :cond_1

    .line 1771
    const/4 v13, -0x1

    move v1, v13

    .line 1909
    .end local v1    # "this":Lgnu/lists/TreeList;
    .end local v5    # "value":Ljava/lang/Object;
    :goto_0
    return v1

    .line 1772
    .restart local v1    # "this":Lgnu/lists/TreeList;
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_1
    move-object v13, v1

    iget-object v13, v13, Lgnu/lists/TreeList;->data:[C

    move v14, v3

    aget-char v13, v13, v14

    move v8, v13

    .line 1773
    .local v8, "datum":C
    add-int/lit8 v3, v3, 0x1

    .line 1774
    const/4 v13, 0x0

    move v9, v13

    .line 1775
    .local v9, "spaceNeeded":Z
    move v13, v8

    const v14, 0x9fff

    if-gt v13, v14, :cond_2

    .line 1777
    move-object v13, v4

    move v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1778
    move v13, v3

    move v1, v13

    goto :goto_0

    .line 1780
    :cond_2
    move v13, v8

    const v14, 0xe000

    if-lt v13, v14, :cond_7

    move v13, v8

    const v14, 0xefff

    if-gt v13, v14, :cond_7

    .line 1783
    move v13, v9

    if-eqz v13, :cond_3

    .line 1784
    move-object v13, v4

    const/16 v14, 0x20

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1785
    :cond_3
    move-object v13, v1

    iget-object v13, v13, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move v14, v8

    const v15, 0xe000

    sub-int/2addr v14, v15

    aget-object v13, v13, v14

    move-object v5, v13

    .line 1786
    const/4 v13, 0x0

    move v9, v13

    .line 1899
    .end local v5    # "value":Ljava/lang/Object;
    :goto_1
    move-object v13, v5

    if-eqz v13, :cond_4

    .line 1900
    move-object v13, v4

    move-object v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1901
    :cond_4
    move v13, v6

    if-lez v13, :cond_6

    .line 1905
    :cond_5
    move-object v13, v1

    const/4 v14, 0x1

    move v15, v6

    move-object/from16 v16, v4

    invoke-virtual/range {v13 .. v16}, Lgnu/lists/TreeList;->stringValue(ZILjava/lang/StringBuffer;)I

    move-result v13

    move v6, v13

    .line 1907
    move v13, v6

    if-gez v13, :cond_5

    .line 1909
    :cond_6
    move v13, v3

    move v1, v13

    goto :goto_0

    .line 1788
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_7
    move v13, v8

    const v14, 0xa000

    if-lt v13, v14, :cond_8

    move v13, v8

    const v14, 0xafff

    if-gt v13, v14, :cond_8

    .line 1791
    move v13, v3

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    move v6, v13

    .line 1792
    move-object v13, v1

    iget-object v13, v13, Lgnu/lists/TreeList;->data:[C

    move v14, v3

    aget-char v13, v13, v14

    move v14, v3

    add-int/2addr v13, v14

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move v3, v13

    goto :goto_1

    .line 1794
    :cond_8
    move v13, v8

    const v14, 0xff00

    and-int/2addr v13, v14

    const v14, 0xf000

    if-ne v13, v14, :cond_9

    .line 1796
    move-object v13, v4

    move v14, v8

    const/16 v15, 0xff

    and-int/lit16 v14, v14, 0xff

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1797
    move v13, v3

    move v1, v13

    goto/16 :goto_0

    .line 1799
    :cond_9
    move v13, v8

    const v14, 0xb000

    if-lt v13, v14, :cond_a

    move v13, v8

    const v14, 0xdfff

    if-gt v13, v14, :cond_a

    .line 1802
    move-object v13, v4

    move v14, v8

    const v15, 0xc000

    sub-int/2addr v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1803
    move v13, v3

    move v1, v13

    goto/16 :goto_0

    .line 1807
    :cond_a
    move v13, v8

    packed-switch v13, :pswitch_data_0

    .line 1896
    :pswitch_0
    new-instance v13, Ljava/lang/Error;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v17, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "unimplemented: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v16, v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " at:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1810
    :pswitch_1
    move v13, v3

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    move v1, v13

    goto/16 :goto_0

    .line 1812
    :pswitch_2
    add-int/lit8 v3, v3, 0x2

    .line 1817
    :pswitch_3
    move-object v13, v1

    move v14, v3

    invoke-virtual {v13, v14}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v13

    move v10, v13

    .line 1818
    .local v10, "length":I
    add-int/lit8 v3, v3, 0x2

    .line 1819
    move v13, v2

    if-eqz v13, :cond_b

    move v13, v8

    const v14, 0xf115

    if-ne v13, v14, :cond_c

    .line 1820
    :cond_b
    move-object v13, v4

    move-object v14, v1

    iget-object v14, v14, Lgnu/lists/TreeList;->data:[C

    move v15, v3

    move/from16 v16, v10

    invoke-virtual/range {v13 .. v16}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1821
    :cond_c
    move v13, v3

    move v14, v10

    add-int/2addr v13, v14

    move v1, v13

    goto/16 :goto_0

    .line 1825
    .end local v10    # "length":I
    :pswitch_4
    move v13, v9

    if-eqz v13, :cond_d

    .line 1826
    move-object v13, v4

    const/16 v14, 0x20

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1827
    :cond_d
    move-object v13, v4

    move v14, v8

    const v15, 0xf100

    if-eq v14, v15, :cond_e

    const/4 v14, 0x1

    :goto_2
    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1828
    const/4 v13, 0x1

    move v9, v13

    .line 1829
    move v13, v3

    move v1, v13

    goto/16 :goto_0

    .line 1827
    :cond_e
    const/4 v14, 0x0

    goto :goto_2

    .line 1831
    :pswitch_5
    move v13, v9

    if-eqz v13, :cond_f

    .line 1832
    move-object v13, v4

    const/16 v14, 0x20

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1833
    :cond_f
    move-object v13, v4

    move-object v14, v1

    move v15, v3

    invoke-virtual {v14, v15}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1834
    const/4 v13, 0x1

    move v9, v13

    .line 1835
    move v13, v3

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    move v1, v13

    goto/16 :goto_0

    .line 1837
    :pswitch_6
    move v13, v9

    if-eqz v13, :cond_10

    .line 1838
    move-object v13, v4

    const/16 v14, 0x20

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1839
    :cond_10
    move-object v13, v4

    move-object v14, v1

    move v15, v3

    invoke-virtual {v14, v15}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1840
    const/4 v13, 0x1

    move v9, v13

    .line 1841
    move v13, v3

    const/4 v14, 0x4

    add-int/lit8 v13, v13, 0x4

    move v1, v13

    goto/16 :goto_0

    .line 1843
    :pswitch_7
    move v13, v9

    if-eqz v13, :cond_11

    .line 1844
    move-object v13, v4

    const/16 v14, 0x20

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1845
    :cond_11
    move-object v13, v4

    move-object v14, v1

    move v15, v3

    invoke-virtual {v14, v15}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1846
    const/4 v13, 0x1

    move v9, v13

    .line 1847
    move v13, v3

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    move v1, v13

    goto/16 :goto_0

    .line 1849
    :pswitch_8
    move v13, v9

    if-eqz v13, :cond_12

    .line 1850
    move-object v13, v4

    const/16 v14, 0x20

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1851
    :cond_12
    move-object v13, v4

    move-object v14, v1

    move v15, v3

    invoke-virtual {v14, v15}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1852
    const/4 v13, 0x1

    move v9, v13

    .line 1853
    move v13, v3

    const/4 v14, 0x4

    add-int/lit8 v13, v13, 0x4

    move v1, v13

    goto/16 :goto_0

    .line 1855
    :pswitch_9
    const/4 v13, 0x0

    move v9, v13

    .line 1856
    move-object v13, v4

    move-object v14, v1

    iget-object v14, v14, Lgnu/lists/TreeList;->data:[C

    move v15, v3

    aget-char v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1857
    move v13, v3

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move v1, v13

    goto/16 :goto_0

    .line 1860
    :pswitch_a
    move v13, v3

    const/4 v14, 0x4

    add-int/lit8 v13, v13, 0x4

    move v6, v13

    .line 1861
    move-object v13, v1

    move v14, v3

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v13

    move v3, v13

    .line 1862
    goto/16 :goto_1

    .line 1864
    :pswitch_b
    const/4 v13, 0x0

    move v9, v13

    .line 1865
    move v13, v3

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    move v6, v13

    .line 1866
    move-object v13, v1

    move v14, v3

    invoke-virtual {v13, v14}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v13

    move v7, v13

    .line 1867
    .local v7, "j":I
    move v13, v7

    move v14, v7

    if-gez v14, :cond_13

    move-object v14, v1

    iget-object v14, v14, Lgnu/lists/TreeList;->data:[C

    array-length v14, v14

    :goto_3
    add-int/2addr v13, v14

    move v7, v13

    .line 1868
    move v13, v7

    const/4 v14, 0x7

    add-int/lit8 v13, v13, 0x7

    move v3, v13

    .line 1869
    goto/16 :goto_1

    .line 1867
    :cond_13
    move v14, v3

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    goto :goto_3

    .line 1871
    .end local v7    # "j":I
    :pswitch_c
    const/4 v13, 0x0

    move v9, v13

    .line 1872
    goto/16 :goto_1

    .line 1878
    :pswitch_d
    const/4 v13, -0x1

    move v1, v13

    goto/16 :goto_0

    .line 1880
    :pswitch_e
    move v13, v2

    if-nez v13, :cond_14

    .line 1881
    move v13, v3

    const/4 v14, 0x4

    add-int/lit8 v13, v13, 0x4

    move v6, v13

    .line 1882
    :cond_14
    move-object v13, v1

    move v14, v3

    const/4 v15, 0x2

    add-int/lit8 v14, v14, 0x2

    invoke-virtual {v13, v14}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v13

    move v10, v13

    .line 1883
    .local v10, "end":I
    move v13, v10

    move v14, v10

    if-gez v14, :cond_15

    move-object v14, v1

    iget-object v14, v14, Lgnu/lists/TreeList;->data:[C

    array-length v14, v14

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    :goto_4
    add-int/2addr v13, v14

    move v3, v13

    .line 1884
    goto/16 :goto_1

    .line 1883
    :cond_15
    move v14, v3

    goto :goto_4

    .line 1887
    .end local v10    # "end":I
    :pswitch_f
    move-object v13, v1

    iget-object v13, v13, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object v14, v1

    move v15, v3

    invoke-virtual {v14, v15}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v14

    aget-object v13, v13, v14

    check-cast v13, Lgnu/lists/AbstractSequence;

    move-object v11, v13

    .line 1888
    .local v11, "seq":Lgnu/lists/AbstractSequence;
    move-object v13, v1

    move v14, v3

    const/4 v15, 0x2

    add-int/lit8 v14, v14, 0x2

    invoke-virtual {v13, v14}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v13

    move v12, v13

    .line 1889
    .local v12, "ipos":I
    move-object v13, v11

    check-cast v13, Lgnu/lists/TreeList;

    move v14, v2

    move v15, v12

    const/16 v16, 0x1

    shr-int/lit8 v15, v15, 0x1

    move-object/from16 v16, v4

    invoke-virtual/range {v13 .. v16}, Lgnu/lists/TreeList;->stringValue(ZILjava/lang/StringBuffer;)I

    move-result v13

    .line 1890
    add-int/lit8 v3, v3, 0x4

    .line 1892
    goto/16 :goto_1

    .line 1807
    nop

    :pswitch_data_0
    .packed-switch 0xf100
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_b
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_a
        :pswitch_d
        :pswitch_a
        :pswitch_d
        :pswitch_2
        :pswitch_3
        :pswitch_c
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public stringValue(IILjava/lang/StringBuffer;)V
    .locals 9

    .prologue
    .line 1747
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "startIndex":I
    move v2, p2

    .local v2, "endIndex":I
    move-object v3, p3

    .local v3, "sbuf":Ljava/lang/StringBuffer;
    move v5, v1

    move v4, v5

    .line 1748
    .local v4, "index":I
    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    move v5, v4

    if-ltz v5, :cond_0

    .line 1749
    move-object v5, v0

    const/4 v6, 0x0

    move v7, v4

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lgnu/lists/TreeList;->stringValue(ZILjava/lang/StringBuffer;)I

    move-result v5

    move v4, v5

    goto :goto_0

    .line 1750
    :cond_0
    return-void
.end method

.method public toString(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 19

    .prologue
    .line 1291
    move-object/from16 v1, p0

    .local v1, "this":Lgnu/lists/TreeList;
    move-object/from16 v2, p1

    .local v2, "sep":Ljava/lang/String;
    move-object/from16 v3, p2

    .local v3, "sbuf":Ljava/lang/StringBuffer;
    const/4 v13, 0x0

    move v4, v13

    .line 1292
    .local v4, "pos":I
    move-object v13, v1

    iget v13, v13, Lgnu/lists/TreeList;->gapStart:I

    move v5, v13

    .line 1294
    .local v5, "limit":I
    const/4 v13, 0x0

    move v7, v13

    .line 1295
    .local v7, "seen":Z
    const/4 v13, 0x0

    move v8, v13

    .line 1296
    .local v8, "inStartTag":Z
    const/4 v13, 0x0

    move v9, v13

    .line 1299
    .local v9, "inAttribute":Z
    :goto_0
    move v13, v4

    move v14, v5

    if-lt v13, v14, :cond_1

    .line 1301
    move v13, v4

    move-object v14, v1

    iget v14, v14, Lgnu/lists/TreeList;->gapStart:I

    if-ne v13, v14, :cond_0

    .line 1303
    move-object v13, v1

    iget v13, v13, Lgnu/lists/TreeList;->gapEnd:I

    move v4, v13

    .line 1304
    move-object v13, v1

    iget-object v13, v13, Lgnu/lists/TreeList;->data:[C

    array-length v13, v13

    move v5, v13

    .line 1305
    move v13, v4

    move v14, v5

    if-ne v13, v14, :cond_1

    .line 1306
    .line 1519
    :cond_0
    return-void

    .line 1312
    :cond_1
    move-object v13, v1

    iget-object v13, v13, Lgnu/lists/TreeList;->data:[C

    move v14, v4

    add-int/lit8 v4, v4, 0x1

    aget-char v13, v13, v14

    move v10, v13

    .line 1314
    .local v10, "datum":C
    move v13, v10

    const v14, 0x9fff

    if-gt v13, v14, :cond_5

    .line 1316
    move v13, v4

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v11, v13

    .line 1317
    .local v11, "start":I
    move v13, v5

    move v12, v13

    .line 1320
    .local v12, "lim":I
    :cond_2
    move v13, v4

    move v14, v12

    if-lt v13, v14, :cond_4

    .line 1321
    .line 1329
    :goto_1
    move v13, v8

    if-eqz v13, :cond_3

    move-object v13, v3

    const/16 v14, 0x3e

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    const/4 v13, 0x0

    move v8, v13

    .line 1330
    :cond_3
    move-object v13, v3

    move-object v14, v1

    iget-object v14, v14, Lgnu/lists/TreeList;->data:[C

    move v15, v11

    move/from16 v16, v4

    move/from16 v17, v11

    sub-int v16, v16, v17

    invoke-virtual/range {v13 .. v16}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1331
    const/4 v13, 0x0

    move v7, v13

    .line 1332
    goto :goto_0

    .line 1322
    :cond_4
    move-object v13, v1

    iget-object v13, v13, Lgnu/lists/TreeList;->data:[C

    move v14, v4

    add-int/lit8 v4, v4, 0x1

    aget-char v13, v13, v14

    move v10, v13

    .line 1323
    move v13, v10

    const v14, 0x9fff

    if-le v13, v14, :cond_2

    .line 1325
    add-int/lit8 v4, v4, -0x1

    .line 1326
    goto :goto_1

    .line 1334
    .end local v11    # "start":I
    .end local v12    # "lim":I
    :cond_5
    move v13, v10

    const v14, 0xe000

    if-lt v13, v14, :cond_8

    move v13, v10

    const v14, 0xefff

    if-gt v13, v14, :cond_8

    .line 1337
    move v13, v8

    if-eqz v13, :cond_6

    move-object v13, v3

    const/16 v14, 0x3e

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    const/4 v13, 0x0

    move v8, v13

    .line 1338
    :cond_6
    move v13, v7

    if-eqz v13, :cond_7

    move-object v13, v3

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1339
    :goto_2
    move-object v13, v3

    move-object v14, v1

    iget-object v14, v14, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move v15, v10

    const v16, 0xe000

    sub-int v15, v15, v16

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1340
    goto/16 :goto_0

    .line 1338
    :cond_7
    const/4 v13, 0x1

    move v7, v13

    goto :goto_2

    .line 1342
    :cond_8
    move v13, v10

    const v14, 0xa000

    if-lt v13, v14, :cond_b

    move v13, v10

    const v14, 0xafff

    if-gt v13, v14, :cond_b

    .line 1345
    move v13, v8

    if-eqz v13, :cond_9

    move-object v13, v3

    const/16 v14, 0x3e

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    const/4 v13, 0x0

    move v8, v13

    .line 1346
    :cond_9
    move v13, v10

    const v14, 0xa000

    sub-int/2addr v13, v14

    move v6, v13

    .line 1347
    .local v6, "index":I
    move v13, v7

    if-eqz v13, :cond_a

    move-object v13, v3

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1348
    :cond_a
    move-object v13, v3

    const/16 v14, 0x3c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1349
    move-object v13, v3

    move-object v14, v1

    iget-object v14, v14, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move v15, v6

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1350
    add-int/lit8 v4, v4, 0x2

    .line 1351
    const/4 v13, 0x0

    move v7, v13

    .line 1352
    const/4 v13, 0x1

    move v8, v13

    .line 1353
    goto/16 :goto_0

    .line 1355
    .end local v6    # "index":I
    :cond_b
    move v13, v10

    const v14, 0xb000

    if-lt v13, v14, :cond_e

    move v13, v10

    const v14, 0xdfff

    if-gt v13, v14, :cond_e

    .line 1358
    move v13, v8

    if-eqz v13, :cond_c

    move-object v13, v3

    const/16 v14, 0x3e

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    const/4 v13, 0x0

    move v8, v13

    .line 1359
    :cond_c
    move v13, v7

    if-eqz v13, :cond_d

    move-object v13, v3

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1360
    :goto_3
    move-object v13, v3

    move v14, v10

    const v15, 0xc000

    sub-int/2addr v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1361
    goto/16 :goto_0

    .line 1359
    :cond_d
    const/4 v13, 0x1

    move v7, v13

    goto :goto_3

    .line 1363
    :cond_e
    move v13, v10

    packed-switch v13, :pswitch_data_0

    .line 1516
    :pswitch_0
    new-instance v13, Ljava/lang/Error;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "unknown code:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v16, v10

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1367
    :pswitch_1
    add-int/lit8 v4, v4, 0x4

    .line 1368
    goto/16 :goto_0

    .line 1370
    :pswitch_2
    add-int/lit8 v4, v4, 0x2

    .line 1371
    goto/16 :goto_0

    .line 1373
    :pswitch_3
    move v13, v8

    if-eqz v13, :cond_f

    move-object v13, v3

    const/16 v14, 0x3e

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    const/4 v13, 0x0

    move v8, v13

    .line 1374
    :cond_f
    move-object v13, v1

    move v14, v4

    invoke-virtual {v13, v14}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v13

    move v6, v13

    .line 1375
    .restart local v6    # "index":I
    add-int/lit8 v4, v4, 0x2

    .line 1376
    move-object v13, v3

    const-string/jumbo v14, "<!--"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1377
    move-object v13, v3

    move-object v14, v1

    iget-object v14, v14, Lgnu/lists/TreeList;->data:[C

    move v15, v4

    move/from16 v16, v6

    invoke-virtual/range {v13 .. v16}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1378
    move-object v13, v3

    const-string/jumbo v14, "-->"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1379
    move v13, v4

    move v14, v6

    add-int/2addr v13, v14

    move v4, v13

    .line 1380
    goto/16 :goto_0

    .line 1382
    .end local v6    # "index":I
    :pswitch_4
    move v13, v8

    if-eqz v13, :cond_10

    move-object v13, v3

    const/16 v14, 0x3e

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    const/4 v13, 0x0

    move v8, v13

    .line 1383
    :cond_10
    move-object v13, v1

    move v14, v4

    invoke-virtual {v13, v14}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v13

    move v6, v13

    .line 1384
    .restart local v6    # "index":I
    add-int/lit8 v4, v4, 0x2

    .line 1385
    move-object v13, v3

    const-string/jumbo v14, "<![CDATA["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1386
    move-object v13, v3

    move-object v14, v1

    iget-object v14, v14, Lgnu/lists/TreeList;->data:[C

    move v15, v4

    move/from16 v16, v6

    invoke-virtual/range {v13 .. v16}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1387
    move-object v13, v3

    const-string/jumbo v14, "]]>"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1388
    move v13, v4

    move v14, v6

    add-int/2addr v13, v14

    move v4, v13

    .line 1389
    goto/16 :goto_0

    .line 1391
    .end local v6    # "index":I
    :pswitch_5
    move v13, v8

    if-eqz v13, :cond_11

    move-object v13, v3

    const/16 v14, 0x3e

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    const/4 v13, 0x0

    move v8, v13

    .line 1392
    :cond_11
    move-object v13, v3

    const-string/jumbo v14, "<?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1393
    move-object v13, v1

    move v14, v4

    invoke-virtual {v13, v14}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v13

    move v6, v13

    .line 1394
    .restart local v6    # "index":I
    add-int/lit8 v4, v4, 0x2

    .line 1395
    move-object v13, v3

    move-object v14, v1

    iget-object v14, v14, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move v15, v6

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1396
    move-object v13, v1

    move v14, v4

    invoke-virtual {v13, v14}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v13

    move v6, v13

    .line 1397
    add-int/lit8 v4, v4, 0x2

    .line 1398
    move v13, v6

    if-lez v13, :cond_12

    .line 1400
    move-object v13, v3

    const/16 v14, 0x20

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1401
    move-object v13, v3

    move-object v14, v1

    iget-object v14, v14, Lgnu/lists/TreeList;->data:[C

    move v15, v4

    move/from16 v16, v6

    invoke-virtual/range {v13 .. v16}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1402
    move v13, v4

    move v14, v6

    add-int/2addr v13, v14

    move v4, v13

    .line 1404
    :cond_12
    move-object v13, v3

    const-string/jumbo v14, "?>"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1405
    goto/16 :goto_0

    .line 1408
    .end local v6    # "index":I
    :pswitch_6
    goto/16 :goto_0

    .line 1411
    :pswitch_7
    move v13, v8

    if-eqz v13, :cond_13

    move-object v13, v3

    const/16 v14, 0x3e

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    const/4 v13, 0x0

    move v8, v13

    .line 1412
    :cond_13
    move v13, v7

    if-eqz v13, :cond_14

    move-object v13, v3

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1413
    :goto_4
    move-object v13, v3

    move v14, v10

    const v15, 0xf100

    if-eq v14, v15, :cond_15

    const/4 v14, 0x1

    :goto_5
    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1414
    goto/16 :goto_0

    .line 1412
    :cond_14
    const/4 v13, 0x1

    move v7, v13

    goto :goto_4

    .line 1413
    :cond_15
    const/4 v14, 0x0

    goto :goto_5

    .line 1416
    :pswitch_8
    goto/16 :goto_0

    .line 1418
    :pswitch_9
    move v13, v8

    if-eqz v13, :cond_16

    move-object v13, v3

    const/16 v14, 0x3e

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    const/4 v13, 0x0

    move v8, v13

    .line 1419
    :cond_16
    move-object v13, v3

    move-object v14, v1

    iget-object v14, v14, Lgnu/lists/TreeList;->data:[C

    move v15, v4

    const/16 v16, 0x1

    move/from16 v17, v10

    add-int v16, v16, v17

    const v17, 0xf106

    sub-int v16, v16, v17

    invoke-virtual/range {v13 .. v16}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1420
    const/4 v13, 0x0

    move v7, v13

    .line 1421
    add-int/lit8 v4, v4, 0x1

    .line 1422
    goto/16 :goto_0

    .line 1424
    :pswitch_a
    move v13, v8

    if-eqz v13, :cond_17

    move-object v13, v3

    const/16 v14, 0x3e

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    const/4 v13, 0x0

    move v8, v13

    .line 1425
    :cond_17
    move v13, v7

    if-eqz v13, :cond_18

    move-object v13, v3

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1427
    :goto_6
    move-object v13, v1

    iget-object v13, v13, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object v14, v1

    move v15, v4

    invoke-virtual {v14, v15}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v14

    aget-object v13, v13, v14

    check-cast v13, Lgnu/lists/AbstractSequence;

    move-object v11, v13

    .line 1428
    .local v11, "seq":Lgnu/lists/AbstractSequence;
    move-object v13, v1

    move v14, v4

    const/4 v15, 0x2

    add-int/lit8 v14, v14, 0x2

    invoke-virtual {v13, v14}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v13

    move v12, v13

    .line 1430
    .local v12, "ipos":I
    move-object v13, v3

    move-object v14, v11

    move v15, v12

    invoke-virtual {v14, v15}, Lgnu/lists/AbstractSequence;->getIteratorAtPos(I)Lgnu/lists/SeqPosition;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1431
    add-int/lit8 v4, v4, 0x4

    .line 1433
    goto/16 :goto_0

    .line 1425
    .end local v11    # "seq":Lgnu/lists/AbstractSequence;
    .end local v12    # "ipos":I
    :cond_18
    const/4 v13, 0x1

    move v7, v13

    goto :goto_6

    .line 1436
    :pswitch_b
    move v13, v8

    if-eqz v13, :cond_19

    move-object v13, v3

    const/16 v14, 0x3e

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    const/4 v13, 0x0

    move v8, v13

    .line 1437
    :cond_19
    move v13, v7

    if-eqz v13, :cond_1a

    move-object v13, v3

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1438
    :goto_7
    move-object v13, v3

    move-object v14, v1

    iget-object v14, v14, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object v15, v1

    move/from16 v16, v4

    invoke-virtual/range {v15 .. v16}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v15

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1439
    add-int/lit8 v4, v4, 0x2

    .line 1440
    goto/16 :goto_0

    .line 1437
    :cond_1a
    const/4 v13, 0x1

    move v7, v13

    goto :goto_7

    .line 1442
    :pswitch_c
    move-object v13, v1

    move v14, v4

    invoke-virtual {v13, v14}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v13

    move v6, v13

    .line 1443
    .restart local v6    # "index":I
    move v13, v6

    move v14, v6

    if-ltz v14, :cond_1c

    move v14, v4

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    :goto_8
    add-int/2addr v13, v14

    move v6, v13

    .line 1444
    add-int/lit8 v4, v4, 0x2

    .line 1445
    move-object v13, v1

    move v14, v6

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v13

    move v6, v13

    .line 1446
    move v13, v8

    if-eqz v13, :cond_1d

    move-object v13, v3

    const/16 v14, 0x3e

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1448
    :cond_1b
    :goto_9
    move-object v13, v3

    const/16 v14, 0x3c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1449
    move-object v13, v3

    move-object v14, v1

    iget-object v14, v14, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move v15, v6

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1450
    const/4 v13, 0x0

    move v7, v13

    .line 1451
    const/4 v13, 0x1

    move v8, v13

    .line 1452
    goto/16 :goto_0

    .line 1443
    :cond_1c
    move-object v14, v1

    iget-object v14, v14, Lgnu/lists/TreeList;->data:[C

    array-length v14, v14

    goto :goto_8

    .line 1447
    :cond_1d
    move v13, v7

    if-eqz v13, :cond_1b

    move-object v13, v3

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    goto :goto_9

    .line 1455
    .end local v6    # "index":I
    :pswitch_d
    move v13, v10

    const v14, 0xf10b

    if-ne v13, v14, :cond_1e

    .line 1457
    move-object v13, v1

    iget-object v13, v13, Lgnu/lists/TreeList;->data:[C

    move v14, v4

    add-int/lit8 v4, v4, 0x1

    aget-char v13, v13, v14

    move v6, v13

    .line 1458
    .restart local v6    # "index":I
    move-object v13, v1

    iget-object v13, v13, Lgnu/lists/TreeList;->data:[C

    move v14, v4

    const/4 v15, 0x2

    add-int/lit8 v14, v14, -0x2

    move v15, v6

    sub-int/2addr v14, v15

    aget-char v13, v13, v14

    const v14, 0xa000

    sub-int/2addr v13, v14

    move v6, v13

    .line 1465
    :goto_a
    move v13, v8

    if-eqz v13, :cond_1f

    .line 1466
    move-object v13, v3

    const-string/jumbo v14, "/>"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1473
    :goto_b
    const/4 v13, 0x0

    move v8, v13

    .line 1474
    const/4 v13, 0x1

    move v7, v13

    .line 1475
    goto/16 :goto_0

    .line 1462
    .end local v6    # "index":I
    :cond_1e
    move-object v13, v1

    move v14, v4

    invoke-virtual {v13, v14}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v13

    move v6, v13

    .line 1463
    .restart local v6    # "index":I
    add-int/lit8 v4, v4, 0x6

    goto :goto_a

    .line 1469
    :cond_1f
    move-object v13, v3

    const-string/jumbo v14, "</"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1470
    move-object v13, v3

    move-object v14, v1

    iget-object v14, v14, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move v15, v6

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1471
    move-object v13, v3

    const/16 v14, 0x3e

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    goto :goto_b

    .line 1477
    .end local v6    # "index":I
    :pswitch_e
    move-object v13, v1

    move v14, v4

    invoke-virtual {v13, v14}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v13

    move v6, v13

    .line 1478
    .restart local v6    # "index":I
    move-object v13, v3

    const/16 v14, 0x20

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1479
    move-object v13, v3

    move-object v14, v1

    iget-object v14, v14, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move v15, v6

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1480
    move-object v13, v3

    const-string/jumbo v14, "=\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1481
    const/4 v13, 0x1

    move v9, v13

    .line 1482
    const/4 v13, 0x0

    move v8, v13

    .line 1483
    add-int/lit8 v4, v4, 0x4

    .line 1484
    goto/16 :goto_0

    .line 1486
    .end local v6    # "index":I
    :pswitch_f
    move-object v13, v3

    const/16 v14, 0x22

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1487
    const/4 v13, 0x0

    move v9, v13

    .line 1488
    const/4 v13, 0x1

    move v8, v13

    .line 1489
    const/4 v13, 0x0

    move v7, v13

    .line 1490
    goto/16 :goto_0

    .line 1492
    :pswitch_10
    move v13, v8

    if-eqz v13, :cond_20

    move-object v13, v3

    const/16 v14, 0x3e

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    const/4 v13, 0x0

    move v8, v13

    .line 1493
    :cond_20
    move v13, v7

    if-eqz v13, :cond_21

    move-object v13, v3

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1494
    :goto_c
    move-object v13, v3

    move-object v14, v1

    move v15, v4

    invoke-virtual {v14, v15}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1495
    add-int/lit8 v4, v4, 0x2

    .line 1496
    goto/16 :goto_0

    .line 1493
    :cond_21
    const/4 v13, 0x1

    move v7, v13

    goto :goto_c

    .line 1498
    :pswitch_11
    move v13, v8

    if-eqz v13, :cond_22

    move-object v13, v3

    const/16 v14, 0x3e

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    const/4 v13, 0x0

    move v8, v13

    .line 1499
    :cond_22
    move v13, v7

    if-eqz v13, :cond_23

    move-object v13, v3

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1500
    :goto_d
    move-object v13, v3

    move-object v14, v1

    move v15, v4

    invoke-virtual {v14, v15}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1501
    add-int/lit8 v4, v4, 0x2

    .line 1502
    goto/16 :goto_0

    .line 1499
    :cond_23
    const/4 v13, 0x1

    move v7, v13

    goto :goto_d

    .line 1504
    :pswitch_12
    move v13, v8

    if-eqz v13, :cond_24

    move-object v13, v3

    const/16 v14, 0x3e

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    const/4 v13, 0x0

    move v8, v13

    .line 1505
    :cond_24
    move v13, v7

    if-eqz v13, :cond_25

    move-object v13, v3

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1506
    :goto_e
    move-object v13, v3

    move-object v14, v1

    move v15, v4

    invoke-virtual {v14, v15}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1507
    add-int/lit8 v4, v4, 0x4

    .line 1508
    goto/16 :goto_0

    .line 1505
    :cond_25
    const/4 v13, 0x1

    move v7, v13

    goto :goto_e

    .line 1510
    :pswitch_13
    move v13, v8

    if-eqz v13, :cond_26

    move-object v13, v3

    const/16 v14, 0x3e

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    const/4 v13, 0x0

    move v8, v13

    .line 1511
    :cond_26
    move v13, v7

    if-eqz v13, :cond_27

    move-object v13, v3

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1512
    :goto_f
    move-object v13, v3

    move-object v14, v1

    move v15, v4

    invoke-virtual {v14, v15}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 1513
    add-int/lit8 v4, v4, 0x4

    .line 1514
    goto/16 :goto_0

    .line 1511
    :cond_27
    const/4 v13, 0x1

    move v7, v13

    goto :goto_f

    .line 1363
    :pswitch_data_0
    .packed-switch 0xf100
        :pswitch_7
        :pswitch_7
        :pswitch_10
        :pswitch_12
        :pswitch_11
        :pswitch_13
        :pswitch_9
        :pswitch_0
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public write(I)V
    .locals 9

    .prologue
    .line 689
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "c":I
    move-object v2, v0

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 690
    move v2, v1

    const v3, 0x9fff

    if-gt v2, v3, :cond_0

    .line 691
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/TreeList;->data:[C

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/lists/TreeList;->gapStart:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/lists/TreeList;->gapStart:I

    move v4, v1

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 699
    :goto_0
    return-void

    .line 692
    :cond_0
    move v2, v1

    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_1

    .line 694
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/TreeList;->data:[C

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/lists/TreeList;->gapStart:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/lists/TreeList;->gapStart:I

    const v4, 0xf106

    aput-char v4, v2, v3

    .line 695
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/TreeList;->data:[C

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/lists/TreeList;->gapStart:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/lists/TreeList;->gapStart:I

    move v4, v1

    int-to-char v4, v4

    aput-char v4, v2, v3

    goto :goto_0

    .line 698
    :cond_1
    move v2, v1

    move-object v3, v0

    invoke-static {v2, v3}, Lgnu/text/Char;->print(ILgnu/lists/Consumer;)V

    goto :goto_0
.end method

.method public write(Ljava/lang/CharSequence;II)V
    .locals 12

    .prologue
    .line 797
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v1, p1

    .local v1, "str":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "length":I
    move v5, v3

    if-nez v5, :cond_0

    .line 798
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/lists/TreeList;->writeJoiner()V

    .line 799
    :cond_0
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 800
    :goto_0
    move v5, v3

    if-lez v5, :cond_2

    .line 802
    move-object v5, v1

    move v6, v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    move v4, v5

    .line 803
    .local v4, "ch":C
    add-int/lit8 v3, v3, -0x1

    .line 804
    move v5, v4

    const v6, 0x9fff

    if-gt v5, v6, :cond_1

    .line 805
    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/TreeList;->data:[C

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lgnu/lists/TreeList;->gapStart:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lgnu/lists/TreeList;->gapStart:I

    move v7, v4

    aput-char v7, v5, v6

    .line 811
    :goto_1
    goto :goto_0

    .line 808
    :cond_1
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->write(I)V

    .line 809
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->ensureSpace(I)V

    goto :goto_1

    .line 812
    .end local v4    # "ch":C
    :cond_2
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 788
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lgnu/lists/TreeList;->write(Ljava/lang/CharSequence;II)V

    .line 789
    return-void
.end method

.method public write([CII)V
    .locals 12

    .prologue
    .line 769
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v1, p1

    .local v1, "buf":[C
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    move v5, v3

    if-nez v5, :cond_0

    .line 770
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/lists/TreeList;->writeJoiner()V

    .line 771
    :cond_0
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 772
    :goto_0
    move v5, v3

    if-lez v5, :cond_2

    .line 774
    move-object v5, v1

    move v6, v2

    add-int/lit8 v2, v2, 0x1

    aget-char v5, v5, v6

    move v4, v5

    .line 775
    .local v4, "ch":C
    add-int/lit8 v3, v3, -0x1

    .line 776
    move v5, v4

    const v6, 0x9fff

    if-gt v5, v6, :cond_1

    .line 777
    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/TreeList;->data:[C

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lgnu/lists/TreeList;->gapStart:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lgnu/lists/TreeList;->gapStart:I

    move v7, v4

    aput-char v7, v5, v6

    .line 783
    :goto_1
    goto :goto_0

    .line 780
    :cond_1
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->write(I)V

    .line 781
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->ensureSpace(I)V

    goto :goto_1

    .line 784
    .end local v4    # "ch":C
    :cond_2
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 9

    .prologue
    .line 703
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "v":Z
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 704
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/TreeList;->data:[C

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/lists/TreeList;->gapStart:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/lists/TreeList;->gapStart:I

    move v4, v1

    if-eqz v4, :cond_0

    const v4, 0xf101

    :goto_0
    aput-char v4, v2, v3

    .line 705
    return-void

    .line 704
    :cond_0
    const v4, 0xf100

    goto :goto_0
.end method

.method public writeByte(I)V
    .locals 9

    .prologue
    .line 709
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "v":I
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 710
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/TreeList;->data:[C

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/lists/TreeList;->gapStart:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/lists/TreeList;->gapStart:I

    const v4, 0xf000

    move v5, v1

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 711
    return-void
.end method

.method public writeCDATA([CII)V
    .locals 10

    .prologue
    .line 816
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v1, p1

    .local v1, "chars":[C
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "length":I
    move-object v5, v0

    const/4 v6, 0x3

    move v7, v3

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 817
    move-object v5, v0

    iget v5, v5, Lgnu/lists/TreeList;->gapStart:I

    move v4, v5

    .line 818
    .local v4, "i":I
    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/TreeList;->data:[C

    move v6, v4

    add-int/lit8 v4, v4, 0x1

    const v7, 0xf115

    aput-char v7, v5, v6

    .line 819
    move-object v5, v0

    move v6, v4

    move v7, v3

    invoke-virtual {v5, v6, v7}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 820
    add-int/lit8 v4, v4, 0x2

    .line 821
    move-object v5, v1

    move v6, v2

    move-object v7, v0

    iget-object v7, v7, Lgnu/lists/TreeList;->data:[C

    move v8, v4

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 822
    move-object v5, v0

    move v6, v4

    move v7, v3

    add-int/2addr v6, v7

    iput v6, v5, Lgnu/lists/TreeList;->gapStart:I

    .line 823
    return-void
.end method

.method public writeComment(Ljava/lang/String;II)V
    .locals 10

    .prologue
    .line 456
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v1, p1

    .local v1, "comment":Ljava/lang/String;
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "length":I
    move-object v5, v0

    const/4 v6, 0x3

    move v7, v3

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 457
    move-object v5, v0

    iget v5, v5, Lgnu/lists/TreeList;->gapStart:I

    move v4, v5

    .line 458
    .local v4, "i":I
    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/TreeList;->data:[C

    move v6, v4

    add-int/lit8 v4, v4, 0x1

    const v7, 0xf117

    aput-char v7, v5, v6

    .line 459
    move-object v5, v0

    move v6, v4

    move v7, v3

    invoke-virtual {v5, v6, v7}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 460
    add-int/lit8 v4, v4, 0x2

    .line 461
    move-object v5, v1

    move v6, v2

    move v7, v2

    move v8, v3

    add-int/2addr v7, v8

    move-object v8, v0

    iget-object v8, v8, Lgnu/lists/TreeList;->data:[C

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 462
    move-object v5, v0

    move v6, v4

    move v7, v3

    add-int/2addr v6, v7

    iput v6, v5, Lgnu/lists/TreeList;->gapStart:I

    .line 463
    return-void
.end method

.method public writeComment([CII)V
    .locals 10

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v1, p1

    .local v1, "chars":[C
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "length":I
    move-object v5, v0

    const/4 v6, 0x3

    move v7, v3

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 446
    move-object v5, v0

    iget v5, v5, Lgnu/lists/TreeList;->gapStart:I

    move v4, v5

    .line 447
    .local v4, "i":I
    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/TreeList;->data:[C

    move v6, v4

    add-int/lit8 v4, v4, 0x1

    const v7, 0xf117

    aput-char v7, v5, v6

    .line 448
    move-object v5, v0

    move v6, v4

    move v7, v3

    invoke-virtual {v5, v6, v7}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 449
    add-int/lit8 v4, v4, 0x2

    .line 450
    move-object v5, v1

    move v6, v2

    move-object v7, v0

    iget-object v7, v7, Lgnu/lists/TreeList;->data:[C

    move v8, v4

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    move-object v5, v0

    move v6, v4

    move v7, v3

    add-int/2addr v6, v7

    iput v6, v5, Lgnu/lists/TreeList;->gapStart:I

    .line 452
    return-void
.end method

.method public writeDocumentUri(Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 436
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/Object;
    move-object v3, v0

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 437
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v3

    move v2, v3

    .line 438
    .local v2, "index":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/TreeList;->data:[C

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lgnu/lists/TreeList;->gapStart:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lgnu/lists/TreeList;->gapStart:I

    const v5, 0xf118

    aput-char v5, v3, v4

    .line 439
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreeList;->gapStart:I

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 440
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lgnu/lists/TreeList;->gapStart:I

    const/4 v5, 0x2

    add-int/lit8 v4, v4, 0x2

    iput v4, v3, Lgnu/lists/TreeList;->gapStart:I

    .line 441
    return-void
.end method

.method public writeDouble(D)V
    .locals 13

    .prologue
    .line 747
    move-object v1, p0

    .local v1, "this":Lgnu/lists/TreeList;
    move-wide v2, p1

    .local v2, "v":D
    move-object v6, v1

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 748
    move-wide v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    move-wide v4, v6

    .line 749
    .local v4, "l":J
    move-object v6, v1

    iget-object v6, v6, Lgnu/lists/TreeList;->data:[C

    move-object v7, v1

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Lgnu/lists/TreeList;->gapStart:I

    move-object v11, v7

    move v12, v8

    move v7, v12

    move-object v8, v11

    move v9, v12

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lgnu/lists/TreeList;->gapStart:I

    const v8, 0xf105

    aput-char v8, v6, v7

    .line 750
    move-object v6, v1

    iget-object v6, v6, Lgnu/lists/TreeList;->data:[C

    move-object v7, v1

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Lgnu/lists/TreeList;->gapStart:I

    move-object v11, v7

    move v12, v8

    move v7, v12

    move-object v8, v11

    move v9, v12

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lgnu/lists/TreeList;->gapStart:I

    move-wide v8, v4

    const/16 v10, 0x30

    ushr-long/2addr v8, v10

    long-to-int v8, v8

    int-to-char v8, v8

    aput-char v8, v6, v7

    .line 751
    move-object v6, v1

    iget-object v6, v6, Lgnu/lists/TreeList;->data:[C

    move-object v7, v1

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Lgnu/lists/TreeList;->gapStart:I

    move-object v11, v7

    move v12, v8

    move v7, v12

    move-object v8, v11

    move v9, v12

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lgnu/lists/TreeList;->gapStart:I

    move-wide v8, v4

    const/16 v10, 0x20

    ushr-long/2addr v8, v10

    long-to-int v8, v8

    int-to-char v8, v8

    aput-char v8, v6, v7

    .line 752
    move-object v6, v1

    iget-object v6, v6, Lgnu/lists/TreeList;->data:[C

    move-object v7, v1

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Lgnu/lists/TreeList;->gapStart:I

    move-object v11, v7

    move v12, v8

    move v7, v12

    move-object v8, v11

    move v9, v12

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lgnu/lists/TreeList;->gapStart:I

    move-wide v8, v4

    const/16 v10, 0x10

    ushr-long/2addr v8, v10

    long-to-int v8, v8

    int-to-char v8, v8

    aput-char v8, v6, v7

    .line 753
    move-object v6, v1

    iget-object v6, v6, Lgnu/lists/TreeList;->data:[C

    move-object v7, v1

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Lgnu/lists/TreeList;->gapStart:I

    move-object v11, v7

    move v12, v8

    move v7, v12

    move-object v8, v11

    move v9, v12

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lgnu/lists/TreeList;->gapStart:I

    move-wide v8, v4

    long-to-int v8, v8

    int-to-char v8, v8

    aput-char v8, v6, v7

    .line 754
    return-void
.end method

.method public writeFloat(F)V
    .locals 10

    .prologue
    .line 738
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "v":F
    move-object v3, v0

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 739
    move v3, v1

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    move v2, v3

    .line 740
    .local v2, "i":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/TreeList;->data:[C

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lgnu/lists/TreeList;->gapStart:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lgnu/lists/TreeList;->gapStart:I

    const v5, 0xf104

    aput-char v5, v3, v4

    .line 741
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/TreeList;->data:[C

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lgnu/lists/TreeList;->gapStart:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lgnu/lists/TreeList;->gapStart:I

    move v5, v2

    const/16 v6, 0x10

    ushr-int/lit8 v5, v5, 0x10

    int-to-char v5, v5

    aput-char v5, v3, v4

    .line 742
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/TreeList;->data:[C

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lgnu/lists/TreeList;->gapStart:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lgnu/lists/TreeList;->gapStart:I

    move v5, v2

    int-to-char v5, v5

    aput-char v5, v3, v4

    .line 743
    return-void
.end method

.method public writeInt(I)V
    .locals 9

    .prologue
    .line 715
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "v":I
    move-object v2, v0

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 716
    move v2, v1

    const/16 v3, -0x1000

    if-lt v2, v3, :cond_0

    move v2, v1

    const/16 v3, 0x1fff

    if-gt v2, v3, :cond_0

    .line 717
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/TreeList;->data:[C

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/lists/TreeList;->gapStart:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/lists/TreeList;->gapStart:I

    const v4, 0xc000

    move v5, v1

    add-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 724
    :goto_0
    return-void

    .line 720
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/TreeList;->data:[C

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/lists/TreeList;->gapStart:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/lists/TreeList;->gapStart:I

    const v4, 0xf102

    aput-char v4, v2, v3

    .line 721
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lgnu/lists/TreeList;->gapStart:I

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 722
    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lgnu/lists/TreeList;->gapStart:I

    const/4 v4, 0x2

    add-int/lit8 v3, v3, 0x2

    iput v3, v2, Lgnu/lists/TreeList;->gapStart:I

    goto :goto_0
.end method

.method public writeJoiner()V
    .locals 8

    .prologue
    .line 763
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 764
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/TreeList;->data:[C

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lgnu/lists/TreeList;->gapStart:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lgnu/lists/TreeList;->gapStart:I

    const v3, 0xf116

    aput-char v3, v1, v2

    .line 765
    return-void
.end method

.method public writeLong(J)V
    .locals 11

    .prologue
    .line 728
    move-object v1, p0

    .local v1, "this":Lgnu/lists/TreeList;
    move-wide v2, p1

    .local v2, "v":J
    move-object v4, v1

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 729
    move-object v4, v1

    iget-object v4, v4, Lgnu/lists/TreeList;->data:[C

    move-object v5, v1

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lgnu/lists/TreeList;->gapStart:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lgnu/lists/TreeList;->gapStart:I

    const v6, 0xf103

    aput-char v6, v4, v5

    .line 730
    move-object v4, v1

    iget-object v4, v4, Lgnu/lists/TreeList;->data:[C

    move-object v5, v1

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lgnu/lists/TreeList;->gapStart:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lgnu/lists/TreeList;->gapStart:I

    move-wide v6, v2

    const/16 v8, 0x30

    ushr-long/2addr v6, v8

    long-to-int v6, v6

    int-to-char v6, v6

    aput-char v6, v4, v5

    .line 731
    move-object v4, v1

    iget-object v4, v4, Lgnu/lists/TreeList;->data:[C

    move-object v5, v1

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lgnu/lists/TreeList;->gapStart:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lgnu/lists/TreeList;->gapStart:I

    move-wide v6, v2

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    long-to-int v6, v6

    int-to-char v6, v6

    aput-char v6, v4, v5

    .line 732
    move-object v4, v1

    iget-object v4, v4, Lgnu/lists/TreeList;->data:[C

    move-object v5, v1

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lgnu/lists/TreeList;->gapStart:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lgnu/lists/TreeList;->gapStart:I

    move-wide v6, v2

    const/16 v8, 0x10

    ushr-long/2addr v6, v8

    long-to-int v6, v6

    int-to-char v6, v6

    aput-char v6, v4, v5

    .line 733
    move-object v4, v1

    iget-object v4, v4, Lgnu/lists/TreeList;->data:[C

    move-object v5, v1

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lgnu/lists/TreeList;->gapStart:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lgnu/lists/TreeList;->gapStart:I

    move-wide v6, v2

    long-to-int v6, v6

    int-to-char v6, v6

    aput-char v6, v4, v5

    .line 734
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 420
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v1, p1

    .local v1, "v":Ljava/lang/Object;
    move-object v3, v0

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 421
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v3

    move v2, v3

    .line 422
    .local v2, "index":I
    move v3, v2

    const/16 v4, 0x1000

    if-ge v3, v4, :cond_0

    .line 423
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/TreeList;->data:[C

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lgnu/lists/TreeList;->gapStart:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lgnu/lists/TreeList;->gapStart:I

    const v5, 0xe000

    move v6, v2

    or-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v3, v4

    .line 430
    :goto_0
    return-void

    .line 426
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/TreeList;->data:[C

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lgnu/lists/TreeList;->gapStart:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lgnu/lists/TreeList;->gapStart:I

    const v5, 0xf10d

    aput-char v5, v3, v4

    .line 427
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreeList;->gapStart:I

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 428
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lgnu/lists/TreeList;->gapStart:I

    const/4 v5, 0x2

    add-int/lit8 v4, v4, 0x2

    iput v4, v3, Lgnu/lists/TreeList;->gapStart:I

    goto :goto_0
.end method

.method public writePosition(Lgnu/lists/AbstractSequence;I)V
    .locals 8

    .prologue
    .line 410
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/AbstractSequence;
    move v2, p2

    .local v2, "ipos":I
    move-object v4, v0

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 411
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/TreeList;->data:[C

    move-object v5, v0

    iget v5, v5, Lgnu/lists/TreeList;->gapStart:I

    const v6, 0xf10f

    aput-char v6, v4, v5

    .line 412
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v4

    move v3, v4

    .line 413
    .local v3, "seq_index":I
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lgnu/lists/TreeList;->gapStart:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 414
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lgnu/lists/TreeList;->gapStart:I

    const/4 v6, 0x3

    add-int/lit8 v5, v5, 0x3

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 415
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lgnu/lists/TreeList;->gapStart:I

    const/4 v6, 0x5

    add-int/lit8 v5, v5, 0x5

    iput v5, v4, Lgnu/lists/TreeList;->gapStart:I

    .line 416
    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 12

    .prologue
    .line 482
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v1, p1

    .local v1, "target":Ljava/lang/String;
    move-object v2, p2

    .local v2, "content":Ljava/lang/String;
    move v3, p3

    .local v3, "offset":I
    move/from16 v4, p4

    .local v4, "length":I
    move-object v7, v0

    const/4 v8, 0x5

    move v9, v4

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 483
    move-object v7, v0

    iget v7, v7, Lgnu/lists/TreeList;->gapStart:I

    move v5, v7

    .line 484
    .local v5, "i":I
    move-object v7, v0

    iget-object v7, v7, Lgnu/lists/TreeList;->data:[C

    move v8, v5

    add-int/lit8 v5, v5, 0x1

    const v9, 0xf114

    aput-char v9, v7, v8

    .line 485
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v7

    move v6, v7

    .line 486
    .local v6, "index":I
    move-object v7, v0

    move v8, v5

    move v9, v6

    invoke-virtual {v7, v8, v9}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 487
    move-object v7, v0

    move v8, v5

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    move v9, v4

    invoke-virtual {v7, v8, v9}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 488
    add-int/lit8 v5, v5, 0x4

    .line 489
    move-object v7, v2

    move v8, v3

    move v9, v3

    move v10, v4

    add-int/2addr v9, v10

    move-object v10, v0

    iget-object v10, v10, Lgnu/lists/TreeList;->data:[C

    move v11, v5

    invoke-virtual {v7, v8, v9, v10, v11}, Ljava/lang/String;->getChars(II[CI)V

    .line 490
    move-object v7, v0

    move v8, v5

    move v9, v4

    add-int/2addr v8, v9

    iput v8, v7, Lgnu/lists/TreeList;->gapStart:I

    .line 491
    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;[CII)V
    .locals 12

    .prologue
    .line 468
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreeList;
    move-object v1, p1

    .local v1, "target":Ljava/lang/String;
    move-object v2, p2

    .local v2, "content":[C
    move v3, p3

    .local v3, "offset":I
    move/from16 v4, p4

    .local v4, "length":I
    move-object v7, v0

    const/4 v8, 0x5

    move v9, v4

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 469
    move-object v7, v0

    iget v7, v7, Lgnu/lists/TreeList;->gapStart:I

    move v5, v7

    .line 470
    .local v5, "i":I
    move-object v7, v0

    iget-object v7, v7, Lgnu/lists/TreeList;->data:[C

    move v8, v5

    add-int/lit8 v5, v5, 0x1

    const v9, 0xf114

    aput-char v9, v7, v8

    .line 471
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v7

    move v6, v7

    .line 472
    .local v6, "index":I
    move-object v7, v0

    move v8, v5

    move v9, v6

    invoke-virtual {v7, v8, v9}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 473
    move-object v7, v0

    move v8, v5

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    move v9, v4

    invoke-virtual {v7, v8, v9}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 474
    add-int/lit8 v5, v5, 0x4

    .line 475
    move-object v7, v2

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Lgnu/lists/TreeList;->data:[C

    move v10, v5

    move v11, v4

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    move-object v7, v0

    move v8, v5

    move v9, v4

    add-int/2addr v8, v9

    iput v8, v7, Lgnu/lists/TreeList;->gapStart:I

    .line 477
    return-void
.end method
