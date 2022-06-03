.class public abstract Lgnu/bytecode/Attribute;
.super Ljava/lang/Object;
.source "Attribute.java"


# instance fields
.field container:Lgnu/bytecode/AttrContainer;

.field name:Ljava/lang/String;

.field name_index:I

.field next:Lgnu/bytecode/Attribute;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Attribute;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 63
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/Attribute;->name:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public static assignConstants(Lgnu/bytecode/AttrContainer;Lgnu/bytecode/ClassType;)V
    .locals 5

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "container":Lgnu/bytecode/AttrContainer;
    move-object v1, p1

    .local v1, "cl":Lgnu/bytecode/ClassType;
    move-object v3, v0

    invoke-interface {v3}, Lgnu/bytecode/AttrContainer;->getAttributes()Lgnu/bytecode/Attribute;

    move-result-object v3

    move-object v2, v3

    .line 96
    .local v2, "attr":Lgnu/bytecode/Attribute;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 98
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/bytecode/Attribute;->isSkipped()Z

    move-result v3

    if-nez v3, :cond_0

    .line 99
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 96
    :cond_0
    move-object v3, v2

    iget-object v3, v3, Lgnu/bytecode/Attribute;->next:Lgnu/bytecode/Attribute;

    move-object v2, v3

    goto :goto_0

    .line 101
    :cond_1
    return-void
.end method

.method public static count(Lgnu/bytecode/AttrContainer;)I
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "container":Lgnu/bytecode/AttrContainer;
    const/4 v3, 0x0

    move v1, v3

    .line 128
    .local v1, "count":I
    move-object v3, v0

    invoke-interface {v3}, Lgnu/bytecode/AttrContainer;->getAttributes()Lgnu/bytecode/Attribute;

    move-result-object v3

    move-object v2, v3

    .line 129
    .local v2, "attr":Lgnu/bytecode/Attribute;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 131
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/bytecode/Attribute;->isSkipped()Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    add-int/lit8 v1, v1, 0x1

    .line 129
    :cond_0
    move-object v3, v2

    iget-object v3, v3, Lgnu/bytecode/Attribute;->next:Lgnu/bytecode/Attribute;

    move-object v2, v3

    goto :goto_0

    .line 134
    :cond_1
    move v3, v1

    move v0, v3

    .end local v0    # "container":Lgnu/bytecode/AttrContainer;
    return v0
.end method

.method public static get(Lgnu/bytecode/AttrContainer;Ljava/lang/String;)Lgnu/bytecode/Attribute;
    .locals 5

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "container":Lgnu/bytecode/AttrContainer;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v3, v0

    invoke-interface {v3}, Lgnu/bytecode/AttrContainer;->getAttributes()Lgnu/bytecode/Attribute;

    move-result-object v3

    move-object v2, v3

    .line 74
    .local v2, "attr":Lgnu/bytecode/Attribute;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 76
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/bytecode/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 77
    move-object v3, v2

    move-object v0, v3

    .line 79
    .end local v0    # "container":Lgnu/bytecode/AttrContainer;
    :goto_1
    return-object v0

    .line 74
    .restart local v0    # "container":Lgnu/bytecode/AttrContainer;
    :cond_0
    move-object v3, v2

    iget-object v3, v3, Lgnu/bytecode/Attribute;->next:Lgnu/bytecode/Attribute;

    move-object v2, v3

    goto :goto_0

    .line 79
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public static getLengthAll(Lgnu/bytecode/AttrContainer;)I
    .locals 6

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "container":Lgnu/bytecode/AttrContainer;
    const/4 v3, 0x0

    move v1, v3

    .line 111
    .local v1, "length":I
    move-object v3, v0

    invoke-interface {v3}, Lgnu/bytecode/AttrContainer;->getAttributes()Lgnu/bytecode/Attribute;

    move-result-object v3

    move-object v2, v3

    .line 112
    .local v2, "attr":Lgnu/bytecode/Attribute;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 114
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/bytecode/Attribute;->isSkipped()Z

    move-result v3

    if-nez v3, :cond_0

    .line 115
    move v3, v1

    const/4 v4, 0x6

    move-object v5, v2

    invoke-virtual {v5}, Lgnu/bytecode/Attribute;->getLength()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move v1, v3

    .line 112
    :cond_0
    move-object v3, v2

    iget-object v3, v3, Lgnu/bytecode/Attribute;->next:Lgnu/bytecode/Attribute;

    move-object v2, v3

    goto :goto_0

    .line 117
    :cond_1
    move v3, v1

    move v0, v3

    .end local v0    # "container":Lgnu/bytecode/AttrContainer;
    return v0
.end method

