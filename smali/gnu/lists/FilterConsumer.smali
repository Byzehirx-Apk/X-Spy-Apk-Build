.class public Lgnu/lists/FilterConsumer;
.super Ljava/lang/Object;
.source "FilterConsumer.java"

# interfaces
.implements Lgnu/lists/XConsumer;


# instance fields
.field protected attributeType:Ljava/lang/Object;

.field protected base:Lgnu/lists/Consumer;

.field protected inAttribute:Z

.field protected skipping:Z


# direct methods
.method public constructor <init>(Lgnu/lists/Consumer;)V
    .locals 4

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FilterConsumer;
    move-object v1, p1

    .local v1, "base":Lgnu/lists/Consumer;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 20
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    .line 21
    return-void
.end method


# virtual methods
.method public append(C)Lgnu/lists/Consumer;
    .locals 4

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FilterConsumer;
    move v1, p1

    .local v1, "c":C
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/FilterConsumer;->write(I)V

    .line 207
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/FilterConsumer;
    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;
    .locals 6

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FilterConsumer;
    move-object v1, p1

    .local v1, "csq":Ljava/lang/CharSequence;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 213
    const-string/jumbo v2, "null"

    move-object v1, v2

    .line 214
    :cond_0
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lgnu/lists/FilterConsumer;->write(Ljava/lang/CharSequence;II)V

    .line 215
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/FilterConsumer;
    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;
    .locals 9

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FilterConsumer;
    move-object v1, p1

    .local v1, "csq":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "end":I
    move-object v4, v1

    if-nez v4, :cond_0

    .line 221
    const-string/jumbo v4, "null"

    move-object v1, v4

    .line 222
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    move v8, v2

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lgnu/lists/FilterConsumer;->write(Ljava/lang/CharSequence;II)V

    .line 223
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lgnu/lists/FilterConsumer;
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
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FilterConsumer;
    move v1, p1

    .local v1, "x0":C
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/FilterConsumer;->append(C)Lgnu/lists/Consumer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/FilterConsumer;
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
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FilterConsumer;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/FilterConsumer;->append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/FilterConsumer;
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
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FilterConsumer;
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

    invoke-virtual {v4, v5, v6, v7}, Lgnu/lists/FilterConsumer;->append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/lists/FilterConsumer;
    return-object v0
.end method

.method protected beforeContent()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method protected beforeNode()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public beginEntity(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FilterConsumer;
    move-object v1, p1

    .local v1, "baseUri":Ljava/lang/Object;
    move-object v2, v0

    iget-boolean v2, v2, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v2, :cond_0

    .line 156
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/FilterConsumer;->beforeNode()V

    .line 157
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    instance-of v2, v2, Lgnu/lists/XConsumer;

    if-eqz v2, :cond_0

    .line 158
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    check-cast v2, Lgnu/lists/XConsumer;

    move-object v3, v1

    invoke-interface {v2, v3}, Lgnu/lists/XConsumer;->beginEntity(Ljava/lang/Object;)V

    .line 160
    :cond_0
    return-void
.end method

.method public endAttribute()V
    .locals 3

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FilterConsumer;
    move-object v1, v0

    iget-boolean v1, v1, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v1, :cond_0

    .line 114
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v1}, Lgnu/lists/Consumer;->endAttribute()V

    .line 115
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lgnu/lists/FilterConsumer;->inAttribute:Z

    .line 116
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FilterConsumer;
    move-object v1, v0

    iget-boolean v1, v1, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v1, :cond_0

    .line 82
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v1}, Lgnu/lists/Consumer;->endDocument()V

    .line 83
    :cond_0
    return-void
.end method

.method public endElement()V
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FilterConsumer;
    move-object v1, v0

    iget-boolean v1, v1, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v1, :cond_0

    .line 97
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v1}, Lgnu/lists/Consumer;->endElement()V

    .line 98
    :cond_0
    return-void
.end method

.method public endEntity()V
    .locals 2

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FilterConsumer;
    move-object v1, v0

    iget-boolean v1, v1, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    instance-of v1, v1, Lgnu/lists/XConsumer;

    if-eqz v1, :cond_0

    .line 165
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    check-cast v1, Lgnu/lists/XConsumer;

    invoke-interface {v1}, Lgnu/lists/XConsumer;->endEntity()V

    .line 166
    :cond_0
    return-void
.end method

.method public ignoring()Z
    .locals 2

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FilterConsumer;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v1}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/FilterConsumer;
    return v0
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FilterConsumer;
    move-object v1, p1

    .local v1, "attrType":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/lists/FilterConsumer;->attributeType:Ljava/lang/Object;

    .line 103
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lgnu/lists/FilterConsumer;->inAttribute:Z

    .line 104
    move-object v2, v0

    iget-boolean v2, v2, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v2, :cond_0

    .line 106
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/FilterConsumer;->beforeNode()V

    .line 107
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    move-object v3, v1

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->startAttribute(Ljava/lang/Object;)V

    .line 109
    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FilterConsumer;
    move-object v1, v0

    iget-boolean v1, v1, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v1, :cond_0

    .line 76
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v1}, Lgnu/lists/Consumer;->startDocument()V

    .line 77
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FilterConsumer;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Object;
    move-object v2, v0

    iget-boolean v2, v2, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v2, :cond_0

    .line 89
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/FilterConsumer;->beforeNode()V

    .line 90
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    move-object v3, v1

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    .line 92
    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FilterConsumer;
    move v1, p1

    .local v1, "v":I
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 34
    move-object v2, v0

    iget-boolean v2, v2, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v2, :cond_0

    .line 35
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    move v3, v1

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(I)V

    .line 36
    :cond_0
    return-void
