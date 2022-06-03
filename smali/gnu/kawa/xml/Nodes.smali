.class public Lgnu/kawa/xml/Nodes;
.super Lgnu/mapping/Values;
.source "Nodes.java"

# interfaces
.implements Lorg/w3c/dom/NodeList;


# static fields
.field static final POS_SIZE:I = 0x5


# instance fields
.field count:I

.field curFragment:Lgnu/xml/XMLFilter;

.field curNode:Lgnu/xml/NodeTree;

.field inAttribute:Z

.field nesting:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Values;-><init>()V

    .line 24
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/kawa/xml/Nodes;->nesting:I

    return-void
.end method

.method private maybeEndNonTextNode()V
    .locals 6

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lgnu/kawa/xml/Nodes;->nesting:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move-object v4, v1

    move v5, v2

    move v1, v5

    move-object v2, v4

    move v3, v5

    iput v3, v2, Lgnu/kawa/xml/Nodes;->nesting:I

    if-nez v1, :cond_0

    .line 179
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/kawa/xml/Nodes;->finishFragment()V

    .line 180
    :cond_0
    return-void
.end method

.method private maybeStartNonTextNode()V
    .locals 5

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lgnu/kawa/xml/Nodes;->nesting:I

    if-nez v1, :cond_0

    .line 170
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/kawa/xml/Nodes;->finishFragment()V

    .line 171
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    if-nez v1, :cond_1

    .line 172
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/kawa/xml/Nodes;->startFragment()V

    .line 173
    :cond_1
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lgnu/kawa/xml/Nodes;->nesting:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lgnu/kawa/xml/Nodes;->nesting:I

    .line 174
    return-void
.end method

.method public static root(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;
    .locals 5

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "seq":Lgnu/xml/NodeTree;
    move v1, p1

    .local v1, "ipos":I
    move-object v3, v0

    iget v3, v3, Lgnu/xml/NodeTree;->gapStart:I

    const/4 v4, 0x5

    if-le v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/NodeTree;->data:[C

    const/4 v4, 0x0

    aget-char v3, v3, v4

    const v4, 0xf112

    if-ne v3, v4, :cond_0

    .line 344
    const/16 v3, 0xa

    move v2, v3

    .line 347
    .local v2, "root":I
    :goto_0
    move-object v3, v0

    move v4, v2

    invoke-static {v3, v4}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "seq":Lgnu/xml/NodeTree;
    return-object v0

    .line 346
    .end local v2    # "root":I
    .restart local v0    # "seq":Lgnu/xml/NodeTree;
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    .restart local v2    # "root":I
    goto :goto_0
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;
    .locals 8

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move-object v1, p1

    .local v1, "csq":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "end":I
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/kawa/xml/Nodes;->maybeStartTextNode()V

    .line 140
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/xml/XMLFilter;->write(Ljava/lang/CharSequence;II)V

    .line 141
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/xml/Nodes;
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
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
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

    invoke-virtual {v4, v5, v6, v7}, Lgnu/kawa/xml/Nodes;->append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/xml/Nodes;
    return-object v0
.end method

.method public beginEntity(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move-object v1, p1

    .local v1, "base":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/kawa/xml/Nodes;->maybeStartNonTextNode()V

    .line 246
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/xml/XMLFilter;->beginEntity(Ljava/lang/Object;)V

    .line 247
    return-void
.end method

.method public endAttribute()V
    .locals 3

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move-object v1, v0

    iget-boolean v1, v1, Lgnu/kawa/xml/Nodes;->inAttribute:Z

    if-nez v1, :cond_0

    .line 204
    .line 208
    :goto_0
    return-void

    .line 205
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lgnu/kawa/xml/Nodes;->inAttribute:Z

    .line 206
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v1}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 207
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/xml/Nodes;->maybeEndNonTextNode()V

    .line 208
    goto :goto_0
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v1}, Lgnu/xml/XMLFilter;->endDocument()V

    .line 240
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/xml/Nodes;->maybeEndNonTextNode()V

    .line 241
    return-void
.end method

.method public endElement()V
    .locals 2

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v1}, Lgnu/xml/XMLFilter;->endElement()V

    .line 191
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/xml/Nodes;->maybeEndNonTextNode()V

    .line 192
    return-void