.method public static writeAll(Lgnu/bytecode/AttrContainer;Ljava/io/DataOutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "container":Lgnu/bytecode/AttrContainer;
    move-object v1, p1

    .local v1, "dstr":Ljava/io/DataOutputStream;
    move-object v4, v0

    invoke-static {v4}, Lgnu/bytecode/Attribute;->count(Lgnu/bytecode/AttrContainer;)I

    move-result v4

    move v2, v4

    .line 141
    .local v2, "count":I
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 142
    move-object v4, v0

    invoke-interface {v4}, Lgnu/bytecode/AttrContainer;->getAttributes()Lgnu/bytecode/Attribute;

    move-result-object v4

    move-object v3, v4

    .line 143
    .local v3, "attr":Lgnu/bytecode/Attribute;
    :goto_0
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 145
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/bytecode/Attribute;->isSkipped()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    .line 143
    :goto_1
    move-object v4, v3

    iget-object v4, v4, Lgnu/bytecode/Attribute;->next:Lgnu/bytecode/Attribute;

    move-object v3, v4

    goto :goto_0

    .line 147
    :cond_0
    move-object v4, v3

    iget v4, v4, Lgnu/bytecode/Attribute;->name_index:I

    if-nez v4, :cond_1

    .line 148
    new-instance v4, Ljava/lang/Error;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Attribute.writeAll called without assignConstants"

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 149
    :cond_1
    move-object v4, v1

    move-object v5, v3

    iget v5, v5, Lgnu/bytecode/Attribute;->name_index:I

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 150
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v5}, Lgnu/bytecode/Attribute;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 151
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/bytecode/Attribute;->write(Ljava/io/DataOutputStream;)V

    goto :goto_1

    .line 153
    :cond_2
    return-void
.end method


# virtual methods
.method public addToFrontOf(Lgnu/bytecode/AttrContainer;)V
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Attribute;
    move-object v1, p1

    .local v1, "container":Lgnu/bytecode/AttrContainer;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/Attribute;->setContainer(Lgnu/bytecode/AttrContainer;)V

    .line 34
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lgnu/bytecode/AttrContainer;->getAttributes()Lgnu/bytecode/Attribute;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/Attribute;->setNext(Lgnu/bytecode/Attribute;)V

    .line 35
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Lgnu/bytecode/AttrContainer;->setAttributes(Lgnu/bytecode/Attribute;)V

    .line 36
    return-void
.end method

.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .locals 5

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Attribute;
    move-object v1, p1

    .local v1, "cl":Lgnu/bytecode/ClassType;
    move-object v2, v0

    iget v2, v2, Lgnu/bytecode/Attribute;->name_index:I

    if-nez v2, :cond_0

    .line 88
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/Attribute;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/bytecode/CpoolUtf8;->getIndex()I

    move-result v3

    iput v3, v2, Lgnu/bytecode/Attribute;->name_index:I

    .line 89
    :cond_0
    return-void
.end method

.method public final getContainer()Lgnu/bytecode/AttrContainer;
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Attribute;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Attribute;->container:Lgnu/bytecode/AttrContainer;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/Attribute;
    return-object v0
.end method

.method public abstract getLength()I
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Attribute;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Attribute;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/Attribute;
    return-object v0
.end method

.method public final getNameIndex()I
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Attribute;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/Attribute;->name_index:I

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/Attribute;
    return v0
.end method

.method public final getNext()Lgnu/bytecode/Attribute;
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Attribute;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Attribute;->next:Lgnu/bytecode/Attribute;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/Attribute;
    return-object v0
.end method

.method public final isSkipped()Z
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Attribute;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/Attribute;->name_index:I

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/Attribute;
    return v0

    .restart local v0    # "this":Lgnu/bytecode/Attribute;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 4

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Attribute;
    move-object v1, p1

    .local v1, "dst":Lgnu/bytecode/ClassTypeWriter;
    move-object v2, v1

    const-string/jumbo v3, "Attribute \""

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 158
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 159
    move-object v2, v1

    const-string/jumbo v3, "\", length:"

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 160
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/Attribute;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 161
    return-void
.end method

.method public final setContainer(Lgnu/bytecode/AttrContainer;)V
    .locals 4

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Attribute;
    move-object v1, p1

    .local v1, "container":Lgnu/bytecode/AttrContainer;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/Attribute;->container:Lgnu/bytecode/AttrContainer;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Attribute;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lgnu/bytecode/Attribute;->name:Ljava/lang/String;

    return-void
.end method

.method public final setNameIndex(I)V
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Attribute;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/bytecode/Attribute;->name_index:I

    return-void
.end method

.method public final setNext(Lgnu/bytecode/Attribute;)V
    .locals 4

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Attribute;
    move-object v1, p1

    .local v1, "next":Lgnu/bytecode/Attribute;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/Attribute;->next:Lgnu/bytecode/Attribute;

    return-void
.end method

.method public final setSkipped()V
    .locals 3

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Attribute;
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lgnu/bytecode/Attribute;->name_index:I

    return-void
.end method

.method public final setSkipped(Z)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Attribute;
    move v1, p1

    .local v1, "skip":Z
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    :goto_0
    iput v3, v2, Lgnu/bytecode/Attribute;->name_index:I

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public abstract write(Ljava/io/DataOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
