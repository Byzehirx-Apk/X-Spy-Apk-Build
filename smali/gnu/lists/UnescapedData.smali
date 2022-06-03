.class public Lgnu/lists/UnescapedData;
.super Ljava/lang/Object;
.source "UnescapedData.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/io/Externalizable;


# instance fields
.field data:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/lists/UnescapedData;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/lists/UnescapedData;
    move-object v1, p1

    .local v1, "data":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 27
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/lists/UnescapedData;->data:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lgnu/lists/UnescapedData;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/UnescapedData;->data:Ljava/lang/String;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/lists/UnescapedData;
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/lists/UnescapedData;
    move-object v1, p1

    .local v1, "other":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/lists/UnescapedData;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/UnescapedData;->data:Ljava/lang/String;

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/lists/UnescapedData;
    return v0

    .restart local v0    # "this":Lgnu/lists/UnescapedData;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final getData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/lists/UnescapedData;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/UnescapedData;->data:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/UnescapedData;
    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lgnu/lists/UnescapedData;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/UnescapedData;->data:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/lists/UnescapedData;
    return v0

    .restart local v0    # "this":Lgnu/lists/UnescapedData;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/UnescapedData;->data:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lgnu/lists/UnescapedData;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/UnescapedData;->data:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/UnescapedData;
    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lgnu/lists/UnescapedData;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lgnu/lists/UnescapedData;->data:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 9

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lgnu/lists/UnescapedData;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    new-instance v3, Lgnu/lists/UnescapedData;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/UnescapedData;->data:Ljava/lang/String;

    move v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lgnu/lists/UnescapedData;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .end local v0    # "this":Lgnu/lists/UnescapedData;
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/lists/UnescapedData;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/UnescapedData;->data:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/UnescapedData;
    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lgnu/lists/UnescapedData;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/UnescapedData;->data:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 65
    return-void
.end method