.end method

.method public endEntity()V
    .locals 2

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v1}, Lgnu/xml/XMLFilter;->endEntity()V

    .line 252
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/xml/Nodes;->maybeEndNonTextNode()V

    .line 253
    return-void
.end method

.method public find(Ljava/lang/Object;)I
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move-object v1, p1

    .local v1, "seq":Ljava/lang/Object;
    move-object v3, v0

    iget v3, v3, Lgnu/kawa/xml/Nodes;->gapStart:I

    if-lez v3, :cond_0

    .line 40
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lgnu/kawa/xml/Nodes;->gapStart:I

    const/4 v5, 0x5

    add-int/lit8 v4, v4, -0x5

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/kawa/xml/Nodes;->getIntN(I)I

    move-result v3

    move v2, v3

    .line 41
    .local v2, "oindex":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/Nodes;->objects:[Ljava/lang/Object;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 42
    move v3, v2

    move v0, v3

    .line 51
    .end local v0    # "this":Lgnu/kawa/xml/Nodes;
    .end local v2    # "oindex":I
    :goto_0
    return v0

    .line 45
    .restart local v0    # "this":Lgnu/kawa/xml/Nodes;
    :cond_0
    move-object v3, v0

    iget v3, v3, Lgnu/kawa/xml/Nodes;->gapEnd:I

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/Nodes;->data:[C

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 47
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lgnu/kawa/xml/Nodes;->gapEnd:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/kawa/xml/Nodes;->getIntN(I)I

    move-result v3

    move v2, v3

    .line 48
    .restart local v2    # "oindex":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/Nodes;->objects:[Ljava/lang/Object;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    if-ne v3, v4, :cond_1

    .line 49
    move v3, v2

    move v0, v3

    goto :goto_0

    .line 51
    .end local v2    # "oindex":I
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lgnu/mapping/Values;->find(Ljava/lang/Object;)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method finishFragment()V
    .locals 3

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/kawa/xml/Nodes;->curNode:Lgnu/xml/NodeTree;

    .line 265
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    .line 266
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move v1, p1

    .local v1, "index":I
    const/4 v3, 0x5

    move v4, v1

    mul-int/2addr v3, v4

    move v2, v3

    .line 281
    .local v2, "i":I
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lgnu/kawa/xml/Nodes;->gapStart:I

    if-lt v3, v4, :cond_0

    .line 282
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lgnu/kawa/xml/Nodes;->gapEnd:I

    move-object v5, v0

    iget v5, v5, Lgnu/kawa/xml/Nodes;->gapStart:I

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    move v2, v3

    .line 283
    :cond_0
    move v3, v2

    if-ltz v3, :cond_1

    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/Nodes;->data:[C

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 284
    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 286
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/Nodes;->data:[C

    move v4, v2

    aget-char v3, v3, v4

    const v4, 0xf10f

    if-eq v3, v4, :cond_3

    .line 287
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "internal error - unexpected data"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 288
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/Nodes;->objects:[Ljava/lang/Object;

    move-object v4, v0

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lgnu/kawa/xml/Nodes;->getIntN(I)I

    move-result v4

    aget-object v3, v3, v4

    check-cast v3, Lgnu/xml/NodeTree;

    move-object v4, v0

    move v5, v2

    const/4 v6, 0x3

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {v4, v5}, Lgnu/kawa/xml/Nodes;->getIntN(I)I

    move-result v4

    invoke-static {v3, v4}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/xml/Nodes;
    return-object v0
.end method

.method public getLength()I
    .locals 2

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move-object v1, v0

    iget v1, v1, Lgnu/kawa/xml/Nodes;->count:I

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/Nodes;
    return v0
.end method

.method public getPos(I)I
    .locals 7

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move v1, p1

    .local v1, "index":I
    const/4 v3, 0x5

    move v4, v1

    mul-int/2addr v3, v4

    move v2, v3

    .line 331
    .local v2, "i":I
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lgnu/kawa/xml/Nodes;->gapStart:I

    if-lt v3, v4, :cond_0

    .line 332
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lgnu/kawa/xml/Nodes;->gapEnd:I

    move-object v5, v0

    iget v5, v5, Lgnu/kawa/xml/Nodes;->gapStart:I

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    move v2, v3

    .line 334
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/Nodes;->data:[C

    move v4, v2

    aget-char v3, v3, v4

    const v4, 0xf10f

    if-eq v3, v4, :cond_1

    .line 335
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "internal error - unexpected data"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 336
    :cond_1
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x3

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v3, v4}, Lgnu/kawa/xml/Nodes;->getIntN(I)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lgnu/kawa/xml/Nodes;
    return v0
.end method

.method public getPosNext(I)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move v1, p1

    .local v1, "ipos":I
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lgnu/kawa/xml/Nodes;->posToDataIndex(I)I

    move-result v3

    move v2, v3

    .line 304
    .local v2, "index":I
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/Nodes;->data:[C

    array-length v4, v4

    if-ne v3, v4, :cond_0

    .line 305
    sget-object v3, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    move-object v0, v3

    .line 308
    .end local v0    # "this":Lgnu/kawa/xml/Nodes;
    :goto_0
    return-object v0

    .line 306
    .restart local v0    # "this":Lgnu/kawa/xml/Nodes;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/Nodes;->data:[C

    move v4, v2

    aget-char v3, v3, v4

    const v4, 0xf10f

    if-eq v3, v4, :cond_1

    .line 307
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "internal error - unexpected data"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 308
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/Nodes;->objects:[Ljava/lang/Object;

    move-object v4, v0

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lgnu/kawa/xml/Nodes;->getIntN(I)I

    move-result v4

    aget-object v3, v3, v4

    check-cast v3, Lgnu/xml/NodeTree;

    move-object v4, v0

    move v5, v2

    const/4 v6, 0x3

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {v4, v5}, Lgnu/kawa/xml/Nodes;->getIntN(I)I

    move-result v4

    invoke-static {v3, v4}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public getSeq(I)Lgnu/lists/AbstractSequence;
    .locals 8

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move v1, p1

    .local v1, "index":I
    const/4 v3, 0x5

    move v4, v1

    mul-int/2addr v3, v4

    move v2, v3

    .line 317
    .local v2, "i":I
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lgnu/kawa/xml/Nodes;->gapStart:I

    if-lt v3, v4, :cond_0

    .line 318
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lgnu/kawa/xml/Nodes;->gapEnd:I

    move-object v5, v0

    iget v5, v5, Lgnu/kawa/xml/Nodes;->gapStart:I

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    move v2, v3

    .line 319
    :cond_0
    move v3, v2

    if-ltz v3, :cond_1

    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/Nodes;->data:[C

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 320
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    .line 324
    .end local v0    # "this":Lgnu/kawa/xml/Nodes;
    :goto_0
    return-object v0

    .line 322
    .restart local v0    # "this":Lgnu/kawa/xml/Nodes;
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/Nodes;->data:[C

    move v4, v2

    aget-char v3, v3, v4

    const v4, 0xf10f

    if-eq v3, v4, :cond_3

    .line 323
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "internal error - unexpected data"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 324
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/Nodes;->objects:[Ljava/lang/Object;

    move-object v4, v0

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lgnu/kawa/xml/Nodes;->getIntN(I)I

    move-result v4

    aget-object v3, v3, v4

    check-cast v3, Lgnu/lists/AbstractSequence;

    move-object v0, v3

    goto :goto_0
.end method

.method handleNonNode()V
    .locals 5

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Ljava/lang/ClassCastException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "atomic value where node is required"

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_0
    return-void
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 4

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/kawa/xml/Nodes;->count:I

    if-lt v2, v3, :cond_0

    .line 295
    const/4 v2, 0x0

    move-object v0, v2

    .line 297
    .end local v0    # "this":Lgnu/kawa/xml/Nodes;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/xml/Nodes;
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/xml/Nodes;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    move-object v0, v2

    goto :goto_0
.end method

.method maybeStartTextNode()V
    .locals 5

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "non-node where node required"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_0
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move-object v1, v0

    iget v1, v1, Lgnu/kawa/xml/Nodes;->count:I

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/Nodes;
    return v0
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move-object v1, p1

    .local v1, "attrType":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/kawa/xml/Nodes;->maybeStartNonTextNode()V

    .line 197
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/xml/XMLFilter;->startAttribute(Ljava/lang/Object;)V

    .line 198
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lgnu/kawa/xml/Nodes;->inAttribute:Z

    .line 199
    return-void
.end method

.method public startDocument()V
    .locals 2

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/xml/Nodes;->maybeStartNonTextNode()V

    .line 234
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v1}, Lgnu/xml/XMLFilter;->startDocument()V

    .line 235
    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/kawa/xml/Nodes;->maybeStartNonTextNode()V

    .line 185
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/xml/XMLFilter;->startElement(Ljava/lang/Object;)V

    .line 186
    return-void
.end method

.method startFragment()V
    .locals 6

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move-object v1, v0

    new-instance v2, Lgnu/xml/NodeTree;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lgnu/xml/NodeTree;-><init>()V

    iput-object v2, v1, Lgnu/kawa/xml/Nodes;->curNode:Lgnu/xml/NodeTree;

    .line 258
    move-object v1, v0

    new-instance v2, Lgnu/xml/XMLFilter;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/Nodes;->curNode:Lgnu/xml/NodeTree;

    invoke-direct {v3, v4}, Lgnu/xml/XMLFilter;-><init>(Lgnu/lists/Consumer;)V

    iput-object v2, v1, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    .line 259
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/Nodes;->curNode:Lgnu/xml/NodeTree;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lgnu/kawa/xml/Nodes;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 260
    return-void
.end method

.method public write(I)V
    .locals 4

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move v1, p1

    .local v1, "v":I
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/xml/Nodes;->maybeStartTextNode()V

    .line 133
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/xml/XMLFilter;->write(I)V

    .line 134
    return-void
.end method

.method public write(Ljava/lang/CharSequence;II)V
    .locals 8

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move-object v1, p1

    .local v1, "str":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "length":I
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/kawa/xml/Nodes;->maybeStartTextNode()V

    .line 158
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/xml/XMLFilter;->write(Ljava/lang/CharSequence;II)V

    .line 159
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/xml/Nodes;->maybeStartTextNode()V

    .line 164
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/xml/XMLFilter;->write(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public write([CII)V
    .locals 8

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move-object v1, p1

    .local v1, "buf":[C
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/kawa/xml/Nodes;->maybeStartTextNode()V

    .line 148
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/xml/XMLFilter;->write([CII)V

    .line 149
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 4

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move v1, p1

    .local v1, "v":Z
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/xml/Nodes;->handleNonNode()V

    .line 127
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/xml/XMLFilter;->writeBoolean(Z)V

    .line 128
    return-void
.end method

.method public writeCDATA([CII)V
    .locals 8

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move-object v1, p1

    .local v1, "chars":[C
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "length":I
    move-object v4, v0

    invoke-direct {v4}, Lgnu/kawa/xml/Nodes;->maybeStartNonTextNode()V

    .line 220
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/xml/XMLFilter;->writeCDATA([CII)V

    .line 221
    return-void
.end method

.method public writeComment([CII)V
    .locals 8

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move-object v1, p1

    .local v1, "chars":[C
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "length":I
    move-object v4, v0

    invoke-direct {v4}, Lgnu/kawa/xml/Nodes;->maybeStartNonTextNode()V

    .line 213
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/xml/XMLFilter;->writeComment([CII)V

    .line 214
    move-object v4, v0

    invoke-direct {v4}, Lgnu/kawa/xml/Nodes;->maybeEndNonTextNode()V

    .line 215
    return-void
.end method

.method public writeDouble(D)V
    .locals 7

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move-wide v1, p1

    .local v1, "v":D
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/xml/Nodes;->handleNonNode()V

    .line 109
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lgnu/xml/XMLFilter;->writeDouble(D)V

    .line 110
    return-void
.end method

.method public writeFloat(F)V
    .locals 4

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move v1, p1

    .local v1, "v":F
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/xml/Nodes;->handleNonNode()V

    .line 103
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/xml/XMLFilter;->writeFloat(F)V

    .line 104
    return-void
.end method

.method public writeInt(I)V
    .locals 4

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move v1, p1

    .local v1, "v":I
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/xml/Nodes;->handleNonNode()V

    .line 121
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/xml/XMLFilter;->writeInt(I)V

    .line 122
    return-void
.end method

.method public writeLong(J)V
    .locals 7

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move-wide v1, p1

    .local v1, "v":J
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/xml/Nodes;->handleNonNode()V

    .line 115
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lgnu/xml/XMLFilter;->writeLong(J)V

    .line 116
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move-object v1, p1

    .local v1, "v":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    if-eqz v3, :cond_1

    .line 58
    move-object v3, v0

    iget v3, v3, Lgnu/kawa/xml/Nodes;->nesting:I

    if-nez v3, :cond_2

    move-object v3, v1

    instance-of v3, v3, Lgnu/lists/SeqPosition;

    if-nez v3, :cond_0

    move-object v3, v1

    instance-of v3, v3, Lgnu/lists/TreeList;

    if-eqz v3, :cond_2

    .line 60
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/xml/Nodes;->finishFragment()V

    .line 67
    :cond_1
    move-object v3, v1

    instance-of v3, v3, Lgnu/lists/SeqPosition;

    if-eqz v3, :cond_3

    .line 69
    move-object v3, v1

    check-cast v3, Lgnu/lists/SeqPosition;

    move-object v2, v3

    .line 70
    .local v2, "seq":Lgnu/lists/SeqPosition;
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v5, v2

    iget v5, v5, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/xml/Nodes;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 71
    .line 81
    .end local v2    # "seq":Lgnu/lists/SeqPosition;
    :goto_0
    return-void

    .line 63
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/xml/XMLFilter;->writeObject(Ljava/lang/Object;)V

    .line 64
    goto :goto_0

    .line 73
    :cond_3
    move-object v3, v1

    instance-of v3, v3, Lgnu/lists/TreeList;

    if-eqz v3, :cond_4

    .line 75
    move-object v3, v1

    check-cast v3, Lgnu/lists/TreeList;

    move-object v2, v3

    .line 76
    .local v2, "tlist":Lgnu/lists/TreeList;
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/xml/Nodes;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 77
    goto :goto_0

    .line 79
    .end local v2    # "tlist":Lgnu/lists/TreeList;
    :cond_4
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/xml/Nodes;->handleNonNode()V

    .line 80
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/xml/XMLFilter;->writeObject(Ljava/lang/Object;)V

    .line 81
    goto :goto_0
.end method

.method public writePosition(Lgnu/lists/AbstractSequence;I)V
    .locals 7

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/AbstractSequence;
    move v2, p2

    .local v2, "ipos":I
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lgnu/kawa/xml/Nodes;->count:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lgnu/kawa/xml/Nodes;->count:I

    .line 32
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Lgnu/mapping/Values;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 33
    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;[CII)V
    .locals 10

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Nodes;
    move-object v1, p1

    .local v1, "target":Ljava/lang/String;
    move-object v2, p2

    .local v2, "content":[C
    move v3, p3

    .local v3, "offset":I
    move v4, p4

    .local v4, "length":I
    move-object v5, v0

    invoke-direct {v5}, Lgnu/kawa/xml/Nodes;->maybeStartNonTextNode()V

    .line 227
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lgnu/xml/XMLFilter;->writeProcessingInstruction(Ljava/lang/String;[CII)V

    .line 228
    move-object v5, v0

    invoke-direct {v5}, Lgnu/kawa/xml/Nodes;->maybeEndNonTextNode()V

    .line 229
    return-void
.end method