.end method

.method public write(Ljava/lang/CharSequence;II)V
    .locals 8

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FilterConsumer;
    move-object v1, p1

    .local v1, "str":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "length":I
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 199
    move-object v4, v0

    iget-boolean v4, v4, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v4, :cond_0

    .line 200
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-interface {v4, v5, v6, v7}, Lgnu/lists/Consumer;->write(Ljava/lang/CharSequence;II)V

    .line 201
    :cond_0
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FilterConsumer;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lgnu/lists/FilterConsumer;->write(Ljava/lang/CharSequence;II)V

    .line 190
    return-void
.end method

.method public write([CII)V
    .locals 8

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FilterConsumer;
    move-object v1, p1

    .local v1, "buf":[C
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 183
    move-object v4, v0

    iget-boolean v4, v4, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v4, :cond_0

    .line 184
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-interface {v4, v5, v6, v7}, Lgnu/lists/Consumer;->write([CII)V

    .line 185
    :cond_0
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FilterConsumer;
    move v1, p1

    .local v1, "v":Z
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 41
    move-object v2, v0

    iget-boolean v2, v2, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v2, :cond_0

    .line 42
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    move v3, v1

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->writeBoolean(Z)V

    .line 43
    :cond_0
    return-void
.end method

.method public writeCDATA([CII)V
    .locals 8

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FilterConsumer;
    move-object v1, p1

    .local v1, "chars":[C
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "length":I
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 143
    move-object v4, v0

    iget-boolean v4, v4, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v4, :cond_0

    .line 145
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    instance-of v4, v4, Lgnu/lists/XConsumer;

    if-eqz v4, :cond_1

    .line 146
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    check-cast v4, Lgnu/lists/XConsumer;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-interface {v4, v5, v6, v7}, Lgnu/lists/XConsumer;->writeCDATA([CII)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-interface {v4, v5, v6, v7}, Lgnu/lists/Consumer;->write([CII)V

    goto :goto_0
.end method

.method public writeComment([CII)V
    .locals 8

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FilterConsumer;
    move-object v1, p1

    .local v1, "chars":[C
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "length":I
    move-object v4, v0

    iget-boolean v4, v4, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v4, :cond_0

    .line 122
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/lists/FilterConsumer;->beforeNode()V

    .line 123
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    instance-of v4, v4, Lgnu/lists/XConsumer;

    if-eqz v4, :cond_0

    .line 124
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    check-cast v4, Lgnu/lists/XConsumer;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-interface {v4, v5, v6, v7}, Lgnu/lists/XConsumer;->writeComment([CII)V

    .line 126
    :cond_0
    return-void
.end method

.method public writeDouble(D)V
    .locals 7

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FilterConsumer;
    move-wide v1, p1

    .local v1, "v":D
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 55
    move-object v3, v0

    iget-boolean v3, v3, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v3, :cond_0

    .line 56
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    move-wide v4, v1

    invoke-interface {v3, v4, v5}, Lgnu/lists/Consumer;->writeDouble(D)V

    .line 57
    :cond_0
    return-void
.end method

.method public writeFloat(F)V
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FilterConsumer;
    move v1, p1

    .local v1, "v":F
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 48
    move-object v2, v0

    iget-boolean v2, v2, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v2, :cond_0

    .line 49
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    move v3, v1

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->writeFloat(F)V

    .line 50
    :cond_0
    return-void
.end method

.method public writeInt(I)V
    .locals 4

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FilterConsumer;
    move v1, p1

    .local v1, "v":I
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 62
    move-object v2, v0

    iget-boolean v2, v2, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v2, :cond_0

    .line 63
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    move v3, v1

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 64
    :cond_0
    return-void
.end method

.method public writeLong(J)V
    .locals 7

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FilterConsumer;
    move-wide v1, p1

    .local v1, "v":J
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 69
    move-object v3, v0

    iget-boolean v3, v3, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v3, :cond_0

    .line 70
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    move-wide v4, v1

    invoke-interface {v3, v4, v5}, Lgnu/lists/Consumer;->writeLong(J)V

    .line 71
    :cond_0
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FilterConsumer;
    move-object v1, p1

    .local v1, "v":Ljava/lang/Object;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 171
    move-object v2, v0

    iget-boolean v2, v2, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v2, :cond_0

    .line 172
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    move-object v3, v1

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 173
    :cond_0
    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;[CII)V
    .locals 10

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FilterConsumer;
    move-object v1, p1

    .local v1, "target":Ljava/lang/String;
    move-object v2, p2

    .local v2, "content":[C
    move v3, p3

    .local v3, "offset":I
    move v4, p4

    .local v4, "length":I
    move-object v5, v0

    iget-boolean v5, v5, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v5, :cond_0

    .line 133
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/lists/FilterConsumer;->beforeNode()V

    .line 134
    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    instance-of v5, v5, Lgnu/lists/XConsumer;

    if-eqz v5, :cond_0

    .line 135
    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    check-cast v5, Lgnu/lists/XConsumer;

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Lgnu/lists/XConsumer;->writeProcessingInstruction(Ljava/lang/String;[CII)V

    .line 138
    :cond_0
    return-void
.end method
