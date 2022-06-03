.class public Lgnu/math/BaseUnit;
.super Lgnu/math/NamedUnit;
.source "BaseUnit.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static base_count:I = 0x0

.field private static final unitName:Ljava/lang/String; = "(name)"


# instance fields
.field dimension:Ljava/lang/String;

.field index:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput v0, Lgnu/math/BaseUnit;->base_count:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/math/BaseUnit;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/math/NamedUnit;-><init>()V

    .line 47
    move-object v1, v0

    const-string/jumbo v2, "(name)"

    iput-object v2, v1, Lgnu/math/BaseUnit;->name:Ljava/lang/String;

    .line 48
    move-object v1, v0

    const v2, 0x7fffffff

    iput v2, v1, Lgnu/math/BaseUnit;->index:I

    .line 49
    move-object v1, v0

    sget-object v2, Lgnu/math/Dimensions;->Empty:Lgnu/math/Dimensions;

    iput-object v2, v1, Lgnu/math/BaseUnit;->dims:Lgnu/math/Dimensions;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lgnu/math/BaseUnit;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/math/NamedUnit;-><init>()V

    .line 90
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/math/BaseUnit;->name:Ljava/lang/String;

    .line 91
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/BaseUnit;->init()V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lgnu/math/BaseUnit;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "dimension":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/math/NamedUnit;-><init>()V

    .line 96
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/math/BaseUnit;->name:Ljava/lang/String;

    .line 97
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/math/BaseUnit;->dimension:Ljava/lang/String;

    .line 98
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/math/BaseUnit;->init()V

    .line 99
    return-void
.end method

.method public static compare(Lgnu/math/BaseUnit;Lgnu/math/BaseUnit;)I
    .locals 7

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "unit1":Lgnu/math/BaseUnit;
    move-object v1, p1

    .local v1, "unit2":Lgnu/math/BaseUnit;
    move-object v5, v0

    iget-object v5, v5, Lgnu/math/BaseUnit;->name:Ljava/lang/String;

    move-object v6, v1

    iget-object v6, v6, Lgnu/math/BaseUnit;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    move v2, v5

    .line 137
    .local v2, "code":I
    move v5, v2

    if-eqz v5, :cond_0

    .line 138
    move v5, v2

    move v0, v5

    .line 147
    .end local v0    # "unit1":Lgnu/math/BaseUnit;
    :goto_0
    return v0

    .line 139
    .restart local v0    # "unit1":Lgnu/math/BaseUnit;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lgnu/math/BaseUnit;->dimension:Ljava/lang/String;

    move-object v3, v5

    .line 140
    .local v3, "dim1":Ljava/lang/String;
    move-object v5, v1

    iget-object v5, v5, Lgnu/math/BaseUnit;->dimension:Ljava/lang/String;

    move-object v4, v5

    .line 141
    .local v4, "dim2":Ljava/lang/String;
    move-object v5, v3

    move-object v6, v4

    if-ne v5, v6, :cond_1

    .line 142
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 143
    :cond_1
    move-object v5, v3

    if-nez v5, :cond_2

    .line 144
    const/4 v5, -0x1

    move v0, v5

    goto :goto_0

    .line 145
    :cond_2
    move-object v5, v4

    if-nez v5, :cond_3

    .line 146
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 147
    :cond_3
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method public static lookup(Ljava/lang/String;Ljava/lang/String;)Lgnu/math/BaseUnit;
    .locals 8

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, p1

    .local v1, "dimension":Ljava/lang/String;
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 112
    move-object v6, v0

    const-string/jumbo v7, "(name)"

    if-ne v6, v7, :cond_0

    move-object v6, v1

    if-nez v6, :cond_0

    .line 113
    sget-object v6, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    move-object v0, v6

    .line 125
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 114
    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    move v2, v6

    .line 115
    .local v2, "hash":I
    move v6, v2

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    sget-object v7, Lgnu/math/BaseUnit;->table:[Lgnu/math/NamedUnit;

    array-length v7, v7

    rem-int/2addr v6, v7

    move v3, v6

    .line 116
    .local v3, "index":I
    sget-object v6, Lgnu/math/BaseUnit;->table:[Lgnu/math/NamedUnit;

    move v7, v3

    aget-object v6, v6, v7

    move-object v4, v6

    .local v4, "unit":Lgnu/math/NamedUnit;
    :goto_1
    move-object v6, v4

    if-eqz v6, :cond_2

    .line 118
    move-object v6, v4

    iget-object v6, v6, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    move-object v7, v0

    if-ne v6, v7, :cond_1

    move-object v6, v4

    instance-of v6, v6, Lgnu/math/BaseUnit;

    if-eqz v6, :cond_1

    .line 120
    move-object v6, v4

    check-cast v6, Lgnu/math/BaseUnit;

    move-object v5, v6

    .line 121
    .local v5, "bunit":Lgnu/math/BaseUnit;
    move-object v6, v5

    iget-object v6, v6, Lgnu/math/BaseUnit;->dimension:Ljava/lang/String;

    move-object v7, v1

    if-ne v6, v7, :cond_1

    .line 122
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 116
    .end local v5    # "bunit":Lgnu/math/BaseUnit;
    :cond_1
    move-object v6, v4

    iget-object v6, v6, Lgnu/math/NamedUnit;->chain:Lgnu/math/NamedUnit;

    move-object v4, v6

    goto :goto_1

    .line 125
    :cond_2
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method public static make(Ljava/lang/String;Ljava/lang/String;)Lgnu/math/BaseUnit;
    .locals 8

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, p1

    .local v1, "dimension":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lgnu/math/BaseUnit;->lookup(Ljava/lang/String;Ljava/lang/String;)Lgnu/math/BaseUnit;

    move-result-object v3

    move-object v2, v3

    .line 131
    .local v2, "old":Lgnu/math/BaseUnit;
    move-object v3, v2

    if-nez v3, :cond_0

    new-instance v3, Lgnu/math/BaseUnit;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lgnu/math/BaseUnit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v0, v3

    .end local v0    # "name":Ljava/lang/String;
    return-object v0

    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    move-object v3, v2

    goto :goto_0
.end method


# virtual methods
.method public getDimension()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/math/BaseUnit;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/BaseUnit;->dimension:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/BaseUnit;
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lgnu/math/BaseUnit;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/BaseUnit;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/math/BaseUnit;
    return v0
.end method

.method protected init()V
    .locals 6

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lgnu/math/BaseUnit;
    move-object v1, v0

    move-object v2, v0

    iput-object v2, v1, Lgnu/math/BaseUnit;->base:Lgnu/math/Unit;

    .line 55
    move-object v1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v1, Lgnu/math/BaseUnit;->scale:D

    .line 56
    move-object v1, v0

    new-instance v2, Lgnu/math/Dimensions;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lgnu/math/Dimensions;-><init>(Lgnu/math/BaseUnit;)V

    iput-object v2, v1, Lgnu/math/BaseUnit;->dims:Lgnu/math/Dimensions;

    .line 57
    move-object v1, v0

    invoke-super {v1}, Lgnu/math/NamedUnit;->init()V

    .line 59
    move-object v1, v0

    sget v2, Lgnu/math/BaseUnit;->base_count:I

    move v5, v2

    move v2, v5

    move v3, v5

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    sput v3, Lgnu/math/BaseUnit;->base_count:I

    iput v2, v1, Lgnu/math/BaseUnit;->index:I

    .line 86
    return-void
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
    .line 165
    move-object v0, p0

    .local v0, "this":Lgnu/math/BaseUnit;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lgnu/math/BaseUnit;->name:Ljava/lang/String;

    .line 166
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lgnu/math/BaseUnit;->dimension:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lgnu/math/BaseUnit;
    move-object v2, v0

    iget-object v2, v2, Lgnu/math/BaseUnit;->name:Ljava/lang/String;

    move-object v3, v0

    iget-object v3, v3, Lgnu/math/BaseUnit;->dimension:Ljava/lang/String;

    invoke-static {v2, v3}, Lgnu/math/BaseUnit;->lookup(Ljava/lang/String;Ljava/lang/String;)Lgnu/math/BaseUnit;

    move-result-object v2

    move-object v1, v2

    .line 172
    .local v1, "unit":Lgnu/math/BaseUnit;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 173
    move-object v2, v1

    move-object v0, v2

    .line 175
    .end local v0    # "this":Lgnu/math/BaseUnit;
    :goto_0
    return-object v0

    .line 174
    .restart local v0    # "this":Lgnu/math/BaseUnit;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/BaseUnit;->init()V

    .line 175
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public unit()Lgnu/math/Unit;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lgnu/math/BaseUnit;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/BaseUnit;
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
    .line 158
    move-object v0, p0

    .local v0, "this":Lgnu/math/BaseUnit;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/math/BaseUnit;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 159
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/math/BaseUnit;->dimension:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 160
    return-void
.end method
